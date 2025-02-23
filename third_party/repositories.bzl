"""
    Fetch HTTP archive of precompiled MuJoCo release.
"""
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# TODO(jeh15): Figure out how to pass in version to fetch
def mujoco_archive_x86_64(ctx):
    version = "3.2.7"
    version_name = version.replace(".", "_")
    cpu_platform = "linux-x86_64"
    url = "https://github.com/google-deepmind/mujoco/releases/download/{version}/mujoco-{version}-{cpu_platform}.tar.gz".format(version=version, cpu_platform=cpu_platform)
    build_file_content = """
package(default_visibility = ["//visibility:public"])
hdrs = glob(["include/mujoco/*.h"])
cc_import(
    name = "mujoco_lib_import",
    hdrs = hdrs,
    includes = ["include"],
    shared_library = "lib/libmujoco.so",
)
cc_import(
    name = "mujoco_lib_import_{version_name}",
    hdrs = hdrs,
    includes = ["include"],
    shared_library = "lib/libmujoco.so.{version}",
)
cc_library(
    name = "mujoco_lib_{cpu_platform}",
    hdrs = hdrs,
    includes = ["include"],
    copts = ["-fPIC"],
    deps = [
        ":mujoco_lib_import",
        ":mujoco_lib_import_{version_name}",
    ],
    visibility = ["//visibility:public"],
)
""".format(version=version, version_name=version_name, cpu_platform=cpu_platform)

    http_archive(
        name = "archive_mujoco_x86_64",
        build_file_content = build_file_content,
        strip_prefix = "mujoco-{version}".format(version=version),
        url = url,
        integrity = "sha256-Ugpl+7C3XKxSRcwHUmhAVFwB+qNU8YxiOl5is2Vx7WE=",
    )

def mujoco_archive_aarch64(ctx):
    version = "3.2.7"
    version_name = version.replace(".", "_")
    cpu_platform = "linux-aarch64"
    url = "https://github.com/google-deepmind/mujoco/releases/download/{version}/mujoco-{version}-{cpu_platform}.tar.gz".format(version=version, cpu_platform=cpu_platform)
    build_file_content = """
package(default_visibility = ["//visibility:public"])
hdrs = glob(["include/mujoco/*.h"])
cc_import(
    name = "mujoco_lib_import",
    hdrs = hdrs,
    includes = ["include"],
    shared_library = "lib/libmujoco.so",
)
cc_import(
    name = "mujoco_lib_import_{version_name}",
    hdrs = hdrs,
    includes = ["include"],
    shared_library = "lib/libmujoco.so.{version}",
)
cc_library(
    name = "mujoco_lib_{cpu_platform}",
    hdrs = hdrs,
    includes = ["include"],
    copts = ["-fPIC"],
    deps = [
        ":mujoco_lib_import",
        ":mujoco_lib_import_{version_name}",
    ],
    visibility = ["//visibility:public"],
)
""".format(version=version, version_name=version_name, cpu_platform=cpu_platform)

    http_archive(
        name = "archive_mujoco_aarch64",
        build_file_content = build_file_content,
        strip_prefix = "mujoco-{version}".format(version=version),
        url = url,
        integrity = "sha256-PvLoJliqa4GufO6wHtbo70waxtKkX9XJOqry7EkCWZg=",
    )