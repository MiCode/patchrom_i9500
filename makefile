
# Makefile for i9500
#

local-zip-file := stockrom.zip

local-out-zip-file := MIUI_i9500.zip

local-density := XXHDPI

local-miui-modified-apps := Phone MiuiHome 

local-miui-removed-apps := SettingsProvider MediaProvider

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-pre-zip-misc
local-after-zip:= local-put-to-phone

include phoneapps.mk
include $(PORT_BUILD)/porting.mk

local-pre-zip-misc:
	rm -rf $(ZIP_DIR)/system/csc/common/system/app/*
	rm -rf $(ZIP_DIR)/system/csc/BRI/system/app/*
	rm -rf $(ZIP_DIR)/system/csc/TGY/system/app/*
	rm -rf $(ZIP_DIR)/system/containers/*
	cp -f stockrom/system/bin/installd $(ZIP_DIR)/system/bin/installd
	cp -rf stockrom/system/app/mcRegistry $(ZIP_DIR)/system/app/mcRegistry
	cp -f stockrom/system/app/FFFFFFFF000000000000000000000001.drbin $(ZIP_DIR)/system/app/FFFFFFFF000000000000000000000001.drbin
	cp -f other/premiui  $(ZIP_DIR)/system/bin/premiui
	mv $(ZIP_DIR)/system/framework/framework_ext.jar $(ZIP_DIR)/system/framework/framework2.jar &
	cp -f other/libselinux.so $(ZIP_DIR)/system/lib/libselinux.so
	echo -e "ro.miui.ui.version.code=3\nro.miui.ui.version.name=V5\n" >> out/ZIP/system/build.prop

%.sign-plat : out/%
	java -jar $(TOOL_DIR)/signapk.jar $(PORT_ROOT)/build/security/platform.x509.pem $(PORT_ROOT)/build/security/platform.pk8  $< $<.signed
	@echo push -- to --- phone
	adb remount
	adb push $<.signed /data/local/tmp/$*
	adb shell chmod 644 /data/local/tmp/$*
	adb shell busybox mv -f /data/local/tmp/$* /system/app

