# Mujoco build for Bazel:
Bazel build for Mujoco. 

This repository is based on the bazel builds from [Mujoco for Swift](https://github.com/liuliu/swift-mujoco/tree/main) to target Mujoco's C API.

Currently, this repository targets Mujoco 2.3.7.

## Installation:
Add the following to your `WORKSPACE` file:

```python
git_repository(
    name = "mujoco",
    branch = "macos",
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
