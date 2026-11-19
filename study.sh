#!/bin/sh
set -eu

cd -- "$(dirname -- "$0")"
export PATH="$HOME/.local/bin:$HOME/miniconda3/condabin:$PATH"

if ! command -v uv >/dev/null 2>&1; then
    printf '%s\n' '当前终端找不到 uv。请先安装 uv，再运行本脚本。' >&2
    exit 1
fi

exec uv run --no-project --python 3.12 --with teachopencadd==2026.4.1 python -c "$(cat <<'PY'
import argparse
import json
import os
import re
import subprocess

from teachopencadd.config import settings
from teachopencadd.env import build_jupyter_env_vars, configure_env, parse_requirements
from teachopencadd.exceptions import TeachOpenCADDError
from teachopencadd.models import Environment

parser = argparse.ArgumentParser(description="打开 TeachOpenCADD 课程")
parser.add_argument("lesson", nargs="?", default="T001", help="课号，例如 T001 或 1")
args = parser.parse_args()

match = re.fullmatch(r"T?([0-9]{1,3})", args.lesson.upper())
if match is None:
    parser.error("课号应为 1 或 T001 这一类格式。")

lesson_id = f"T{int(match.group(1)):03d}"
directories = sorted(settings.base_dir.glob(f"{lesson_id}_*"))
if len(directories) != 1 or lesson_id == "T000":
    parser.error(f"找不到课程 {lesson_id}。请查看项目 README 中的课程目录。")

lesson_dir = directories[0].resolve()
english_notebook = lesson_dir / "talktorial.ipynb"
notebook = lesson_dir / "talktorial.zh-CN.ipynb"
if not notebook.is_file():
    notebook = english_notebook
    print(f"{lesson_id} 当前打开英文原版。", flush=True)

requirements = lesson_dir / "requirements.txt"
if not notebook.is_file() or not requirements.is_file():
    parser.error(f"{lesson_id} 的 Notebook 或依赖文件缺失。")

python_version, conda_packages, _ = parse_requirements(requirements)
env_name = f"{settings.env_prefix}_{lesson_id}_py{python_version.replace('.', '')}"
env = Environment(env_name, settings.env_root / env_name, bool(conda_packages), python_version)
saved_requirements = env.path / ".teachopencadd-ready"
requirements_text = requirements.read_text(encoding="utf-8")
if (
    not env.py_exe.is_file()
    or not saved_requirements.is_file()
    or saved_requirements.read_text(encoding="utf-8") != requirements_text
):
    try:
        env = configure_env(lesson_id, requirements, settings)
    except TeachOpenCADDError as exc:
        parser.exit(1, f"课程环境配置失败：{exc}\n")
    saved_requirements.write_text(requirements_text, encoding="utf-8")

jupyter_env = build_jupyter_env_vars(env)
for course_file in {notebook, english_notebook}:
    if not course_file.is_file():
        continue
    metadata = json.loads(course_file.read_text(encoding="utf-8"))["metadata"]
    kernel = metadata.get("kernelspec", {})
    name = kernel.get("name", "python3")
    if name == "python3" or not re.fullmatch(r"[a-zA-Z0-9._-]+", name):
        continue
    kernel_file = env.path / "share" / "jupyter" / "kernels" / name.lower() / "kernel.json"
    if not kernel_file.exists():
        subprocess.run(
            [str(env.py_exe), "-m", "ipykernel", "install", "--prefix", str(env.path),
             "--name", name, "--display-name", f"TeachOpenCADD {lesson_id}"],
            env=jupyter_env,
            check=True,
        )

print("在浏览器中打开下方的 Jupyter 链接。", flush=True)
os.chdir(lesson_dir)
os.execve(
    env.py_exe,
    [
        str(env.py_exe), "-m", "notebook", "--no-browser", "--port=9999",
        f"--JupyterNotebookApp.default_url=/notebooks/{notebook.name}",
    ],
    jupyter_env,
)
PY
)" "$@"
