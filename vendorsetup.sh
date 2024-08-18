echo 'Hello! we need to clone stuffs needed for your device, please wait tll process complete'

echo 'Cloning Device Common Tree'
	git clone https://github.com/xiaomi-sm6150-phoenix/android_device_xiaomi_sm6150-common -b ursa device/xiaomi/sm6150-common

echo 'Cloning Hardware Xiaomi Tree'
	git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-21 hardware/xiaomi

echo 'Cloning Kernel Tree'
	git clone --depth=1 https://github.com/xiaomi-sm6150-phoenix/android_kernel_xiaomi_sm6150 -b ursa kernel/xiaomi/sm6150

echo 'Cloning Vendor Tree'
	git clone https://github.com/xiaomi-sm6150-phoenix/android_vendor_xiaomi_phoenix -b ursa vendor/xiaomi/phoenix

echo 'Cloning Vendor Common Tree'
	git clone https://github.com/xiaomi-sm6150-phoenix/android_vendor_xiaomi_sm6150-common -b ursa vendor/xiaomi/sm6150-common
