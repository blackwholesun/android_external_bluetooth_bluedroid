ifneq ($(TARGET_SIMULATOR),true)

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_C_INCLUDES:= . \
                   $(LOCAL_PATH)/include \
                   $(LOCAL_PATH)/avct \
                   $(LOCAL_PATH)/btm \
                   $(LOCAL_PATH)/avrc \
                   $(LOCAL_PATH)/l2cap \
                   $(LOCAL_PATH)/avdt \
                   $(LOCAL_PATH)/gatt \
                   $(LOCAL_PATH)/gap \
                   $(LOCAL_PATH)/bip \
                   $(LOCAL_PATH)/pan \
                   $(LOCAL_PATH)/bpp \
                   $(LOCAL_PATH)/bnep \
                   $(LOCAL_PATH)/hid \
                   $(LOCAL_PATH)/obx \
                   $(LOCAL_PATH)/sdp \
                   $(LOCAL_PATH)/smp \
                   $(LOCAL_PATH)/amp \
                   $(LOCAL_PATH)/amp/security \
                   $(LOCAL_PATH)/../include \
                   $(LOCAL_PATH)/../gki/common \
                   $(LOCAL_PATH)/../gki/ulinux \
                   $(LOCAL_PATH)/../udrv/include \
                   $(LOCAL_PATH)/../rpc/include \
                   $(LOCAL_PATH)/../hcis \
                   $(LOCAL_PATH)/../ctrlr/include \
                   $(LOCAL_PATH)/../bta/include \
                   $(LOCAL_PATH)/../bta/sys \
                   $(LOCAL_PATH)/../brcm/include

ifeq ($(BOARD_HAVE_BLUETOOTH_BCM),true)
LOCAL_CFLAGS += \
	-DBOARD_HAVE_BLUETOOTH_BCM 
endif

LOCAL_PRELINK_MODULE:=false
LOCAL_SRC_FILES:= \
    ./dun/dun_api.c \
    ./a2dp/a2d_api.c \
    ./a2dp/a2d_m24.c \
    ./a2dp/a2d_m12.c \
    ./a2dp/a2d_sbc.c \
    ./avrc/avrc_bld_tg.c \
    ./avrc/avrc_api.c \
    ./avrc/avrc_utils.c \
    ./avrc/avrc_pars_ct.c \
    ./avrc/avrc_sdp.c \
    ./avrc/avrc_pars_tg.c \
    ./avrc/avrc_bld_ct.c \
    ./avrc/avrc_opt.c \
    ./hid/hidd_conn.c \
    ./hid/hidd_mgmt.c \
    ./hid/hidh_api.c \
    ./hid/hidd_pm.c \
    ./hid/hidh_conn.c \
    ./hid/hidd_api.c \
    ./bnep/bnep_main.c \
    ./bnep/bnep_utils.c \
    ./bnep/bnep_api.c \
    ./hcic/hciblecmds.c \
    ./hcic/hcicmds.c \
    ./btm/btm_ble.c \
    ./btm/btm_sec.c \
    ./btm/btm_inq.c \
    ./btm/btm_ble_addr.c \
    ./btm/btm_ble_bgconn.c \
    ./btm/btm_main.c \
    ./btm/btm_dev.c \
    ./btm/btm_ble_gap.c \
    ./btm/btm_acl.c \
    ./btm/btm_sco.c \
    ./btm/btm_pm.c \
    ./btm/btm_devctl.c \
    ./rfcomm/rfc_utils.c \
    ./rfcomm/port_rfc.c \
    ./rfcomm/rfc_l2cap_if.c \
    ./rfcomm/rfc_mx_fsm.c \
    ./rfcomm/port_utils.c \
    ./rfcomm/rfc_port_fsm.c \
    ./rfcomm/rfc_port_if.c \
    ./rfcomm/port_api.c \
    ./rfcomm/rfc_ts_frames.c \
    ./mcap/mca_dact.c \
    ./mcap/mca_dsm.c \
    ./mcap/mca_l2c.c \
    ./mcap/mca_main.c \
    ./mcap/mca_csm.c \
    ./mcap/mca_cact.c \
    ./mcap/mca_api.c \
    ./gatt/gatt_sr.c \
    ./gatt/gatt_cl.c \
    ./gatt/gatt_api.c \
    ./gatt/gatt_auth.c \
    ./gatt/gatt_utils.c \
    ./gatt/gatt_main.c \
    ./gatt/att_protocol.c \
    ./gatt/gatt_attr.c \
    ./gatt/gatt_db.c \
    ./obx/hdrs/obx_dutf.c \
    ./obx/hdrs/obx_dwchar.c \
    ./obx/hdrs/obx_gen.c \
    ./obx/hdrs/obx_dunic.c \
    ./obx/hdrs/utfc.c \
    ./obx/hdrs/obx_dbtp.c \
    ./obx/hdrs/obx_dauth.c \
    ./obx/hdrs/obx_ebtp.c \
    ./obx/hdrs/obx_wchar.c \
    ./obx/hdrs/obx_eunic.c \
    ./obx/hdrs/obx_eopt.c \
    ./obx/hdrs/obx_dopt.c \
    ./obx/hdrs/obx_ewchar.c \
    ./obx/hdrs/obx_eutf.c \
    ./obx/obx_csm.c \
    ./obx/obx_ssm.c \
    ./obx/obx_cact.c \
    ./obx/obx_md5.c \
    ./obx/obx_rfc.c \
    ./obx/obx_main.c \
    ./obx/obx_sapi.c \
    ./obx/obx_l2c.c \
    ./obx/obx_sact.c \
    ./obx/obx_utils.c \
    ./obx/obx_capi.c \
    ./avct/avct_bcb_act.c \
    ./avct/avct_l2c_br.c \
    ./avct/avct_api.c \
    ./avct/avct_l2c.c \
    ./avct/avct_lcb.c \
    ./avct/avct_ccb.c \
    ./avct/avct_lcb_act.c \
    ./smp/smp_main.c \
    ./smp/smp_l2c.c \
    ./smp/smp_cmac.c \
    ./smp/smp_utils.c \
    ./smp/smp_act.c \
    ./smp/smp_keys.c \
    ./smp/smp_api.c \
    ./smp/aes.c \
    ./avdt/avdt_ccb.c \
    ./avdt/avdt_scb_act.c \
    ./avdt/avdt_msg.c \
    ./avdt/avdt_ccb_act.c \
    ./avdt/avdt_api.c \
    ./avdt/avdt_scb.c \
    ./avdt/avdt_ad.c \
    ./avdt/avdt_l2c.c \
    ./sdp/sdp_server.c \
    ./sdp/sdp_main.c \
    ./sdp/sdp_db.c \
    ./sdp/sdp_utils.c \
    ./sdp/sdp_api.c \
    ./sdp/sdp_discovery.c \
    ./xml/xml_parse.c \
    ./xml/xml_vlist.c \
    ./xml/xml_erp.c \
    ./xml/xml_flp.c \
    ./xml/xml_mlp.c \
    ./xml/xml_bld.c \
    ./pan/pan_main.c \
    ./pan/pan_api.c \
    ./pan/pan_utils.c \
    ./btu/btu_hcif.c \
    ./btu/btu_init.c \
    ./btu/btu_task.c \
    ./l2cap/l2c_fcr.c \
    ./l2cap/l2c_ucd.c \
    ./l2cap/l2c_main.c \
    ./l2cap/l2c_api.c \
    ./l2cap/l2c_utils.c \
    ./l2cap/l2c_csm.c \
    ./l2cap/l2c_link.c \
    ./l2cap/l2c_ble.c \
    ./goep/goep_fs.c \
    ./goep/goep_trace.c \
    ./goep/goep_util.c 

LOCAL_MODULE := libbt-brcm_stack 
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := STATIC_LIBRARIES
LOCAL_SHARED_LIBRARIES := libcutils libc

include $(LOCAL_PATH)/../include/buildcfg.mk

include $(BUILD_STATIC_LIBRARY)

endif  # TARGET_SIMULATOR != true
