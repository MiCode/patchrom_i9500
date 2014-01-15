.class public Lcom/android/settings_ex/samba/SambaEnabler;
.super Ljava/lang/Object;
.source "SambaEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final DEBUG:Z = true

.field private static final DIALOG_ANSWER_DISABLE_SAMBA:I = 0x1

.field private static final KEY_CONNECT_NETWORK_TYPE:Ljava/lang/String; = "connect_network_type"

.field private static final TAG:Ljava/lang/String; = "SambaEnabler"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentFilter2:Landroid/content/IntentFilter;

.field private mIsEthernetConnected:Z

.field private mIsWifiConnected:Z

.field public mNetwork_type:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field util:Lcom/android/settings_ex/samba/SambaConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .parameter "context"
    .parameter "switch_"

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean v0, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mIsWifiConnected:Z

    .line 63
    iput-boolean v0, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mIsEthernetConnected:Z

    .line 65
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mNetwork_type:I

    .line 67
    new-instance v0, Lcom/android/settings_ex/samba/SambaEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/samba/SambaEnabler$1;-><init>(Lcom/android/settings_ex/samba/SambaEnabler;)V

    iput-object v0, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 112
    iput-object p1, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mContext:Landroid/content/Context;

    .line 113
    iput-object p2, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mSwitch:Landroid/widget/Switch;

    .line 115
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.settings_ex.SAMBA_START"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 116
    iget-object v0, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.settings_ex.SAMBA_STOP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mIntentFilter2:Landroid/content/IntentFilter;

    .line 119
    iget-object v0, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings_ex/samba/SambaConfig;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/samba/SambaConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/samba/SambaEnabler;->util:Lcom/android/settings_ex/samba/SambaConfig;

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/samba/SambaEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/samba/SambaEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings_ex/samba/SambaEnabler;->handleServerStateChanged(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/samba/SambaEnabler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings_ex/samba/SambaEnabler;->isWifiConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/samba/SambaEnabler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings_ex/samba/SambaEnabler;->isEthernetConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/samba/SambaEnabler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mIsEthernetConnected:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/samba/SambaEnabler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mIsWifiConnected:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/samba/SambaEnabler;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method private checkSambaNetwork()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 328
    invoke-direct {p0, v0}, Lcom/android/settings_ex/samba/SambaEnabler;->showDialog(I)V

    .line 329
    return v0
.end method

.method private static formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;
    .locals 4
    .parameter "prop"

    .prologue
    const/4 v0, 0x0

    .line 289
    if-nez p0, :cond_1

    .line 302
    :cond_0
    return-object v0

    .line 291
    :cond_1
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 293
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    const-string v0, ""

    .line 297
    .local v0, addresses:Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 298
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

    .line 299
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 300
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

.method private static getEthernetIpAddresses(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 277
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 278
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v1

    .line 279
    .local v1, prop:Landroid/net/LinkProperties;
    invoke-static {v1}, Lcom/android/settings_ex/samba/SambaEnabler;->formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 283
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 284
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v1

    .line 285
    .local v1, prop:Landroid/net/LinkProperties;
    invoke-static {v1}, Lcom/android/settings_ex/samba/SambaEnabler;->formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private handleServerStateChanged(I)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 237
    const-string v0, "SambaEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleServerStateChanged  state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    packed-switch p1, :pswitch_data_0

    .line 257
    iget-object v0, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 258
    iget-object v0, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 261
    :goto_0
    return-void

    .line 241
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 242
    iget-object v0, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 245
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 246
    iget-object v0, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 249
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 250
    iget-object v0, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 253
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 254
    iget-object v0, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 239
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isEthernetConnected()Z
    .locals 5

    .prologue
    .line 265
    iget-object v2, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 267
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 268
    .local v1, netInfoEthernet:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mIsEthernetConnected:Z

    .line 271
    const-string v2, "SambaEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEthernetConnected() mIsEthernetConnected ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mIsEthernetConnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-boolean v2, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mIsEthernetConnected:Z

    return v2

    .line 268
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isWifiConnected()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 212
    const/4 v0, 0x0

    .line 214
    .local v0, bWifiConnected:Z
    iget-object v6, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 215
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 216
    .local v3, netInfoWifi:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v0, v4

    .line 218
    :goto_0
    if-eqz v0, :cond_2

    .line 219
    const/4 v2, 0x0

    .line 220
    .local v2, ipaddr:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings_ex/samba/SambaEnabler;->getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 222
    if-nez v2, :cond_1

    .line 223
    iput-boolean v5, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mIsWifiConnected:Z

    .line 231
    .end local v2           #ipaddr:Ljava/lang/String;
    :goto_1
    const-string v4, "SambaEnabler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsWifiConnected = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mIsWifiConnected:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-boolean v4, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mIsWifiConnected:Z

    return v4

    :cond_0
    move v0, v5

    .line 216
    goto :goto_0

    .line 225
    .restart local v2       #ipaddr:Ljava/lang/String;
    :cond_1
    iput-boolean v4, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mIsWifiConnected:Z

    goto :goto_1

    .line 228
    .end local v2           #ipaddr:Ljava/lang/String;
    :cond_2
    iput-boolean v5, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mIsWifiConnected:Z

    goto :goto_1
.end method

.method private saveNetworkType(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 334
    const-string v2, "connect_network_type"

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 336
    .local v1, networkPreference:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 338
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0}, Lcom/android/settings_ex/samba/SambaEnabler;->isEthernetConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 339
    iput v3, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mNetwork_type:I

    .line 345
    :goto_0
    const-string v2, "connect_network_type"

    iget v3, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mNetwork_type:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 347
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 349
    const-string v2, "SambaEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sadang  puttNetworkType mNetwork_type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mNetwork_type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    return-void

    .line 340
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/samba/SambaEnabler;->isWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 341
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mNetwork_type:I

    goto :goto_0

    .line 343
    :cond_1
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mNetwork_type:I

    goto :goto_0
.end method

.method private showDialog(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 306
    packed-switch p1, :pswitch_data_0

    .line 325
    :goto_0
    return-void

    .line 308
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0911f9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f09120b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 311
    .local v0, newDialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x104000a

    new-instance v2, Lcom/android/settings_ex/samba/SambaEnabler$3;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/samba/SambaEnabler$3;-><init>(Lcom/android/settings_ex/samba/SambaEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/samba/SambaEnabler$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/samba/SambaEnabler$2;-><init>(Lcom/android/settings_ex/samba/SambaEnabler;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 306
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getNetworkType(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 354
    iget-object v1, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mContext:Landroid/content/Context;

    const-string v2, "connect_network_type"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 355
    .local v0, networkPreference:Landroid/content/SharedPreferences;
    const-string v1, "connect_network_type"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mNetwork_type:I

    .line 358
    const-string v1, "SambaEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sadang  getNetworkType mNetwork_type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mNetwork_type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget v1, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mNetwork_type:I

    return v1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 161
    const-string v3, "SambaEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCheckedChanged isChecked="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v3, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "samba_on"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 165
    .local v2, state:I
    invoke-direct {p0}, Lcom/android/settings_ex/samba/SambaEnabler;->isEthernetConnected()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ex/samba/SambaEnabler;->isWifiConnected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 166
    iget-object v3, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    .line 168
    .local v0, Checked:Z
    iget-object v3, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 169
    if-ne v2, v6, :cond_2

    .line 170
    if-nez v0, :cond_0

    .line 171
    iget-object v3, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 183
    .end local v0           #Checked:Z
    :cond_0
    if-eqz p2, :cond_3

    if-nez v2, :cond_3

    .line 185
    const-string v3, "SambaEnabler"

    const-string v4, "onCheckedChanged Homesync On"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v3, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "samba_on"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 188
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/android/settings_ex/samba/SambaEnabler;->handleServerStateChanged(I)V

    .line 189
    iget-object v3, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/settings_ex/samba/SambaEnabler;->saveNetworkType(Landroid/content/Context;)V

    .line 190
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.settings_ex.SAMBA_RENEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 193
    iget-object v3, p0, Lcom/android/settings_ex/samba/SambaEnabler;->util:Lcom/android/settings_ex/samba/SambaConfig;

    invoke-virtual {v3}, Lcom/android/settings_ex/samba/SambaConfig;->ServerStart()V

    .line 207
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/samba/SambaEnabler;->util:Lcom/android/settings_ex/samba/SambaConfig;

    invoke-virtual {v3, p2}, Lcom/android/settings_ex/samba/SambaConfig;->setMediaScan(Z)V

    .line 208
    :goto_1
    return-void

    .line 174
    .restart local v0       #Checked:Z
    :cond_2
    if-eqz v0, :cond_0

    .line 175
    iget-object v3, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v7}, Landroid/widget/Switch;->setChecked(Z)V

    .line 176
    invoke-direct {p0}, Lcom/android/settings_ex/samba/SambaEnabler;->checkSambaNetwork()Z

    goto :goto_1

    .line 194
    .end local v0           #Checked:Z
    :cond_3
    if-nez p2, :cond_1

    if-ne v2, v6, :cond_1

    .line 196
    const-string v3, "SambaEnabler"

    const-string v4, " onCheckedChanged  Homesync Off"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v3, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "samba_on"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 199
    const/4 v3, 0x5

    invoke-direct {p0, v3}, Lcom/android/settings_ex/samba/SambaEnabler;->handleServerStateChanged(I)V

    .line 201
    iget-object v3, p0, Lcom/android/settings_ex/samba/SambaEnabler;->util:Lcom/android/settings_ex/samba/SambaConfig;

    invoke-virtual {v3}, Lcom/android/settings_ex/samba/SambaConfig;->ServerStop()V

    .line 202
    iget-object v3, p0, Lcom/android/settings_ex/samba/SambaEnabler;->util:Lcom/android/settings_ex/samba/SambaConfig;

    invoke-virtual {v3}, Lcom/android/settings_ex/samba/SambaConfig;->destroyNotification()V

    .line 203
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.settings_ex.SAMBA_RENEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 204
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 4

    .prologue
    .line 130
    iget-object v1, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "samba_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 132
    .local v0, state:I
    const-string v1, "SambaEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SambaEnabler pause() SAMBA_ON state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 139
    iget-object v1, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    iget-object v0, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mIntentFilter2:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 125
    iget-object v0, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 126
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 5
    .parameter "switch_"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 143
    iget-object v1, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 147
    iput-object p1, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mSwitch:Landroid/widget/Switch;

    .line 148
    iget-object v1, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 150
    iget-object v1, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "samba_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 152
    .local v0, state:I
    if-ne v0, v4, :cond_1

    .line 153
    iget-object v1, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 155
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/samba/SambaEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method
