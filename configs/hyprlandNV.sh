#!/bin/sh

export _JAVA_AWT_WM_NONREPARENTING=1

# vrr is borked on nvidia and wayland :(
export __GL_GSYNC_ALLOWED=0
export __GL_VRR_ALLOWED=0

export __GLX_VENDOR_LIBRARY_NAME=nvidia

# force wayland, by default uses xwayland which is slow and buggy
export MOZ_ENABLE_WAYLAND=1

export XDG_SESSION_TYPE=wayland
export XDG_CURRENT_DESKTOP=Hyprland

export WLR_NO_HARDWARE_CURSORS=1
export WLR_BACKEND=vulkan
export WLR_DRM_NO_ATOMIC=1

export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
export QT_QPA_PLATFORM=wayland
export QT_QPA_PLATFORM=wayland

export LIBVA_DRIVER_NAME=nvidia
export CLUTTER_BACKEND=wayland
export GBM_BACKEND=nvidia-drm
export GDK_BACKEND=wayland

exec Hyprland