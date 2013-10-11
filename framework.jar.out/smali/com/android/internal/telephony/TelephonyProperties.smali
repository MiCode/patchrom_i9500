.class public interface abstract Lcom/android/internal/telephony/TelephonyProperties;
.super Ljava/lang/Object;
.source "TelephonyProperties.java"


# static fields
.field public static final CALLS_ON_IMS_ENABLED_PROPERTY:Ljava/lang/String; = "persist.radio.calls.on.ims"

.field public static final CURRENT_ACTIVE_PHONE:Ljava/lang/String; = "gsm.current.phone-type"

.field public static final PROPERTY_AIRPLAIN_CDMA:Ljava/lang/String; = "gsm.airplain.cdma"

.field public static final PROPERTY_AIRPLAIN_GSM:Ljava/lang/String; = "gsm.airplain.gsm"

.field public static final PROPERTY_ALPHA_USRCNF:Ljava/lang/String; = "persist.atel.noalpha.usrcnf"

.field public static final PROPERTY_API_SIM:Ljava/lang/String; = "persist.sys.api.simid"

.field public static final PROPERTY_APN_SIM_OPERATOR_NUMERIC:Ljava/lang/String; = "gsm.apn.sim.operator.numeric"

.field public static final PROPERTY_BASEBAND:Ljava/lang/String; = "ro.baseband"

.field public static final PROPERTY_BASEBAND_VERSION:Ljava/lang/String; = "gsm.version.baseband"

.field public static final PROPERTY_BPM_SETTING_ENABLE:Ljava/lang/String; = "persist.sys.bpmsetting.enable"

.field public static final PROPERTY_CALL_DEFAULT_SIM_ID:Ljava/lang/String; = "persist.radio.calldefault.simid"

.field public static final PROPERTY_CALL_RING_DELAY:Ljava/lang/String; = "ro.telephony.call_ring.delay"

.field public static final PROPERTY_CDMA_IPPROTOCOL:Ljava/lang/String; = "persist.telephony.cdma.protocol"

.field public static final PROPERTY_CDMA_MSG_ID:Ljava/lang/String; = "persist.radio.cdma.msgid"

.field public static final PROPERTY_CDMA_ROAMING_IPPROTOCOL:Ljava/lang/String; = "persist.telephony.cdma.rproto"

.field public static final PROPERTY_CHANNEL_WHEN_DEFAULT_ESN:Ljava/lang/String; = "gsm.default.channel"

.field public static final PROPERTY_CMAS_ENABLE:Ljava/lang/String; = "persist.sys.cmas.enable"

.field public static final PROPERTY_CTC_IS_CDMA_PREF_COUNTRY:Ljava/lang/String; = "gsm.ctc.cdmaprefcountry"

.field public static final PROPERTY_CTC_IS_CHINAMAINLAND:Ljava/lang/String; = "gsm.ctc.chinamainland"

.field public static final PROPERTY_CURRENT_BOOT_MODEM:Ljava/lang/String; = "persist.radio.boot.modem"

.field public static final PROPERTY_CURRENT_DATA:Ljava/lang/String; = "net.gprs.current.data"

.field public static final PROPERTY_DATA_MMS_BUSY:Ljava/lang/String; = "persist.data.mms.busy"

.field public static final PROPERTY_DATA_NETWORK_TYPE:Ljava/lang/String; = "gsm.network.type"

.field public static final PROPERTY_DATA_NETWORK_TYPE_CDMA:Ljava/lang/String; = "gsm.network.type.cdma"

.field public static final PROPERTY_DATA_NETWORK_TYPE_SECONDARY:Ljava/lang/String; = "gsm.network.type2"

.field public static final PROPERTY_DATA_PREFER_SIM_ID:Ljava/lang/String; = "persist.sys.dataprefer.simid"

.field public static final PROPERTY_DATA_SERVICE:Ljava/lang/String; = "net.gprs.current.data"

.field public static final PROPERTY_DEFAULT_ESN:Ljava/lang/String; = "gsm.default.esn"

.field public static final PROPERTY_DEFAULT_SUBSCRIPTION:Ljava/lang/String; = "persist.default.subscription"

.field public static final PROPERTY_DISABLE_CALL:Ljava/lang/String; = "ro.telephony.disable-call"

.field public static final PROPERTY_DUALMODE_NETWORK_RESET:Ljava/lang/String; = "ril.dualmode.network-reset"

.field public static final PROPERTY_DUALMODE_TEST:Ljava/lang/String; = "persist.radio.dualmode.test"

.field public static final PROPERTY_ECM_EXIT_TIMER:Ljava/lang/String; = "ro.cdma.ecmexittimer"

.field public static final PROPERTY_ECN_ENABLE:Ljava/lang/String; = "persist.sys.radio.enable"

.field public static final PROPERTY_ECN_SC:Ljava/lang/String; = "persist.sys.radio.sc"

.field public static final PROPERTY_EONS_ENABLED:Ljava/lang/String; = "persist.eons.enabled"

.field public static final PROPERTY_FASTDORMANCY_ENABLE:Ljava/lang/String; = "persist.radio.fastdormancy"

.field public static final PROPERTY_FASTDORMANCY_INACTTIMER:Ljava/lang/String; = "persist.radio.inactivity"

.field public static final PROPERTY_ICC_CB_CHANNEL_LIST:Ljava/lang/String; = "persist.radio.icc.cb.list"

.field public static final PROPERTY_ICC_CB_LANGUAGE_INDEX:Ljava/lang/String; = "persist.radio.icc.cb.lang"

.field public static final PROPERTY_ICC_MAX_CB_CHANNELS:Ljava/lang/String; = "persist.radio.icc.cb.count"

.field public static final PROPERTY_ICC_OPERATOR_ALPHA:Ljava/lang/String; = "gsm.sim.operator.alpha"

.field public static final PROPERTY_ICC_OPERATOR_ALPHA_SECONDARY:Ljava/lang/String; = "gsm.sim.operator.alpha2"

.field public static final PROPERTY_ICC_OPERATOR_ISO_COUNTRY:Ljava/lang/String; = "gsm.sim.operator.iso-country"

.field public static final PROPERTY_ICC_OPERATOR_ISO_COUNTRY_SECONDARY:Ljava/lang/String; = "gsm.sim.operator.iso-country2"

.field public static final PROPERTY_ICC_OPERATOR_NUMERIC:Ljava/lang/String; = "gsm.sim.operator.numeric"

.field public static final PROPERTY_ICC_OPERATOR_NUMERIC_SECONDARY:Ljava/lang/String; = "gsm.sim.operator.numeric2"

.field public static final PROPERTY_IDP_STRING:Ljava/lang/String; = "ro.cdma.idpstring"

.field public static final PROPERTY_IGNORE_NITZ:Ljava/lang/String; = "telephony.test.ignore.nitz"

.field public static final PROPERTY_INE911:Ljava/lang/String; = "ril.cdma.ine911"

.field public static final PROPERTY_INE911_AIRPLANEMODE:Ljava/lang/String; = "ril.gsm.ine911.airplanemode"

.field public static final PROPERTY_INECM_MODE:Ljava/lang/String; = "ril.cdma.inecmmode"

.field public static final PROPERTY_LTE_ON:Ljava/lang/String; = "persist.radio.lteon"

.field public static final PROPERTY_LTE_ON_CDMA_DEVICE:Ljava/lang/String; = "telephony.lteOnCdmaDevice"

.field public static final PROPERTY_LTE_ON_CDMA_GLOBAL_MODE:Ljava/lang/String; = "persist.radio.LOCGlobalMode"

.field public static final PROPERTY_LTE_ON_CDMA_PRODUCT_TYPE:Ljava/lang/String; = "telephony.lteOnCdmaProductType"

.field public static final PROPERTY_MMS_TRANSACTION:Ljava/lang/String; = "mms.transaction"

.field public static final PROPERTY_MULTI_RILD:Ljava/lang/String; = "ro.multi.rild"

.field public static final PROPERTY_MULTI_SIM_CONFIG:Ljava/lang/String; = "persist.multisim.config"

.field public static final PROPERTY_MULTI_SIM_ENABLED:Ljava/lang/String; = "persist.dsds.enabled"

.field public static final PROPERTY_NETWORK_TYPE:Ljava/lang/String; = "persist.radio.networktype"

.field public static final PROPERTY_NET_MODE_GWL_GW:Ljava/lang/String; = "persist.radio.netmode.auto"

.field public static final PROPERTY_NET_MODE_USER_CHANGE:Ljava/lang/String; = "persist.radio.user.change"

.field public static final PROPERTY_OMH_ENABLED:Ljava/lang/String; = "persist.omh.enabled"

.field public static final PROPERTY_OOS_IS_DISCONNECT:Ljava/lang/String; = "persist.telephony.oosisdc"

.field public static final PROPERTY_OPERATOR_ALPHA:Ljava/lang/String; = "gsm.operator.alpha"

.field public static final PROPERTY_OPERATOR_ALPHA_CDMA:Ljava/lang/String; = "gsm.operator.alpha.cdma"

.field public static final PROPERTY_OPERATOR_ALPHA_SECONDARY:Ljava/lang/String; = "gsm.operator.alpha2"

.field public static final PROPERTY_OPERATOR_ISLTEROAMING:Ljava/lang/String; = "gsm.operator.islteroaming"

.field public static final PROPERTY_OPERATOR_ISLTEROAMING_SECONDARY:Ljava/lang/String; = "gsm.operator.islteroaming2"

.field public static final PROPERTY_OPERATOR_ISMANUAL:Ljava/lang/String; = "operator.ismanual"

.field public static final PROPERTY_OPERATOR_ISO_COUNTRY:Ljava/lang/String; = "gsm.operator.iso-country"

.field public static final PROPERTY_OPERATOR_ISO_COUNTRY_REAL:Ljava/lang/String; = "gsm.operator.iso-country.real"

.field public static final PROPERTY_OPERATOR_ISO_COUNTRY_SECONDARY:Ljava/lang/String; = "gsm.operator.iso-country2"

.field public static final PROPERTY_OPERATOR_ISROAMING:Ljava/lang/String; = "gsm.operator.isroaming"

.field public static final PROPERTY_OPERATOR_ISROAMING_CDMA:Ljava/lang/String; = "gsm.operator.isroaming.cdma"

.field public static final PROPERTY_OPERATOR_ISROAMING_SECONDARY:Ljava/lang/String; = "gsm.operator.isroaming2"

.field public static final PROPERTY_OPERATOR_NUMERIC:Ljava/lang/String; = "gsm.operator.numeric"

.field public static final PROPERTY_OPERATOR_NUMERIC_CDMA:Ljava/lang/String; = "gsm.operator.numeric.cdma"

.field public static final PROPERTY_OPERATOR_NUMERIC_REAL:Ljava/lang/String; = "gsm.operator.numeric.real"

.field public static final PROPERTY_OPERATOR_NUMERIC_SECONDARY:Ljava/lang/String; = "gsm.operator.numeric2"

.field public static final PROPERTY_OPERATOR_NUMERIC_SPRINT:Ljava/lang/String; = "gsm.operator.numeric.sprint"

.field public static final PROPERTY_OTASP_NUM_SCHEMA:Ljava/lang/String; = "ro.cdma.otaspnumschema"

.field public static final PROPERTY_PDP_CONTEXT_SIM_ID:Ljava/lang/String; = "persist.sys.pdpcontext.simid"

.field public static final PROPERTY_RESET_ON_RADIO_TECH_CHANGE:Ljava/lang/String; = "persist.radio.reset_on_switch"

.field public static final PROPERTY_RIL_IMPL:Ljava/lang/String; = "gsm.version.ril-impl"

.field public static final PROPERTY_RIL_SENDS_MULTIPLE_CALL_RING:Ljava/lang/String; = "ro.telephony.call_ring.multiple"

.field public static final PROPERTY_SIM_ACTIVE:Ljava/lang/String; = "gsm.sim.active"

.field public static final PROPERTY_SIM_ACTIVE_SECONDARY:Ljava/lang/String; = "gsm.sim.active2"

.field public static final PROPERTY_SIM_ACTIVITY:Ljava/lang/String; = "gsm.sim.activity"

.field public static final PROPERTY_SIM_ACTIVITY_DUAL:Ljava/lang/String; = "gsm.sim.activity.dual"

.field public static final PROPERTY_SIM_ACTIVITY_SECONDARY:Ljava/lang/String; = "gsm.sim.activity2"

.field public static final PROPERTY_SIM_AVAILBILITY:Ljava/lang/String; = "gsm.sim.availability"

.field public static final PROPERTY_SIM_AVAILBILITY_SECONDARY:Ljava/lang/String; = "gsm.sim.availability2"

.field public static final PROPERTY_SIM_CARDNAME:Ljava/lang/String; = "gsm.sim.cardname"

.field public static final PROPERTY_SIM_CARDNAME_DUAL:Ljava/lang/String; = "gsm.sim.cardname.dual"

.field public static final PROPERTY_SIM_CARDNAME_SECONDARY:Ljava/lang/String; = "gsm.sim.cardname2"

.field public static final PROPERTY_SIM_CARDNOTI:Ljava/lang/String; = "gsm.sim.cardnoti"

.field public static final PROPERTY_SIM_CARDNOTI_SECONDARY:Ljava/lang/String; = "gsm.sim.cardnoti2"

.field public static final PROPERTY_SIM_CURRENTNETWORK:Ljava/lang/String; = "gsm.sim.currentnetwork"

.field public static final PROPERTY_SIM_ICON:Ljava/lang/String; = "gsm.sim.icon"

.field public static final PROPERTY_SIM_ICON_DUAL:Ljava/lang/String; = "gsm.sim.icon.dual"

.field public static final PROPERTY_SIM_ICON_SECONDARY:Ljava/lang/String; = "gsm.sim.icon2"

.field public static final PROPERTY_SIM_IMSI_M:Ljava/lang/String; = "gsm.sim.imsim"

.field public static final PROPERTY_SIM_IRM:Ljava/lang/String; = "gsm.sim.irm"

.field public static final PROPERTY_SIM_MSISDN:Ljava/lang/String; = "gsm.sim.msisdn"

.field public static final PROPERTY_SIM_MSISDN_DUAL:Ljava/lang/String; = "gsm.sim.msisdn.dual"

.field public static final PROPERTY_SIM_MSISDN_SECONDARY:Ljava/lang/String; = "gsm.sim.msisdn2"

.field public static final PROPERTY_SIM_NEWCHECK:Ljava/lang/String; = "gsm.sim.newCheck"

.field public static final PROPERTY_SIM_NEWCHECK_SECONDARY:Ljava/lang/String; = "gsm.sim.newCheck2"

.field public static final PROPERTY_SIM_PPLOCK:Ljava/lang/String; = "gsm.sim.pplock"

.field public static final PROPERTY_SIM_PPLOCK_SECONDARY:Ljava/lang/String; = "gsm.sim.pplock2"

.field public static final PROPERTY_SIM_RESET:Ljava/lang/String; = "gsm.sim.cardreset"

.field public static final PROPERTY_SIM_RESET_SECONDARY:Ljava/lang/String; = "gsm.sim.cardreset2"

.field public static final PROPERTY_SIM_STATE:Ljava/lang/String; = "gsm.sim.state"

.field public static final PROPERTY_SIM_STATE_SECONDARY:Ljava/lang/String; = "gsm.sim.state2"

.field public static final PROPERTY_SIM_STATUS:Ljava/lang/String; = "gsm.sim.currentcardstatus"

.field public static final PROPERTY_SIM_STATUS_SECONDARY:Ljava/lang/String; = "gsm.sim.currentcardstatus2"

.field public static final PROPERTY_SIM_SUB_STATE:Ljava/lang/String; = "gsm.sim.sub.state"

.field public static final PROPERTY_SIO_MODE_WHEN_DEFAULT_ESN:Ljava/lang/String; = "gsm.default.siomode"

.field public static final PROPERTY_SMS_GCF_MODE:Ljava/lang/String; = "ril.sms.gcf-mode"

.field public static final PROPERTY_SMS_REASSEMBLY:Ljava/lang/String; = "ril.sms.reassembly"

.field public static final PROPERTY_SMS_RECEIVE:Ljava/lang/String; = "telephony.sms.receive"

.field public static final PROPERTY_SMS_RETRY_DELAY:Ljava/lang/String; = "persist.radio.sms_retry_delay"

.field public static final PROPERTY_SMS_SEND:Ljava/lang/String; = "telephony.sms.send"

.field public static final PROPERTY_SVDATA:Ljava/lang/String; = "ro.ril.svlte1x"

.field public static final PROPERTY_TEST_CSIM:Ljava/lang/String; = "persist.radio.test-csim"

.field public static final PROPERTY_TETHERING_TEST_MODE:Ljava/lang/String; = "ril.tethering.test_mode"

.field public static final PROPERTY_VOICE_MODEM_INDEX:Ljava/lang/String; = "persist.radio.voice.modem.index"

.field public static final PROPERTY_WAKE_LOCK_TIMEOUT:Ljava/lang/String; = "ro.ril.wake_lock_timeout"

.field public static final SET_BOOTING_PHONE:Ljava/lang/String; = "gsm.booting.phone"

.field public static final SIM_STATUS_DEFAULT:I = 0x9

.field public static final SIM_STATUS_EMPTY:I = 0x0

.field public static final SIM_STATUS_LOCKED:I = 0x1

.field public static final SIM_STATUS_OFF:I = 0x2

.field public static final SIM_STATUS_ON:I = 0x3

.field public static final SMS_SYNCHRONOUS_SENDING:Ljava/lang/String; = "persist.radio.sms_sync_sending"
