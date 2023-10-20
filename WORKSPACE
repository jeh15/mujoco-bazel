workspace(name = "mujoco")

# load("@bazel_tools//tools/build_defs/repo:git.bzl", "new_git_repository")

# new_git_repository(
#     name = "lodepng",
#     build_file = "//external/lodepng:BUILD.bazel",
#     commit = "b4ed2cd7ecf61d29076169b49199371456d4f90b",
#     remote = "https://github.com/lvandeve/lodepng.git",
# )

# new_git_repository(
#     name = "tinyxml2",
#     build_file = "//external/tinyxml2:BUILD.bazel",
#     commit = "9a89766acc42ddfa9e7133c7d81a5bda108a0ade",
#     remote = "https://github.com/leethomason/tinyxml2.git",
# )

# new_git_repository(
#     name = "tinyobjloader",
#     build_file = "//external/tinyobjloader:BUILD.bazel",
#     commit = "1421a10d6ed9742f5b2c1766d22faa6cfbc56248",
#     remote = "https://github.com/tinyobjloader/tinyobjloader.git",
# )

# new_git_repository(
#     name = "ccd",
#     build_file = "//external/ccd:BUILD.bazel",
#     commit = "7931e764a19ef6b21b443376c699bbc9c6d4fba8",
#     remote = "https://github.com/danfis/libccd.git",
# )

# new_git_repository(
#     name = "qhull",
#     build_file = "//external/qhull:BUILD.bazel",
#     commit = "0c8fc90d2037588024d9964515c1e684f6007ecc",
#     remote = "https://github.com/qhull/qhull.git",
# )

# new_git_repository(
#     name = "C_mujoco",
#     build_file = "//external/mujoco:BUILD.bazel",
#     commit = "c9246e1f5006379d599e0bcddf159a8616d31441",
#     remote = "https://github.com/deepmind/mujoco.git",
# ) 

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

_ALL_CONTENT = """\
filegroup(
    name = "all_srcs",
    srcs = glob(["**"]),
    visibility = ["//visibility:public"],
)
"""

http_archive(
    name = "C_mujoco",
    build_file_content = _ALL_CONTENT,
    strip_prefix = "mujoco-3.0.0-linux-x86_64",
    urls = [
        "https://github.com/google-deepmind/mujoco/releases/download/3.0.0/mujoco-3.0.0-linux-x86_64.tar.gz",
    ],
    # sha256 = "b0108b44a4913c6d49a2fea382e684d10d0c43f51ac7d317d3c73fe66f120c33",
)

# load("@bazel_tools//tools/build_defs/repo:git.bzl", "new_git_repository")

# new_git_repository(
#     name = "C_mujoco",
#     build_file_content = _ALL_CONTENT,
#     branch = "main",
#     remote = "git@github.com:jeh15/mujoco.git",
# )