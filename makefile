
# Makefile for i9500
#

local-zip-file := stockrom.zip

local-out-zip-file := MIUI_i9500.zip

local-previous-target-dir := ~/ota_test/i9500

local-density := XXHDPI

local-miui-modified-apps := Phone MiuiHome MiuiSystemUI 

local-miui-removed-apps := SettingsProvider MediaProvider

local-modified-apps := SecSettingsProvider SamsungChineseIME SamsungCamera2 SecSettings

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-pre-zip-misc
local-after-zip:= local-put-to-phone

otatype := fullota

include phoneapps.mk
include $(PORT_BUILD)/porting.mk

local-pre-zip-misc:
	rm -rf $(ZIP_DIR)/system/csc/common/system/app/*
	rm -rf $(ZIP_DIR)/system/csc/BRI/system/app/*
	rm -rf $(ZIP_DIR)/system/csc/TGY/system/app/*
	rm -rf $(ZIP_DIR)/system/containers/*
	cp -rf other/system $(ZIP_DIR)/
	cp -r other/StockSettings.apk $(ZIP_DIR)/system/app
	cp -f stockrom/system/bin/installd $(ZIP_DIR)/system/bin/installd
	cp -rf stockrom/system/app/mcRegistry $(ZIP_DIR)/system/app/mcRegistry
	cp -f stockrom/system/app/FFFFFFFF000000000000000000000001.drbin $(ZIP_DIR)/system/app/FFFFFFFF000000000000000000000001.drbin
	mv $(ZIP_DIR)/system/framework/framework_ext.jar $(ZIP_DIR)/system/framework/framework2.jar &
	sed -i '/# end build properties/r other/customize.prop' $(ZIP_DIR)/system/build.prop
	rm -f $(ZIP_DIR)/system/etc/enforcecopyinglibpackages.txt
	for apk in $(ZIP_DIR)/data/miui/preinstall_apps/*.apk; do \
		$(AAPT) d --values resources $$apk | grep 'id=127 packageCount' | sed -e "s/^.*name=//" >> $(ZIP_DIR)/system/etc/enforcecopyinglibpackages_tmp.txt; \
	done
	for apk in $(ZIP_DIR)/data/miui/cust/preinstall_apps/*.apk; do \
		$(AAPT) d --values resources $$apk | grep 'id=127 packageCount' | sed -e "s/^.*name=//" >> $(ZIP_DIR)/system/etc/enforcecopyinglibpackages_tmp.txt; \
	done
	cat $(ZIP_DIR)/system/etc/enforcecopyinglibpackages_tmp.txt | wc -l > $(ZIP_DIR)/system/etc/enforcecopyinglibpackages.txt
	cat $(ZIP_DIR)/system/etc/enforcecopyinglibpackages_tmp.txt >> $(ZIP_DIR)/system/etc/enforcecopyinglibpackages.txt
	rm -f $(ZIP_DIR)/system/etc/enforcecopyinglibpackages_tmp.txt
	rm -rf $(ZIP_DIR)/system/media/audio/ui/PowerOn.ogg
	sed -i 's/saveDumpstate/saveDumpState/g' $(ZIP_DIR)/system/lib/libandroid_runtime.so

%.sign-plat : out/%
	java -jar $(TOOL_DIR)/signapk.jar $(PORT_ROOT)/build/security/platform.x509.pem $(PORT_ROOT)/build/security/platform.pk8  $< $<.signed
	@echo push -- to --- phone
	adb remount
	adb push $<.signed /data/local/tmp/$*
	adb shell chmod 644 /data/local/tmp/$*
	adb shell busybox mv -f /data/local/tmp/$* /system/app

