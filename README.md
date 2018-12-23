# Mi Push Service Framework
Add Mi Push Service Framework into system systemlessly. Change some props to fake miui. Kill official Xiaomi Service Framework. NOT include Push manager. Some features require Riru - Core installed.

## What does this module do
* Add `MIUI` prop in your `build.prop` to fake your device to `XiaoMi`.
* Fake as a `XiaoMi` Device by hook `system_property_get`. (Required Riru Core installed.)
* Add `Push Service Framework` to system systemlessly.
* Disable official `Xiaomi Service Framework` that you can use `Mi Push Service`.

Module will change these props that follow down.
* `ro.miui.ui.version.name` = `V10`
* `ro.miui.ui.version.code` = `8`
* `ro.miui.version.code_time` = `1544025600`
* `ro.fota.oem` = `Xiaomi`
* `ro.miui.internal.storage` = `/sdcard/`

And `__system_property_get` (`android::base::GetProperty` on Pie+) will be hooked and these props will be changed in packages selected in
manager with value map below (Required Riru Core installed.).
* `ro.product.manufacturer` = `Xiaomi`
* `ro.product.brand` = `Xiaomi`
* `ro.product.name` = `Xiaomi`

## Changes log
* v0.3.6.20181130.7881203 (266) [2018/12/13]
-Add MIUI 10 prop to module.
-Update Push Service Framework and priv-app permissions to v0.3.6.20181130.7881203 (266).

## Tips
* Only arm & arm64 devices can install this module.
* Module don't include manager, you can download the current version at [https://github.com/Trumeet/MiPushFramework/releases](https://github.com/Trumeet/MiPushFramework/releases) and install it manually.
* Riru Core is required by some features, please install it in Magisk first. [Download](https://github.com/RikkaApps/Riru/releases)
* If you want to learn more about XiaoMiPushFramework, please visit [https://github.com/Trumeet/MiPushFramework](https://github.com/Trumeet/MiPushFramework).
* If you want to disable XiaoMiPushFramework, please visit [https://github.com/cubesky/MiPushFrameworkFake](https://github.com/cubesky/MiPushFrameworkFake).

## Thanks
* [Trumeet](https://github.com/Trumeet/) - [MiPushFramework](https://github.com/Trumeet/MiPushFramework)
* [cubesky](https://github.com/cubesky/) - [MiPushFake](https://github.com/Magisk-Modules-Repo/MiPushFake)
* [RikkaW](https://github.com/RikkaW/) - [Riru](https://github.com/RikkaApps/Riru)
* [TimothyZhang023](https://github.com/TimothyZhang023/) - [Riru-MiPushFake](https://github.com/TimothyZhang023/Riru-MiPushFake)
* [MlgmXyysd](https://github.com/MlgmXyysd/) - This module.
* Qida - Kill XiaoMi Service Framework (I can't find repo's link, if someone know, please tell me.)