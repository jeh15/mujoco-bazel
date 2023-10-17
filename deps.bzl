load("@bazel_tools//tools/build_defs/repo:git.bzl", "new_git_repository")

def _maybe(repo_rule, name, **kwargs):
    """Executes the given repository rule if it hasn't been executed already.
    Args:
      repo_rule: The repository rule to be executed (e.g., `http_archive`.)
      name: The name of the repository to be defined by the rule.
      **kwargs: Additional arguments passed directly to the repository rule.
    """
    if not native.existing_rule(name):
        repo_rule(name = name, **kwargs)

def mujoco_deps():
    """Loads common dependencies needed to compile the mujoco library."""

    _maybe(
        new_git_repository,
        name = "lodepng",
        build_file = "@mujoco//:external/lodepng/BUILD.bazel",
        commit = "b4ed2cd7ecf61d29076169b49199371456d4f90b",
        remote = "https://github.com/lvandeve/lodepng.git",
    )

    _maybe(
        new_git_repository,
        name = "tinyxml2",
        build_file = "@mujoco//:external/tinyxml2/BUILD.bazel",
        commit = "9a89766acc42ddfa9e7133c7d81a5bda108a0ade",
        remote = "https://github.com/leethomason/tinyxml2.git",
    )

    _maybe(
        new_git_repository,
        name = "tinyobjloader",
        build_file = "@mujoco//:external/tinyobjloader/BUILD.bazel",
        commit = "1421a10d6ed9742f5b2c1766d22faa6cfbc56248",
        remote = "https://github.com/tinyobjloader/tinyobjloader.git",
    )

    _maybe(
        new_git_repository,
        name = "ccd",
        build_file = "@mujoco//:external/ccd/BUILD.bazel",
        commit = "7931e764a19ef6b21b443376c699bbc9c6d4fba8",
        remote = "https://github.com/danfis/libccd.git",
    )

    _maybe(
        new_git_repository,
        name = "qhull",
        build_file = "@mujoco//:external/qhull/BUILD.bazel",
        commit = "0c8fc90d2037588024d9964515c1e684f6007ecc",
        remote = "https://github.com/qhull/qhull.git",
    )

    _maybe(
        new_git_repository,
        name = "C_mujoco",
        build_file = "@mujoco//:external/mujoco/BUILD.bazel",
        commit = "c9246e1f5006379d599e0bcddf159a8616d31441",
        remote = "https://github.com/deepmind/mujoco.git",
    )