.class public Lcom/android/settings_ex/dmr/DMRSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "DMRSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final DEFAULT_DEVICE_NAME:Ljava/lang/String; = "[HomeSync]"

.field private static final HANDLER_RESET_ACCESS_CONTROL_STATE:I = 0x138a

.field private static final HANDLER_RESET_FUNCTION_STATE:I = 0x1389

.field private static final KEY_DMR_ACCEPTED_DEVICE:Ljava/lang/String; = "dmr_accept_device"

.field private static final KEY_DMR_ACCESS_CONTROL:Ljava/lang/String; = "dmr_access_control"

.field private static final KEY_DMR_CATEGORY_ADVANCED:Ljava/lang/String; = "dmr_file_data_transfer"

.field private static final KEY_DMR_DEVICE_NAME:Ljava/lang/String; = "dmr_device_name"

.field private static final KEY_DMR_ONOFF:Ljava/lang/String; = "dmr_onoff"

.field private static final KEY_DMR_REJECTED_DEVICE:Ljava/lang/String; = "dmr_reject_device"

.field private static final LENGTH_DEVICE_NAME_MAX:I = 0x37

.field private static final PREFERENCE_NAME:Ljava/lang/String; = "pref_dmr"

.field protected static final PROJECTION_CONTACT:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Settings"

.field private static final TAGClass:Ljava/lang/String; = "DMR Setting: "


# instance fields
.field private bFunctionState:Z

.field private bRegisterReceiver:Z

.field private bWifiPopupShown:Z

.field private mAccessControl:Landroid/preference/ListPreference;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mCurConnection:Landroid/content/ServiceConnection;

.field private mDeviceName:Landroid/preference/EditTextPreference;

.field private mDeviceNameWatcher:Lcom/android/settings_ex/dmr/EditTextWatcher;

.field private mFunctionOnoff:Landroid/preference/CheckBoxPreference;

.field private mHandler:Landroid/os/Handler;

.field private mIsBound:Z

.field public mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 151
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

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

    sput-object v0, Lcom/android/settings_ex/dmr/DMRSettings;->PROJECTION_CONTACT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    .line 112
    iput-boolean v1, p0, Lcom/android/settings_ex/dmr/DMRSettings;->bWifiPopupShown:Z

    .line 114
    iput-boolean v1, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mIsBound:Z

    .line 116
    iput-boolean v1, p0, Lcom/android/settings_ex/dmr/DMRSettings;->bFunctionState:Z

    .line 118
    iput-boolean v1, p0, Lcom/android/settings_ex/dmr/DMRSettings;->bRegisterReceiver:Z

    .line 833
    new-instance v0, Lcom/android/settings_ex/dmr/DMRSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/dmr/DMRSettings$1;-><init>(Lcom/android/settings_ex/dmr/DMRSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mConnection:Landroid/content/ServiceConnection;

    .line 1196
    new-instance v0, Lcom/android/settings_ex/dmr/DMRSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/dmr/DMRSettings$4;-><init>(Lcom/android/settings_ex/dmr/DMRSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1747
    new-instance v0, Lcom/android/settings_ex/dmr/DMRSettings$8;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/dmr/DMRSettings$8;-><init>(Lcom/android/settings_ex/dmr/DMRSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/dmr/DMRSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/dmr/DMRSettings;Landroid/preference/PreferenceGroup;Ljava/util/Map;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/dmr/DMRSettings;->registerPreferenceChangeListener(Landroid/preference/PreferenceGroup;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/dmr/DMRSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/settings_ex/dmr/DMRSettings;->refreshPreferenceValues()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/settings_ex/dmr/DMRSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/settings_ex/dmr/DMRSettings;->bWifiPopupShown:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings_ex/dmr/DMRSettings;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/dmr/DMRSettings;Landroid/preference/Preference;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/settings_ex/dmr/DMRSettings;->refreshPreference(Landroid/preference/Preference;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings_ex/dmr/DMRSettings;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mAccessControl:Landroid/preference/ListPreference;

    return-object v0
.end method

.method private bindRemoteService()V
    .locals 5

    .prologue
    .line 797
    const-string v1, "Settings"

    const-string v2, "bindService"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    iget-boolean v1, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mIsBound:Z

    if-nez v1, :cond_0

    .line 800
    iget-object v1, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 801
    iget-object v1, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1389

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 802
    const-string v1, "Settings"

    const-string v2, "service is not bound "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    new-instance v0, Landroid/content/Intent;

    const-string v1, "asfdmr.intent.action.bindDMRService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 805
    .local v0, bindIntent:Landroid/content/Intent;
    const-string v1, "com.sec.android.allshare.dmrservice"

    const-string v2, "com.sec.android.allshare.dmrservice.DMRServiceManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 809
    iget-object v1, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 810
    iget-object v1, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mConnection:Landroid/content/ServiceConnection;

    const/16 v3, 0x49

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 811
    iget-object v1, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mConnection:Landroid/content/ServiceConnection;

    iput-object v1, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mCurConnection:Landroid/content/ServiceConnection;

    .line 812
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mIsBound:Z

    .line 814
    .end local v0           #bindIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private checkDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "deviceName"

    .prologue
    .line 1148
    const-string v3, "Settings"

    const-string v4, "DMR Setting: checkDeviceName()"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    move-object v2, p1

    .line 1154
    .local v2, modifiedName:Ljava/lang/String;
    :try_start_0
    const-string v0, "[HomeSync]"

    .line 1156
    .local v0, deviceType:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1158
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1160
    const-string v3, "Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DMR Setting: modify Device Name to : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    .end local v0           #deviceType:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 1164
    .restart local v0       #deviceType:Ljava/lang/String;
    :cond_0
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1170
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090dbf

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1176
    .end local v0           #deviceType:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1178
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DMR Setting: checkDeviceName(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private initPreferences()V
    .locals 6

    .prologue
    .line 1110
    const-string v2, "Settings"

    const-string v3, "DMR Setting: initPreferences()"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mAccessControl:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mAccessControl:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1115
    iget-object v2, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    if-eqz v2, :cond_0

    .line 1116
    iget-object v2, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1117
    iget-object v2, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x1389

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1118
    iget-object v2, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    invoke-interface {v2}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer;->isMediaRendererStarted()Z

    move-result v1

    .line 1119
    .local v1, isMediaRendererStarted:Z
    iget-object v2, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1120
    iget-object v2, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, v1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/dmr/DMRSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 1122
    .end local v1           #isMediaRendererStarted:Z
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mDeviceName:Landroid/preference/EditTextPreference;

    if-eqz v2, :cond_1

    .line 1123
    iget-object v2, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mDeviceName:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings_ex/dmr/DMRSettings;->checkDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1130
    :cond_1
    :goto_0
    return-void

    .line 1124
    :catch_0
    move-exception v0

    .line 1125
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DMR Setting: initPreferences() :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private refreshPreference(Landroid/preference/Preference;)V
    .locals 3
    .parameter "preference"

    .prologue
    .line 1133
    const-string v1, "Settings"

    const-string v2, "DMR Setting: refreshPreference()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    if-nez p1, :cond_0

    .line 1142
    :goto_0
    return-void

    .line 1137
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mAccessControl:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mAccessControl:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1138
    invoke-virtual {p1}, Landroid/preference/Preference;->isEnabled()Z

    move-result v0

    .line 1139
    .local v0, value:Z
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1140
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 1139
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private refreshPreferenceValues()V
    .locals 8

    .prologue
    .line 1068
    const-string v4, "Settings"

    const-string v5, "DMR Setting: refreshPreferenceValues()"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    const/4 v3, 0x0

    .line 1072
    .local v3, updatedNeme:Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v4, :cond_2

    .line 1074
    :try_start_1
    iget-object v4, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1075
    iget-object v4, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x1389

    const-wide/16 v6, 0x96

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1076
    iget-object v4, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    invoke-interface {v4}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer;->isMediaRendererStarted()Z

    move-result v1

    .line 1080
    .local v1, isMediaRendererStarted:Z
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings_ex/dmr/DMRSettings;->bWifiPopupShown:Z

    .line 1081
    iget-object v4, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, v1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {p0, v4, v5}, Lcom/android/settings_ex/dmr/DMRSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 1083
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/settings_ex/dmr/DMRSettings;->bWifiPopupShown:Z

    .line 1084
    iget-object v4, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    invoke-interface {v4}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer;->getMediaRendererName()Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 1094
    .end local v1           #isMediaRendererStarted:Z
    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mDeviceName:Landroid/preference/EditTextPreference;

    if-eqz v4, :cond_1

    .line 1095
    if-nez v3, :cond_0

    .line 1096
    iget-object v4, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    .line 1097
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/settings_ex/dmr/DMRSettings;->checkDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1098
    .local v2, modifiedName:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 1099
    iget-object v4, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1107
    .end local v2           #modifiedName:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 1085
    :catch_0
    move-exception v0

    .line 1086
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "Settings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DMR Setting: refreshPreferenceValues getMediaRendererName : RemoteException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1101
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1102
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "Settings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DMR Setting: refreshPreferenceValues() preference variable :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 1091
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_3
    const-string v4, "Settings"

    const-string v5, "DMR Setting: mService is null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method private registerPreferenceChangeListener(Landroid/preference/PreferenceGroup;Ljava/util/Map;)V
    .locals 15
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
    .line 937
    .local p2, currentPreference:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v1, "Settings"

    const-string v2, "DMR Setting: registerPreferenceChangeListener"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    move-object/from16 v0, p1

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 940
    invoke-virtual/range {p1 .. p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v12

    .line 942
    .local v12, nCount:I
    const/4 v11, 0x0

    .local v11, index:I
    :goto_0
    if-ge v11, v12, :cond_b

    .line 944
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v13

    .line 946
    .local v13, preference:Landroid/preference/Preference;
    if-eqz v13, :cond_2

    .line 948
    invoke-virtual {v13, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 950
    invoke-virtual {v13}, Landroid/preference/Preference;->hasKey()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 953
    invoke-virtual {v13}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 956
    .local v14, value:Ljava/lang/Object;
    invoke-virtual {v13}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dmr_onoff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v14, :cond_3

    .line 957
    const-string v1, "Settings"

    const-string v2, "DMR Setting: Preference Init OFF"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    iget-object v1, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/dmr/DMRSettings;->refreshPreference(Landroid/preference/Preference;)V

    .line 959
    const/4 v14, 0x0

    .line 1044
    .end local v14           #value:Ljava/lang/Object;
    :cond_0
    :goto_1
    if-eqz v14, :cond_1

    .line 1046
    invoke-virtual {p0, v13, v14}, Lcom/android/settings_ex/dmr/DMRSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 1052
    :cond_1
    instance-of v1, v13, Landroid/preference/PreferenceGroup;

    if-eqz v1, :cond_2

    .line 1054
    check-cast v13, Landroid/preference/PreferenceGroup;

    .end local v13           #preference:Landroid/preference/Preference;
    move-object/from16 v0, p2

    invoke-direct {p0, v13, v0}, Lcom/android/settings_ex/dmr/DMRSettings;->registerPreferenceChangeListener(Landroid/preference/PreferenceGroup;Ljava/util/Map;)V

    .line 942
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 961
    .restart local v13       #preference:Landroid/preference/Preference;
    .restart local v14       #value:Ljava/lang/Object;
    :cond_3
    invoke-virtual {v13}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dmr_onoff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, v14

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 997
    :cond_4
    invoke-virtual {v13}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dmr_device_name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    if-nez v14, :cond_a

    .line 998
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/dmr/DMRSettings;->checkDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1001
    .local v9, deviceName:Ljava/lang/String;
    if-nez v9, :cond_6

    .line 1002
    move-object v14, v9

    .line 1032
    .local v14, value:Ljava/lang/String;
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v14}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 1005
    .local v14, value:Ljava/lang/Object;
    :cond_6
    iget-object v1, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/settings_ex/dmr/DMRSettings;->PROJECTION_CONTACT:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1007
    .local v8, cursor:Landroid/database/Cursor;
    const-string v10, ""

    .line 1010
    .local v10, friendlyName:Ljava/lang/String;
    :goto_3
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1011
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1012
    if-eqz v10, :cond_7

    .line 1013
    const-string v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DMR Setting: friendlyName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 1018
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1015
    :cond_7
    :try_start_1
    const-string v1, "Settings"

    const-string v2, "DMR Setting: freindlyName is NULL"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 1018
    :cond_8
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1021
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1022
    const-string v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DMR Setting: Set Default Device Name :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    sget-object v14, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1028
    .local v14, value:Ljava/lang/String;
    :goto_4
    if-eqz v10, :cond_5

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5

    .line 1029
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_2

    .line 1025
    .local v14, value:Ljava/lang/Object;
    :cond_9
    const v1, 0x7f090dbf

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    .local v14, value:Ljava/lang/String;
    goto :goto_4

    .line 1036
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v9           #deviceName:Ljava/lang/String;
    .end local v10           #friendlyName:Ljava/lang/String;
    .local v14, value:Ljava/lang/Object;
    :cond_a
    invoke-virtual {v13}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dmr_device_name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1038
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1039
    .local v7, changedName:Ljava/lang/String;
    move-object v14, v7

    .line 1040
    .local v14, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v7}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 1041
    const-string v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DMR Setting: Remove all \'/\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v14}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1062
    .end local v7           #changedName:Ljava/lang/String;
    .end local v13           #preference:Landroid/preference/Preference;
    .end local v14           #value:Ljava/lang/String;
    :cond_b
    return-void
.end method

.method private requestWifiSettingPopup()V
    .locals 4

    .prologue
    .line 869
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings_ex/dmr/DMRSettings;->bFunctionState:Z

    .line 870
    iget-boolean v1, p0, Lcom/android/settings_ex/dmr/DMRSettings;->bWifiPopupShown:Z

    if-nez v1, :cond_0

    .line 872
    const-string v1, "Settings"

    const-string v2, "DMR Setting: requestWifiSettingPopup()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/settings_ex/dmr/DMRSettings;->bWifiPopupShown:Z

    .line 882
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0911e3

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0911ed

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090db5

    new-instance v3, Lcom/android/settings_ex/dmr/DMRSettings$3;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/dmr/DMRSettings$3;-><init>(Lcom/android/settings_ex/dmr/DMRSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/dmr/DMRSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/dmr/DMRSettings$2;-><init>(Lcom/android/settings_ex/dmr/DMRSettings;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 930
    :cond_0
    :goto_0
    return-void

    .line 920
    :catch_0
    move-exception v0

    .line 922
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DMR Setting: requestWifiSettingPopup(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private setBroadcastReceiver()V
    .locals 5

    .prologue
    .line 1546
    const-string v1, "Settings"

    const-string v2, "DMR Setting: setBroadcastReceiver()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settings_ex/dmr/DMRSettings;->bRegisterReceiver:Z

    if-nez v1, :cond_0

    .line 1552
    iget-object v1, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1556
    iget-object v1, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "WIFI_P2P_CONNECTION_CHANGED_ACTION"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1560
    iget-object v1, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1598
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/dmr/DMRSettings;->bRegisterReceiver:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1607
    :cond_0
    :goto_0
    return-void

    .line 1602
    :catch_0
    move-exception v0

    .line 1603
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DMR Setting: Exception on setBroadcastReceiver"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setServerName()V
    .locals 7

    .prologue
    .line 1774
    const-string v4, "Settings"

    const-string v5, "DMR Setting: setServerName"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "device_name"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings_ex/dmr/DMRSettings;->checkDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1779
    .local v0, deviceName:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1780
    const-string v4, "Settings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DMR Setting: Init device name to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    iget-object v4, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mContext:Landroid/content/Context;

    const-string v5, "pref_dmr"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1784
    .local v3, preference:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1785
    .local v2, edit:Landroid/content/SharedPreferences$Editor;
    const-string v4, "dmr_device_name"

    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1786
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1789
    :try_start_0
    iget-object v4, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    if-eqz v4, :cond_0

    .line 1790
    iget-object v4, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    invoke-interface {v4, v0}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer;->setMediaRendererName(Ljava/lang/String;)V

    .line 1801
    .end local v2           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v3           #preference:Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 1792
    .restart local v2       #edit:Landroid/content/SharedPreferences$Editor;
    .restart local v3       #preference:Landroid/content/SharedPreferences;
    :cond_0
    const-string v4, "Settings"

    const-string v5, "DMR Setting: setServerName: mIMediaServer is null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1793
    :catch_0
    move-exception v1

    .line 1794
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "Settings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DMR Setting: setServerName: setMediaServerName"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1798
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v3           #preference:Landroid/content/SharedPreferences;
    :cond_1
    const-string v4, "Settings"

    const-string v5, "DMR Setting: setServerName: deviceName is null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unBindRemoteService()V
    .locals 2

    .prologue
    .line 820
    const-string v0, "Settings"

    const-string v1, "unbindService"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    iget-boolean v0, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mIsBound:Z

    if-eqz v0, :cond_1

    .line 822
    iget-object v0, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mCurConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mCurConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 825
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mCurConnection:Landroid/content/ServiceConnection;

    .line 826
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mIsBound:Z

    .line 828
    :cond_1
    return-void
.end method

.method private unregisterBroadcastReceiver()V
    .locals 4

    .prologue
    .line 1613
    const-string v1, "Settings"

    const-string v2, "DMR Setting: unregisterBroadcastReceiver()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settings_ex/dmr/DMRSettings;->bRegisterReceiver:Z

    if-eqz v1, :cond_0

    .line 1619
    iget-object v1, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1621
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings_ex/dmr/DMRSettings;->bRegisterReceiver:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1631
    :cond_0
    :goto_0
    return-void

    .line 1625
    :catch_0
    move-exception v0

    .line 1627
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DMR Setting: Exception on unregisterBroadcastReceiver"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public displayList(Lcom/sec/android/allshare/dmrservice/DeviceList;Z)V
    .locals 16
    .parameter "devicelist"
    .parameter "permission"

    .prologue
    .line 1642
    const-string v13, "Settings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DMR Setting: displayList with permission"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v2, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1647
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    if-eqz p2, :cond_1

    .line 1648
    const v13, 0x7f0911e7

    invoke-virtual {v2, v13}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1652
    :goto_0
    move/from16 v7, p2

    .line 1654
    .local v7, device_permission_type:Z
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/allshare/dmrservice/DeviceList;->getDeviceList()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1655
    :cond_0
    const-string v13, "Settings"

    const-string v14, "DMR Setting: No deivce in list."

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    const v13, 0x7f0911ec

    invoke-virtual {v2, v13}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1735
    :goto_1
    const-string v13, "Cancel"

    new-instance v14, Lcom/android/settings_ex/dmr/DMRSettings$7;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/settings_ex/dmr/DMRSettings$7;-><init>(Lcom/android/settings_ex/dmr/DMRSettings;)V

    invoke-virtual {v2, v13, v14}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1742
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1743
    .local v1, alert:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1744
    return-void

    .line 1650
    .end local v1           #alert:Landroid/app/AlertDialog;
    .end local v7           #device_permission_type:Z
    :cond_1
    const v13, 0x7f0911e9

    invoke-virtual {v2, v13}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1659
    .restart local v7       #device_permission_type:Z
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/allshare/dmrservice/DeviceList;->getDeviceList()Ljava/util/List;

    move-result-object v6

    .line 1660
    .local v6, device_list:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/allshare/dmrservice/Device;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1662
    .local v3, clickedList:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/allshare/dmrservice/Device;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    .line 1663
    .local v11, size:I
    new-array v10, v11, [Ljava/lang/String;

    .line 1664
    .local v10, list_values:[Ljava/lang/String;
    new-array v5, v11, [Ljava/lang/String;

    .line 1665
    .local v5, deviceIds:[Ljava/lang/String;
    new-array v12, v11, [Z

    .line 1666
    .local v12, values:[Z
    const/4 v8, 0x0

    .line 1667
    .local v8, i:I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/allshare/dmrservice/Device;

    .line 1668
    .local v4, device:Lcom/sec/android/allshare/dmrservice/Device;
    iget-object v13, v4, Lcom/sec/android/allshare/dmrservice/Device;->deviceName:Ljava/lang/String;

    aput-object v13, v10, v8

    .line 1669
    iget-object v13, v4, Lcom/sec/android/allshare/dmrservice/Device;->deviceID:Ljava/lang/String;

    aput-object v13, v5, v8

    .line 1670
    const/4 v13, 0x0

    aput-boolean v13, v12, v8

    .line 1671
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1674
    .end local v4           #device:Lcom/sec/android/allshare/dmrservice/Device;
    :cond_3
    new-instance v13, Lcom/android/settings_ex/dmr/DMRSettings$5;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v3, v6}, Lcom/android/settings_ex/dmr/DMRSettings$5;-><init>(Lcom/android/settings_ex/dmr/DMRSettings;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v2, v10, v12, v13}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1698
    const-string v13, "Delete"

    new-instance v14, Lcom/android/settings_ex/dmr/DMRSettings$6;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v3, v7}, Lcom/android/settings_ex/dmr/DMRSettings$6;-><init>(Lcom/android/settings_ex/dmr/DMRSettings;Ljava/util/List;Z)V

    invoke-virtual {v2, v13, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 193
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 194
    const-string v3, "Settings"

    const-string v4, "DMR Setting:   onCreate()"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    const-string v4, "pref_dmr"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 200
    const v3, 0x7f07002e

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 203
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mContext:Landroid/content/Context;

    .line 208
    const-string v3, "dmr_onoff"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    .line 210
    iget-object v3, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 214
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mDeviceName:Landroid/preference/EditTextPreference;

    .line 215
    const-string v3, "dmr_file_data_transfer"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 216
    .local v0, advancedCategory:Landroid/preference/PreferenceCategory;
    const-string v3, "dmr_device_name"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 236
    const-string v3, "dmr_accept_device"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 237
    .local v1, allowedDevice:Landroid/preference/Preference;
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 238
    const-string v3, "dmr_reject_device"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 239
    .local v2, deniedDevice:Landroid/preference/Preference;
    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 240
    const-string v3, "dmr_access_control"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mAccessControl:Landroid/preference/ListPreference;

    .line 245
    iget-boolean v3, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mIsBound:Z

    if-nez v3, :cond_0

    .line 246
    const-string v3, "Settings"

    const-string v4, "DMR Setting:  MediaRenderer Service is not bound so bounding the serivce."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-direct {p0}, Lcom/android/settings_ex/dmr/DMRSettings;->bindRemoteService()V

    .line 251
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/dmr/DMRSettings;->setBroadcastReceiver()V

    .line 252
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 332
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 333
    const-string v0, "Settings"

    const-string v1, "DMR Setting: onDestroy()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-direct {p0}, Lcom/android/settings_ex/dmr/DMRSettings;->unBindRemoteService()V

    .line 338
    invoke-direct {p0}, Lcom/android/settings_ex/dmr/DMRSettings;->unregisterBroadcastReceiver()V

    .line 339
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 318
    const-string v0, "Settings"

    const-string v1, "DMR Setting: onPause()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 321
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 17
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 433
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 434
    .local v5, key:Ljava/lang/String;
    const-string v13, "Settings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DMR Setting: Preference Changed: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const-string v13, "dmr_onoff"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    move-object/from16 v13, p2

    .line 440
    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 442
    .local v10, value:Z
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings_ex/dmr/DMRSettings;->bFunctionState:Z

    if-ne v13, v10, :cond_1

    .line 443
    const-string v13, "Settings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DMR Setting: Duplicated on/off message: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings_ex/dmr/DMRSettings;->bFunctionState:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/dmr/DMRSettings;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    if-nez v13, :cond_0

    .line 445
    const/4 v13, 0x0

    .line 789
    .end local v10           #value:Z
    .end local p2
    :goto_0
    return v13

    .line 447
    .restart local v10       #value:Z
    .restart local p2
    :cond_0
    const/4 v13, 0x1

    goto :goto_0

    .line 450
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/dmr/DMRSettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 453
    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/settings_ex/dmr/DMRSettings;->bFunctionState:Z

    .line 454
    const-string v13, "wifi"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/WifiManager;

    .line 455
    .local v11, wifiManager:Landroid/net/wifi/WifiManager;
    const-string v13, "wifip2p"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 458
    .local v12, wifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    if-eqz v11, :cond_9

    if-eqz v12, :cond_9

    if-eqz p2, :cond_9

    .line 459
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/dmr/DMRSettings;->mContext:Landroid/content/Context;

    const-string v14, "connectivity"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 461
    .local v2, connectivityManager:Landroid/net/ConnectivityManager;
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v8

    .line 463
    .local v8, netInfoWifi:Landroid/net/NetworkInfo;
    const/16 v13, 0xd

    invoke-virtual {v2, v13}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v7

    .line 465
    .local v7, netInfoP2p:Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    .line 478
    .local v1, bEthernetConnected:Z
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_b

    .line 480
    if-nez v1, :cond_5

    if-eqz v8, :cond_5

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 488
    if-eqz v7, :cond_3

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 494
    const-string v13, "Settings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DMR Setting: Wifi State : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", WifiDirect State : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/dmr/DMRSettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v13}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 504
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/dmr/DMRSettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 512
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/dmr/DMRSettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings_ex/dmr/DMRSettings;->refreshPreference(Landroid/preference/Preference;)V

    .line 514
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/dmr/DMRSettings;->requestWifiSettingPopup()V

    .line 516
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/dmr/DMRSettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 518
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 520
    :cond_3
    if-nez v7, :cond_b

    .line 522
    const-string v13, "Settings"

    const-string v14, "DMR Setting: Wifi State : netInfoP2p is null >> check p2p state"

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/dmr/DMRSettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v13}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 526
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/dmr/DMRSettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 534
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/dmr/DMRSettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings_ex/dmr/DMRSettings;->refreshPreference(Landroid/preference/Preference;)V

    .line 536
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/dmr/DMRSettings;->requestWifiSettingPopup()V

    .line 538
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/dmr/DMRSettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 540
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 548
    :cond_5
    if-nez v8, :cond_b

    .line 550
    const-string v13, "Settings"

    const-string v14, "DMR Setting: Wifi State : netInfoWifi is null >> check p2p state"

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    if-eqz v7, :cond_7

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 558
    const-string v13, "Settings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DMR Setting:  WifiDirect State : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/dmr/DMRSettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v13}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 564
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/dmr/DMRSettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 572
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/dmr/DMRSettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings_ex/dmr/DMRSettings;->refreshPreference(Landroid/preference/Preference;)V

    .line 574
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/dmr/DMRSettings;->requestWifiSettingPopup()V

    .line 576
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/dmr/DMRSettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 578
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 584
    :cond_7
    if-nez v7, :cond_b

    .line 586
    const-string v13, "Settings"

    const-string v14, "DMR Setting: Wifi State : netInfoP2p is null >> check p2p state"

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/dmr/DMRSettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v13}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 592
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/dmr/DMRSettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 600
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/dmr/DMRSettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings_ex/dmr/DMRSettings;->refreshPreference(Landroid/preference/Preference;)V

    .line 602
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/dmr/DMRSettings;->requestWifiSettingPopup()V

    .line 604
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/dmr/DMRSettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 606
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 620
    .end local v1           #bEthernetConnected:Z
    .end local v2           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v7           #netInfoP2p:Landroid/net/NetworkInfo;
    .end local v8           #netInfoWifi:Landroid/net/NetworkInfo;
    .restart local p2
    :cond_9
    const-string v13, "Settings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DMR Setting: Check Wi-Fi State or Function state"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/dmr/DMRSettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v13}, Landroid/preference/Preference;->isEnabled()Z

    move-result v13

    if-nez v13, :cond_a

    .line 625
    const-string v13, "Settings"

    const-string v14, "DMR Setting: Set Enable Function"

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/dmr/DMRSettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 630
    :cond_a
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 672
    .end local p2
    .restart local v1       #bEthernetConnected:Z
    .restart local v2       #connectivityManager:Landroid/net/ConnectivityManager;
    .restart local v7       #netInfoP2p:Landroid/net/NetworkInfo;
    .restart local v8       #netInfoWifi:Landroid/net/NetworkInfo;
    :cond_b
    const-string v13, "Settings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DMR Setting:  onPreferenceClick(): KEY_ALLSHARE_ONOFF "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/dmr/DMRSettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v15}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/dmr/DMRSettings;->mHandler:Landroid/os/Handler;

    const/16 v14, 0x1389

    const-wide/16 v15, 0x12c

    invoke-virtual/range {v13 .. v16}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 674
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/dmr/DMRSettings;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    if-eqz v13, :cond_10

    .line 675
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/dmr/DMRSettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v13}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v13

    if-eqz v13, :cond_e

    .line 677
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/dmr/DMRSettings;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    invoke-interface {v13}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer;->isMediaRendererStarted()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 678
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/dmr/DMRSettings;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    invoke-interface {v13}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer;->stopMediaRenderer()V

    .line 680
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/dmr/DMRSettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/TwoStatePreference;->setChecked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 789
    .end local v1           #bEthernetConnected:Z
    .end local v2           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v7           #netInfoP2p:Landroid/net/NetworkInfo;
    .end local v8           #netInfoWifi:Landroid/net/NetworkInfo;
    .end local v10           #value:Z
    .end local v11           #wifiManager:Landroid/net/wifi/WifiManager;
    .end local v12           #wifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    :cond_d
    :goto_1
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 682
    .restart local v1       #bEthernetConnected:Z
    .restart local v2       #connectivityManager:Landroid/net/ConnectivityManager;
    .restart local v7       #netInfoP2p:Landroid/net/NetworkInfo;
    .restart local v8       #netInfoWifi:Landroid/net/NetworkInfo;
    .restart local v10       #value:Z
    .restart local v11       #wifiManager:Landroid/net/wifi/WifiManager;
    .restart local v12       #wifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    :catch_0
    move-exception v4

    .line 683
    .local v4, e:Landroid/os/RemoteException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 687
    .end local v4           #e:Landroid/os/RemoteException;
    :cond_e
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/dmr/DMRSettings;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    invoke-interface {v13}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer;->isMediaRendererStarted()Z

    move-result v13

    if-nez v13, :cond_f

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings_ex/dmr/DMRSettings;->bFunctionState:Z

    if-eqz v13, :cond_f

    .line 688
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/dmr/DMRSettings;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    invoke-interface {v13}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer;->startMediaRenderer()V

    .line 690
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/dmr/DMRSettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/preference/TwoStatePreference;->setChecked(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 692
    :catch_1
    move-exception v4

    .line 693
    .restart local v4       #e:Landroid/os/RemoteException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 698
    .end local v4           #e:Landroid/os/RemoteException;
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/dmr/DMRSettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    .line 705
    .end local v1           #bEthernetConnected:Z
    .end local v2           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v7           #netInfoP2p:Landroid/net/NetworkInfo;
    .end local v8           #netInfoWifi:Landroid/net/NetworkInfo;
    .end local v10           #value:Z
    .end local v11           #wifiManager:Landroid/net/wifi/WifiManager;
    .end local v12           #wifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    .restart local p2
    :cond_11
    const-string v13, "dmr_device_name"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    if-eqz p2, :cond_17

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/dmr/DMRSettings;->mDeviceName:Landroid/preference/EditTextPreference;

    if-eqz v13, :cond_17

    .line 707
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v6

    .line 709
    .local v6, length:I
    if-lez v6, :cond_12

    const/16 v13, 0x37

    if-le v6, v13, :cond_13

    .line 710
    :cond_12
    const-string v13, "Settings"

    const-string v14, "DMR Setting: Device name length error "

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 715
    :cond_13
    const/4 v3, 0x0

    .line 716
    .local v3, currentName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/dmr/DMRSettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v13}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    .line 717
    .local v9, updatedNeme:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/dmr/DMRSettings;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    if-eqz v13, :cond_14

    .line 719
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/dmr/DMRSettings;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    invoke-interface {v13}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer;->getMediaRendererName()Ljava/lang/String;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v3

    .line 732
    :goto_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    const-string v13, "[HomeSync]"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_15

    .line 733
    const-string v13, "Settings"

    const-string v14, "DMR Setting: Device name is same. return"

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 720
    :catch_2
    move-exception v4

    .line 721
    .restart local v4       #e:Landroid/os/RemoteException;
    const-string v13, "Settings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DMR Setting: getMediaRendererName : RemoteException"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 723
    .end local v4           #e:Landroid/os/RemoteException;
    :catch_3
    move-exception v4

    .line 724
    .local v4, e:Ljava/lang/Exception;
    const-string v13, "Settings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DMR Setting: getMediaRendererName : Exception"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 729
    .end local v4           #e:Ljava/lang/Exception;
    :cond_14
    const-string v13, "Settings"

    const-string v14, "DMR Setting: mService is null"

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 740
    :cond_15
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/dmr/DMRSettings;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    if-eqz v13, :cond_16

    .line 743
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/dmr/DMRSettings;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer;->setMediaRendererName(Ljava/lang/String;)V

    .line 744
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/dmr/DMRSettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/dmr/DMRSettings;->checkDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 745
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 746
    :catch_4
    move-exception v4

    .line 747
    .local v4, e:Landroid/os/RemoteException;
    const-string v13, "Settings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DMR Setting: setMediaRendererName : RemoteException"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 749
    .end local v4           #e:Landroid/os/RemoteException;
    :catch_5
    move-exception v4

    .line 750
    .local v4, e:Ljava/lang/Exception;
    const-string v13, "Settings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DMR Setting: setMediaRendererName : Exception"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 755
    .end local v4           #e:Ljava/lang/Exception;
    :cond_16
    const-string v13, "Settings"

    const-string v14, "DMR Setting: mService is null"

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/dmr/DMRSettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/dmr/DMRSettings;->checkDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 759
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 765
    .end local v3           #currentName:Ljava/lang/String;
    .end local v6           #length:I
    .end local v9           #updatedNeme:Ljava/lang/String;
    :cond_17
    const-string v13, "dmr_access_control"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 766
    const-string v13, "Settings"

    const-string v14, "DMR Setting: key is dmr_access_control"

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/dmr/DMRSettings;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    if-nez v13, :cond_18

    if-eqz p2, :cond_18

    move-object/from16 v0, p2

    instance-of v13, v0, Ljava/lang/String;

    if-nez v13, :cond_19

    .line 769
    :cond_18
    :try_start_4
    const-string v13, "Settings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DMR Setting: saving the value"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/dmr/DMRSettings;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer;->setDeviceAccessMode(Ljava/lang/String;)V

    .line 771
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/dmr/DMRSettings;->mHandler:Landroid/os/Handler;

    const/16 v14, 0x138a

    const-wide/16 v15, 0xc8

    invoke-virtual/range {v13 .. v16}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    .line 786
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 772
    :catch_6
    move-exception v4

    .line 774
    .local v4, e:Landroid/os/RemoteException;
    const-string v13, "Settings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DMR Setting: KEY_DMR_ACCESS_CONTROL getMediaRendererName : RemoteException"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 776
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 777
    .end local v4           #e:Landroid/os/RemoteException;
    :catch_7
    move-exception v4

    .line 778
    .local v4, e:Ljava/lang/Exception;
    const-string v13, "Settings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DMR Setting: KEY_DMR_ACCESS_CONTROL  getMediaRendererName : Exception"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 780
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 784
    .end local v4           #e:Ljava/lang/Exception;
    :cond_19
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 9
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 347
    const-string v6, "Settings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DMR Setting: onPreferenceClick(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :try_start_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "dmr_device_name"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 352
    const-string v6, "Settings"

    const-string v7, "DMR Setting: PreferenceClick :  KEY_DMR_DEVICE_NAME"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v6, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    .line 354
    .local v1, dialog:Landroid/app/AlertDialog;
    if-eqz v1, :cond_0

    .line 355
    const/4 v6, -0x1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    .line 356
    .local v3, positiveButton:Landroid/widget/Button;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 357
    check-cast p1, Landroid/preference/EditTextPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->selectAll()V

    .line 358
    iget-object v6, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mDeviceNameWatcher:Lcom/android/settings_ex/dmr/EditTextWatcher;

    iget-object v7, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1, v7}, Lcom/android/settings_ex/dmr/EditTextWatcher;->setDialog(Landroid/app/Dialog;Landroid/content/Context;)V

    .line 425
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v3           #positiveButton:Landroid/widget/Button;
    :cond_0
    :goto_0
    return v4

    .line 362
    .restart local p1
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "dmr_onoff"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 363
    const-string v6, "Settings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DMR Setting: onPreferenceClick(): KEY_ALLSHARE_ONOFF "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 416
    .end local p1
    :catch_0
    move-exception v2

    .line 417
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "Settings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DMR Setting: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    move v4, v5

    .line 419
    goto :goto_0

    .line 367
    .end local v2           #e:Ljava/lang/Exception;
    .restart local p1
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "dmr_accept_device"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "dmr_reject_device"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 369
    :cond_3
    const-string v6, "Settings"

    const-string v7, "DMR Setting: Accept or Reject Device name preference clicked"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "dmr_accept_device"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 374
    const-string v6, "Settings"

    const-string v7, "DMR Setting: onPreferenceClick(): KEY_ALLSHARE_ACCE;PTED_DEVICE "

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v6, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v6, :cond_5

    .line 378
    :try_start_2
    iget-object v6, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    invoke-interface {v6}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer;->getAllowedDevices()Lcom/sec/android/allshare/dmrservice/DeviceList;

    move-result-object v0

    .line 379
    .local v0, device_list:Lcom/sec/android/allshare/dmrservice/DeviceList;
    const/4 v6, 0x1

    invoke-virtual {p0, v0, v6}, Lcom/android/settings_ex/dmr/DMRSettings;->displayList(Lcom/sec/android/allshare/dmrservice/DeviceList;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 394
    .end local v0           #device_list:Lcom/sec/android/allshare/dmrservice/DeviceList;
    :cond_4
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "dmr_reject_device"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 396
    const-string v6, "Settings"

    const-string v7, "DMR Setting: onPreferenceClick(): REJECTED_DEVICE "

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v6, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v6, :cond_6

    .line 399
    :try_start_4
    iget-object v6, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    invoke-interface {v6}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer;->getDeniedDevices()Lcom/sec/android/allshare/dmrservice/DeviceList;

    move-result-object v0

    .line 400
    .restart local v0       #device_list:Lcom/sec/android/allshare/dmrservice/DeviceList;
    const/4 v6, 0x0

    invoke-virtual {p0, v0, v6}, Lcom/android/settings_ex/dmr/DMRSettings;->displayList(Lcom/sec/android/allshare/dmrservice/DeviceList;Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 401
    .end local v0           #device_list:Lcom/sec/android/allshare/dmrservice/DeviceList;
    :catch_1
    move-exception v2

    .line 402
    .local v2, e:Landroid/os/RemoteException;
    :try_start_5
    const-string v6, "Settings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DMR Setting: onPreferenceClick(): REJECTED_DEVICE  RemoteException"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 380
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v2

    .line 381
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string v6, "Settings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DMR Setting: onPreferenceClick():  ACCEPTED_DEVICE  RemoteException"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 383
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_3
    move-exception v2

    .line 384
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "Settings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DMR Setting: onPreferenceClick(): ACCEPTED_DEVICE Exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 388
    .end local v2           #e:Ljava/lang/Exception;
    :cond_5
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Lcom/android/settings_ex/dmr/DMRSettings;->displayList(Lcom/sec/android/allshare/dmrservice/DeviceList;Z)V

    .line 389
    const-string v6, "Settings"

    const-string v7, "DMR Setting: mService is null"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 404
    :catch_4
    move-exception v2

    .line 405
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v6, "Settings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DMR Setting: onPreferenceClick(): REJECTED_DEVICE Exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 409
    .end local v2           #e:Ljava/lang/Exception;
    :cond_6
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/android/settings_ex/dmr/DMRSettings;->displayList(Lcom/sec/android/allshare/dmrservice/DeviceList;Z)V

    .line 410
    const-string v6, "Settings"

    const-string v7, "DMR Setting: mService is null"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    .line 258
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 259
    const-string v4, "Settings"

    const-string v5, "DMR Setting:   onResume()"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 263
    .local v0, currentPreference:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-direct {p0, v4, v0}, Lcom/android/settings_ex/dmr/DMRSettings;->registerPreferenceChangeListener(Landroid/preference/PreferenceGroup;Ljava/util/Map;)V

    .line 264
    invoke-direct {p0}, Lcom/android/settings_ex/dmr/DMRSettings;->initPreferences()V

    .line 300
    iget-object v4, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mDeviceName:Landroid/preference/EditTextPreference;

    if-eqz v4, :cond_0

    .line 301
    iget-object v4, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    check-cast v2, Landroid/app/AlertDialog;

    .line 302
    .local v2, dialog:Landroid/app/AlertDialog;
    if-eqz v2, :cond_0

    .line 303
    iget-object v4, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mDeviceNameWatcher:Lcom/android/settings_ex/dmr/EditTextWatcher;

    iget-object v5, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2, v5}, Lcom/android/settings_ex/dmr/EditTextWatcher;->setDialog(Landroid/app/Dialog;Landroid/content/Context;)V

    .line 304
    iget-object v4, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 305
    .local v1, currentText:Ljava/lang/String;
    const-string v4, "Settings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DMR Setting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v4, p0, Lcom/android/settings_ex/dmr/DMRSettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 307
    const-string v4, "Settings"

    const-string v5, "DMR Setting: device name button disabled!!"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    .line 309
    .local v3, positiveButton:Landroid/widget/Button;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 313
    .end local v1           #currentText:Ljava/lang/String;
    .end local v2           #dialog:Landroid/app/AlertDialog;
    .end local v3           #positiveButton:Landroid/widget/Button;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 326
    const-string v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DMR Setting: onSaveInstanceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 328
    return-void
.end method
