.class public Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;
.super Landroid/preference/Preference;
.source "WifiApDeviceInfoPreference.java"


# static fields
.field private static final ARRAY_ALLOW_ALL:I = 0x0

.field private static final ARRAY_ONLY_ALLOW_LIST:I = 0x1

.field private static final DIALOG_CHANGE_CONNECTIONMODE:I = 0x2

.field private static final DIALOG_DISCONNECT_WARN:I = 0x1

.field private static final MODE_ALLOW_ALL:I = 0x3

.field private static final MODE_ONLY_ALLOW_LIST:I = 0x1

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAllowAll:Z

.field private mContext:Landroid/content/Context;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "WifiApDeviceInfoPreference"

    sput-object v0, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings_ex/SettingsPreferenceFragment;Landroid/net/wifi/WifiConfiguration;)V
    .locals 3
    .parameter "fragment"
    .parameter "wifiConfig"

    .prologue
    const/4 v2, 0x1

    .line 49
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 53
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 55
    const v0, 0x7f040103

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 57
    if-nez p2, :cond_0

    .line 58
    const v0, 0x7f09035b

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 59
    iput-boolean v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z

    .line 68
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;->updateSummary()V

    .line 69
    return-void

    .line 61
    :cond_0
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 63
    iget v0, p2, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    if-ne v0, v2, :cond_1

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z

    goto :goto_0

    .line 66
    :cond_1
    iput-boolean v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;->changeAllowPolicy()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;->checkConnectedDeviceOrChangeAllowPolicy()V

    return-void
.end method

.method private changeAllowPolicy()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 144
    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z

    .line 145
    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z

    if-eqz v1, :cond_2

    .line 146
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v4, 0x3

    iput v4, v1, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    .line 150
    :goto_1
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;->updateSummary()V

    .line 151
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 153
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v4, 0xd

    if-ne v1, v4, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;->getRvfMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 156
    const-wide/16 v3, 0x258

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_2
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v3, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 162
    :cond_0
    return-void

    :cond_1
    move v1, v3

    .line 144
    goto :goto_0

    .line 148
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput v2, v1, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    goto :goto_1

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method private checkConnectedDeviceOrChangeAllowPolicy()V
    .locals 3

    .prologue
    .line 126
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 127
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v0, Landroid/os/Message;->what:I

    .line 128
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v1

    .line 129
    .local v1, num:I
    if-lez v1, :cond_0

    .line 130
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;->showDialog(I)V

    .line 133
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;->changeAllowPolicy()V

    goto :goto_0
.end method

.method private getRvfMode()I
    .locals 3

    .prologue
    .line 165
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 166
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x1c

    iput v2, v1, Landroid/os/Message;->what:I

    .line 167
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    .line 169
    .local v0, mRvfMode:I
    return v0
.end method

.method private showDialog(I)V
    .locals 6
    .parameter "dialogId"

    .prologue
    const v5, 0x7f090143

    .line 87
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 88
    .local v1, dialog:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 123
    :goto_0
    return-void

    .line 90
    :pswitch_0
    const v2, 0x7f09037d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f09039a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090699

    new-instance v4, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference$2;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference$2;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference$1;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;)V

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 122
    :goto_1
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 105
    :pswitch_1
    iget-boolean v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    .line 106
    .local v0, current:I
    :goto_2
    const v2, 0x7f090373

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a002b

    new-instance v4, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference$4;

    invoke-direct {v4, p0, v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference$4;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;I)V

    invoke-virtual {v2, v3, v0, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference$3;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference$3;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;)V

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 105
    .end local v0           #current:I
    :cond_0
    const/4 v0, 0x1

    goto :goto_2

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateSummary()V
    .locals 3

    .prologue
    .line 136
    sget-object v0, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AllowAll: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z

    if-eqz v0, :cond_0

    .line 138
    const v0, 0x7f09035d

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 141
    :goto_0
    return-void

    .line 140
    :cond_0
    const v0, 0x7f090360

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 74
    return-void
.end method

.method public onClickItem(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 83
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;->showDialog(I)V

    .line 84
    return-void
.end method

.method public updateSsid(Ljava/lang/String;)V
    .locals 0
    .parameter "ssid"

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyHierarchyChanged()V

    .line 79
    return-void
.end method
