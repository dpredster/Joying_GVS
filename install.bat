adb kill-server
adb connect %1
adb root

adb shell "mount -o remount,rw /system"
adb shell "mount -o remount,rw /"

adb shell "mkdir /tmp"
adb shell "mkdir /tmp/okgoogle"

adb push system /tmp/okgoogle/

adb shell "mkdir /system/priv-app/HotwordEnrollment"
adb shell "chmod 0755 /system/priv-app/HotwordEnrollment"
adb shell "cp /tmp/okgoogle/priv-app/HotwordEnrollment/HotwordEnrollment.apk /system/priv-app/HotwordEnrollment"
adb shell "chmod 0644 /system/priv-app/HotwordEnrollment/HotwordEnrollment.apk"

adb shell "mkdir /system/priv-app/Velvet"
adb shell "chmod 0755 /system/priv-app/Velvet"
adb shell "cp /tmp/okgoogle/priv-app/Velvet/Velvet.apk /system/priv-app/Velvet"
adb shell "chmod 0644 /system/priv-app/Velvet/Velvet.apk"

adb shell "mkdir /system/priv-app/Velvet/lib"
adb shell "chmod 0755 /system/priv-app/Velvet/lib"
adb shell "mkdir /system/priv-app/Velvet/lib/x86"
adb shell "chmod 0755 /system/priv-app/Velvet/lib/x86"
adb shell "cp /tmp/okgoogle/priv-app/Velvet/lib/x86/libcronet.so /system/priv-app/Velvet/lib/x86"
adb shell "chmod 0644 /system/priv-app/Velvet/lib/x86/libcronet.so"
adb shell "cp /tmp/okgoogle/priv-app/Velvet/lib/x86/libframesequence.so /system/priv-app/Velvet/lib/x86"
adb shell "chmod 0644 /system/priv-app/Velvet/lib/x86/libframesequence.so"
adb shell "cp /tmp/okgoogle/priv-app/Velvet/lib/x86/libgoogle_speech_jni.so /system/priv-app/Velvet/lib/x86"
adb shell "chmod 0644 /system/priv-app/Velvet/lib/x86/libgoogle_speech_jni.so"
adb shell "cp /tmp/okgoogle/priv-app/Velvet/lib/x86/libgoogle_speech_micro_jni.so /system/priv-app/Velvet/lib/x86"
adb shell "chmod 0644 /system/priv-app/Velvet/lib/x86/libgoogle_speech_micro_jni.so"
adb shell "cp /tmp/okgoogle/priv-app/Velvet/lib/x86/libnativecrashreporter.so /system/priv-app/Velvet/lib/x86"
adb shell "chmod 0644 /system/priv-app/Velvet/lib/x86/libnativecrashreporter.so"
adb shell "cp /tmp/okgoogle/priv-app/Velvet/lib/x86/liboffline_actions_jni.so /system/priv-app/Velvet/lib/x86"
adb shell "chmod 0644 /system/priv-app/Velvet/lib/x86/liboffline_actions_jni.so"

adb shell "mkdir /system/usr/srec"
adb shell "chmod 0755 /system/usr/srec"
adb shell "mkdir /system/usr/srec/en-US"
adb shell "chmod 0755 /system/usr/srec/en-US"
adb push system/usr/srec/en-US /system/usr/srec/en-US/
adb shell "chmod -R 0644 /system/usr/srec/"

adb shell rm -rf /tmp
adb shell "mount -o remount,ro /system"
adb shell "mount -o remount,ro /"
echo Reboot your Head Unit NOW!
