workspace(name = "mujoco")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "rules_foreign_cc",
    sha256 = "9394f4f6b3fb57c4cccd1614970a0df6e9091c958d38cccb03ef37c0ff0bc607",
    strip_prefix = "rules_foreign_cc-ef3031e3874b8282c717fd3341ef5fbad2591b8f",
    url = "https://github.com/bazelbuild/rules_foreign_cc/archive/ef3031e3874b8282c717fd3341ef5fbad2591b8f.tar.gz",
)

load("@rules_foreign_cc//foreign_cc:repositories.bzl", "rules_foreign_cc_dependencies")

rules_foreign_cc_dependencies()

# This sets up some common toolchains for building targets. For more details, please see
# https://github.com/bazelbuild/rules_foreign_cc/tree/main/docs#rules_foreign_cc_dependencies
rules_foreign_cc_dependencies()

http_archive(
    name = "mujoco_linux",
    build_file = "//external/mujoco:BUILD.bazel",
    strip_prefix = "mujoco-3.0.0",
    urls = [
        "https://github.com/google-deepmind/mujoco/releases/download/3.0.0/mujoco-3.0.0-linux-x86_64.tar.gz",
    ],
    sha256 = "1efc383b61d927d67f08a38d02904ca147df20dd2aac01148bdb56f0702a2f19",
)