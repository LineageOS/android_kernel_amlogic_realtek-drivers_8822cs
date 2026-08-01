load("//build/kernel/kleaf:kernel.bzl", "kernel_module")

def rtl8822cs_module(name, kernel_build, deps = None):
    kernel_module(
        name = name,
        srcs = ["//vendor/amlogic/realtek-drivers/8822cs:rtl8822cs_srcs"],
        makefile = ["//vendor/amlogic/realtek-drivers/8822cs:Makefile"],
        deps = deps,
        outs = ["8822cs.ko"],
        kernel_build = kernel_build,
    )
