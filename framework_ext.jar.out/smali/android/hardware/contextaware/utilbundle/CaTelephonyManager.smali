.class public Landroid/hardware/contextaware/utilbundle/CaTelephonyManager;
.super Ljava/lang/Object;
.source "CaTelephonyManager.java"

# interfaces
.implements Landroid/hardware/contextaware/utilbundle/IUtilManager;


# static fields
.field private static final CALL_STATE_ACTIVE:B = -0x27t

.field private static final CALL_STATE_IDLE:B = -0x28t

.field private static volatile instance:Landroid/hardware/contextaware/utilbundle/CaTelephonyManager;


# instance fields
.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Landroid/hardware/contextaware/utilbundle/CaTelephonyManager$1;

    invoke-direct {v0, p0}, Landroid/hardware/contextaware/utilbundle/CaTelephonyManager$1;-><init>(Landroid/hardware/contextaware/utilbundle/CaTelephonyManager;)V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaTelephonyManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Landroid/hardware/contextaware/utilbundle/CaTelephonyManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/utilbundle/CaTelephonyManager;->sendCallStatusToSensorHub(I)V

    return-void
.end method

.method public static getInstance()Landroid/hardware/contextaware/utilbundle/CaTelephonyManager;
    .locals 2

    .prologue
    .line 46
    sget-object v0, Landroid/hardware/contextaware/utilbundle/CaTelephonyManager;->instance:Landroid/hardware/contextaware/utilbundle/CaTelephonyManager;

    if-nez v0, :cond_1

    .line 47
    const-class v1, Landroid/hardware/contextaware/utilbundle/CaTelephonyManager;

    monitor-enter v1

    .line 48
    :try_start_0
    sget-object v0, Landroid/hardware/contextaware/utilbundle/CaTelephonyManager;->instance:Landroid/hardware/contextaware/utilbundle/CaTelephonyManager;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Landroid/hardware/contextaware/utilbundle/CaTelephonyManager;

    invoke-direct {v0}, Landroid/hardware/contextaware/utilbundle/CaTelephonyManager;-><init>()V

    sput-object v0, Landroid/hardware/contextaware/utilbundle/CaTelephonyManager;->instance:Landroid/hardware/contextaware/utilbundle/CaTelephonyManager;

    .line 51
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_1
    sget-object v0, Landroid/hardware/contextaware/utilbundle/CaTelephonyManager;->instance:Landroid/hardware/contextaware/utilbundle/CaTelephonyManager;

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private sendCallStatusToSensorHub(I)V
    .locals 4
    .parameter "status"

    .prologue
    const/4 v2, 0x0

    .line 119
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 120
    .local v0, dataPacket:[B
    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 121
    const/4 v1, 0x1

    aput-byte v2, v0, v1

    .line 123
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->getInstance()Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v1

    const/16 v2, -0x4c

    const/16 v3, 0x11

    invoke-virtual {v1, v2, v3, v0}, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub(BB[B)I

    .line 126
    return-void
.end method


# virtual methods
.method public initializeManager(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 65
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 68
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 69
    const-string v0, "mTelephonyManager is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaTelephonyManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method public terminateManager()V
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaTelephonyManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 89
    :cond_0
    return-void
.end method
