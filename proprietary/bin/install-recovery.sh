#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:36046158:5864321b0e00235bf0f6d8aa21425b0a3c8ce343; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:32990538:5e7c8e3e757d09aa322544ca5a0be1ac93e35c8f EMMC:/dev/block/bootdevice/by-name/recovery 5864321b0e00235bf0f6d8aa21425b0a3c8ce343 36046158 5e7c8e3e757d09aa322544ca5a0be1ac93e35c8f:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
