.class public Lcom/nuance/swype/connect/api/APICommandMessages;
.super Ljava/lang/Object;
.source "APICommandMessages.java"


# static fields
.field public static final MESSAGE_CHECK_UPGRADE:I = 0x40

.field public static final MESSAGE_CLIENT_ACCOUNT_DELETE:I = 0x101

.field public static final MESSAGE_CLIENT_ACCOUNT_REFRESH_DEVICES:I = 0x105

.field public static final MESSAGE_CLIENT_ACCOUNT_REGISTER:I = 0xfe

.field public static final MESSAGE_CLIENT_ACCOUNT_REVERIFY:I = 0x100

.field public static final MESSAGE_CLIENT_ACCOUNT_SET_DELAYED_REGISTRATION_ALERT:I = 0x103

.field public static final MESSAGE_CLIENT_ACCOUNT_UNLINK_DEVICE:I = 0x102

.field public static final MESSAGE_CLIENT_ACCOUNT_VERIFY:I = 0xff

.field public static final MESSAGE_CLIENT_ADDONS_REFRESH:I = 0x3d

.field public static final MESSAGE_CLIENT_ADDON_DOWNLOAD_CANCEL:I = 0x114

.field public static final MESSAGE_CLIENT_ADDON_INSTALL:I = 0xe0

.field public static final MESSAGE_CLIENT_ALM_DOWNLOAD_CANCEL:I = 0x113

.field public static final MESSAGE_CLIENT_ALM_INSTALL:I = 0xea

.field public static final MESSAGE_CLIENT_ALM_INSTALLED:I = 0xeb

.field public static final MESSAGE_CLIENT_BETA_GET_BUILD:I = 0xe7

.field public static final MESSAGE_CLIENT_BETA_GET_BUILD_LIST:I = 0xe6

.field public static final MESSAGE_CLIENT_BETA_INSTALL_BUILD:I = 0xe8

.field public static final MESSAGE_CLIENT_CATEGORY_DB_SUBSCRIBE:I = 0x10e

.field public static final MESSAGE_CLIENT_CATEGORY_DB_UNSUBSCRIBE:I = 0x10f

.field public static final MESSAGE_CLIENT_CATEGORY_INSTALL:I = 0x10b

.field public static final MESSAGE_CLIENT_CATEGORY_INSTALL_COMPLETE:I = 0x110

.field public static final MESSAGE_CLIENT_DELETE_MESSAGE:I = 0xdf

.field public static final MESSAGE_CLIENT_DLM_BACKUP_BEGIN:I = 0x11f

.field public static final MESSAGE_CLIENT_DLM_BACKUP_END:I = 0x120

.field public static final MESSAGE_CLIENT_DLM_BACKUP_EVENTS:I = 0x121

.field public static final MESSAGE_CLIENT_DLM_RESTORE:I = 0xf6

.field public static final MESSAGE_CLIENT_DLM_SYNC_NOW:I = 0x10d

.field public static final MESSAGE_CLIENT_GET_ALLOWED_REPORTING_METRICS:I = 0xf5

.field public static final MESSAGE_CLIENT_GET_MESSAGE_ID:I = 0xd6

.field public static final MESSAGE_CLIENT_INSTALLER_DOWNLOAD:I = 0xe2

.field public static final MESSAGE_CLIENT_INVALID_HANDLERS:I = 0xf0

.field public static final MESSAGE_CLIENT_LANGUAGE_DOWNLOAD_CANCEL:I = 0x111

.field public static final MESSAGE_CLIENT_LANGUAGE_INSTALL:I = 0xd7

.field public static final MESSAGE_CLIENT_LANGUAGE_INSTALLED:I = 0xd8

.field public static final MESSAGE_CLIENT_LANGUAGE_UNINSTALL:I = 0xd9

.field public static final MESSAGE_CLIENT_LOGIN:I = 0xe4

.field public static final MESSAGE_CLIENT_LOGIN_VALIDATE:I = 0xe5

.field public static final MESSAGE_CLIENT_PROCESS_CATEGORY_DELETE_CATEGORY_ACK:I = 0x10a

.field public static final MESSAGE_CLIENT_PROCESS_CATEGORY_EVENTS_ACK:I = 0x109

.field public static final MESSAGE_CLIENT_PROCESS_DLM_EVENTS_ACK:I = 0xfb

.field public static final MESSAGE_CLIENT_PROCESS_RESPONSE_DELAYED:I = 0x11e

.field public static final MESSAGE_CLIENT_REFRESH:I = 0xee

.field public static final MESSAGE_CLIENT_REGISTER_CLIENT:I = 0xc9

.field public static final MESSAGE_CLIENT_RESEARCH_SEND_UDB:I = 0xf2

.field public static final MESSAGE_CLIENT_RESEARCH_SET_UDB_SETTING:I = 0xf1

.field public static final MESSAGE_CLIENT_SEND_AGGREGATE_REPORTING:I = 0xcc

.field public static final MESSAGE_CLIENT_SEND_DLM_EVENT:I = 0xf8

.field public static final MESSAGE_CLIENT_SEND_HIGH_PRIORITY_EVENT:I = 0xf9

.field public static final MESSAGE_CLIENT_SEND_STAT_REPORTING:I = 0xcb

.field public static final MESSAGE_CLIENT_SET_ACTIVE_LANGUAGE:I = 0xe9

.field public static final MESSAGE_CLIENT_SET_ALM_NOTIFICATION_ALARM:I = 0xec

.field public static final MESSAGE_CLIENT_SET_ANDROID_ACCOUNTS:I = 0xfd

.field public static final MESSAGE_CLIENT_SET_APPLICATION_ID:I = 0x118

.field public static final MESSAGE_CLIENT_SET_BETA_INSTALLER_VERSION:I = 0xe1

.field public static final MESSAGE_CLIENT_SET_BUILD_TYPE:I = 0x10c

.field public static final MESSAGE_CLIENT_SET_CATEGORY_HOTWORD_STATUS:I = 0x107

.field public static final MESSAGE_CLIENT_SET_CATEGORY_STATUS:I = 0x106

.field public static final MESSAGE_CLIENT_SET_CELLULAR_DATA:I = 0xed

.field public static final MESSAGE_CLIENT_SET_CONNECT_FEATURES:I = 0xf4

.field public static final MESSAGE_CLIENT_SET_CORE_VERSIONS:I = 0x116

.field public static final MESSAGE_CLIENT_SET_CURRENT_DLM_CATEGORY:I = 0xfa

.field public static final MESSAGE_CLIENT_SET_CURRENT_LOCALE:I = 0xd2

.field public static final MESSAGE_CLIENT_SET_CUSTOMER_STRING:I = 0x11d

.field public static final MESSAGE_CLIENT_SET_DEVICE_NAME:I = 0x104

.field public static final MESSAGE_CLIENT_SET_DLM_STATUS:I = 0x108

.field public static final MESSAGE_CLIENT_SET_HANDLERS:I = 0xef

.field public static final MESSAGE_CLIENT_SET_LANGUAGES_AVAILABLE:I = 0xd1

.field public static final MESSAGE_CLIENT_SET_LICENSE_CHECKSUM:I = 0xd0

.field public static final MESSAGE_CLIENT_SET_LICENSE_CHECK_THRESHOLD:I = 0xce

.field public static final MESSAGE_CLIENT_SET_LICENSE_EXPIRATION:I = 0xcf

.field public static final MESSAGE_CLIENT_SET_LICENSE_STATUS:I = 0xda

.field public static final MESSAGE_CLIENT_SET_NETWORK_IDLE_TIMEOUT:I = 0x122

.field public static final MESSAGE_CLIENT_SET_OEM_ID:I = 0x115

.field public static final MESSAGE_CLIENT_SET_POLLING_FREQUENCY:I = 0x11b

.field public static final MESSAGE_CLIENT_SET_REPORTING_STATISTICS:I = 0xdd

.field public static final MESSAGE_CLIENT_SET_REPORTING_USAGE:I = 0xdc

.field public static final MESSAGE_CLIENT_SET_ROAMING_DATA:I = 0x11c

.field public static final MESSAGE_CLIENT_SET_SDK_VERSION:I = 0x117

.field public static final MESSAGE_CLIENT_SET_SWIB:I = 0xd3

.field public static final MESSAGE_CLIENT_SET_TRIAL_STATUS:I = 0xdb

.field public static final MESSAGE_CLIENT_SET_WIFI_DATA:I = 0x11a

.field public static final MESSAGE_CLIENT_START_IMMEDIDATELY:I = 0xde

.field public static final MESSAGE_CLIENT_SWIB_CHANGED_ACK:I = 0xf3

.field public static final MESSAGE_CLIENT_SWYPE_VERSION:I = 0xcd

.field public static final MESSAGE_CLIENT_UNREGISTER_CLIENT:I = 0xca

.field public static final MESSAGE_CLIENT_UPDATE_CONFIGURATION:I = 0x119

.field public static final MESSAGE_CLIENT_UPDATE_CURRENT_LANGUAGE:I = 0xfc

.field public static final MESSAGE_CLIENT_UPGRADE_DOWNLOAD:I = 0xd4

.field public static final MESSAGE_CLIENT_UPGRADE_DOWNLOAD_CANCEL:I = 0x112

.field public static final MESSAGE_CLIENT_UPGRADE_INSTALL:I = 0xd5

.field public static final MESSAGE_CLIENT_UPGRADE_INSTALLER:I = 0xe3

.field public static final MESSAGE_COMMAND_ADDON_CHECK:I = 0x1e

.field public static final MESSAGE_COMMAND_ALM_GET:I = 0x1d

.field public static final MESSAGE_COMMAND_CDB_AVAILABLE:I = 0x22

.field public static final MESSAGE_COMMAND_CDB_LIST_UPDATE:I = 0x21

.field public static final MESSAGE_COMMAND_DEVICE_ACK:I = 0x2

.field public static final MESSAGE_COMMAND_DEVICE_CONFIG:I = 0x8c

.field public static final MESSAGE_COMMAND_DEVICE_GET_SWYPER:I = 0x1b

.field public static final MESSAGE_COMMAND_DEVICE_REGISTER:I = 0x1

.field public static final MESSAGE_COMMAND_DEVICE_UPDATE:I = 0x3

.field public static final MESSAGE_COMMAND_DEVICE_VALIDATE:I = 0x4

.field public static final MESSAGE_COMMAND_DLM_BACKUP_REQUIRED:I = 0x20

.field public static final MESSAGE_COMMAND_LANGUAGE_GET:I = 0x13

.field public static final MESSAGE_COMMAND_LANGUAGE_UPGRADE:I = 0x15

.field public static final MESSAGE_COMMAND_LANGUAGE_UPGRADE_PREP:I = 0x14

.field public static final MESSAGE_COMMAND_LICENSE_ACK:I = 0xb

.field public static final MESSAGE_COMMAND_LICENSE_FETCH:I = 0xa

.field public static final MESSAGE_COMMAND_LICENSE_REQUEST:I = 0x9

.field public static final MESSAGE_COMMAND_PULL_DLM_EVENTS:I = 0x1f

.field public static final MESSAGE_COMMAND_REFRESH_LANGUAGE_MANAGER:I = 0x16

.field public static final MESSAGE_COMMAND_REQUEST_TIMERS:I = 0x1a

.field public static final MESSAGE_COMMAND_RETRIEVE_MESSAGE:I = 0xc

.field public static final MESSAGE_COMMAND_RETRIEVE_MESSAGE_BY_ID:I = 0xd

.field public static final MESSAGE_COMMAND_SESSION_CREATE:I = 0x5

.field public static final MESSAGE_COMMAND_SESSION_INVALIDATE:I = 0x7

.field public static final MESSAGE_COMMAND_SESSION_POLL:I = 0x8

.field public static final MESSAGE_COMMAND_SESSION_VALIDATE:I = 0x6

.field public static final MESSAGE_COMMAND_SYSTEM_POLL:I = 0xe

.field public static final MESSAGE_COMMAND_TIMER_AGGREGATE_FREQUENCY:I = 0x18

.field public static final MESSAGE_COMMAND_TIMER_POLL:I = 0x17

.field public static final MESSAGE_COMMAND_TIMER_STATISTICS_FREQUENCY:I = 0x19

.field public static final MESSAGE_COMMAND_UDB_UPLOAD_FREQUENCY:I = 0x1c

.field public static final MESSAGE_COMMAND_UPGRADE_ACK:I = 0x11

.field public static final MESSAGE_COMMAND_UPGRADE_CHECK:I = 0xf

.field public static final MESSAGE_COMMAND_UPGRADE_FETCH:I = 0x10

.field public static final MESSAGE_COMMAND_UPGRADE_STATUS:I = 0x12

.field public static final MESSAGE_DEVICE_INVALID:I = 0x47

.field public static final MESSAGE_GET_IMAGE_RESOURCE:I = 0x45

.field public static final MESSAGE_GET_TEXT_RESOURCE:I = 0x46

.field public static final MESSAGE_HOST_ACCOUNT_LIST_AVAILABLE:I = 0x8e

.field public static final MESSAGE_HOST_ACCOUNT_VERIFY:I = 0x8f

.field public static final MESSAGE_HOST_ACTIVITY_REDIRECT:I = 0x79

.field public static final MESSAGE_HOST_ADDONS_DOWNLOAD_PROGRESS:I = 0x67

.field public static final MESSAGE_HOST_ALM_INSTALL_READY:I = 0x68

.field public static final MESSAGE_HOST_BACKUP_NOW:I = 0x58

.field public static final MESSAGE_HOST_BETA_BUILD_LIST:I = 0x76

.field public static final MESSAGE_HOST_BETA_BUILD_READY:I = 0x78

.field public static final MESSAGE_HOST_BETA_DOWNLOAD_PROGRESS:I = 0x77

.field public static final MESSAGE_HOST_BETA_INSTALLER_IS_CURRENT:I = 0x6e

.field public static final MESSAGE_HOST_BETA_INSTALLER_IS_OLD:I = 0x6d

.field public static final MESSAGE_HOST_BETA_INSTALLER_PROGRESS:I = 0x6f

.field public static final MESSAGE_HOST_BETA_INSTALLER_READY:I = 0x6c

.field public static final MESSAGE_HOST_BETA_LOGIN_FAILURE:I = 0x71

.field public static final MESSAGE_HOST_BETA_LOGIN_SUCCESS:I = 0x70

.field public static final MESSAGE_HOST_BETA_LOGIN_VALIDATE:I = 0x72

.field public static final MESSAGE_HOST_BETA_VALIDATE_FAILURE:I = 0x75

.field public static final MESSAGE_HOST_BETA_VALIDATE_LOGIN_FAILURE:I = 0x74

.field public static final MESSAGE_HOST_BETA_VALIDATE_SUCCESS:I = 0x73

.field public static final MESSAGE_HOST_CLIENT_START_COMPLETE:I = 0x61

.field public static final MESSAGE_HOST_CONNECT_FEATURE_REQUESTED_ALM:I = 0x80

.field public static final MESSAGE_HOST_DEREGISTER:I = 0x81

.field public static final MESSAGE_HOST_DICTIONARY_DOWNLOAD_PROGRESS:I = 0x96

.field public static final MESSAGE_HOST_DICTIONARY_INSTALL_READY:I = 0x95

.field public static final MESSAGE_HOST_DICTIONARY_UNINSTALL:I = 0x97

.field public static final MESSAGE_HOST_DISPLAY_MESSAGE:I = 0x4f

.field public static final MESSAGE_HOST_DLM_BACKUP_REQUEST:I = 0x86

.field public static final MESSAGE_HOST_DLM_RESTORE:I = 0x83

.field public static final MESSAGE_HOST_GET_ACTIVE_LANGUAGE:I = 0x4a

.field public static final MESSAGE_HOST_GET_ANDROID_ACCOUNTS:I = 0x8d

.field public static final MESSAGE_HOST_GET_APPLICATION_ID:I = 0x9e

.field public static final MESSAGE_HOST_GET_BUILD_TYPE:I = 0x91

.field public static final MESSAGE_HOST_GET_CELLULAR_DATA:I = 0x7a

.field public static final MESSAGE_HOST_GET_CONNECT_FEATURES:I = 0x7f

.field public static final MESSAGE_HOST_GET_CONNECT_RESOURCES:I = 0x82

.field public static final MESSAGE_HOST_GET_CORE_VERSIONS:I = 0x9a

.field public static final MESSAGE_HOST_GET_CURRENT_LOCALE:I = 0x50

.field public static final MESSAGE_HOST_GET_CUSTOMER_STRING:I = 0xa1

.field public static final MESSAGE_HOST_GET_DEVICE_NAME:I = 0x93

.field public static final MESSAGE_HOST_GET_DLM_STATUS:I = 0x92

.field public static final MESSAGE_HOST_GET_HANDLERS:I = 0x7b

.field public static final MESSAGE_HOST_GET_INPUT_CATEGORY:I = 0x85

.field public static final MESSAGE_HOST_GET_INSTALLER_VERSION:I = 0x6b

.field public static final MESSAGE_HOST_GET_LANGUAGES_AVAILABLE:I = 0x49

.field public static final MESSAGE_HOST_GET_LICENSE_CHECK_THRESHOLD:I = 0x4b

.field public static final MESSAGE_HOST_GET_LICENSE_EXPIRATION:I = 0x4c

.field public static final MESSAGE_HOST_GET_LICENSE_STATUS:I = 0x5d

.field public static final MESSAGE_HOST_GET_OEM_ID:I = 0x99

.field public static final MESSAGE_HOST_GET_SDK_VERSION:I = 0x9d

.field public static final MESSAGE_HOST_GET_STATISTICS_STATUS:I = 0x60

.field public static final MESSAGE_HOST_GET_SWIB:I = 0x51

.field public static final MESSAGE_HOST_GET_SWYPE_VERSION:I = 0x57

.field public static final MESSAGE_HOST_GET_TRIAL_STATUS:I = 0x5e

.field public static final MESSAGE_HOST_GET_USAGE_STATUS:I = 0x5f

.field public static final MESSAGE_HOST_GET_WIFI_DATA:I = 0x9f

.field public static final MESSAGE_HOST_INVALID_HANDLERS:I = 0x7c

.field public static final MESSAGE_HOST_LANGUAGE_DOWNLOAD_CANCEL_ACK:I = 0xa0

.field public static final MESSAGE_HOST_LANGUAGE_DOWNLOAD_FAILED:I = 0x9b

.field public static final MESSAGE_HOST_LANGUAGE_DOWNLOAD_NETWORK_TIMEOUT:I = 0xa2

.field public static final MESSAGE_HOST_LANGUAGE_DOWNLOAD_PROGRESS:I = 0x5c

.field public static final MESSAGE_HOST_LANGUAGE_INSTALL_READY:I = 0x5a

.field public static final MESSAGE_HOST_LANGUAGE_LIST_AVAILABLE:I = 0x59

.field public static final MESSAGE_HOST_LANGUAGE_UNINSTALL:I = 0x5b

.field public static final MESSAGE_HOST_LICENSE_FETCH:I = 0x4d

.field public static final MESSAGE_HOST_PROCESS_DLM_DELETE_CATEGORY:I = 0x90

.field public static final MESSAGE_HOST_PROCESS_DLM_EVENTS:I = 0x84

.field public static final MESSAGE_HOST_RECEIVE_LICENSE_ACK:I = 0x4e

.field public static final MESSAGE_HOST_RECEIVE_MESSAGE_SET:I = 0x52

.field public static final MESSAGE_HOST_RESEARCH_GET_UDB:I = 0x7e

.field public static final MESSAGE_HOST_RESEARCH_GET_UDB_SETTING:I = 0x7d

.field public static final MESSAGE_HOST_SEND_DLM_EVENT:I = 0x89

.field public static final MESSAGE_HOST_SEND_DLM_EVENTS:I = 0x88

.field public static final MESSAGE_HOST_SEND_NEW_WORD_EVENT:I = 0x8b

.field public static final MESSAGE_HOST_SEND_NOTIFICATION:I = 0x64

.field public static final MESSAGE_HOST_SETTINGS_REFRESH:I = 0x6a

.field public static final MESSAGE_HOST_SET_ADDONS_STATUS:I = 0x66

.field public static final MESSAGE_HOST_SET_ALLOWED_REPORTING_METRICS:I = 0x8a

.field public static final MESSAGE_HOST_SET_ALM_STATUS:I = 0x69

.field public static final MESSAGE_HOST_SET_CONNECT_VERSION:I = 0x62

.field public static final MESSAGE_HOST_SET_DEVICE_ID:I = 0x9c

.field public static final MESSAGE_HOST_SET_DICTIONARIES_STATUS:I = 0x94

.field public static final MESSAGE_HOST_SET_LANGUAGES_STATUS:I = 0x65

.field public static final MESSAGE_HOST_SET_RESOURCES_FOR_LOCALE:I = 0x98

.field public static final MESSAGE_HOST_SET_SWYPER_ID:I = 0x63

.field public static final MESSAGE_HOST_SWIB_CHANGED:I = 0x56

.field public static final MESSAGE_HOST_UPGRADE_DOWNLOAD_AVAILABLE:I = 0x53

.field public static final MESSAGE_HOST_UPGRADE_DOWNLOAD_COMPLETE:I = 0x54

.field public static final MESSAGE_HOST_UPGRADE_PROGRESS:I = 0x55

.field public static final MESSAGE_LAST:I = 0x122

.field public static final MESSAGE_POSSIBLE_UPGRADE:I = 0x41

.field public static final MESSAGE_REFRESH_MESSAGES:I = 0x3f

.field public static final MESSAGE_REMOVE_LANGUAGES:I = 0x3e

.field public static final MESSAGE_RESET_SESSION:I = 0x3c

.field public static final MESSAGE_SEND_REPORTING_NOW:I = 0x42

.field public static final MESSAGE_STATUS:I = 0x48

.field public static final MESSAGE_STORE_IMAGE_RESOURCE:I = 0x44

.field public static final MESSAGE_STORE_TEXT_RESOURCE:I = 0x43


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
