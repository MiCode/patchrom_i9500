.class public Lcom/android/settings_ex/AirplaneModeEnabler;
.super Ljava/lang/Object;
.source "AirplaneModeEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final EVENT_AIRPLANE_MODE:I = 0x4

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AirplaneModeEnabler"


# instance fields
.field private mAirplaneModeDialog:Landroid/app/AlertDialog;

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private final mCheckBoxPref:Landroid/preference/CheckBoxPreference;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V
    .locals 3
    .parameter "context"
    .parameter "airplaneModeCheckBoxPreference"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/android/settings_ex/AirplaneModeEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/AirplaneModeEnabler$1;-><init>(Lcom/android/settings_ex/AirplaneModeEnabler;)V

    iput-object v0, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mHandler:Landroid/os/Handler;

    .line 70
    new-instance v0, Lcom/android/settings_ex/AirplaneModeEnabler$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/AirplaneModeEnabler$2;-><init>(Lcom/android/settings_ex/AirplaneModeEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 79
    iput-object p1, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 84
    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v1, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 85
    iget-object v0, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/AirplaneModeEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings_ex/AirplaneModeEnabler;->onAirplaneModeChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/AirplaneModeEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/AirplaneModeEnabler;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/AirplaneModeEnabler;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings_ex/AirplaneModeEnabler;->setAirplaneModeOn(Z)V

    return-void
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private onAirplaneModeChanged()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 154
    iget-object v5, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    .line 155
    .local v2, serviceState:Landroid/telephony/ServiceState;
    const/4 v0, 0x0

    .line 157
    .local v0, airplaneModeEnabled:Z
    iget-object v5, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 158
    iget-object v4, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings_ex/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    .line 159
    iget-object v4, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 160
    iget-object v4, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    move v0, v3

    .line 163
    :goto_1
    const-string v5, "AirplaneModeEnabler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onAirplaneModeChanged : serviceState.getState() return "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const-string v5, "AirplaneModeEnabler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onAirplaneModeChanged : airplaneModeEnabled "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v5, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_3

    move v1, v3

    .line 166
    .local v1, expectAirplaneModeOn:Z
    :goto_2
    if-ne v0, v1, :cond_0

    .line 167
    iget-object v4, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 168
    iget-object v4, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .end local v1           #expectAirplaneModeOn:Z
    :cond_2
    move v0, v4

    .line 162
    goto :goto_1

    :cond_3
    move v1, v4

    .line 165
    goto :goto_2
.end method

.method private setAirplaneModeOn(Z)V
    .locals 5
    .parameter "enabling"

    .prologue
    const/4 v1, 0x0

    .line 124
    iget-object v2, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 126
    iget-object v2, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 129
    iget-object v1, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 131
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 133
    const-string v1, "AirplaneModeEnabler"

    const-string v2, "Intent to IMSService for sending DE-REG packet"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v1, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.internal.ims.FLIGHT_MODE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 136
    iget-object v1, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 143
    :goto_0
    return-void

    .line 139
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 141
    iget-object v1, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mAirplaneModeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mAirplaneModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 107
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 177
    const-string v5, "ril.cdma.inecmmode"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 203
    const/4 v5, 0x1

    .end local p2
    :goto_0
    return v5

    .line 181
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 182
    .local v4, value:Z
    const v1, 0x7f090a68

    .line 183
    .local v1, resEnableMsg:I
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_BT_EnableSeparateSettingWithAirplainMode"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 184
    const v1, 0x7f090a69

    .line 186
    :cond_1
    if-eqz v4, :cond_2

    move v2, v1

    .line 187
    .local v2, resMsg:I
    :goto_1
    if-eqz v4, :cond_3

    const v3, 0x7f090a66

    .line 188
    .local v3, resTitle:I
    :goto_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 189
    .local v0, mAlertDialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 190
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 191
    const v5, 0x104000a

    new-instance v6, Lcom/android/settings_ex/AirplaneModeEnabler$3;

    invoke-direct {v6, p0, v4}, Lcom/android/settings_ex/AirplaneModeEnabler$3;-><init>(Lcom/android/settings_ex/AirplaneModeEnabler;Z)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 199
    const/high16 v5, 0x104

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 200
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mAirplaneModeDialog:Landroid/app/AlertDialog;

    .line 201
    const/4 v5, 0x0

    goto :goto_0

    .line 186
    .end local v0           #mAlertDialog:Landroid/app/AlertDialog$Builder;
    .end local v2           #resMsg:I
    .end local v3           #resTitle:I
    :cond_2
    const v2, 0x7f090a67

    goto :goto_1

    .line 187
    .restart local v2       #resMsg:I
    :cond_3
    const v3, 0x7f090147

    goto :goto_2
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 111
    iget-object v0, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 112
    iget-object v0, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 115
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 90
    iget-object v0, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings_ex/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 93
    iget-object v0, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 94
    iget-object v0, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 95
    iget-object v0, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/AirplaneModeEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 100
    :cond_0
    return-void
.end method

.method public setAirplaneModeInECM(ZZ)V
    .locals 0
    .parameter "isECMExit"
    .parameter "isAirplaneModeOn"

    .prologue
    .line 207
    if-eqz p1, :cond_0

    .line 209
    invoke-direct {p0, p2}, Lcom/android/settings_ex/AirplaneModeEnabler;->setAirplaneModeOn(Z)V

    .line 214
    :goto_0
    return-void

    .line 212
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/AirplaneModeEnabler;->onAirplaneModeChanged()V

    goto :goto_0
.end method
