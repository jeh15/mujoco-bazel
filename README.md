# Mujoco build for Bazel:
Isolated Bazel build for Mujoco. 

This repository is a stripped version of [Mujoco for Swift](https://github.com/liuliu/swift-mujoco/tree/main) to target Mujoco's C API.

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
