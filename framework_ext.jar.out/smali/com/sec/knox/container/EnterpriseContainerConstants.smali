.class public interface abstract Lcom/sec/knox/container/EnterpriseContainerConstants;
.super Ljava/lang/Object;
.source "EnterpriseContainerConstants.java"


# static fields
.field public static final ADMIN_UID:Ljava/lang/String; = "admin"

.field public static final CONTAINER_ACTIVE:I = 0x5b

.field public static final CONTAINER_ADMIN_PWD_RESET:I = 0x62

.field public static final CONTAINER_BASE:I = 0x5a

.field public static final CONTAINER_CREATED_NOT_ACTIVATED:I = 0x60

.field public static final CONTAINER_CREATION_IN_PROGRESS:I = 0x5d

.field public static final CONTAINER_DATA_PATH:Ljava/lang/String; = "/data/system/container/"

.field public static final CONTAINER_DOESNT_EXISTS:I = -0x1

.field public static final CONTAINER_ID:Ljava/lang/String; = "containerid"

.field public static final CONTAINER_INACTIVE:I = 0x5a

.field public static final CONTAINER_LOCKED:I = 0x5f

.field public static final CONTAINER_MOUNT_INACTIVE:I = 0x5c

.field public static final CONTAINER_NEW_STATE:Ljava/lang/String; = "container_new_state"

.field public static final CONTAINER_OLD_STATE:Ljava/lang/String; = "container_old_state"

.field public static final CONTAINER_REMOVE_IN_PROGRESS:I = 0x5e

.field public static final CONTAINER_UPGRADE_IN_PROGRESS:I = 0x61

.field public static final DEFAULT_INSTALLATION_SOURCE:I = 0x1

.field public static final DISABLE_CONTAINER_ACTIVATION_FLOW:I = 0x2

.field public static final EMAIL_DOMAIN:Ljava/lang/String; = "domain"

.field public static final EMAIL_USERNAME:Ljava/lang/String; = "username"

.field public static final ENABLE_CONTAINER_ACTIVATION_FLOW:I = 0x1

.field public static final ENTERPRISE_CONTAINER_SERVICE:Ljava/lang/String; = "container_service"

.field public static final FREEMIUM_CONTAINER_TYPE:I = 0x1

.field public static final INSTALL_ONLY:I = 0x1f7

.field public static final INTENT_ACTION_EXPIRED_PASSWORD_NOTIFICATION:Ljava/lang/String; = "enterprise.container.INTENT_ACTION_EXPIRED_PASSWORD_NOTIFICATION"

.field public static final INTENT_ACTION_PASSWORD_TIMEOUT_NOTIFICATION:Ljava/lang/String; = "com.sec.knox.container.INTENT_ALARM_TIMEOUT"

.field public static final INTENT_BUNDLE:Ljava/lang/String; = "intent"

.field public static final INTENT_CONTAINER_CANCELLED:Ljava/lang/String; = "enterprise.container.cancelled"

.field public static final INTENT_CONTAINER_CREATION_SUCCESS:Ljava/lang/String; = "enterprise.container.created.nonactive"

.field public static final INTENT_CONTAINER_EMAIL_ADDED:Ljava/lang/String; = "enterprise.container.email.added"

.field public static final INTENT_CONTAINER_EMAIL_REMOVED:Ljava/lang/String; = "enterprise.container.email.removed"

.field public static final INTENT_CONTAINER_LOCKED_BY_ADMIN:Ljava/lang/String; = "enterprise.container.locked"

.field public static final INTENT_CONTAINER_REMOUNT_FAILURE:Ljava/lang/String; = "enterprise.container.remount.failed"

.field public static final INTENT_CONTAINER_REMOUNT_SUCCESS:Ljava/lang/String; = "enterprise.container.remount.success"

.field public static final INTENT_CONTAINER_REMOVED:Ljava/lang/String; = "enterprise.container.uninstalled"

.field public static final INTENT_CONTAINER_REMOVE_PROGRESS:Ljava/lang/String; = "enterprise.container.remove.progress"

.field public static final INTENT_CONTAINER_REMOVE_UNMOUNT_FAILURE:Ljava/lang/String; = "enterprise.container.unmountfailure"

.field public static final INTENT_CONTAINER_SETUP_FAILURE:Ljava/lang/String; = "enterprise.container.setup.failure"

.field public static final INTENT_CONTAINER_SETUP_SUCCESS:Ljava/lang/String; = "enterprise.container.setup.success"

.field public static final INTENT_CONTAINER_STATE_CHANGED:Ljava/lang/String; = "com.samsung.enterprise.container_state_changed"

.field public static final INTENT_CONTAINER_UNLOCKED:Ljava/lang/String; = "enterprise.container.unlocked"

.field public static final INTENT_EMAIL_ACCOUNT_CREATED:Ljava/lang/String; = "android.intent.action.EMAIL_ACCOUNT_CREATED_INTENT"

.field public static final INTENT_EMAIL_ACCOUNT_DELETED:Ljava/lang/String; = "android.intent.action.EMAIL_ACCOUNT_DELETED_INTENT"

.field public static final INTENT_PASSWORD_EXPIRE:Ljava/lang/String; = "com.samsung.redex.proxy.activity.show_dialog"

.field public static final INTENT_PASSWORD_TIMEOUT:Ljava/lang/String; = "com.samsung.redex.proxy.activity.show_dialog"

.field public static final INTENT_REDEX_ACTIVITY_CLOSE:Ljava/lang/String; = "com.samsung.redex.proxy.activity.close_dialog"

.field public static final INVALID_CONTAINER_ID:I = -0x1

.field public static final INVALID_REQUEST_ID:I = -0x1

.field public static final LOCK_TYPE_PASSWORD:I = 0x0

.field public static final LOCK_TYPE_PIN:I = 0x1

.field public static final MAX_CONTAINER_NUMBER:I = 0x1

.field public static final MAX_FAILED_PASSWORD_ATTEMPT_BEFORE_LOCK:I = 0xa

.field public static final MDM_INSTALLATION_SOURCE:I = 0x2

.field public static final PASSWORD_ACTIVE:I = 0x51

.field public static final PASSWORD_INACTIVE:I = 0x50

.field public static final PASSWORD_RESET:I = 0x53

.field public static final PASSWORD_STATUS_BASE:I = 0x50

.field public static final PASSWORD_VALIDATION_BASE:I = 0x32

.field public static final PASSWORD_VALIDATION_CONTAINER_INVALID:I = 0x32

.field public static final PASSWORD_VALIDATION_FORBIDDEN_STRING:I = 0x3c

.field public static final PASSWORD_VALIDATION_INVALID_LENGTH:I = 0x34

.field public static final PASSWORD_VALIDATION_INVALID_LETTERS_LENGTH:I = 0x35

.field public static final PASSWORD_VALIDATION_INVALID_LOWERCASE_LENGTH:I = 0x37

.field public static final PASSWORD_VALIDATION_INVALID_NONLETTERS_LENGTH:I = 0x3a

.field public static final PASSWORD_VALIDATION_INVALID_NUMBERS_LENGTH:I = 0x36

.field public static final PASSWORD_VALIDATION_INVALID_QUALITY:I = 0x33

.field public static final PASSWORD_VALIDATION_INVALID_SYMBOLS_LENGTH:I = 0x39

.field public static final PASSWORD_VALIDATION_INVALID_UPPERCASE_LENGTH:I = 0x38

.field public static final PASSWORD_VALIDATION_MAXIMUM_CHARACTER_OCCURRENCE_ERROR:I = 0x3e

.field public static final PASSWORD_VALIDATION_MAXIMUM_CHARACTER_SEQUENCE_LENGTH_ERROR:I = 0x3f

.field public static final PASSWORD_VALIDATION_MAXIMUM_LIMIT_EXCEEDED:I = 0x45

.field public static final PASSWORD_VALIDATION_MAXIMUM_NUMERIC_SEQUENCE_LENGTH_ERROR:I = 0x40

.field public static final PASSWORD_VALIDATION_MINIMUM_CHARACTER_CHANGE_LENGTH_ERROR:I = 0x3d

.field public static final PASSWORD_VALIDATION_PASSWORD_ILLEGAL_CHARACTERS:I = 0x46

.field public static final PASSWORD_VALIDATION_PASSWORD_REPEATING_CHARACTERS:I = 0x43

.field public static final PASSWORD_VALIDATION_PASSWORD_SEQUENTIAL_CHARACTERS:I = 0x42

.field public static final PASSWORD_VALIDATION_PASSWORD_USED_ALREADY_ERROR:I = 0x41

.field public static final PASSWORD_VALIDATION_SUCCESSFUL:I = 0x3b

.field public static final PASSWORD_VALIDATION_WRONG_OLD_PASSWORD:I = 0x44

.field public static final PASSWORD_VERIFY:I = 0x52

.field public static final PERMISSION_EMAIL_ACCOUNT_SETUP:Ljava/lang/String; = "com.sec.android.email.EMAIL_ACCOUNT_SETUP"

.field public static final PERSONAL_CONTAINER_TYPE:I = 0x0

.field public static final PREMIUM_CONTAINER_TYPE:I = 0x2

.field public static final REDEX_SIGN_INSTALL:I = 0x1f5

.field public static final REQUEST_ID:Ljava/lang/String; = "requestid"

.field public static final SIGN_INSTALL:I = 0x1f6

.field public static final STORE_INSTALLATION_SOURCE:I = 0x3

.field public static final SYSTEM_SIGNED_APP:I = 0x2710

.field public static final UNKNOWN_INSTALLATION_SOURCE:I = 0x4
