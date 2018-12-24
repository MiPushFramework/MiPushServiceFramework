AUTOMOUNT=true
PROPFILE=true
POSTFSDATA=false
LATESTARTSERVICE=true
print_modname() {
  ui_print "*******************************"
  ui_print "*  Mi Push Service Framework  *"
  ui_print "*******************************"
  ui_print "* 0.3.6.20181130.7881203(266) *"
  ui_print "*******************************"
}
REPLACE="
  /system/app/XiaomiServiceFramework
"
set_permissions() {
  set_perm_recursive  $MODPATH  0  0  0755  0644
}
fail() {
  echo "$1"
  exit 1
}
check_architecture() {
  if [[ "$ARCH" != "arm" && "$ARCH" != "arm64" ]]; then
    ui_print "- Unsupported platform: $ARCH"
    exit 1
  else
    ui_print "- Device platform: $ARCH"
  fi
}
copy_files() {
  if [ $IS64BIT = false ]; then
	ui_print "- Removing unnecessary files"
	rm -rf "$MODPATH/system/lib64"
  fi
  ui_print "- Extracting extra files"
  unzip -o "$ZIP" 'data/*' -d $MODPATH >&2
  TARGET="/data/misc/riru/modules"
  [ -d $TARGET ] || mkdir -p $TARGET || fail "- Can't mkdir -p $TARGET"
  cp -af "$MODPATH$TARGET/." "$TARGET" || fail "- Can't cp -af $MODPATH$TARGET/. $TARGET"
  rm -rf $MODPATH/data 2>/dev/null
  ui_print "- Files copied"
}
