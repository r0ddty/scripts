crave run --no-patch -- "rm -rf device/xiaomi/fog vendor/xiaomi/miuicamera .repo/local_manifests; \
echo "initing manifest"; \
repo init -u https://github.com/RisingTechOSS/android -b fourteen --git-lfs; \
echo "inited manifest"; \
echo "syncing source"; \
/opt/crave/resync.sh; \
echo "synced source"; \
echo "cloning device sources"; \
git clone https://github.com/r0ddty/device_xiaomi_fog --depth 1 -b rising-qpr3 device/xiaomi/fog; \
git clone https://gitlab.com/r0ddty/vendor_xiaomi_miuicamera_fog --depth 1 -b leica-5.0 vendor/xiaomi/miuicamera; \
echo "device source cloned"; \
echo "starting build"; \
source build/envsetup.sh; \
riseup fog userdebug; \
rise b"
