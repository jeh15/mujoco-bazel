# Mujoco build for Bazel:
Bazel build for Mujoco. 

This repository can be used as an external dependency to target mujoco.

## Linux:
The `main` branch exports the linux x86_64 pre-built binaries as a `cc_library`.
The main branch targets Mujoco 3.0.0.

## MacOS:
For MacOS us the `macos` branch. The macos branch builds mujoco and all of its dependencies from scratch and exports mujoco as a 'cc_library'.
The macos branch targets Mujoco 2.3.7.

## Installation:
Add the following to your `WORKSPACE` file:

```python
git_repository(
    name = "mujoco",
    branch = "main",
    remote = "https://github.com/jeh15/mujoco_bazel.git",
)

load("@mujoco//:deps.bzl", "mujoco_deps")

mujoco_deps()
```

Additionally, make sure you are compiling with c++17.
This can be added with a `.bazelrc` file with the following:
```
build --cxxopt='--std=c++17'
```
