workspace(name = "mujoco")

load("@bazel_tools//tools/build_defs/repo:git.bzl", "new_git_repository")

new_git_repository(
    name = "lodepng",
    build_file = "//external/lodepng:BUILD.bazel",
    commit = "c18b949b71f45e78b1f9a28c5d458bce0da505d6",
    remote = "https://github.com/lvandeve/lodepng.git",
)

new_git_repository(
    name = "tinyxml2",
    build_file = "//external/tinyxml2:BUILD.bazel",
    commit = "1dee28e51f9175a31955b9791c74c430fe13dc82",
    remote = "https://github.com/leethomason/tinyxml2.git",
)

new_git_repository(
    name = "tinyobjloader",
    build_file = "//external/tinyobjloader:BUILD.bazel",
    commit = "8322e00ae685ea623ab6ac5a6cebcfa2d22fbf93",
    remote = "https://github.com/tinyobjloader/tinyobjloader.git",
    shallow_since = "1640603894 +0900",
)

new_git_repository(
    name = "ccd",
    build_file = "//external/ccd:BUILD.bazel",
    commit = "7931e764a19ef6b21b443376c699bbc9c6d4fba8",
    remote = "https://github.com/danfis/libccd.git",
)

new_git_repository(
    name = "qhull",
    build_file = "//external/qhull:BUILD.bazel",
    commit = "613debeaea72ee66626dace9ba1a2eff11b5d37d",
    remote = "https://github.com/qhull/qhull.git",
)

new_git_repository(
    name = "C_mujoco",
    build_file = "//external/mujoco:BUILD.bazel",
    commit = "c9246e1f5006379d599e0bcddf159a8616d31441",
    remote = "https://github.com/deepmind/mujoco.git",
)   
