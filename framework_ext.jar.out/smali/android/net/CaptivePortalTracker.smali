.class public Landroid/net/CaptivePortalTracker;
.super Lcom/android/internal/util/StateMachine;
.source "CaptivePortalTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;,
        Landroid/net/CaptivePortalTracker$ActiveNetworkState;,
        Landroid/net/CaptivePortalTracker$NoActiveNetworkState;,
        Landroid/net/CaptivePortalTracker$DefaultState;,
        Landroid/net/CaptivePortalTracker$Injector;
    }
.end annotation


# static fields
.field private static final CMD_CONNECTIVITY_CHANGE:I = 0x1

.field private static final CMD_DELAYED_CAPTIVE_CHECK:I = 0x2

.field private static final CMD_DETECT_PORTAL:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final DEFAULT_SERVER:Ljava/lang/String; = "clients3.google.com"

.field private static final DELAYED_CHECK_INTERVAL_MS:I = 0x2710

.field private static final NOTIFICATION_ID:Ljava/lang/String; = "CaptivePortal.Notification"

.field private static final SOCKET_TIMEOUT_MS:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "CaptivePortalTracker"


# instance fields
.field private mActiveNetworkState:Lcom/android/internal/util/State;

.field private mConnService:Landroid/net/IConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDefaultState:Lcom/android/internal/util/State;

.field private mDelayedCaptiveCheckState:Lcom/android/internal/util/State;

.field private mDelayedCheckToken:I

.field private mIsCaptivePortalCheckEnabled:Z

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNoActiveNetworkState:Lcom/android/internal/util/State;

.field private mNotificationShown:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mServer:Ljava/lang/String;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 56
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Landroid/net/CaptivePortalTracker;->DBG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/net/IConnectivityManager;)V
    .locals 5
    .parameter "context"
    .parameter "cs"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 87
    const-string v1, "CaptivePortalTracker"

    invoke-direct {p0, v1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 66
    iput-boolean v3, p0, Landroid/net/CaptivePortalTracker;->mNotificationShown:Z

    .line 67
    iput-boolean v3, p0, Landroid/net/CaptivePortalTracker;->mIsCaptivePortalCheckEnabled:Z

    .line 79
    iput v3, p0, Landroid/net/CaptivePortalTracker;->mDelayedCheckToken:I

    .line 81
    new-instance v1, Landroid/net/CaptivePortalTracker$DefaultState;

    invoke-direct {v1, p0, v4}, Landroid/net/CaptivePortalTracker$DefaultState;-><init>(Landroid/net/CaptivePortalTracker;Landroid/net/CaptivePortalTracker$1;)V

    iput-object v1, p0, Landroid/net/CaptivePortalTracker;->mDefaultState:Lcom/android/internal/util/State;

    .line 82
    new-instance v1, Landroid/net/CaptivePortalTracker$NoActiveNetworkState;

    invoke-direct {v1, p0, v4}, Landroid/net/CaptivePortalTracker$NoActiveNetworkState;-><init>(Landroid/net/CaptivePortalTracker;Landroid/net/CaptivePortalTracker$1;)V

    iput-object v1, p0, Landroid/net/CaptivePortalTracker;->mNoActiveNetworkState:Lcom/android/internal/util/State;

    .line 83
    new-instance v1, Landroid/net/CaptivePortalTracker$ActiveNetworkState;

    invoke-direct {v1, p0, v4}, Landroid/net/CaptivePortalTracker$ActiveNetworkState;-><init>(Landroid/net/CaptivePortalTracker;Landroid/net/CaptivePortalTracker$1;)V

    iput-object v1, p0, Landroid/net/CaptivePortalTracker;->mActiveNetworkState:Lcom/android/internal/util/State;

    .line 84
    new-instance v1, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;

    invoke-direct {v1, p0, v4}, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;-><init>(Landroid/net/CaptivePortalTracker;Landroid/net/CaptivePortalTracker$1;)V

    iput-object v1, p0, Landroid/net/CaptivePortalTracker;->mDelayedCaptiveCheckState:Lcom/android/internal/util/State;

    .line 111
    new-instance v1, Landroid/net/CaptivePortalTracker$1;

    invoke-direct {v1, p0}, Landroid/net/CaptivePortalTracker$1;-><init>(Landroid/net/CaptivePortalTracker;)V

    iput-object v1, p0, Landroid/net/CaptivePortalTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 89
    iput-object p1, p0, Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Landroid/net/CaptivePortalTracker;->mConnService:Landroid/net/IConnectivityManager;

    .line 91
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Landroid/net/CaptivePortalTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 93
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 94
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/net/CaptivePortalTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 97
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "captive_portal_server"

    invoke-static {v1, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/CaptivePortalTracker;->mServer:Ljava/lang/String;

    .line 99
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mServer:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "clients3.google.com"

    iput-object v1, p0, Landroid/net/CaptivePortalTracker;->mServer:Ljava/lang/String;

    .line 101
    :cond_0
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "captive_portal_detection_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroid/net/CaptivePortalTracker;->mIsCaptivePortalCheckEnabled:Z

    .line 104
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 105
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mNoActiveNetworkState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/CaptivePortalTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 106
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mActiveNetworkState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/CaptivePortalTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 107
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mDelayedCaptiveCheckState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/CaptivePortalTracker;->mActiveNetworkState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 108
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mNoActiveNetworkState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Lcom/android/internal/util/StateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 109
    return-void

    :cond_1
    move v1, v3

    .line 101
    goto :goto_0
.end method

.method static synthetic access$1000(Landroid/net/CaptivePortalTracker;Landroid/net/NetworkInfo;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/net/CaptivePortalTracker;->isActiveNetwork(Landroid/net/NetworkInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Landroid/net/CaptivePortalTracker;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mDelayedCaptiveCheckState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/net/CaptivePortalTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/net/CaptivePortalTracker;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mNoActiveNetworkState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/net/CaptivePortalTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1500(Landroid/net/CaptivePortalTracker;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1600(Landroid/net/CaptivePortalTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1700(Landroid/net/CaptivePortalTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Landroid/net/CaptivePortalTracker;->mDelayedCheckToken:I

    return v0
.end method

.method static synthetic access$1704(Landroid/net/CaptivePortalTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Landroid/net/CaptivePortalTracker;->mDelayedCheckToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/CaptivePortalTracker;->mDelayedCheckToken:I

    return v0
.end method

.method static synthetic access$1800(Landroid/net/CaptivePortalTracker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mServer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/net/CaptivePortalTracker;->lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Landroid/net/CaptivePortalTracker;Ljava/net/InetAddress;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/net/CaptivePortalTracker;->isCaptivePortal(Ljava/net/InetAddress;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Landroid/net/CaptivePortalTracker;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mActiveNetworkState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/net/CaptivePortalTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-static {p0}, Landroid/net/CaptivePortalTracker;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 55
    sget-boolean v0, Landroid/net/CaptivePortalTracker;->DBG:Z

    return v0
.end method

.method static synthetic access$600(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-static {p0}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Landroid/net/CaptivePortalTracker;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/net/CaptivePortalTracker;->notifyPortalCheckComplete(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$800(Landroid/net/CaptivePortalTracker;)Landroid/net/NetworkInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$802(Landroid/net/CaptivePortalTracker;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Landroid/net/CaptivePortalTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$900(Landroid/net/CaptivePortalTracker;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/net/CaptivePortalTracker;->setNotificationVisible(Z)V

    return-void
.end method

.method private isActiveNetwork(Landroid/net/NetworkInfo;)Z
    .locals 4
    .parameter "info"

    .prologue
    .line 270
    :try_start_0
    iget-object v2, p0, Landroid/net/CaptivePortalTracker;->mConnService:Landroid/net/IConnectivityManager;

    invoke-interface {v2}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 271
    .local v0, active:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v2, v3, :cond_0

    .line 272
    const/4 v2, 0x1

    .line 277
    .end local v0           #active:Landroid/net/NetworkInfo;
    :goto_0
    return v2

    .line 274
    :catch_0
    move-exception v1

    .line 275
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 277
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isCaptivePortal(Ljava/net/InetAddress;)Z
    .locals 7
    .parameter "server"

    .prologue
    const/4 v5, 0x0

    .line 284
    const/4 v3, 0x0

    .line 285
    .local v3, urlConnection:Ljava/net/HttpURLConnection;
    iget-boolean v4, p0, Landroid/net/CaptivePortalTracker;->mIsCaptivePortalCheckEnabled:Z

    if-nez v4, :cond_1

    .line 301
    :cond_0
    :goto_0
    return v5

    .line 287
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/generate_204"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/net/CaptivePortalTracker;->mUrl:Ljava/lang/String;

    .line 288
    sget-boolean v4, Landroid/net/CaptivePortalTracker;->DBG:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Checking "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Landroid/net/CaptivePortalTracker;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    .line 290
    :cond_2
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v4, p0, Landroid/net/CaptivePortalTracker;->mUrl:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 291
    .local v2, url:Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 292
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 293
    const/16 v4, 0x2710

    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 294
    const/16 v4, 0x2710

    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 295
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 296
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 298
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    const/16 v6, 0xcc

    if-eq v4, v6, :cond_4

    const/4 v4, 0x1

    .line 303
    :goto_1
    if-eqz v3, :cond_3

    .line 304
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    move v5, v4

    .line 298
    goto :goto_0

    :cond_4
    move v4, v5

    goto :goto_1

    .line 299
    .end local v2           #url:Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 300
    .local v1, e:Ljava/io/IOException;
    :try_start_1
    sget-boolean v4, Landroid/net/CaptivePortalTracker;->DBG:Z

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Probably not a portal: exception "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    :cond_5
    if-eqz v3, :cond_0

    .line 304
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 303
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_6

    .line 304
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 303
    :cond_6
    throw v4
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 389
    const-string v0, "CaptivePortalTracker"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 393
    const-string v0, "CaptivePortalTracker"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    return-void
.end method

.method private lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 8
    .parameter "hostname"

    .prologue
    const/4 v6, 0x0

    .line 312
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 317
    .local v4, inetAddress:[Ljava/net/InetAddress;
    move-object v1, v4

    .local v1, arr$:[Ljava/net/InetAddress;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v1, v3

    .line 318
    .local v0, a:Ljava/net/InetAddress;
    instance-of v7, v0, Ljava/net/Inet4Address;

    if-eqz v7, :cond_0

    .line 320
    .end local v0           #a:Ljava/net/InetAddress;
    .end local v1           #arr$:[Ljava/net/InetAddress;
    .end local v3           #i$:I
    .end local v4           #inetAddress:[Ljava/net/InetAddress;
    .end local v5           #len$:I
    :goto_1
    return-object v0

    .line 313
    :catch_0
    move-exception v2

    .local v2, e:Ljava/net/UnknownHostException;
    move-object v0, v6

    .line 314
    goto :goto_1

    .line 317
    .end local v2           #e:Ljava/net/UnknownHostException;
    .restart local v0       #a:Ljava/net/InetAddress;
    .restart local v1       #arr$:[Ljava/net/InetAddress;
    .restart local v3       #i$:I
    .restart local v4       #inetAddress:[Ljava/net/InetAddress;
    .restart local v5       #len$:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0           #a:Ljava/net/InetAddress;
    :cond_1
    move-object v0, v6

    .line 320
    goto :goto_1
.end method

.method public static makeCaptivePortalTracker(Landroid/content/Context;Landroid/net/IConnectivityManager;)Landroid/net/CaptivePortalTracker;
    .locals 1
    .parameter "context"
    .parameter "cs"

    .prologue
    .line 126
    new-instance v0, Landroid/net/CaptivePortalTracker;

    invoke-direct {v0, p0, p1}, Landroid/net/CaptivePortalTracker;-><init>(Landroid/content/Context;Landroid/net/IConnectivityManager;)V

    .line 127
    .local v0, captivePortal:Landroid/net/CaptivePortalTracker;
    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine;->start()V

    .line 128
    return-object v0
.end method

.method private notifyPortalCheckComplete(Landroid/net/NetworkInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 257
    if-nez p1, :cond_0

    .line 258
    const-string v1, "notifyPortalCheckComplete on null"

    invoke-static {v1}, Landroid/net/CaptivePortalTracker;->loge(Ljava/lang/String;)V

    .line 266
    :goto_0
    return-void

    .line 262
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mConnService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->captivePortalCheckComplete(Landroid/net/NetworkInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private setNotificationVisible(Z)V
    .locals 13
    .parameter "visible"

    .prologue
    const v12, 0x10405f9

    const v9, 0x10405f8

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 325
    if-nez p1, :cond_1

    iget-boolean v7, p0, Landroid/net/CaptivePortalTracker;->mNotificationShown:Z

    if-nez v7, :cond_1

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    .line 330
    .local v5, r:Landroid/content/res/Resources;
    iget-object v7, p0, Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 333
    .local v4, notificationManager:Landroid/app/NotificationManager;
    if-eqz p1, :cond_3

    .line 337
    iget-object v7, p0, Landroid/net/CaptivePortalTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 363
    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v5, v9, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 364
    .local v6, title:Ljava/lang/CharSequence;
    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p0, Landroid/net/CaptivePortalTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v5, v12, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, details:Ljava/lang/CharSequence;
    const v1, 0x1080702

    .line 370
    .local v1, icon:I
    :goto_1
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    .line 371
    .local v3, notification:Landroid/app/Notification;
    const-wide/16 v7, 0x0

    iput-wide v7, v3, Landroid/app/Notification;->when:J

    .line 372
    iput v1, v3, Landroid/app/Notification;->icon:I

    .line 373
    const/16 v7, 0x10

    iput v7, v3, Landroid/app/Notification;->flags:I

    .line 374
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    iget-object v8, p0, Landroid/net/CaptivePortalTracker;->mUrl:Ljava/lang/String;

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 375
    .local v2, intent:Landroid/content/Intent;
    const/high16 v7, 0x1040

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 377
    iget-object v7, p0, Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;

    invoke-static {v7, v10, v2, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iput-object v6, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v7, p0, Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;

    iget-object v8, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v7, v6, v0, v8}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v7, p0, Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;

    iget-object v8, p0, Landroid/net/CaptivePortalTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v2, v8}, Landroid/net/CaptivePortalTracker$Injector;->showLogin(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .end local v0           #details:Ljava/lang/CharSequence;
    .end local v1           #icon:I
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #notification:Landroid/app/Notification;
    .end local v6           #title:Ljava/lang/CharSequence;
    :goto_2
    iput-boolean p1, p0, Landroid/net/CaptivePortalTracker;->mNotificationShown:Z

    goto :goto_0

    .line 346
    :pswitch_0
    const v7, 0x10405f7

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v5, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 347
    .restart local v6       #title:Ljava/lang/CharSequence;
    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p0, Landroid/net/CaptivePortalTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v5, v12, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 349
    .restart local v0       #details:Ljava/lang/CharSequence;
    const v1, 0x1080708

    .line 350
    .restart local v1       #icon:I
    goto :goto_1

    .line 352
    .end local v0           #details:Ljava/lang/CharSequence;
    .end local v1           #icon:I
    .end local v6           #title:Ljava/lang/CharSequence;
    :pswitch_1
    const-string v7, "CHN"

    const-string v8, "CHN"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 353
    sget-boolean v7, Landroid/net/CaptivePortalTracker;->DBG:Z

    if-eqz v7, :cond_0

    const-string v7, "China mobile network can not support google server communication.So, just return"

    invoke-static {v7}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 356
    :cond_2
    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v5, v9, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 359
    .restart local v6       #title:Ljava/lang/CharSequence;
    iget-object v7, p0, Landroid/net/CaptivePortalTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 360
    .restart local v0       #details:Ljava/lang/CharSequence;
    const v1, 0x1080702

    .line 361
    .restart local v1       #icon:I
    goto/16 :goto_1

    .line 383
    .end local v0           #details:Ljava/lang/CharSequence;
    .end local v1           #icon:I
    .end local v6           #title:Ljava/lang/CharSequence;
    :cond_3
    const-string v7, "CaptivePortal.Notification"

    invoke-virtual {v4, v7, v11}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_2

    .line 337
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public detectCaptivePortal(Landroid/net/NetworkInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 133
    return-void
.end method
