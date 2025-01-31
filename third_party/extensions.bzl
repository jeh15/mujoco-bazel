"""
    Module extension implementation for Mujoco
"""
load("//third_party:repositories.bzl", "mujoco_archive")

def mujoco_implementation(ctx):
    mujoco_archive(ctx)

mujoco_extension = module_extension(
    implementation = mujoco_implementation,
)
