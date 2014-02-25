LOCAL_PATH := $(call my-dir)

$(INSTALLED_RECOVERYIMAGE_TARGET): $(MKBOOTIMG) $(MKIMAGE) \
		$(recovery_ramdisk) \
		$(recovery_kernel)
	@echo ----- Making recovery image ------
	$(MKIMAGE) -A ARM -O Linux -T ramdisk -C none -a 0x40800000 -e 0x40800000 -n ramdisk -d $(recovery_ramdisk) $(recovery_ramdisk).uboot
	$(MKBOOTIMG) --kernel $(recovery_kernel) --ramdisk $(recovery_ramdisk).uboot --base $(strip $(BOARD_KERNEL_BASE)) --pagesize $(strip $(BOARD_KERNEL_PAGESIZE)) --output $@
	$(hide) $(call assert-max-image-size,$@,$(BOARD_RECOVERYIMAGE_PARTITION_SIZE),raw)
	@echo ----- Made recovery image -------- $@
