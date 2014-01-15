.class public Lcom/android/settings_ex/SambaSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "SambaSettings.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final DEFAULT_PASSWORD_LENGTH:I = 0x4

.field private static final KEY_DEFAULT_PASSWD:Ljava/lang/String; = "default_passwd"

.field private static final KEY_HOMESYNC_MSG:Ljava/lang/String; = "samba_msg"

.field private static final KEY_HOMESYNC_NET:Ljava/lang/String; = "samba_network"

.field private static final KEY_HOMESYNC_WINOS:Ljava/lang/String; = "samba_windowos"

.field private static final KEY_NETBIOS_NAME:Ljava/lang/String; = "samba_netbios_name"

.field private static final MAX_PASSWORD_LENGTH:I = 0x20

.field private static final MENU_ID_ACCESSLOG:I = 0x1

.field private static final MENU_ID_CONFIGURE:I = 0x2

.field private static final SERVER_CATEGORY:Ljava/lang/String; = "category_samba_server_info"

.field private static final TAG:Ljava/lang/String; = "SambaSettings"

.field private static sPrefDefaultPasswd:Landroid/content/SharedPreferences;


# instance fields
.field AndroidServerListener:Lcom/android/settings_ex/samba/ServerReceiver$OnChangeServerStatusListener;

.field private SAMBAPW_PATTERN:Ljava/util/regex/Pattern;

.field private context:Landroid/content/Context;

.field private ethernet_ip:Ljava/lang/String;

.field private mConfigureDialog:Landroid/app/Dialog;

.field private mDefaultPasswd:Z

.field private mEditPasswd:Landroid/widget/EditText;

.field private mHomesyncMsg:Landroid/preference/PreferenceScreen;

.field private mHomesyncNet:Landroid/preference/PreferenceScreen;

.field private mHomesyncWinOs:Landroid/preference/PreferenceScreen;

.field private mIsEthernetConnected:Z

.field private mIsWifiConnected:Z

.field private mNetbiosName:Landroid/preference/PreferenceScreen;

.field private mNotConnectIp:Ljava/lang/String;

.field private mSambaEnabler:Lcom/android/settings_ex/samba/SambaEnabler;

.field private mServerCategory:Landroid/preference/PreferenceCategory;

.field private mShowPasswd:Landroid/widget/CheckBox;

.field private mTempPasswd:Ljava/lang/String;

.field private mUserNameView:Landroid/widget/TextView;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private m_ServerReceiver:Lcom/android/settings_ex/samba/ServerReceiver;

.field private used_ip:Ljava/lang/String;

.field util:Lcom/android/settings_ex/samba/SambaConfig;

.field private wifi_ip:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings_ex/SambaSettings;->sPrefDefaultPasswd:Landroid/content/SharedPreferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 92
    iput-object v1, p0, Lcom/android/settings_ex/SambaSettings;->m_ServerReceiver:Lcom/android/settings_ex/samba/ServerReceiver;

    .line 98
    iput-object v1, p0, Lcom/android/settings_ex/SambaSettings;->SAMBAPW_PATTERN:Ljava/util/regex/Pattern;

    .line 106
    iput-boolean v0, p0, Lcom/android/settings_ex/SambaSettings;->mDefaultPasswd:Z

    .line 108
    iput-boolean v0, p0, Lcom/android/settings_ex/SambaSettings;->mIsWifiConnected:Z

    .line 110
    iput-boolean v0, p0, Lcom/android/settings_ex/SambaSettings;->mIsEthernetConnected:Z

    .line 112
    const-string v0, "0.0.0.0"

    iput-object v0, p0, Lcom/android/settings_ex/SambaSettings;->mNotConnectIp:Ljava/lang/String;

    .line 114
    const-string v0, "0.0.0.0"

    iput-object v0, p0, Lcom/android/settings_ex/SambaSettings;->wifi_ip:Ljava/lang/String;

    .line 116
    const-string v0, "0.0.0.0"

    iput-object v0, p0, Lcom/android/settings_ex/SambaSettings;->ethernet_ip:Ljava/lang/String;

    .line 118
    const-string v0, "0.0.0.0"

    iput-object v0, p0, Lcom/android/settings_ex/SambaSettings;->used_ip:Ljava/lang/String;

    .line 120
    iput-object v1, p0, Lcom/android/settings_ex/SambaSettings;->mTempPasswd:Ljava/lang/String;

    .line 124
    iput-object v1, p0, Lcom/android/settings_ex/SambaSettings;->mConfigureDialog:Landroid/app/Dialog;

    .line 419
    new-instance v0, Lcom/android/settings_ex/SambaSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/SambaSettings$5;-><init>(Lcom/android/settings_ex/SambaSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/SambaSettings;->AndroidServerListener:Lcom/android/settings_ex/samba/ServerReceiver$OnChangeServerStatusListener;

    return-void
.end method

.method private Init_Samba()V
    .locals 4

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/settings_ex/SambaSettings;->util:Lcom/android/settings_ex/samba/SambaConfig;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "/data/samba/private/smbpasswd"

    invoke-static {v0}, Lcom/android/settings_ex/samba/FileOperation;->fileExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 448
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/SambaSettings;->mDefaultPasswd:Z

    .line 450
    const-string v0, "/data/samba/var/user_name"

    invoke-static {v0}, Lcom/android/settings_ex/samba/FileOperation;->fileExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 451
    const-string v0, "/data/samba/var/user_name"

    iget-object v1, p0, Lcom/android/settings_ex/SambaSettings;->util:Lcom/android/settings_ex/samba/SambaConfig;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "homesync"

    invoke-static {v0, v1}, Lcom/android/settings_ex/samba/FileOperation;->Write_file(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/SambaSettings;->util:Lcom/android/settings_ex/samba/SambaConfig;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings_ex/SambaSettings;->util:Lcom/android/settings_ex/samba/SambaConfig;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "/system/bin/smbpasswd -a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings_ex/SambaSettings;->util:Lcom/android/settings_ex/samba/SambaConfig;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "homesync"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/SambaSettings;->util:Lcom/android/settings_ex/samba/SambaConfig;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "1234"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/SambaSettings;->util:Lcom/android/settings_ex/samba/SambaConfig;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "1234"

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/samba/SambaConfig;->run_passwd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 467
    :goto_1
    return-void

    .line 453
    :cond_0
    const-string v0, "/data/samba/var/user_name"

    invoke-static {v0}, Lcom/android/settings_ex/samba/FileOperation;->fileRead(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "/data/samba/var/user_name"

    invoke-static {v0}, Lcom/android/settings_ex/samba/FileOperation;->fileRead(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 454
    :cond_1
    const-string v0, "/data/samba/var/user_name"

    iget-object v1, p0, Lcom/android/settings_ex/SambaSettings;->util:Lcom/android/settings_ex/samba/SambaConfig;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "homesync"

    invoke-static {v0, v1}, Lcom/android/settings_ex/samba/FileOperation;->Write_file(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 456
    :cond_2
    const-string v0, "/data/samba/var/user_name"

    const-string v1, "/data/samba/var/user_name"

    invoke-static {v1}, Lcom/android/settings_ex/samba/FileOperation;->fileRead(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ex/samba/FileOperation;->Write_file(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 465
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/SambaSettings;->util:Lcom/android/settings_ex/samba/SambaConfig;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings_ex/SambaSettings;->util:Lcom/android/settings_ex/samba/SambaConfig;

    sget-object v1, Lcom/android/settings_ex/samba/SambaConfig;->SAMBA_FIXPASSWDPERMIS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/settings_ex/samba/SambaConfig;->run(Ljava/lang/String;I)Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/settings_ex/SambaSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings_ex/SambaSettings;->mTempPasswd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/SambaSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/settings_ex/SambaSettings;->mTempPasswd:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/SambaSettings;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings_ex/SambaSettings;->mEditPasswd:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/SambaSettings;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/SambaSettings;->isValidPasswd(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/SambaSettings;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings_ex/SambaSettings;->mConfigureDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/SambaSettings;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings_ex/SambaSettings;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/SambaSettings;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings_ex/SambaSettings;->isChangePasswd(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings_ex/SambaSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings_ex/SambaSettings;->isEthernetConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/SambaSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings_ex/SambaSettings;->isWifiConnected()Z

    move-result v0

    return v0
.end method

.method private static formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;
    .locals 4
    .parameter "prop"

    .prologue
    const/4 v0, 0x0

    .line 572
    if-nez p0, :cond_1

    .line 585
    :cond_0
    return-object v0

    .line 574
    :cond_1
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 576
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 579
    const-string v0, ""

    .line 580
    .local v0, addresses:Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 581
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 582
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 583
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getDefaultPasswd(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 629
    const/4 v0, 0x0

    .line 630
    .local v0, mSPrefChangePasswd:I
    const-string v2, "default_passwd"

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/android/settings_ex/SambaSettings;->sPrefDefaultPasswd:Landroid/content/SharedPreferences;

    .line 631
    sget-object v2, Lcom/android/settings_ex/SambaSettings;->sPrefDefaultPasswd:Landroid/content/SharedPreferences;

    const-string v3, "default_passwd"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 633
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 636
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static getEthernetIpAddresses(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 560
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 561
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v1

    .line 562
    .local v1, prop:Landroid/net/LinkProperties;
    invoke-static {v1}, Lcom/android/settings_ex/SambaSettings;->formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 566
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 567
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v1

    .line 568
    .local v1, prop:Landroid/net/LinkProperties;
    invoke-static {v1}, Lcom/android/settings_ex/SambaSettings;->formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private isChangePasswd(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 619
    const/4 v1, 0x2

    .line 620
    .local v1, mSPrefChangePasswd:I
    const-string v2, "default_passwd"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/android/settings_ex/SambaSettings;->sPrefDefaultPasswd:Landroid/content/SharedPreferences;

    .line 622
    sget-object v2, Lcom/android/settings_ex/SambaSettings;->sPrefDefaultPasswd:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 623
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "default_passwd"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 625
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 626
    return-void
.end method

.method private isEthernetConnected()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 471
    const-string v2, "SambaSettings"

    const-string v3, "isEthernetConnected() "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const/4 v0, 0x0

    .line 493
    .local v0, bEthernetConnected:Z
    if-eqz v0, :cond_1

    .line 494
    const/4 v1, 0x0

    .line 499
    .local v1, ipaddr:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/SambaSettings;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings_ex/SambaSettings;->getEthernetIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 501
    if-nez v1, :cond_0

    .line 502
    iput-boolean v4, p0, Lcom/android/settings_ex/SambaSettings;->mIsEthernetConnected:Z

    .line 512
    .end local v1           #ipaddr:Ljava/lang/String;
    :goto_0
    const-string v2, "SambaSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsEthernetConnected = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings_ex/SambaSettings;->mIsEthernetConnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-boolean v2, p0, Lcom/android/settings_ex/SambaSettings;->mIsEthernetConnected:Z

    return v2

    .line 504
    .restart local v1       #ipaddr:Ljava/lang/String;
    :cond_0
    iput-object v1, p0, Lcom/android/settings_ex/SambaSettings;->ethernet_ip:Ljava/lang/String;

    .line 505
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings_ex/SambaSettings;->mIsEthernetConnected:Z

    goto :goto_0

    .line 508
    .end local v1           #ipaddr:Ljava/lang/String;
    :cond_1
    iput-boolean v4, p0, Lcom/android/settings_ex/SambaSettings;->mIsEthernetConnected:Z

    goto :goto_0
.end method

.method private isValidPasswd(Ljava/lang/String;I)Z
    .locals 9
    .parameter "passwd"
    .parameter "length"

    .prologue
    const/16 v8, 0x20

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 589
    const/4 v2, 0x0

    .line 591
    .local v2, mValidPasswd:I
    if-nez p2, :cond_1

    .line 614
    :cond_0
    :goto_0
    return v3

    .line 593
    :cond_1
    if-lez p2, :cond_2

    if-gt p2, v8, :cond_2

    iget-object v5, p0, Lcom/android/settings_ex/SambaSettings;->SAMBAPW_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_2

    .line 594
    iget-object v5, p0, Lcom/android/settings_ex/SambaSettings;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09121e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 596
    :cond_2
    if-le p2, v8, :cond_8

    .line 597
    iget-object v5, p0, Lcom/android/settings_ex/SambaSettings;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09121f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 599
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v8, :cond_7

    .line 600
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 602
    .local v0, c:C
    const/16 v5, 0x30

    if-lt v0, v5, :cond_3

    const/16 v5, 0x39

    if-le v0, v5, :cond_5

    :cond_3
    const/16 v5, 0x41

    if-lt v0, v5, :cond_4

    const/16 v5, 0x5a

    if-le v0, v5, :cond_5

    :cond_4
    const/16 v5, 0x61

    if-lt v0, v5, :cond_6

    const/16 v5, 0x7a

    if-gt v0, v5, :cond_6

    .line 599
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 605
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 609
    .end local v0           #c:C
    :cond_7
    if-nez v2, :cond_0

    move v3, v4

    .line 612
    goto :goto_0

    .end local v1           #i:I
    :cond_8
    move v3, v4

    .line 614
    goto :goto_0
.end method

.method private isWifiConnected()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 530
    const/4 v0, 0x0

    .line 532
    .local v0, bWifiConnected:Z
    iget-object v6, p0, Lcom/android/settings_ex/SambaSettings;->context:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 533
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 534
    .local v3, netInfoEthernet:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v0, v4

    .line 536
    :goto_0
    const-string v6, "SambaSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bWifiConnected : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    if-eqz v0, :cond_2

    .line 540
    const/4 v2, 0x0

    .line 542
    .local v2, ipaddr:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/SambaSettings;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings_ex/SambaSettings;->getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 544
    if-nez v2, :cond_1

    .line 545
    iput-boolean v5, p0, Lcom/android/settings_ex/SambaSettings;->mIsWifiConnected:Z

    .line 555
    .end local v2           #ipaddr:Ljava/lang/String;
    :goto_1
    const-string v4, "SambaSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsWifiConnected = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings_ex/SambaSettings;->mIsWifiConnected:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-boolean v4, p0, Lcom/android/settings_ex/SambaSettings;->mIsWifiConnected:Z

    return v4

    :cond_0
    move v0, v5

    .line 534
    goto :goto_0

    .line 547
    .restart local v2       #ipaddr:Ljava/lang/String;
    :cond_1
    iput-object v2, p0, Lcom/android/settings_ex/SambaSettings;->wifi_ip:Ljava/lang/String;

    .line 548
    iput-boolean v4, p0, Lcom/android/settings_ex/SambaSettings;->mIsWifiConnected:Z

    goto :goto_1

    .line 551
    .end local v2           #ipaddr:Ljava/lang/String;
    :cond_2
    iput-boolean v5, p0, Lcom/android/settings_ex/SambaSettings;->mIsWifiConnected:Z

    goto :goto_1
.end method


# virtual methods
.method public Display_renew()V
    .locals 13

    .prologue
    const v12, 0x7f091206

    const v11, 0x7f091205

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 179
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 180
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "samba_on"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 181
    .local v4, state:I
    iget-object v5, p0, Lcom/android/settings_ex/SambaSettings;->util:Lcom/android/settings_ex/samba/SambaConfig;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "homesync"

    .line 184
    .local v3, netbios_name:Ljava/lang/String;
    const-string v5, "SambaSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Display_renew mNetwork_type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/SambaSettings;->mSambaEnabler:Lcom/android/settings_ex/samba/SambaEnabler;

    invoke-virtual {v7, v0}, Lcom/android/settings_ex/samba/SambaEnabler;->getNetworkType(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v5, p0, Lcom/android/settings_ex/SambaSettings;->mSambaEnabler:Lcom/android/settings_ex/samba/SambaEnabler;

    invoke-virtual {v5, v0}, Lcom/android/settings_ex/samba/SambaEnabler;->getNetworkType(Landroid/content/Context;)I

    move-result v5

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/android/settings_ex/SambaSettings;->mIsEthernetConnected:Z

    if-eqz v5, :cond_1

    .line 188
    const-string v5, "SambaSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Display_renew SAMBA_ON ethernet_ip="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/SambaSettings;->ethernet_ip:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v5, p0, Lcom/android/settings_ex/SambaSettings;->ethernet_ip:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/settings_ex/SambaSettings;->used_ip:Ljava/lang/String;

    .line 201
    :goto_0
    const-string v5, "SambaSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Display_renew SAMBA_ON state="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const-string v5, "/data/samba/var/netbios_name"

    invoke-static {v5}, Lcom/android/settings_ex/samba/FileOperation;->fileExists(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 204
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    const-string v7, "/data/samba/var/netbios_name"

    invoke-static {v7}, Lcom/android/settings_ex/samba/FileOperation;->fileRead(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    iget-object v7, p0, Lcom/android/settings_ex/SambaSettings;->used_ip:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, mServerInfo:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/settings_ex/SambaSettings;->used_ip:Ljava/lang/String;

    aput-object v7, v6, v9

    const-string v7, "/data/samba/var/netbios_name"

    invoke-static {v7}, Lcom/android/settings_ex/samba/FileOperation;->fileRead(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, mAccessInofo:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings_ex/SambaSettings;->mNetbiosName:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v5, p0, Lcom/android/settings_ex/SambaSettings;->mHomesyncWinOs:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 217
    :goto_1
    if-ne v4, v8, :cond_6

    .line 218
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/SambaSettings;->mServerCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 219
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/SambaSettings;->mNetbiosName:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 220
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/SambaSettings;->mHomesyncNet:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 222
    iget-object v5, p0, Lcom/android/settings_ex/SambaSettings;->mSambaEnabler:Lcom/android/settings_ex/samba/SambaEnabler;

    invoke-virtual {v5, v0}, Lcom/android/settings_ex/samba/SambaEnabler;->getNetworkType(Landroid/content/Context;)I

    move-result v5

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/android/settings_ex/SambaSettings;->mIsEthernetConnected:Z

    if-eqz v5, :cond_4

    .line 223
    iget-object v5, p0, Lcom/android/settings_ex/SambaSettings;->mHomesyncNet:Landroid/preference/PreferenceScreen;

    const v6, 0x7f091201

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 240
    :cond_0
    :goto_2
    return-void

    .line 190
    .end local v1           #mAccessInofo:Ljava/lang/String;
    .end local v2           #mServerInfo:Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/android/settings_ex/SambaSettings;->mSambaEnabler:Lcom/android/settings_ex/samba/SambaEnabler;

    invoke-virtual {v5, v0}, Lcom/android/settings_ex/samba/SambaEnabler;->getNetworkType(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v8, :cond_2

    iget-boolean v5, p0, Lcom/android/settings_ex/SambaSettings;->mIsWifiConnected:Z

    if-eqz v5, :cond_2

    .line 192
    const-string v5, "SambaSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Display_renew SAMBA_ON wifi_ip="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/SambaSettings;->wifi_ip:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v5, p0, Lcom/android/settings_ex/SambaSettings;->wifi_ip:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/settings_ex/SambaSettings;->used_ip:Ljava/lang/String;

    goto/16 :goto_0

    .line 195
    :cond_2
    iget-object v5, p0, Lcom/android/settings_ex/SambaSettings;->mNotConnectIp:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/settings_ex/SambaSettings;->used_ip:Ljava/lang/String;

    .line 197
    const-string v5, "SambaSettings"

    const-string v6, "Display_renew no ip"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 211
    :cond_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v3, v6, v9

    iget-object v7, p0, Lcom/android/settings_ex/SambaSettings;->used_ip:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 212
    .restart local v2       #mServerInfo:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/settings_ex/SambaSettings;->used_ip:Ljava/lang/String;

    aput-object v7, v6, v9

    aput-object v3, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 214
    .restart local v1       #mAccessInofo:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings_ex/SambaSettings;->mNetbiosName:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v5, p0, Lcom/android/settings_ex/SambaSettings;->mHomesyncWinOs:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 224
    :cond_4
    iget-object v5, p0, Lcom/android/settings_ex/SambaSettings;->mSambaEnabler:Lcom/android/settings_ex/samba/SambaEnabler;

    invoke-virtual {v5, v0}, Lcom/android/settings_ex/samba/SambaEnabler;->getNetworkType(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v8, :cond_5

    iget-boolean v5, p0, Lcom/android/settings_ex/SambaSettings;->mIsWifiConnected:Z

    if-eqz v5, :cond_5

    .line 225
    iget-object v5, p0, Lcom/android/settings_ex/SambaSettings;->mHomesyncNet:Landroid/preference/PreferenceScreen;

    const v6, 0x7f091202

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_2

    .line 227
    :cond_5
    iget-object v5, p0, Lcom/android/settings_ex/SambaSettings;->mHomesyncNet:Landroid/preference/PreferenceScreen;

    const v6, 0x7f091203

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_2

    .line 230
    :cond_6
    iget-object v5, p0, Lcom/android/settings_ex/SambaSettings;->mServerCategory:Landroid/preference/PreferenceCategory;

    if-eqz v5, :cond_7

    .line 231
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/SambaSettings;->mServerCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 233
    :cond_7
    iget-object v5, p0, Lcom/android/settings_ex/SambaSettings;->mNetbiosName:Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_8

    .line 234
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/SambaSettings;->mNetbiosName:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 236
    :cond_8
    iget-object v5, p0, Lcom/android/settings_ex/SambaSettings;->mHomesyncNet:Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_0

    .line 237
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/SambaSettings;->mHomesyncNet:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 129
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/SambaSettings;->context:Landroid/content/Context;

    .line 130
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 134
    new-instance v0, Lcom/android/settings_ex/samba/SambaEnabler;

    iget-object v1, p0, Lcom/android/settings_ex/SambaSettings;->context:Landroid/content/Context;

    new-instance v2, Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/settings_ex/SambaSettings;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/samba/SambaEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings_ex/SambaSettings;->mSambaEnabler:Lcom/android/settings_ex/samba/SambaEnabler;

    .line 136
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/samba/SambaConfig;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/samba/SambaConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/SambaSettings;->util:Lcom/android/settings_ex/samba/SambaConfig;

    .line 137
    const v0, 0x7f070066

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 139
    new-instance v0, Lcom/android/settings_ex/samba/ServerReceiver;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/samba/ServerReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/SambaSettings;->m_ServerReceiver:Lcom/android/settings_ex/samba/ServerReceiver;

    .line 140
    iget-object v0, p0, Lcom/android/settings_ex/SambaSettings;->m_ServerReceiver:Lcom/android/settings_ex/samba/ServerReceiver;

    iget-object v1, p0, Lcom/android/settings_ex/SambaSettings;->AndroidServerListener:Lcom/android/settings_ex/samba/ServerReceiver$OnChangeServerStatusListener;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/samba/ServerReceiver;->setOnChangeServerStatusListener(Lcom/android/settings_ex/samba/ServerReceiver$OnChangeServerStatusListener;)V

    .line 141
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/SambaSettings;->m_ServerReceiver:Lcom/android/settings_ex/samba/ServerReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/SambaSettings;->m_ServerReceiver:Lcom/android/settings_ex/samba/ServerReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 143
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/SambaSettings;->m_ServerReceiver:Lcom/android/settings_ex/samba/ServerReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/SambaSettings;->m_ServerReceiver:Lcom/android/settings_ex/samba/ServerReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 145
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/SambaSettings;->m_ServerReceiver:Lcom/android/settings_ex/samba/ServerReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.settings_ex.SAMBA_RENEW"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/SambaSettings;->m_ServerReceiver:Lcom/android/settings_ex/samba/ServerReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.settings_ex.SAMBA_NETWORK"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 148
    const-string v0, "category_samba_server_info"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings_ex/SambaSettings;->mServerCategory:Landroid/preference/PreferenceCategory;

    .line 150
    const-string v0, "samba_network"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings_ex/SambaSettings;->mHomesyncNet:Landroid/preference/PreferenceScreen;

    .line 151
    const-string v0, "samba_netbios_name"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings_ex/SambaSettings;->mNetbiosName:Landroid/preference/PreferenceScreen;

    .line 152
    const-string v0, "samba_msg"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings_ex/SambaSettings;->mHomesyncMsg:Landroid/preference/PreferenceScreen;

    .line 153
    const-string v0, "samba_windowos"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings_ex/SambaSettings;->mHomesyncWinOs:Landroid/preference/PreferenceScreen;

    .line 155
    invoke-direct {p0}, Lcom/android/settings_ex/SambaSettings;->Init_Samba()V

    .line 156
    invoke-virtual {p0}, Lcom/android/settings_ex/SambaSettings;->Display_renew()V

    .line 157
    invoke-direct {p0}, Lcom/android/settings_ex/SambaSettings;->isWifiConnected()Z

    .line 158
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 245
    const v0, 0x7f0911fb

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 246
    const v0, 0x7f0911fa

    invoke-interface {p1, v1, v3, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 248
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 249
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 415
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 416
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/SambaSettings;->m_ServerReceiver:Lcom/android/settings_ex/samba/ServerReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 417
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 13
    .parameter "item"

    .prologue
    const/4 v12, 0x0

    const/4 v9, 0x1

    .line 253
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 410
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v8

    :goto_0
    return v8

    .line 255
    :pswitch_0
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    iget-object v10, p0, Lcom/android/settings_ex/SambaSettings;->context:Landroid/content/Context;

    const-class v11, Lcom/android/settings_ex/samba/SambaLogs;

    invoke-virtual {v8, v10, v11}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v4

    .line 256
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    move v8, v9

    .line 257
    goto :goto_0

    .line 260
    .end local v4           #intent:Landroid/content/Intent;
    :pswitch_1
    iget-object v8, p0, Lcom/android/settings_ex/SambaSettings;->context:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/settings_ex/SambaSettings;->context:Landroid/content/Context;

    const-string v10, "layout_inflater"

    invoke-virtual {v8, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 261
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v10, 0x7f070064

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v11, 0x7f0b000b

    invoke-virtual {v8, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v3, v10, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 263
    .local v5, layout:Landroid/view/View;
    iget-object v8, p0, Lcom/android/settings_ex/SambaSettings;->util:Lcom/android/settings_ex/samba/SambaConfig;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "homesync"

    .line 265
    .local v6, mSambaUserName:Ljava/lang/String;
    const-string v0, "^[a-zA-Z0-9]*$"

    .line 266
    .local v0, ValidPasswd:Ljava/lang/String;
    const-string v8, "^[a-zA-Z0-9]*$"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/SambaSettings;->SAMBAPW_PATTERN:Ljava/util/regex/Pattern;

    .line 268
    const-string v8, "/data/samba/var/user_name"

    invoke-static {v8}, Lcom/android/settings_ex/samba/FileOperation;->fileExists(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 269
    const-string v8, "/data/samba/var/user_name"

    invoke-static {v8}, Lcom/android/settings_ex/samba/FileOperation;->fileRead(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 272
    :cond_0
    const v8, 0x7f0b0518

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings_ex/SambaSettings;->mUserNameView:Landroid/widget/TextView;

    .line 273
    iget-object v8, p0, Lcom/android/settings_ex/SambaSettings;->mUserNameView:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    const v8, 0x7f0b0519

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/settings_ex/SambaSettings;->mEditPasswd:Landroid/widget/EditText;

    .line 276
    const v8, 0x7f0b051c

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 277
    .local v7, okButton:Landroid/widget/Button;
    const v8, 0x7f0b051b

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 278
    .local v2, cancleButton:Landroid/widget/Button;
    const v8, 0x7f0b051a

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/android/settings_ex/SambaSettings;->mShowPasswd:Landroid/widget/CheckBox;

    .line 280
    iget-boolean v8, p0, Lcom/android/settings_ex/SambaSettings;->mDefaultPasswd:Z

    if-eqz v8, :cond_1

    .line 281
    iget-object v8, p0, Lcom/android/settings_ex/SambaSettings;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f09121b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 282
    iput-boolean v12, p0, Lcom/android/settings_ex/SambaSettings;->mDefaultPasswd:Z

    .line 285
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v1, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 286
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v8, 0x7f0911fa

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 287
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 289
    if-eqz v7, :cond_2

    .line 290
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 293
    :cond_2
    iget-object v8, p0, Lcom/android/settings_ex/SambaSettings;->context:Landroid/content/Context;

    invoke-direct {p0, v8}, Lcom/android/settings_ex/SambaSettings;->getDefaultPasswd(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 295
    const-string v8, "SambaSettings"

    const-string v10, "getDefaultPasswd"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v8, p0, Lcom/android/settings_ex/SambaSettings;->mEditPasswd:Landroid/widget/EditText;

    const/16 v10, 0x91

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setInputType(I)V

    .line 297
    iget-object v8, p0, Lcom/android/settings_ex/SambaSettings;->mEditPasswd:Landroid/widget/EditText;

    iget-object v10, p0, Lcom/android/settings_ex/SambaSettings;->util:Lcom/android/settings_ex/samba/SambaConfig;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, "1234"

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v8, p0, Lcom/android/settings_ex/SambaSettings;->mShowPasswd:Landroid/widget/CheckBox;

    invoke-virtual {v8, v9}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 299
    iget-object v8, p0, Lcom/android/settings_ex/SambaSettings;->mEditPasswd:Landroid/widget/EditText;

    const/4 v10, 0x4

    invoke-virtual {v8, v10}, Landroid/widget/EditText;->setSelection(I)V

    .line 301
    if-eqz v7, :cond_3

    .line 302
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 306
    :cond_3
    iget-object v8, p0, Lcom/android/settings_ex/SambaSettings;->mEditPasswd:Landroid/widget/EditText;

    new-instance v10, Lcom/android/settings_ex/SambaSettings$1;

    invoke-direct {v10, p0, v7}, Lcom/android/settings_ex/SambaSettings$1;-><init>(Lcom/android/settings_ex/SambaSettings;Landroid/widget/Button;)V

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 367
    new-instance v8, Lcom/android/settings_ex/SambaSettings$2;

    invoke-direct {v8, p0}, Lcom/android/settings_ex/SambaSettings$2;-><init>(Lcom/android/settings_ex/SambaSettings;)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    new-instance v8, Lcom/android/settings_ex/SambaSettings$3;

    invoke-direct {v8, p0}, Lcom/android/settings_ex/SambaSettings$3;-><init>(Lcom/android/settings_ex/SambaSettings;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    iget-object v8, p0, Lcom/android/settings_ex/SambaSettings;->mShowPasswd:Landroid/widget/CheckBox;

    new-instance v10, Lcom/android/settings_ex/SambaSettings$4;

    invoke-direct {v10, p0}, Lcom/android/settings_ex/SambaSettings$4;-><init>(Lcom/android/settings_ex/SambaSettings;)V

    invoke-virtual {v8, v10}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 403
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/SambaSettings;->mConfigureDialog:Landroid/app/Dialog;

    .line 404
    iget-object v8, p0, Lcom/android/settings_ex/SambaSettings;->mConfigureDialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    move v8, v9

    .line 405
    goto/16 :goto_0

    .line 253
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 171
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 173
    iget-object v0, p0, Lcom/android/settings_ex/SambaSettings;->mSambaEnabler:Lcom/android/settings_ex/samba/SambaEnabler;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/settings_ex/SambaSettings;->mSambaEnabler:Lcom/android/settings_ex/samba/SambaEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/samba/SambaEnabler;->pause()V

    .line 176
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 162
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 164
    iget-object v0, p0, Lcom/android/settings_ex/SambaSettings;->mSambaEnabler:Lcom/android/settings_ex/samba/SambaEnabler;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/settings_ex/SambaSettings;->mSambaEnabler:Lcom/android/settings_ex/samba/SambaEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/samba/SambaEnabler;->resume()V

    .line 167
    :cond_0
    return-void
.end method
