#!/system/bin/sh
# Tunggu sampai boot selesai sepenuhnya
while [ "$(getprop sys.boot_completed)" != "1" ]; do
    sleep 2
done

# Pastikan vmeerd memiliki izin eksekusi jika belum
chmod +x /system/bin/vmeerd

# Mulai daemon jika tidak otomatis jalan lewat init.rc
if ! pgrep vmeerd > /dev/null; then
    /system/bin/vmeerd &
fi
