"""
    Module extension implementation for Mujoco
"""
load("//third_party:repositories.bzl", "mujoco_archive_x86_64", "mujoco_archive_aarch64")

def mujoco_x86_64_implementation(ctx):
    mujoco_archive_x86_64(ctx)

def mujoco_aarch64_implementation(ctx):
    mujoco_archive_aarch64(ctx)

mujoco_x86_64_extension = module_extension(
    implementation = mujoco_x86_64_implementation,
)

mujoco_aarch64_extension = module_extension(
    implementation = mujoco_aarch64_implementation,
)
