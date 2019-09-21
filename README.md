# android_device_OPPO_CPH1955
TWRP device tree for OPPO K3 **`(Not tested, as no fastboot yet :)`**

## Features

Works:

- ADB
- Decryption of /data (Only if pattern or pin or password is not setted)
- Screen brightness settings
- Correct screenshot color
- MTP
- Flashing (opengapps, roms, images and so on)
- Backup/Restore (Needs more testing)
- USB OTG
- Touchscreen


TO-DO:

- Vibration support

## Compile

First checkout minimal twrp with omnirom tree:

```
repo init -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-9.0
repo sync
```

Then add these projects to .repo/manifest.xml:

```xml
<project path="device/OPPO/CPH1955" name="oppo-k3/android_device_OPPO_CPH1955" remote="github" revision="android-9.0" />
```

Finally execute these:

```
. build/envsetup.sh
lunch omni_CPH1955-eng
mka recoveryimage ALLOW_MISSING_DEPENDENCIES=true # Only if you use minimal twrp tree.
```

To test it:

```
fastboot boot out/target/product/CPH1955/recovery.img
```

## Other Sources

Kernel Sources: using precompiled stock kernel
