.class public Lcom/android/settings_ex/wifi/WifiApEnabler;
.super Ljava/lang/Object;
.source "WifiApEnabler.java"


# static fields
.field private static final is3LMAllowed:Z


# instance fields
.field private final mCheckBox:Landroid/preference/CheckBoxPreference;

.field mCm:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mOriginalSummary:Ljava/lang/CharSequence;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V
    .locals 2
    .parameter "context"
    .parameter "checkBox"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/android/settings_ex/wifi/WifiApEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiApEnabler$1;-><init>(Lcom/android/settings_ex/wifi/WifiApEnabler;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 82
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    .line 84
    invoke-virtual {p2}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    .line 85
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 87
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 88
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    .line 90
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .line 92
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 93
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wifi/WifiApEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/WifiApEnabler;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/wifi/WifiApEnabler;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/wifi/WifiApEnabler;->updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/wifi/WifiApEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApEnabler;->enableWifiCheckBox()V

    return-void
.end method

.method private enableWifiCheckBox()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 107
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 109
    .local v0, isAirplaneMode:Z
    :goto_0
    if-nez v0, :cond_1

    .line 110
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 125
    :goto_1
    return-void

    .end local v0           #isAirplaneMode:Z
    :cond_0
    move v0, v2

    .line 107
    goto :goto_0

    .line 112
    .restart local v0       #isAirplaneMode:Z
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private handleWifiApStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 197
    packed-switch p1, :pswitch_data_0

    .line 221
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 222
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f090296

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 223
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApEnabler;->enableWifiCheckBox()V

    .line 225
    :goto_0
    return-void

    .line 199
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f090294

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 200
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 207
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 209
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 212
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f090295

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 213
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 216
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 217
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 218
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApEnabler;->enableWifiCheckBox()V

    goto :goto_0

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 14
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    .line 172
    const/4 v11, 0x0

    .line 173
    .local v11, wifiTethered:Z
    const/4 v10, 0x0

    .line 175
    .local v10, wifiErrored:Z
    move-object/from16 v0, p2

    .local v0, arr$:[Ljava/lang/Object;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, v2

    .end local v0           #arr$:[Ljava/lang/Object;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v6, v0, v3

    .local v6, o:Ljava/lang/Object;
    move-object v8, v6

    .line 176
    check-cast v8, Ljava/lang/String;

    .line 177
    .local v8, s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v7, v1, v2

    .line 178
    .local v7, regex:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v11, 0x1

    .line 177
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 175
    .end local v7           #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_0

    .line 181
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v5           #len$:I
    .end local v6           #o:Ljava/lang/Object;
    .end local v8           #s:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p3

    .restart local v0       #arr$:[Ljava/lang/Object;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    move v3, v2

    .end local v0           #arr$:[Ljava/lang/Object;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .restart local v3       #i$:I
    :goto_2
    if-ge v3, v4, :cond_5

    aget-object v6, v0, v3

    .restart local v6       #o:Ljava/lang/Object;
    move-object v8, v6

    .line 182
    check-cast v8, Ljava/lang/String;

    .line 183
    .restart local v8       #s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .restart local v1       #arr$:[Ljava/lang/String;
    array-length v5, v1

    .restart local v5       #len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_3
    if-ge v2, v5, :cond_4

    aget-object v7, v1, v2

    .line 184
    .restart local v7       #regex:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v10, 0x1

    .line 183
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 181
    .end local v7           #regex:Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_2

    .line 188
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v5           #len$:I
    .end local v6           #o:Ljava/lang/Object;
    .end local v8           #s:Ljava/lang/String;
    :cond_5
    if-eqz v11, :cond_7

    .line 189
    iget-object v12, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    .line 190
    .local v9, wifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0, v9}, Lcom/android/settings_ex/wifi/WifiApEnabler;->updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V

    .line 194
    .end local v9           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_6
    :goto_4
    return-void

    .line 191
    :cond_7
    if-eqz v10, :cond_6

    .line 192
    iget-object v12, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const v13, 0x7f090296

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_4
.end method


# virtual methods
.method public pause()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 104
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 99
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApEnabler;->enableWifiCheckBox()V

    .line 100
    return-void
.end method

.method public setSoftapEnabled(Z)V
    .locals 7
    .parameter "enable"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 128
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 132
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 133
    .local v2, wifiState:I
    if-eqz p1, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 135
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 136
    const-string v3, "wifi_saved_state"

    invoke-static {v0, v3, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 139
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 141
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 149
    :goto_0
    if-nez p1, :cond_2

    .line 150
    const/4 v1, 0x0

    .line 152
    .local v1, wifiSavedState:I
    :try_start_0
    const-string v3, "wifi_saved_state"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 156
    :goto_1
    if-ne v1, v6, :cond_2

    .line 157
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 158
    const-string v3, "wifi_saved_state"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 161
    .end local v1           #wifiSavedState:I
    :cond_2
    return-void

    .line 143
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f090296

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 153
    .restart local v1       #wifiSavedState:I
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V
    .locals 5
    .parameter "wifiConfig"

    .prologue
    .line 164
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const v2, 0x10405fc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f09046f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez p1, :cond_0

    .end local v0           #s:Ljava/lang/String;
    :goto_0
    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 169
    return-void

    .line 166
    .restart local v0       #s:Ljava/lang/String;
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0
.end method
