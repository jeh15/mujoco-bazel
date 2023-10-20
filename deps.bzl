load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

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
        http_archive,
        name = "mujoco_linux",
        build_file =  "//external/mujoco_linux:BUILD.bazel",
        strip_prefix = "mujoco-3.0.0",
        urls = [
            "https://github.com/google-deepmind/mujoco/releases/download/3.0.0/mujoco-3.0.0-linux-x86_64.tar.gz",
        ],
        sha256 = "1efc383b61d927d67f08a38d02904ca147df20dd2aac01148bdb56f0702a2f19",
    )
    