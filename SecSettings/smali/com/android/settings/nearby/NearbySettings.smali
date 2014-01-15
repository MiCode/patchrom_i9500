.class public Lcom/android/settings_ex/nearby/NearbySettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "NearbySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/nearby/NearbySettings$HandleRejectDevice;,
        Lcom/android/settings_ex/nearby/NearbySettings$HandleAcceptDevice;,
        Lcom/android/settings_ex/nearby/NearbySettings$HandleAllowUpload;,
        Lcom/android/settings_ex/nearby/NearbySettings$HandleShareContentType;,
        Lcom/android/settings_ex/nearby/NearbySettings$HandleServerName;,
        Lcom/android/settings_ex/nearby/NearbySettings$HandleServerStart;,
        Lcom/android/settings_ex/nearby/NearbySettings$HandleSetUploadPath;
    }
.end annotation


# static fields
.field private static final DEFAULT_DEVICE_NAME:Ljava/lang/String; = "Samsung Mobile"

.field private static final DOWNLAOD_TO_MEMORY:Ljava/lang/String; = "1"

.field private static final DOWNLOAD_TO_PHONE:Ljava/lang/String; = "0"

.field private static final HANDLER_AUTO_START_DMS:I = 0xbba

.field private static final HANDLER_RESET_FUNCTION_STATE:I = 0xbb9

.field private static final HANDLER_SELF_FINISH:I = 0xbbb

.field private static final KEY_ALLSHARE_ACCEPTED_DEVICE:Ljava/lang/String; = "allshare_accept_device"

.field private static final KEY_ALLSHARE_CATEGORY_ADVANCED:Ljava/lang/String; = "allshare_category_advanced"

.field private static final KEY_ALLSHARE_DEVICE_NAME:Ljava/lang/String; = "allshare_device_name"

.field private static final KEY_ALLSHARE_DOWNLOAD_FROME:Ljava/lang/String; = "allshare_download_from"

.field private static final KEY_ALLSHARE_DOWNLOAD_TO:Ljava/lang/String; = "allshare_download_to"

.field private static final KEY_ALLSHARE_ONOFF:Ljava/lang/String; = "allshare_onoff"

.field private static final KEY_ALLSHARE_REJECTED_DEVICE:Ljava/lang/String; = "allshare_reject_device"

.field private static final KEY_ALLSHARE_SHARED_CONTENTS:Ljava/lang/String; = "allshare_shared_contents"

.field private static final KEY_ALLSHARE_WELCOME_POPUP:Ljava/lang/String; = "allshare_welcome_popup"

.field private static final LENGTH_DEVICE_NAME_MAX:I = 0x37

.field private static final LENGTH_DEVICE_NAME_MAX_HOMESYNC:I = 0x35

.field private static final PATH_DOWNLOAD_FOLDER_NAME:Ljava/lang/String; = "/Nearby"

.field private static final PREFERENCE_NAME:Ljava/lang/String; = "pref_allshare"

.field protected static final PROJECTION_CONTACT:[Ljava/lang/String; = null

.field public static final SHARE_AUDIO_FLAG:I = 0xff

.field public static final SHARE_IMAGE_FLAG:I = 0xff0000

.field private static final SHARE_VALUE_MUSIC:Ljava/lang/String; = "2"

.field private static final SHARE_VALUE_PHOTOS:Ljava/lang/String; = "1"

.field private static final SHARE_VALUE_VIDEOS:Ljava/lang/String; = "0"

.field public static final SHARE_VIDEO_FLAG:I = 0xff00

.field private static final TAGClass:Ljava/lang/String; = "AllshareSetting: "

.field private static final TEXT_DEVICE_TYPE_CAMERA:Ljava/lang/String; = "[Camera]"

.field private static final TEXT_DEVICE_TYPE_HOMESYNC:Ljava/lang/String; = "[HomeSync]"

.field private static final TEXT_DEVICE_TYPE_MOBILE:Ljava/lang/String; = "[Mobile]"

.field private static final TEXT_DEVICE_TYPE_TABLET:Ljava/lang/String; = "[Tablet]"

.field private static final TEXT_SHOW_ACCESS_CONTROL:Ljava/lang/String; = "*#@&*#"

.field private static final VALUE_ACCEPT_ALL:Ljava/lang/String; = "0"

.field private static final VALUE_ONLY_ALLOWED_DEVICES:Ljava/lang/String; = "1"

.field protected static lengthDeviceNameMax:I

.field protected static mStorageManager:Landroid/os/storage/StorageManager;

.field protected static mStorageVolumes:[Landroid/os/storage/StorageVolume;


# instance fields
.field private bAutoStart:Z

.field private bDBCanceled:Z

.field private bDBUpdated:Z

.field private bFunctionState:Z

.field private bRegisterReceiver:Z

.field private bSelfFinish:Z

.field private bWifiPopupShown:Z

.field private dialogTime:J

.field private mAcceptDevice:Lcom/android/settings_ex/nearby/AcceptListPreference;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConn:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mDeviceName:Landroid/preference/EditTextPreference;

.field private mDeviceNameWatcher:Lcom/android/settings_ex/nearby/EditTextWatcher;

.field private mDownloadFrom:Landroid/preference/ListPreference;

.field private mDownloadTo:Lcom/android/settings_ex/nearby/DownloadListPreference;

.field private mFunctionOnoff:Landroid/preference/CheckBoxPreference;

.field private mHandler:Landroid/os/Handler;

.field private mIMediaServer:Lcom/android/settings_ex/nearby/IMediaServer;

.field private mPreferenceChangeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/preference/Preference$OnPreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceChangeThread:Landroid/os/HandlerThread;

.field private mPreferenceChangeWorker:Landroid/os/Handler;

.field private mRejectDevice:Lcom/android/settings_ex/nearby/RejectListPreference;

.field private mSharedContents:Landroid/preference/MultiSelectListPreference;

.field private mSharedContentsValue:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mToast:Landroid/widget/Toast;

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 194
    sput v2, Lcom/android/settings_ex/nearby/NearbySettings;->lengthDeviceNameMax:I

    .line 218
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "display_name_alt"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "sort_key"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_status"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "phonetic_name"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "has_phone_number"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "sort_key_alt"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "link"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "is_user_profile"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/nearby/NearbySettings;->PROJECTION_CONTACT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 108
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mSharedContentsValue:Ljava/util/HashSet;

    .line 163
    iput-boolean v1, p0, Lcom/android/settings_ex/nearby/NearbySettings;->bRegisterReceiver:Z

    .line 165
    iput-boolean v1, p0, Lcom/android/settings_ex/nearby/NearbySettings;->bWifiPopupShown:Z

    .line 167
    iput-boolean v1, p0, Lcom/android/settings_ex/nearby/NearbySettings;->bFunctionState:Z

    .line 171
    iput-boolean v1, p0, Lcom/android/settings_ex/nearby/NearbySettings;->bSelfFinish:Z

    .line 174
    iput-boolean v1, p0, Lcom/android/settings_ex/nearby/NearbySettings;->bDBUpdated:Z

    .line 176
    iput-boolean v1, p0, Lcom/android/settings_ex/nearby/NearbySettings;->bAutoStart:Z

    .line 178
    iput-boolean v1, p0, Lcom/android/settings_ex/nearby/NearbySettings;->bDBCanceled:Z

    .line 180
    iput-object v2, p0, Lcom/android/settings_ex/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    .line 182
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings_ex/nearby/NearbySettings;->dialogTime:J

    .line 185
    iput-object v2, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mPreferenceChangeThread:Landroid/os/HandlerThread;

    .line 187
    iput-object v2, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mPreferenceChangeWorker:Landroid/os/Handler;

    .line 214
    iput-object v2, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mToast:Landroid/widget/Toast;

    .line 216
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mPreferenceChangeMap:Ljava/util/HashMap;

    .line 239
    iput-object v2, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings_ex/nearby/IMediaServer;

    .line 241
    new-instance v0, Lcom/android/settings_ex/nearby/NearbySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/nearby/NearbySettings$1;-><init>(Lcom/android/settings_ex/nearby/NearbySettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mConn:Landroid/content/ServiceConnection;

    .line 1020
    new-instance v0, Lcom/android/settings_ex/nearby/NearbySettings$12;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/nearby/NearbySettings$12;-><init>(Lcom/android/settings_ex/nearby/NearbySettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1359
    new-instance v0, Lcom/android/settings_ex/nearby/NearbySettings$13;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/nearby/NearbySettings$13;-><init>(Lcom/android/settings_ex/nearby/NearbySettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mHandler:Landroid/os/Handler;

    .line 1910
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/nearby/NearbySettings;)Lcom/android/settings_ex/nearby/IMediaServer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings_ex/nearby/IMediaServer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/nearby/NearbySettings;Lcom/android/settings_ex/nearby/IMediaServer;)Lcom/android/settings_ex/nearby/IMediaServer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings_ex/nearby/IMediaServer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/nearby/NearbySettings;Landroid/preference/PreferenceGroup;Ljava/util/Map;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/nearby/NearbySettings;->registerPreferenceChangeListener(Landroid/preference/PreferenceGroup;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/settings_ex/nearby/NearbySettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/settings_ex/nearby/NearbySettings;->bWifiPopupShown:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/nearby/NearbySettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/settings_ex/nearby/NearbySettings;->bAutoStart:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/settings_ex/nearby/NearbySettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/settings_ex/nearby/NearbySettings;->bAutoStart:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/android/settings_ex/nearby/NearbySettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/settings_ex/nearby/NearbySettings;->bDBCanceled:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/nearby/NearbySettings;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/nearby/NearbySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/nearby/NearbySettings;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings_ex/nearby/NearbySettings;)Lcom/android/settings_ex/nearby/DownloadListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings_ex/nearby/DownloadListPreference;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings_ex/nearby/NearbySettings;)Lcom/android/settings_ex/nearby/AcceptListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings_ex/nearby/AcceptListPreference;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings_ex/nearby/NearbySettings;)Lcom/android/settings_ex/nearby/RejectListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings_ex/nearby/RejectListPreference;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings_ex/nearby/NearbySettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/settings_ex/nearby/NearbySettings;->bFunctionState:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/settings_ex/nearby/NearbySettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/settings_ex/nearby/NearbySettings;->bFunctionState:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/android/settings_ex/nearby/NearbySettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/settings_ex/nearby/NearbySettings;->bDBUpdated:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings_ex/nearby/NearbySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings_ex/nearby/NearbySettings;->refreshPreferenceValues()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settings_ex/nearby/NearbySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings_ex/nearby/NearbySettings;->requestWelcomePopup()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/settings_ex/nearby/NearbySettings;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/android/settings_ex/nearby/NearbySettings;->dialogTime:J

    return-wide v0
.end method

.method static synthetic access$2102(Lcom/android/settings_ex/nearby/NearbySettings;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/android/settings_ex/nearby/NearbySettings;->dialogTime:J

    return-wide p1
.end method

.method static synthetic access$2200(Lcom/android/settings_ex/nearby/NearbySettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/settings_ex/nearby/NearbySettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/settings_ex/nearby/NearbySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/settings_ex/nearby/NearbySettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/settings_ex/nearby/NearbySettings;->checkDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/settings_ex/nearby/NearbySettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/settings_ex/nearby/NearbySettings;->bSelfFinish:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/settings_ex/nearby/NearbySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings_ex/nearby/NearbySettings;->requestRestartServerPopup()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/nearby/NearbySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/nearby/NearbySettings;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/nearby/NearbySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings_ex/nearby/NearbySettings;->setServerName()V

    return-void
.end method

.method private checkDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "deviceName"

    .prologue
    .line 1263
    const-string v5, "AllshareSetting: "

    const-string v6, "checkDeviceName"

    invoke-static {v5, v6, p1}, Lcom/android/settings_ex/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    move-object v4, p1

    .line 1268
    .local v4, modifiedName:Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1269
    const-string v5, "/"

    const-string v6, ""

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1270
    .local v0, changedName:Ljava/lang/String;
    move-object p1, v0

    .line 1271
    const-string v5, "AllshareSetting: "

    const-string v6, "checkDeviceName"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Remove all \'/\': "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/settings_ex/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    .end local v0           #changedName:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    .line 1280
    .local v3, maxLength:I
    const/16 v3, 0x37

    .line 1283
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v3, :cond_1

    .line 1284
    const/4 v5, 0x0

    const/16 v6, 0x36

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1285
    const-string v5, "AllshareSetting: "

    const-string v6, "checkDeviceName"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "substring for MAX length: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/settings_ex/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    :cond_1
    :try_start_0
    const-string v1, "[Mobile]"

    .line 1298
    .local v1, deviceType:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings_ex/nearby/DMSUtil;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1299
    const-string v5, "AllshareSetting: "

    const-string v6, "checkDeviceName"

    const-string v7, "TABLET Device"

    invoke-static {v5, v6, v7}, Lcom/android/settings_ex/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    const-string v1, "[Tablet]"

    .line 1303
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1304
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1319
    .end local v1           #deviceType:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 1308
    .restart local v1       #deviceType:Ljava/lang/String;
    :cond_3
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 1309
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1311
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f090dbf

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/nearby/NearbySettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 1314
    .end local v1           #deviceType:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1315
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "AllshareSetting: "

    const-string v6, "checkDeviceName"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initChangePreferenceHandler()V
    .locals 5

    .prologue
    .line 418
    const-string v1, "AllshareSetting: "

    const-string v2, "initChangePreferenceHandler"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_onoff"

    new-instance v3, Lcom/android/settings_ex/nearby/NearbySettings$HandleServerStart;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings_ex/nearby/NearbySettings$HandleServerStart;-><init>(Lcom/android/settings_ex/nearby/NearbySettings;Lcom/android/settings_ex/nearby/NearbySettings$1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    iget-object v1, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_shared_contents"

    new-instance v3, Lcom/android/settings_ex/nearby/NearbySettings$HandleShareContentType;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings_ex/nearby/NearbySettings$HandleShareContentType;-><init>(Lcom/android/settings_ex/nearby/NearbySettings;Lcom/android/settings_ex/nearby/NearbySettings$1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    iget-object v1, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_device_name"

    new-instance v3, Lcom/android/settings_ex/nearby/NearbySettings$HandleServerName;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings_ex/nearby/NearbySettings$HandleServerName;-><init>(Lcom/android/settings_ex/nearby/NearbySettings;Lcom/android/settings_ex/nearby/NearbySettings$1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    iget-object v1, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_download_from"

    new-instance v3, Lcom/android/settings_ex/nearby/NearbySettings$HandleAllowUpload;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/nearby/NearbySettings$HandleAllowUpload;-><init>(Lcom/android/settings_ex/nearby/NearbySettings;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    iget-object v1, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_download_to"

    new-instance v3, Lcom/android/settings_ex/nearby/NearbySettings$HandleSetUploadPath;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings_ex/nearby/NearbySettings$HandleSetUploadPath;-><init>(Lcom/android/settings_ex/nearby/NearbySettings;Lcom/android/settings_ex/nearby/NearbySettings$1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    iget-object v1, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_accept_device"

    new-instance v3, Lcom/android/settings_ex/nearby/NearbySettings$HandleAcceptDevice;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/nearby/NearbySettings$HandleAcceptDevice;-><init>(Lcom/android/settings_ex/nearby/NearbySettings;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    iget-object v1, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_reject_device"

    new-instance v3, Lcom/android/settings_ex/nearby/NearbySettings$HandleRejectDevice;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/nearby/NearbySettings$HandleRejectDevice;-><init>(Lcom/android/settings_ex/nearby/NearbySettings;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    :goto_0
    return-void

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AllshareSetting: "

    const-string v2, "initChangePreferenceHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initPreferences()V
    .locals 5

    .prologue
    .line 699
    const-string v1, "AllshareSetting: "

    const-string v2, "initPreferences"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    if-eqz v1, :cond_0

    .line 704
    iget-object v1, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/nearby/NearbySettings;->checkDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 705
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings_ex/nearby/DownloadListPreference;

    iget-object v2, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings_ex/nearby/DownloadListPreference;

    invoke-virtual {v2}, Lcom/android/settings_ex/nearby/DownloadListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/nearby/DownloadListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 706
    iget-object v1, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mDownloadFrom:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mDownloadFrom:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    :goto_0
    return-void

    .line 710
    :catch_0
    move-exception v0

    .line 711
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AllshareSetting: "

    const-string v2, "initPreferences"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private refreshPreference(Landroid/preference/Preference;)V
    .locals 2
    .parameter "preference"

    .prologue
    .line 955
    if-nez p1, :cond_0

    .line 962
    :goto_0
    return-void

    .line 958
    :cond_0
    invoke-virtual {p1}, Landroid/preference/Preference;->isEnabled()Z

    move-result v0

    .line 960
    .local v0, value:Z
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 961
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 960
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private refreshPreferenceValues()V
    .locals 5

    .prologue
    .line 734
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mSharedContents:Landroid/preference/MultiSelectListPreference;

    iget-object v2, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mSharedContentsValue:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Landroid/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 735
    iget-object v1, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    if-eqz v1, :cond_0

    .line 736
    iget-object v1, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/nearby/NearbySettings;->checkDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 737
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings_ex/nearby/DownloadListPreference;

    iget-object v2, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings_ex/nearby/DownloadListPreference;

    invoke-virtual {v2}, Lcom/android/settings_ex/nearby/DownloadListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/nearby/DownloadListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 738
    iget-object v1, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mDownloadFrom:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mDownloadFrom:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 776
    :goto_0
    return-void

    .line 741
    :catch_0
    move-exception v0

    .line 742
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AllshareSetting: "

    const-string v2, "refreshPreferenceValues"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception preference variable :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private registerPreferenceChangeListener(Landroid/preference/PreferenceGroup;Ljava/util/Map;)V
    .locals 20
    .parameter "preferenceGroup"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceGroup;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 288
    .local p2, currentPreference:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v3, "AllshareSetting: "

    const-string v4, "registerPreferenceChangeListener"

    const-string v5, ""

    invoke-static {v3, v4, v5}, Lcom/android/settings_ex/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 291
    invoke-virtual/range {p1 .. p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v16

    .line 293
    .local v16, nCount:I
    const/4 v14, 0x0

    .local v14, index:I
    :goto_0
    move/from16 v0, v16

    if-ge v14, v0, :cond_f

    .line 294
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v17

    .line 296
    .local v17, preference:Landroid/preference/Preference;
    if-eqz v17, :cond_2

    .line 297
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 299
    invoke-virtual/range {v17 .. v17}, Landroid/preference/Preference;->hasKey()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 301
    invoke-virtual/range {v17 .. v17}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 304
    .local v19, value:Ljava/lang/Object;
    invoke-virtual/range {v17 .. v17}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "allshare_onoff"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v19, :cond_3

    .line 305
    const-string v3, "AllshareSetting: "

    const-string v4, "registerPreferenceChangeListener"

    const-string v5, "Preference Init OFF"

    invoke-static {v3, v4, v5}, Lcom/android/settings_ex/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings_ex/nearby/NearbySettings;->refreshPreference(Landroid/preference/Preference;)V

    .line 307
    const/16 v19, 0x0

    .line 406
    .end local v19           #value:Ljava/lang/Object;
    :cond_0
    :goto_1
    if-eqz v19, :cond_1

    .line 407
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/nearby/NearbySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 410
    :cond_1
    move-object/from16 v0, v17

    instance-of v3, v0, Landroid/preference/PreferenceGroup;

    if-eqz v3, :cond_2

    .line 411
    check-cast v17, Landroid/preference/PreferenceGroup;

    .end local v17           #preference:Landroid/preference/Preference;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/nearby/NearbySettings;->registerPreferenceChangeListener(Landroid/preference/PreferenceGroup;Ljava/util/Map;)V

    .line 293
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 308
    .restart local v17       #preference:Landroid/preference/Preference;
    .restart local v19       #value:Ljava/lang/Object;
    :cond_3
    invoke-virtual/range {v17 .. v17}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "allshare_onoff"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, v19

    instance-of v3, v0, Ljava/lang/Boolean;

    if-eqz v3, :cond_5

    .line 311
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings_ex/nearby/IMediaServer;

    invoke-interface {v3}, Lcom/android/settings_ex/nearby/IMediaServer;->isServerStarted()Z

    move-result v15

    .line 314
    .local v15, isStarted:Z
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 315
    const-string v3, "AllshareSetting: "

    const-string v4, "registerPreferenceChangeListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ONOFF change to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings_ex/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 319
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings_ex/nearby/NearbySettings;->refreshPreference(Landroid/preference/Preference;)V

    .line 320
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    .local v19, value:Ljava/lang/Boolean;
    goto :goto_1

    .line 322
    .local v19, value:Ljava/lang/Object;
    :cond_4
    const-string v3, "AllshareSetting: "

    const-string v4, "registerPreferenceChangeListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ONOFF value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings_ex/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 325
    .end local v15           #isStarted:Z
    :catch_0
    move-exception v12

    .line 326
    .local v12, e:Landroid/os/RemoteException;
    const-string v3, "AllshareSetting: "

    const-string v4, "registerPreferenceChangeListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RemoteException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-virtual {v12}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1

    .line 333
    .end local v12           #e:Landroid/os/RemoteException;
    :cond_5
    invoke-virtual/range {v17 .. v17}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "allshare_device_name"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    if-nez v19, :cond_b

    .line 334
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/nearby/NearbySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "device_name"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings_ex/nearby/NearbySettings;->checkDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 337
    .local v11, deviceName:Ljava/lang/String;
    if-nez v11, :cond_7

    .line 338
    move-object/from16 v19, v11

    .line 371
    .local v19, value:Ljava/lang/String;
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    if-eqz v3, :cond_0

    if-eqz v19, :cond_0

    .line 372
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 341
    .local v19, value:Ljava/lang/Object;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/nearby/NearbySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/settings_ex/nearby/NearbySettings;->PROJECTION_CONTACT:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 343
    .local v10, cursor:Landroid/database/Cursor;
    const-string v13, ""

    .line 346
    .local v13, friendlyName:Ljava/lang/String;
    :goto_3
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 347
    const/4 v3, 0x1

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 348
    if-eqz v13, :cond_8

    .line 349
    const-string v3, "AllshareSetting: "

    const-string v4, "registerPreferenceChangeListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "friendlyName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings_ex/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 356
    :catchall_0
    move-exception v3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v3

    .line 352
    :cond_8
    :try_start_2
    const-string v3, "AllshareSetting: "

    const-string v4, "registerPreferenceChangeListener"

    const-string v5, "freindlyName is NULL"

    invoke-static {v3, v4, v5}, Lcom/android/settings_ex/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 356
    :cond_9
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 359
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v3, :cond_a

    .line 360
    const-string v3, "AllshareSetting: "

    const-string v4, "registerPreferenceChangeListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set Default DeviceName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings_ex/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    sget-object v19, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 367
    .local v19, value:Ljava/lang/String;
    :goto_4
    if-eqz v13, :cond_6

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_6

    .line 368
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_2

    .line 364
    .local v19, value:Ljava/lang/Object;
    :cond_a
    const v3, 0x7f090dbf

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/nearby/NearbySettings;->getString(I)Ljava/lang/String;

    move-result-object v19

    .local v19, value:Ljava/lang/String;
    goto :goto_4

    .line 376
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v11           #deviceName:Ljava/lang/String;
    .end local v13           #friendlyName:Ljava/lang/String;
    .local v19, value:Ljava/lang/Object;
    :cond_b
    if-eqz v19, :cond_d

    invoke-virtual/range {v17 .. v17}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "allshare_device_name"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 378
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 379
    .local v9, changedName:Ljava/lang/String;
    move-object/from16 v19, v9

    .line 380
    .local v19, value:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    if-eqz v3, :cond_c

    .line 381
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 382
    :cond_c
    const-string v3, "AllshareSetting: "

    const-string v4, "registerPreferenceChangeListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remove all \'/\': "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings_ex/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 386
    .end local v9           #changedName:Ljava/lang/String;
    .local v19, value:Ljava/lang/Object;
    :cond_d
    invoke-virtual/range {v17 .. v17}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "allshare_shared_contents"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    if-nez v19, :cond_e

    .line 388
    const-string v3, "AllshareSetting: "

    const-string v4, "registerPreferenceChangeListener"

    const-string v5, "Share Contents Init"

    invoke-static {v3, v4, v5}, Lcom/android/settings_ex/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    .line 390
    .local v18, temp:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v3, "0"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 391
    const-string v3, "1"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 392
    const-string v3, "2"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 393
    move-object/from16 v19, v18

    .line 394
    .local v19, value:Ljava/util/HashSet;
    goto/16 :goto_1

    .end local v18           #temp:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v19, value:Ljava/lang/Object;
    :cond_e
    if-eqz v19, :cond_0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "allshare_download_to"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/nearby/NearbySettings;->isExternalStorageSdMounted()Z

    move-result v3

    if-nez v3, :cond_0

    .line 398
    const-string v3, "AllshareSetting: "

    const-string v4, "registerPreferenceChangeListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Download path init to Device"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/nearby/NearbySettings;->isExternalStorageSdMounted()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings_ex/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v19, "0"

    .line 403
    .local v19, value:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings_ex/nearby/DownloadListPreference;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/nearby/DownloadListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 415
    .end local v17           #preference:Landroid/preference/Preference;
    .end local v19           #value:Ljava/lang/String;
    :cond_f
    return-void
.end method

.method private requestDBUpdatedPopup()V
    .locals 5

    .prologue
    .line 816
    :try_start_0
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    .line 818
    iget-object v1, p0, Lcom/android/settings_ex/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f090dbf

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/nearby/NearbySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 819
    iget-object v1, p0, Lcom/android/settings_ex/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f090dc9

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/nearby/NearbySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 820
    iget-object v1, p0, Lcom/android/settings_ex/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f090db6

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/nearby/NearbySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/android/settings_ex/nearby/NearbySettings$4;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/nearby/NearbySettings$4;-><init>(Lcom/android/settings_ex/nearby/NearbySettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 834
    iget-object v1, p0, Lcom/android/settings_ex/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/android/settings_ex/nearby/NearbySettings$5;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/nearby/NearbySettings$5;-><init>(Lcom/android/settings_ex/nearby/NearbySettings;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 847
    iget-object v1, p0, Lcom/android/settings_ex/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 850
    iget-object v1, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 852
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings_ex/nearby/NearbySettings;->dialogTime:J

    .line 854
    iget-boolean v1, p0, Lcom/android/settings_ex/nearby/NearbySettings;->bDBUpdated:Z

    if-eqz v1, :cond_0

    .line 855
    const-string v1, "AllshareSetting: "

    const-string v2, "requestDBUpdatedPopup"

    const-string v3, "Auto start DMS!!"

    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 861
    :cond_0
    :goto_0
    return-void

    .line 857
    :catch_0
    move-exception v0

    .line 858
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AllshareSetting: "

    const-string v2, "requestDBUpdatedPopup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private requestRestartServerPopup()V
    .locals 5

    .prologue
    .line 916
    const-string v1, "AllshareSetting: "

    const-string v2, "requestRestartServerPopup"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    :try_start_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090dbf

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/nearby/NearbySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090dcb

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/nearby/NearbySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090db5

    new-instance v3, Lcom/android/settings_ex/nearby/NearbySettings$11;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/nearby/NearbySettings$11;-><init>(Lcom/android/settings_ex/nearby/NearbySettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090db6

    new-instance v3, Lcom/android/settings_ex/nearby/NearbySettings$10;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/nearby/NearbySettings$10;-><init>(Lcom/android/settings_ex/nearby/NearbySettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/nearby/NearbySettings$9;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/nearby/NearbySettings$9;-><init>(Lcom/android/settings_ex/nearby/NearbySettings;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 952
    :goto_0
    return-void

    .line 947
    :catch_0
    move-exception v0

    .line 948
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AllshareSetting: "

    const-string v2, "requestRestartServerPopup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/nearby/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private requestWelcomePopup()V
    .locals 8

    .prologue
    .line 865
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 866
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f04000b

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 868
    .local v0, checkboxLayout:Landroid/view/View;
    iget-object v4, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings_ex/nearby/DMSUtil;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 869
    const/16 v4, 0x9

    const/4 v5, 0x0

    const/16 v6, 0x9

    const/4 v7, 0x0

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 873
    :goto_0
    const v4, 0x7f0b0022

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 876
    .local v3, welcomeCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    new-instance v4, Lcom/android/settings_ex/nearby/NearbySettings$6;

    invoke-direct {v4, p0, v3}, Lcom/android/settings_ex/nearby/NearbySettings$6;-><init>(Lcom/android/settings_ex/nearby/NearbySettings;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    .line 884
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f090dbf

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/nearby/NearbySettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090db5

    new-instance v6, Lcom/android/settings_ex/nearby/NearbySettings$8;

    invoke-direct {v6, p0, v3}, Lcom/android/settings_ex/nearby/NearbySettings$8;-><init>(Lcom/android/settings_ex/nearby/NearbySettings;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings_ex/nearby/NearbySettings$7;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/nearby/NearbySettings$7;-><init>(Lcom/android/settings_ex/nearby/NearbySettings;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 913
    .end local v0           #checkboxLayout:Landroid/view/View;
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    .end local v3           #welcomeCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    :goto_1
    return-void

    .line 871
    .restart local v0       #checkboxLayout:Landroid/view/View;
    .restart local v2       #inflater:Landroid/view/LayoutInflater;
    :cond_0
    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/16 v7, 0x8

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 909
    .end local v0           #checkboxLayout:Landroid/view/View;
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    :catch_0
    move-exception v1

    .line 910
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "AllshareSetting: "

    const-string v5, "requestWelcomePopup"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private requestWifiSettingPopup()V
    .locals 5

    .prologue
    .line 779
    iget-boolean v1, p0, Lcom/android/settings_ex/nearby/NearbySettings;->bWifiPopupShown:Z

    if-nez v1, :cond_0

    .line 780
    const-string v1, "AllshareSetting: "

    const-string v2, "requestWifiSettingPopup"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/settings_ex/nearby/NearbySettings;->bFunctionState:Z

    .line 784
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/nearby/NearbySettings;->bWifiPopupShown:Z

    .line 785
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090dbf

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/nearby/NearbySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090db7

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/nearby/NearbySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090db5

    new-instance v3, Lcom/android/settings_ex/nearby/NearbySettings$3;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/nearby/NearbySettings$3;-><init>(Lcom/android/settings_ex/nearby/NearbySettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/nearby/NearbySettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/nearby/NearbySettings$2;-><init>(Lcom/android/settings_ex/nearby/NearbySettings;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    :cond_0
    :goto_0
    return-void

    .line 805
    :catch_0
    move-exception v0

    .line 806
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AllshareSetting: "

    const-string v2, "requestWifiSettingPopup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/nearby/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setBroadcastReceiver()V
    .locals 6

    .prologue
    .line 965
    const-string v2, "AllshareSetting: "

    const-string v3, "setBroadcastReceiver"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/android/settings_ex/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    :try_start_0
    iget-boolean v2, p0, Lcom/android/settings_ex/nearby/NearbySettings;->bRegisterReceiver:Z

    if-nez v2, :cond_0

    .line 968
    iget-object v2, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 970
    iget-object v2, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "WIFI_P2P_CONNECTION_CHANGED_ACTION"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 972
    iget-object v2, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 975
    iget-object v2, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.android.settings_ex.allshare.REFRESH"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 977
    iget-object v2, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.sec.android.nearby.mediaserver.REFRESH_DEVICE_LIST"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 980
    iget-object v2, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.android.settings_ex.allshare.UPDATE_LIST"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 982
    iget-object v2, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.android.settings_ex.allshare.SERVER_STATE_CHANGE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 986
    iget-object v2, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.android.settings_ex.allshare.SERVER_DB_UPDATE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 988
    iget-object v2, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.android.settings_ex.allshare.ACTIVITY_START"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 990
    iget-object v2, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.android.settings_ex.DEVICE_NAME_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 993
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 994
    .local v1, intentFilter1:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 995
    const-string v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 996
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 997
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 998
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 999
    iget-object v2, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1001
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings_ex/nearby/NearbySettings;->bRegisterReceiver:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1006
    .end local v1           #intentFilter1:Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 1003
    :catch_0
    move-exception v0

    .line 1004
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "AllshareSetting: "

    const-string v3, "setBroadcastReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setServerName()V
    .locals 8

    .prologue
    .line 1323
    const-string v4, "AllshareSetting: "

    const-string v5, "setServerName"

    const-string v6, ""

    invoke-static {v4, v5, v6}, Lcom/android/settings_ex/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    invoke-virtual {p0}, Lcom/android/settings_ex/nearby/NearbySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "device_name"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings_ex/nearby/NearbySettings;->checkDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1328
    .local v0, deviceName:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1329
    const-string v4, "AllshareSetting: "

    const-string v5, "setServerName"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Init device name to: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/settings_ex/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    iget-object v4, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mContext:Landroid/content/Context;

    const-string v5, "pref_allshare"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1333
    .local v3, preference:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1334
    .local v2, edit:Landroid/content/SharedPreferences$Editor;
    const-string v4, "allshare_device_name"

    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1335
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1337
    iget-object v4, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1340
    :try_start_0
    iget-object v4, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings_ex/nearby/IMediaServer;

    if-eqz v4, :cond_1

    .line 1341
    iget-object v4, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings_ex/nearby/IMediaServer;

    invoke-interface {v4, v0}, Lcom/android/settings_ex/nearby/IMediaServer;->setMediaServerName(Ljava/lang/String;)Ljava/lang/String;

    .line 1343
    const-string v4, "*#@&*#"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1344
    iget-object v4, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings_ex/nearby/IMediaServer;

    const-string v5, "0"

    invoke-interface {v4, v5}, Lcom/android/settings_ex/nearby/IMediaServer;->setContentAccessAllowed(Ljava/lang/String;)V

    .line 1357
    .end local v2           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v3           #preference:Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 1346
    .restart local v2       #edit:Landroid/content/SharedPreferences$Editor;
    .restart local v3       #preference:Landroid/content/SharedPreferences;
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings_ex/nearby/IMediaServer;

    const-string v5, "1"

    invoke-interface {v4, v5}, Lcom/android/settings_ex/nearby/IMediaServer;->setContentAccessAllowed(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1349
    :catch_0
    move-exception v1

    .line 1350
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "AllshareSetting: "

    const-string v5, "setServerName"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RemoteException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1348
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    :try_start_1
    const-string v4, "AllshareSetting: "

    const-string v5, "setServerName"

    const-string v6, "mIMediaServer is null"

    invoke-static {v4, v5, v6}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1354
    .end local v2           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v3           #preference:Landroid/content/SharedPreferences;
    :cond_2
    const-string v4, "AllshareSetting: "

    const-string v5, "setServerName"

    const-string v6, "deviceName is null"

    invoke-static {v4, v5, v6}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private unregisterBroadcastReceiver()V
    .locals 5

    .prologue
    .line 1009
    const-string v1, "AllshareSetting: "

    const-string v2, "unregisterBroadcastReceiver"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settings_ex/nearby/NearbySettings;->bRegisterReceiver:Z

    if-eqz v1, :cond_0

    .line 1012
    iget-object v1, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1013
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings_ex/nearby/NearbySettings;->bRegisterReceiver:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1018
    :cond_0
    :goto_0
    return-void

    .line 1015
    :catch_0
    move-exception v0

    .line 1016
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AllshareSetting: "

    const-string v2, "unregisterBroadcastReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public isExternalStorageSdMounted()Z
    .locals 6

    .prologue
    .line 718
    const/4 v1, 0x0

    .line 721
    .local v1, value:Z
    :try_start_0
    sget-object v2, Lcom/android/settings_ex/nearby/NearbySettings;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v3, Lcom/android/settings_ex/nearby/NearbySettings;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 728
    :goto_0
    return v1

    .line 723
    :catch_0
    move-exception v0

    .line 724
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "AllshareSetting: "

    const-string v3, "isExternalStorageSdMounted"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 690
    const-string v1, "AllshareSetting: "

    const-string v2, "onActivityCreated"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 696
    :goto_0
    return-void

    .line 693
    :catch_0
    move-exception v0

    .line 694
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AllshareSetting: "

    const-string v2, "onActivityCreated"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 437
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 439
    const-string v8, "AllshareSetting: "

    const-string v9, "onCreate"

    const-string v10, ""

    invoke-static {v8, v9, v10}, Lcom/android/settings_ex/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-virtual {p0}, Lcom/android/settings_ex/nearby/NearbySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v8

    const-string v9, "pref_allshare"

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 444
    const v8, 0x7f07000f

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/nearby/NearbySettings;->addPreferencesFromResource(I)V

    .line 446
    invoke-virtual {p0}, Lcom/android/settings_ex/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mContext:Landroid/content/Context;

    .line 451
    const/16 v8, 0x37

    sput v8, Lcom/android/settings_ex/nearby/NearbySettings;->lengthDeviceNameMax:I

    .line 454
    iget-object v8, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mContext:Landroid/content/Context;

    const v9, 0x7f090db8

    new-array v10, v13, [Ljava/lang/Object;

    sget v11, Lcom/android/settings_ex/nearby/NearbySettings;->lengthDeviceNameMax:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-virtual {p0, v9, v10}, Lcom/android/settings_ex/nearby/NearbySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mToast:Landroid/widget/Toast;

    .line 460
    :try_start_0
    const-string v8, "allshare_onoff"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    .line 461
    iget-object v8, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 463
    const-string v8, "allshare_shared_contents"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/MultiSelectListPreference;

    iput-object v8, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mSharedContents:Landroid/preference/MultiSelectListPreference;

    .line 464
    iget-object v8, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mSharedContents:Landroid/preference/MultiSelectListPreference;

    const v9, 0x7f040114

    invoke-virtual {v8, v9}, Landroid/preference/MultiSelectListPreference;->setWidgetLayoutResource(I)V

    .line 466
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    .line 467
    const-string v8, "allshare_category_advanced"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 468
    .local v2, advancedCategory:Landroid/preference/PreferenceCategory;
    const-string v8, "allshare_device_name"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 500
    const-string v8, "allshare_download_to"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settings_ex/nearby/DownloadListPreference;

    iput-object v8, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings_ex/nearby/DownloadListPreference;

    .line 501
    iget-object v8, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings_ex/nearby/DownloadListPreference;

    const v9, 0x7f040114

    invoke-virtual {v8, v9}, Lcom/android/settings_ex/nearby/DownloadListPreference;->setWidgetLayoutResource(I)V

    .line 503
    const-string v8, "allshare_download_from"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mDownloadFrom:Landroid/preference/ListPreference;

    .line 504
    iget-object v8, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mDownloadFrom:Landroid/preference/ListPreference;

    const v9, 0x7f040114

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setWidgetLayoutResource(I)V

    .line 509
    const-string v8, "allshare_accept_device"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settings_ex/nearby/AcceptListPreference;

    iput-object v8, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings_ex/nearby/AcceptListPreference;

    .line 510
    iget-object v8, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings_ex/nearby/AcceptListPreference;

    const v9, 0x7f040114

    invoke-virtual {v8, v9}, Lcom/android/settings_ex/nearby/AcceptListPreference;->setWidgetLayoutResource(I)V

    .line 511
    iget-object v8, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings_ex/nearby/AcceptListPreference;

    const v9, 0x7f090dbd

    invoke-virtual {v8, v9}, Lcom/android/settings_ex/nearby/AcceptListPreference;->setPositiveButtonText(I)V

    .line 512
    iget-object v8, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings_ex/nearby/AcceptListPreference;

    invoke-virtual {v8, p0}, Lcom/android/settings_ex/nearby/AcceptListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 514
    const-string v8, "allshare_reject_device"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settings_ex/nearby/RejectListPreference;

    iput-object v8, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings_ex/nearby/RejectListPreference;

    .line 515
    iget-object v8, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings_ex/nearby/RejectListPreference;

    const v9, 0x7f040114

    invoke-virtual {v8, v9}, Lcom/android/settings_ex/nearby/RejectListPreference;->setWidgetLayoutResource(I)V

    .line 516
    iget-object v8, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings_ex/nearby/RejectListPreference;

    const v9, 0x7f090dbd

    invoke-virtual {v8, v9}, Lcom/android/settings_ex/nearby/RejectListPreference;->setPositiveButtonText(I)V

    .line 517
    iget-object v8, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings_ex/nearby/RejectListPreference;

    invoke-virtual {v8, p0}, Lcom/android/settings_ex/nearby/RejectListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    .end local v2           #advancedCategory:Landroid/preference/PreferenceCategory;
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/nearby/NearbySettings;->initChangePreferenceHandler()V

    .line 529
    :try_start_1
    new-instance v5, Landroid/content/Intent;

    const-string v8, "com.sec.android.nearby.MediaServer.START"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 530
    .local v5, intent:Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 531
    iget-object v8, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mConn:Landroid/content/ServiceConnection;

    const/4 v10, 0x0

    invoke-virtual {v8, v5, v9, v10}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 538
    .end local v5           #intent:Landroid/content/Intent;
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/nearby/NearbySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 542
    :try_start_2
    new-instance v8, Landroid/os/HandlerThread;

    const-string v9, "Preference Change Worker"

    invoke-direct {v8, v9}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mPreferenceChangeThread:Landroid/os/HandlerThread;

    .line 543
    iget-object v8, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mPreferenceChangeThread:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->start()V

    .line 544
    new-instance v8, Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mPreferenceChangeThread:Landroid/os/HandlerThread;

    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v8, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mPreferenceChangeWorker:Landroid/os/Handler;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 551
    :goto_2
    invoke-direct {p0}, Lcom/android/settings_ex/nearby/NearbySettings;->setBroadcastReceiver()V

    .line 555
    :try_start_3
    iget-object v8, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mContext:Landroid/content/Context;

    const-string v9, "storage"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/storage/StorageManager;

    sput-object v8, Lcom/android/settings_ex/nearby/NearbySettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 556
    sget-object v8, Lcom/android/settings_ex/nearby/NearbySettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v8}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v8

    sput-object v8, Lcom/android/settings_ex/nearby/NearbySettings;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    .line 558
    iget-object v8, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings_ex/nearby/DownloadListPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/nearby/NearbySettings;->isExternalStorageSdMounted()Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/settings_ex/nearby/DownloadListPreference;->setIsExternalMounted(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 566
    :goto_3
    :try_start_4
    invoke-virtual {p0}, Lcom/android/settings_ex/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 567
    .local v1, activity:Landroid/app/Activity;
    instance-of v8, v1, Landroid/preference/PreferenceActivity;

    if-eqz v8, :cond_1

    .line 568
    move-object v0, v1

    check-cast v0, Landroid/preference/PreferenceActivity;

    move-object v7, v0

    .line 569
    .local v7, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v7}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v7}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v8

    if-nez v8, :cond_1

    .line 570
    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    const v9, 0x7f090dbf

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/nearby/NearbySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 578
    .end local v1           #activity:Landroid/app/Activity;
    .end local v7           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings_ex/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getFlags()I

    move-result v3

    .line 579
    .local v3, currentFlag:I
    new-instance v6, Landroid/content/Intent;

    const-string v8, "com.android.settings_ex.allshare.ACTIVITY_START"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 580
    .local v6, intentStart:Landroid/content/Intent;
    const-string v8, "FLAG"

    invoke-virtual {v6, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 581
    iget-object v8, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 582
    return-void

    .line 519
    .end local v3           #currentFlag:I
    .end local v6           #intentStart:Landroid/content/Intent;
    :catch_0
    move-exception v4

    .line 520
    .local v4, e:Ljava/lang/Exception;
    const-string v8, "AllshareSetting: "

    const-string v9, "onCreate"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception Init preference: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 532
    .end local v4           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 533
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v8, "AllshareSetting: "

    const-string v9, "onCreate"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception bind service: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 545
    .end local v4           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v4

    .line 546
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v8, "AllshareSetting: "

    const-string v9, "onCreate"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception Thread: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 559
    .end local v4           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v4

    .line 560
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v8, "AllshareSetting: "

    const-string v9, "onCreate"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception storage: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 573
    .end local v4           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v4

    .line 574
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v8, "AllshareSetting: "

    const-string v9, "onCreate"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception Title : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    .line 586
    const-string v2, "AllshareSetting: "

    const-string v3, "onDestroy"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/android/settings_ex/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 592
    iget-object v2, p0, Lcom/android/settings_ex/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 593
    iget-object v2, p0, Lcom/android/settings_ex/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 596
    :cond_0
    iget-boolean v2, p0, Lcom/android/settings_ex/nearby/NearbySettings;->bSelfFinish:Z

    if-nez v2, :cond_1

    .line 597
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.nearby.mediaserver.STOP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 598
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 602
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/nearby/NearbySettings;->unregisterBroadcastReceiver()V

    .line 605
    iget-object v2, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    .line 606
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 613
    return-void

    .line 607
    :catch_0
    move-exception v0

    .line 608
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "AllshareSetting: "

    const-string v3, "onDestroy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 672
    const-string v1, "AllshareSetting: "

    const-string v2, "onPause"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.nearby.mediaserver.SET_NEARBY_FLAG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 675
    .local v0, intentFlag:Landroid/content/Intent;
    const-string v1, "FLAG"

    invoke-virtual {p0}, Lcom/android/settings_ex/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 676
    const-string v1, "SCREEN"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 677
    iget-object v1, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 679
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 680
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 23
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 1466
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v10

    .line 1468
    .local v10, key:Ljava/lang/String;
    const-string v19, "AllshareSetting: "

    const-string v20, "onPreferenceChange"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ": "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/android/settings_ex/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    const-string v19, "allshare_onoff"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    move-object/from16 v19, p2

    .line 1472
    check-cast v19, Ljava/lang/Boolean;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    .line 1473
    .local v15, value:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/nearby/NearbySettings;->bFunctionState:Z

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v0, v15, :cond_0

    .line 1474
    const-string v19, "AllshareSetting: "

    const-string v20, "onPreferenceChange"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Duplicated on/off message: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/nearby/NearbySettings;->bFunctionState:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    const/16 v19, 0x1

    .line 1714
    .end local v15           #value:Z
    :goto_0
    return v19

    .line 1478
    .restart local v15       #value:Z
    :cond_0
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/settings_ex/nearby/NearbySettings;->bFunctionState:Z

    .line 1480
    const-string v19, "wifi"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/nearby/NearbySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/wifi/WifiManager;

    .line 1481
    .local v17, wifiManager:Landroid/net/wifi/WifiManager;
    const-string v19, "wifip2p"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/nearby/NearbySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 1484
    .local v18, wifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    if-eqz v17, :cond_8

    if-eqz v18, :cond_8

    if-eqz p2, :cond_8

    .line 1485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "connectivity"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 1488
    .local v5, connectivityManager:Landroid/net/ConnectivityManager;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v13

    .line 1490
    .local v13, netInfoWifi:Landroid/net/NetworkInfo;
    const/16 v19, 0xd

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v12

    .line 1493
    .local v12, netInfoP2p:Landroid/net/NetworkInfo;
    const/4 v4, 0x0

    .local v4, bEthernetConnected:Z
    move-object/from16 v19, p2

    .line 1506
    check-cast v19, Ljava/lang/Boolean;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 1509
    if-nez v4, :cond_4

    if-eqz v13, :cond_4

    sget-object v19, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_4

    sget-object v19, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_4

    .line 1514
    if-eqz v12, :cond_2

    sget-object v19, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2

    sget-object v19, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 1517
    const-string v19, "AllshareSetting: "

    const-string v20, "onPreferenceChange"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Wifi State : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", WifiDirect State : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 1522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 1524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/ProgressDialog;->cancel()V

    .line 1526
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings_ex/nearby/NearbySettings;->refreshPreference(Landroid/preference/Preference;)V

    .line 1528
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/nearby/NearbySettings;->requestWifiSettingPopup()V

    .line 1529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1530
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1531
    :cond_2
    if-nez v12, :cond_a

    .line 1532
    const-string v19, "AllshareSetting: "

    const-string v20, "onPreferenceChange"

    const-string v21, "Wifi State : netInfoP2p is null >> check p2p state"

    invoke-static/range {v19 .. v21}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 1535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 1537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/ProgressDialog;->cancel()V

    .line 1539
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings_ex/nearby/NearbySettings;->refreshPreference(Landroid/preference/Preference;)V

    .line 1541
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/nearby/NearbySettings;->requestWifiSettingPopup()V

    .line 1542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1543
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1547
    :cond_4
    if-nez v13, :cond_a

    .line 1548
    const-string v19, "AllshareSetting: "

    const-string v20, "onPreferenceChange"

    const-string v21, "Wifi State : netInfoWifi is null >> check p2p state"

    invoke-static/range {v19 .. v21}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1551
    if-eqz v12, :cond_6

    sget-object v19, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 1553
    const-string v19, "AllshareSetting: "

    const-string v20, "onPreferenceChange"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " WifiDirect State : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 1556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 1558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/ProgressDialog;->cancel()V

    .line 1560
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings_ex/nearby/NearbySettings;->refreshPreference(Landroid/preference/Preference;)V

    .line 1562
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/nearby/NearbySettings;->requestWifiSettingPopup()V

    .line 1563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1564
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1567
    :cond_6
    if-nez v12, :cond_a

    .line 1568
    const-string v19, "AllshareSetting: "

    const-string v20, "onPreferenceChange"

    const-string v21, "Wifi State : netInfoP2p is null >> check p2p state"

    invoke-static/range {v19 .. v21}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 1571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 1573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/ProgressDialog;->cancel()V

    .line 1575
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings_ex/nearby/NearbySettings;->refreshPreference(Landroid/preference/Preference;)V

    .line 1577
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/nearby/NearbySettings;->requestWifiSettingPopup()V

    .line 1578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1579
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1586
    .end local v4           #bEthernetConnected:Z
    .end local v5           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v12           #netInfoP2p:Landroid/net/NetworkInfo;
    .end local v13           #netInfoWifi:Landroid/net/NetworkInfo;
    :cond_8
    const-string v19, "AllshareSetting: "

    const-string v20, ""

    const-string v21, "Check Wi-Fi State or Function state"

    invoke-static/range {v19 .. v21}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v19

    if-nez v19, :cond_9

    .line 1588
    const-string v19, "AllshareSetting: "

    const-string v20, "onPreferenceChange"

    const-string v21, "Set Enable Function"

    invoke-static/range {v19 .. v21}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1591
    :cond_9
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1596
    .restart local v4       #bEthernetConnected:Z
    .restart local v5       #connectivityManager:Landroid/net/ConnectivityManager;
    .restart local v12       #netInfoP2p:Landroid/net/NetworkInfo;
    .restart local v13       #netInfoWifi:Landroid/net/NetworkInfo;
    :cond_a
    :try_start_0
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/nearby/NearbySettings;->bAutoStart:Z

    move/from16 v19, v0

    if-nez v19, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/nearby/NearbySettings;->bDBUpdated:Z

    move/from16 v19, v0

    if-nez v19, :cond_b

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v15, v0, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings_ex/nearby/IMediaServer;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/settings_ex/nearby/IMediaServer;->isServerStarted()Z

    move-result v19

    if-nez v19, :cond_b

    .line 1598
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/nearby/NearbySettings;->bAutoStart:Z

    .line 1599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "AutoDMS"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/nearby/NearbySettings;->bAutoStart:Z

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1601
    const-string v19, "AllshareSetting: "

    const-string v20, "onPreferenceChange"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "DB is NOT updated:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/nearby/NearbySettings;->bDBUpdated:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1602
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/nearby/NearbySettings;->requestDBUpdatedPopup()V

    .line 1603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1604
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1607
    :catch_0
    move-exception v7

    .line 1608
    .local v7, e1:Landroid/os/RemoteException;
    const-string v19, "AllshareSetting: "

    const-string v20, "onPreferenceChange"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RemoteException:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1609
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1614
    .end local v7           #e1:Landroid/os/RemoteException;
    :cond_b
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "pref_allshare"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 1616
    .local v14, sharedPreference:Landroid/content/SharedPreferences;
    const-string v19, "allshare_welcome_popup"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 1619
    .local v16, welcomePopup:Z
    const-string v19, "AllshareSetting: "

    const-string v20, ""

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "HandleServerStart :"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/android/settings_ex/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings_ex/nearby/IMediaServer;

    move-object/from16 v19, v0

    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings_ex/nearby/IMediaServer;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/settings_ex/nearby/IMediaServer;->isServerStarted()Z

    move-result v19

    if-eqz v19, :cond_e

    .line 1621
    const-string v19, "AllshareSetting: "

    const-string v20, "onPreferenceChange"

    const-string v21, "Don\'t display the welcome popup"

    invoke-static/range {v19 .. v21}, Lcom/android/settings_ex/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1633
    .end local v14           #sharedPreference:Landroid/content/SharedPreferences;
    .end local v16           #welcomePopup:Z
    :cond_c
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/nearby/NearbySettings;->bDBCanceled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_f

    .line 1634
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/nearby/NearbySettings;->bDBCanceled:Z

    .line 1695
    .end local v4           #bEthernetConnected:Z
    .end local v5           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v12           #netInfoP2p:Landroid/net/NetworkInfo;
    .end local v13           #netInfoWifi:Landroid/net/NetworkInfo;
    .end local v15           #value:Z
    .end local v17           #wifiManager:Landroid/net/wifi/WifiManager;
    .end local v18           #wifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    :cond_d
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings;->mPreferenceChangeMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 1698
    .local v8, handler:Landroid/preference/Preference$OnPreferenceChangeListener;
    if-eqz v8, :cond_15

    .line 1699
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings;->mPreferenceChangeWorker:Landroid/os/Handler;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/settings_ex/nearby/NearbySettings$14;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/android/settings_ex/nearby/NearbySettings$14;-><init>(Lcom/android/settings_ex/nearby/NearbySettings;Landroid/preference/Preference$OnPreferenceChangeListener;Landroid/preference/Preference;Ljava/lang/Object;)V

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1706
    new-instance v9, Landroid/content/Intent;

    const-string v19, "com.android.settings_ex.allshare.REFRESH"

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1707
    .local v9, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 1708
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 1624
    .end local v8           #handler:Landroid/preference/Preference$OnPreferenceChangeListener;
    .end local v9           #intent:Landroid/content/Intent;
    .restart local v4       #bEthernetConnected:Z
    .restart local v5       #connectivityManager:Landroid/net/ConnectivityManager;
    .restart local v12       #netInfoP2p:Landroid/net/NetworkInfo;
    .restart local v13       #netInfoWifi:Landroid/net/NetworkInfo;
    .restart local v14       #sharedPreference:Landroid/content/SharedPreferences;
    .restart local v15       #value:Z
    .restart local v16       #welcomePopup:Z
    .restart local v17       #wifiManager:Landroid/net/wifi/WifiManager;
    .restart local v18       #wifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    :cond_e
    if-nez v16, :cond_c

    :try_start_3
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 1625
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/nearby/NearbySettings;->requestWelcomePopup()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1628
    .end local v14           #sharedPreference:Landroid/content/SharedPreferences;
    .end local v16           #welcomePopup:Z
    :catch_1
    move-exception v6

    .line 1629
    .local v6, e:Ljava/lang/Exception;
    const-string v19, "AllshareSetting: "

    const-string v20, "onPreferenceChange"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Exception:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1630
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1636
    .end local v6           #e:Ljava/lang/Exception;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_2

    .line 1641
    .end local v4           #bEthernetConnected:Z
    .end local v5           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v12           #netInfoP2p:Landroid/net/NetworkInfo;
    .end local v13           #netInfoWifi:Landroid/net/NetworkInfo;
    .end local v15           #value:Z
    .end local v17           #wifiManager:Landroid/net/wifi/WifiManager;
    .end local v18           #wifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    :cond_10
    const-string v19, "allshare_device_name"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_13

    if-eqz p2, :cond_13

    .line 1642
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v11

    .line 1643
    .local v11, length:I
    if-lez v11, :cond_11

    sget v19, Lcom/android/settings_ex/nearby/NearbySettings;->lengthDeviceNameMax:I

    move/from16 v0, v19

    if-le v11, v0, :cond_12

    .line 1644
    :cond_11
    const-string v19, "AllshareSetting: "

    const-string v20, "onPreferenceChange"

    const-string v21, "Device name length error "

    invoke-static/range {v19 .. v21}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings;->mToast:Landroid/widget/Toast;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V

    .line 1646
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1650
    :cond_12
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings_ex/nearby/IMediaServer;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/settings_ex/nearby/IMediaServer;->getMediaServerName()Ljava/lang/String;

    move-result-object v19

    const-string v20, "Samsung Mobile"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_d

    .line 1652
    const-string v19, "AllshareSetting: "

    const-string v20, "onPreferenceChange"

    const-string v21, "Device name is same. return"

    invoke-static/range {v19 .. v21}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1653
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1655
    :catch_2
    move-exception v6

    .line 1656
    .local v6, e:Landroid/os/DeadObjectException;
    const-string v19, "AllshareSetting: "

    const-string v20, "onPreferenceChange"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "DeadObjectException"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1657
    invoke-virtual {v6}, Landroid/os/DeadObjectException;->printStackTrace()V

    goto/16 :goto_2

    .line 1658
    .end local v6           #e:Landroid/os/DeadObjectException;
    :catch_3
    move-exception v6

    .line 1659
    .local v6, e:Landroid/os/RemoteException;
    const-string v19, "AllshareSetting: "

    const-string v20, "onPreferenceChange"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RemoteException"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1660
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2

    .line 1665
    .end local v6           #e:Landroid/os/RemoteException;
    .end local v11           #length:I
    :cond_13
    const-string v19, "allshare_shared_contents"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_14

    if-eqz p2, :cond_14

    .line 1668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings;->mSharedContentsValue:Ljava/util/HashSet;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashSet;->clear()V

    .line 1669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings;->mSharedContentsValue:Ljava/util/HashSet;

    move-object/from16 v20, v0

    move-object/from16 v19, p2

    check-cast v19, Ljava/util/Collection;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 1687
    :cond_14
    const-string v19, "allshare_download_to"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    if-eqz p2, :cond_d

    .line 1688
    const-string v19, "AllshareSetting: "

    const-string v20, "onPreferenceChange"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "value: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1689
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "1"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/nearby/NearbySettings;->isExternalStorageSdMounted()Z

    move-result v19

    if-nez v19, :cond_d

    .line 1690
    const-string v19, "AllshareSetting: "

    const-string v20, "onPreferenceChange"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Invalid Download to Value: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/android/settings_ex/nearby/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1691
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1710
    .restart local v8       #handler:Landroid/preference/Preference$OnPreferenceChangeListener;
    :catch_4
    move-exception v6

    .line 1711
    .local v6, e:Ljava/lang/Exception;
    const-string v19, "AllshareSetting: "

    const-string v20, "onPreferenceChange"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Exception run: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/android/settings_ex/nearby/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1712
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 1714
    .end local v6           #e:Ljava/lang/Exception;
    :cond_15
    const/16 v19, 0x0

    goto/16 :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 12
    .parameter "preference"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1393
    const-string v8, "AllshareSetting: "

    const-string v9, "onPreferenceClick"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/settings_ex/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    :try_start_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    const-string v9, "allshare_device_name"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1396
    iget-object v8, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v8}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    .line 1397
    .local v1, dialog:Landroid/app/AlertDialog;
    if-eqz v1, :cond_0

    .line 1398
    const/4 v8, -0x1

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    .line 1399
    .local v5, positiveButton:Landroid/widget/Button;
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1400
    check-cast p1, Landroid/preference/EditTextPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->selectAll()V

    .line 1401
    iget-object v8, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mDeviceNameWatcher:Lcom/android/settings_ex/nearby/EditTextWatcher;

    if-eqz v8, :cond_0

    .line 1402
    iget-object v8, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mDeviceNameWatcher:Lcom/android/settings_ex/nearby/EditTextWatcher;

    iget-object v9, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v1, v9}, Lcom/android/settings_ex/nearby/EditTextWatcher;->setDialog(Landroid/app/Dialog;Landroid/content/Context;)V

    .line 1460
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v5           #positiveButton:Landroid/widget/Button;
    :cond_0
    :goto_0
    return v6

    .line 1404
    .restart local p1
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    const-string v9, "allshare_onoff"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1405
    const-string v8, "AllshareSetting: "

    const-string v9, "onPreferenceClick"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "KEY_ALLSHARE_ONOFF "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/settings_ex/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1454
    .end local p1
    :catch_0
    move-exception v2

    .line 1455
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "AllshareSetting: "

    const-string v8, "onPreferenceClick"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v8, v9}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move v6, v7

    .line 1457
    goto :goto_0

    .line 1408
    .end local v2           #e:Ljava/lang/Exception;
    .restart local p1
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    const-string v9, "allshare_accept_device"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    const-string v9, "allshare_reject_device"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1411
    :cond_3
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    const-string v9, "allshare_accept_device"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1412
    const-string v8, "AllshareSetting: "

    const-string v9, "onPreferenceClick"

    const-string v10, "KEY_ALLSHARE_ACCEPTED_DEVICE"

    invoke-static {v8, v9, v10}, Lcom/android/settings_ex/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    iget-object v8, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings_ex/nearby/AcceptListPreference;

    invoke-virtual {v8}, Lcom/android/settings_ex/nearby/AcceptListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    .line 1415
    .restart local v1       #dialog:Landroid/app/AlertDialog;
    if-eqz v1, :cond_4

    .line 1416
    const/4 v8, -0x1

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    .line 1417
    .restart local v5       #positiveButton:Landroid/widget/Button;
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1419
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    .line 1421
    .local v4, listView:Landroid/widget/ListView;
    if-eqz v4, :cond_4

    .line 1422
    new-instance v3, Lcom/android/settings_ex/nearby/ListItemListener;

    invoke-direct {v3, v5}, Lcom/android/settings_ex/nearby/ListItemListener;-><init>(Landroid/widget/Button;)V

    .line 1423
    .local v3, listItemListener:Lcom/android/settings_ex/nearby/ListItemListener;
    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1425
    new-instance v0, Lcom/android/settings_ex/nearby/DeleteButtonListener;

    iget-object v8, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    invoke-direct {v0, v3, v1, v8, v9}, Lcom/android/settings_ex/nearby/DeleteButtonListener;-><init>(Lcom/android/settings_ex/nearby/ListItemListener;Landroid/app/Dialog;Landroid/content/Context;Z)V

    .line 1427
    .local v0, deletebuttonlistener:Lcom/android/settings_ex/nearby/DeleteButtonListener;
    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1431
    .end local v0           #deletebuttonlistener:Lcom/android/settings_ex/nearby/DeleteButtonListener;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v3           #listItemListener:Lcom/android/settings_ex/nearby/ListItemListener;
    .end local v4           #listView:Landroid/widget/ListView;
    .end local v5           #positiveButton:Landroid/widget/Button;
    :cond_4
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    const-string v9, "allshare_reject_device"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1432
    const-string v8, "AllshareSetting: "

    const-string v9, "onPreferenceClick"

    const-string v10, "KEY_ALLSHARE_REJECTED_DEVICE"

    invoke-static {v8, v9, v10}, Lcom/android/settings_ex/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    iget-object v8, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings_ex/nearby/RejectListPreference;

    invoke-virtual {v8}, Lcom/android/settings_ex/nearby/RejectListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    .line 1435
    .restart local v1       #dialog:Landroid/app/AlertDialog;
    if-eqz v1, :cond_0

    .line 1436
    const/4 v8, -0x1

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    .line 1437
    .restart local v5       #positiveButton:Landroid/widget/Button;
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1439
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    .line 1441
    .restart local v4       #listView:Landroid/widget/ListView;
    if-eqz v4, :cond_0

    .line 1442
    new-instance v3, Lcom/android/settings_ex/nearby/ListItemListener;

    invoke-direct {v3, v5}, Lcom/android/settings_ex/nearby/ListItemListener;-><init>(Landroid/widget/Button;)V

    .line 1443
    .restart local v3       #listItemListener:Lcom/android/settings_ex/nearby/ListItemListener;
    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1445
    new-instance v0, Lcom/android/settings_ex/nearby/DeleteButtonListener;

    iget-object v8, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-direct {v0, v3, v1, v8, v9}, Lcom/android/settings_ex/nearby/DeleteButtonListener;-><init>(Lcom/android/settings_ex/nearby/ListItemListener;Landroid/app/Dialog;Landroid/content/Context;Z)V

    .line 1447
    .restart local v0       #deletebuttonlistener:Lcom/android/settings_ex/nearby/DeleteButtonListener;
    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 617
    const-string v7, "AllshareSetting: "

    const-string v8, "onResume"

    const-string v9, ""

    invoke-static {v7, v8, v9}, Lcom/android/settings_ex/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 620
    iget-boolean v7, p0, Lcom/android/settings_ex/nearby/NearbySettings;->bAutoStart:Z

    if-nez v7, :cond_0

    .line 621
    invoke-direct {p0}, Lcom/android/settings_ex/nearby/NearbySettings;->initPreferences()V

    .line 624
    :try_start_0
    iget-object v7, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings_ex/nearby/IMediaServer;

    if-eqz v7, :cond_0

    .line 625
    iget-object v7, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings_ex/nearby/IMediaServer;

    invoke-interface {v7}, Lcom/android/settings_ex/nearby/IMediaServer;->isServerStarted()Z

    move-result v0

    .line 626
    .local v0, bState:Z
    iget-object v7, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eq v0, v7, :cond_0

    .line 627
    const-string v7, "AllshareSetting: "

    const-string v8, "onResume"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Change State: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    iget-object v7, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 629
    iget-object v7, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xbb9

    const-wide/16 v9, 0x64

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    .end local v0           #bState:Z
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings_ex/nearby/IMediaServer;

    if-nez v7, :cond_1

    .line 640
    :try_start_1
    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.sec.android.nearby.MediaServer.START"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 641
    .local v4, intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 642
    iget-object v7, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mConn:Landroid/content/ServiceConnection;

    const/4 v9, 0x0

    invoke-virtual {v7, v4, v8, v9}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 649
    .end local v4           #intent:Landroid/content/Intent;
    :cond_1
    :goto_1
    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.sec.android.nearby.mediaserver.SET_NEARBY_FLAG"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 650
    .local v5, intentFlag:Landroid/content/Intent;
    const-string v7, "FLAG"

    invoke-virtual {p0}, Lcom/android/settings_ex/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getFlags()I

    move-result v8

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 651
    const-string v7, "SCREEN"

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 652
    iget-object v7, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 654
    iget-object v7, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    if-eqz v7, :cond_3

    .line 655
    iget-object v7, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    check-cast v2, Landroid/app/AlertDialog;

    .line 656
    .local v2, dialog:Landroid/app/AlertDialog;
    if-eqz v2, :cond_3

    .line 657
    iget-object v7, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mDeviceNameWatcher:Lcom/android/settings_ex/nearby/EditTextWatcher;

    if-eqz v7, :cond_2

    .line 658
    iget-object v7, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mDeviceNameWatcher:Lcom/android/settings_ex/nearby/EditTextWatcher;

    iget-object v8, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2, v8}, Lcom/android/settings_ex/nearby/EditTextWatcher;->setDialog(Landroid/app/Dialog;Landroid/content/Context;)V

    .line 659
    :cond_2
    iget-object v7, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 660
    .local v1, currentText:Ljava/lang/String;
    const-string v7, "AllshareSetting: "

    const-string v8, "onResume"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    iget-object v7, p0, Lcom/android/settings_ex/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 662
    const-string v7, "AllshareSetting: "

    const-string v8, "onResume"

    const-string v9, "device name button disabled!!"

    invoke-static {v7, v8, v9}, Lcom/android/settings_ex/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    const/4 v7, -0x1

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    .line 664
    .local v6, positiveButton:Landroid/widget/Button;
    invoke-virtual {v6, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 668
    .end local v1           #currentText:Ljava/lang/String;
    .end local v2           #dialog:Landroid/app/AlertDialog;
    .end local v6           #positiveButton:Landroid/widget/Button;
    :cond_3
    return-void

    .line 632
    .end local v5           #intentFlag:Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 633
    .local v3, e:Landroid/os/RemoteException;
    const-string v7, "AllshareSetting: "

    const-string v8, "onResume"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RemoteException change state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 643
    .end local v3           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 644
    .local v3, e:Ljava/lang/Exception;
    const-string v7, "AllshareSetting: "

    const-string v8, "onResume"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception bind service: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 684
    const-string v0, "AllshareSetting: "

    const-string v1, "onSaveInstanceState"

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 686
    return-void
.end method
