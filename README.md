# Mujoco build for Bazel:
Bazel build for Mujoco. 

This repository can be used as an external dependency to target mujoco.

## Linux:
The `main` branch exports the linux x86_64 pre-built binaries as a `cc_library`.
The main branch targets Mujoco 3.2.7


## Installation:
Add the following to your `MODULE` file:

```python
bazel_dep(name = "mojoco-bazel")
archive_override(
    module_name = "mujoco-bazel",
    strip_prefix = "mujoco-bazel-main",
    urls = "https://github.com/jeh15/mujoco-bazel/archive/refs/heads/main.zip"
)
```
