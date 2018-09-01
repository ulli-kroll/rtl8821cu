EXTRA_CFLAGS += -DCONFIG_RTL8821C

MODULE_NAME = 8821cu

ifeq ($(CONFIG_PLATFORM_NV_TK1), n)
ifeq ($(CONFIG_PLATFORM_RTK129X), n)
ifeq ($(CONFIG_MP_INCLUDED), y)
### 8821C Default Enable VHT MP HW TX MODE ###
EXTRA_CFLAGS += -DCONFIG_MP_VHT_HW_TX_MODE
CONFIG_MP_VHT_HW_TX_MODE = y
endif
endif
endif

_HAL_HALMAC_FILES +=	hal/halmac/halmac_api.o

_HAL_HALMAC_FILES +=	hal/halmac/halmac_88xx/halmac_api_88xx.o \
			hal/halmac/halmac_88xx/halmac_func_88xx.o \
			hal/halmac/halmac_88xx/halmac_api_88xx_usb.o \
			hal/halmac/halmac_88xx/halmac_api_88xx_sdio.o \
			hal/halmac/halmac_88xx/halmac_api_88xx_pcie.o

_HAL_HALMAC_FILES +=	hal/halmac/halmac_88xx/halmac_8821c/halmac_8821c_pwr_seq.o \
			hal/halmac/halmac_88xx/halmac_8821c/halmac_api_8821c.o \
			hal/halmac/halmac_88xx/halmac_8821c/halmac_func_8821c.o \
			hal/halmac/halmac_88xx/halmac_8821c/halmac_api_8821c_usb.o \
			hal/halmac/halmac_88xx/halmac_8821c/halmac_api_8821c_sdio.o \
			hal/halmac/halmac_88xx/halmac_8821c/halmac_api_8821c_pcie.o \
			hal/halmac/halmac_88xx/halmac_8821c/halmac_8821c_phy.o

_HAL_INTFS_FILES +=	hal/hal_halmac.o

_HAL_INTFS_FILES +=	hal/rtl8821c/rtl8821c_halinit.o \
			hal/rtl8821c/rtl8821c_mac.o \
			hal/rtl8821c/rtl8821c_cmd.o \
			hal/rtl8821c/rtl8821c_phy.o \
			hal/rtl8821c/rtl8821c_dm.o \
			hal/rtl8821c/rtl8821c_ops.o \
			hal/rtl8821c/hal8821c_fw.o

_HAL_INTFS_FILES +=	hal/rtl8821c/usb/rtl8821cu_halinit.o \
			hal/rtl8821c/usb/rtl8821cu_halmac.o \
			hal/rtl8821c/usb/rtl8821cu_io.o \
			hal/rtl8821c/usb/rtl8821cu_xmit.o \
			hal/rtl8821c/usb/rtl8821cu_recv.o \
			hal/rtl8821c/usb/rtl8821cu_led.o \
			hal/rtl8821c/usb/rtl8821cu_ops.o

_HAL_INTFS_FILES +=hal/efuse/rtl8821c/HalEfuseMask8821C_USB.o

_OUTSRC_FILES +=	hal/phydm/rtl8821c/halhwimg8821c_bb.o \
			hal/phydm/rtl8821c/halhwimg8821c_mac.o \
			hal/phydm/rtl8821c/halhwimg8821c_rf.o \
			hal/phydm/rtl8821c/phydm_hal_api8821c.o \
			hal/phydm/rtl8821c/phydm_regconfig8821c.o\
			hal/phydm/rtl8821c/halphyrf_8821c.o\
			hal/phydm/rtl8821c/phydm_iqk_8821c.o

_HAL_INTFS_FILES += $(_HAL_HALMAC_FILES)
