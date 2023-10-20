workspace(name = "mujoco")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "mujoco_archive",
    build_file = "//external/mujoco_archive:BUILD.bazel",
    strip_prefix = "mujoco-3.0.0",
    urls = [
        "https://github.com/google-deepmind/mujoco/releases/download/3.0.0/mujoco-3.0.0-linux-x86_64.tar.gz",
    ],
    sha256 = "1efc383b61d927d67f08a38d02904ca147df20dd2aac01148bdb56f0702a2f19",
)
