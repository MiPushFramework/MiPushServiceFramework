#!/system/bin/sh
MODDIR=${0%/*}
resetprop -n ro.miui.ui.version.name V10
resetprop -n ro.miui.ui.version.code 8
resetprop -n ro.miui.version.code_time 1544025600
resetprop -n ro.miui.internal.storage /sdcard/
resetprop -n ro.fota.oem Xiaomi
