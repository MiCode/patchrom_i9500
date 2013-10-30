.class public Lcom/nuance/swype/connect/system/NetworkState;
.super Ljava/lang/Object;
.source "NetworkState.java"


# static fields
.field public static final TYPE_BLUETOOTH:I = 0x7

.field public static final TYPE_DISCONNECTED:I = -0x1

.field public static final TYPE_DUMMY:I = 0x8

.field public static final TYPE_ETHERNET:I = 0x9

.field public static final TYPE_MOBILE:I = 0x0

.field public static final TYPE_MOBILE_DUN:I = 0x4

.field public static final TYPE_MOBILE_HIPRI:I = 0x5

.field public static final TYPE_MOBILE_MMS:I = 0x2

.field public static final TYPE_MOBILE_SUPL:I = 0x3

.field public static final TYPE_WIFI:I = 0x1

.field public static final TYPE_WIMAX:I = 0x6


# instance fields
.field private connectionStableRequirement:I

.field private final connectionType:I

.field private final connectionTypeName:Ljava/lang/String;

.field private final hasConnectivity:Z

.field private final isFailover:Z

.field private final isRoaming:Z

.field private final lastConnectionChange:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-boolean v1, p0, Lcom/nuance/swype/connect/system/NetworkState;->hasConnectivity:Z

    .line 61
    iput-boolean v1, p0, Lcom/nuance/swype/connect/system/NetworkState;->isFailover:Z

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/swype/connect/system/NetworkState;->connectionType:I

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/connect/system/NetworkState;->connectionTypeName:Ljava/lang/String;

    .line 64
    iput-boolean v1, p0, Lcom/nuance/swype/connect/system/NetworkState;->isRoaming:Z

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/swype/connect/system/NetworkState;->lastConnectionChange:J

    .line 66
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/nuance/swype/connect/system/NetworkState;->connectionStableRequirement:I

    .line 67
    return-void
.end method

.method public constructor <init>(ZZILjava/lang/String;ZJ)V
    .locals 1
    .parameter "hasConnectivity"
    .parameter "isFailOver"
    .parameter "connectionType"
    .parameter "connectionTypeName"
    .parameter "isRoaming"
    .parameter "lastConnectionChange"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-boolean p1, p0, Lcom/nuance/swype/connect/system/NetworkState;->hasConnectivity:Z

    .line 51
    iput-boolean p2, p0, Lcom/nuance/swype/connect/system/NetworkState;->isFailover:Z

    .line 52
    iput p3, p0, Lcom/nuance/swype/connect/system/NetworkState;->connectionType:I

    .line 53
    iput-object p4, p0, Lcom/nuance/swype/connect/system/NetworkState;->connectionTypeName:Ljava/lang/String;

    .line 54
    iput-boolean p5, p0, Lcom/nuance/swype/connect/system/NetworkState;->isRoaming:Z

    .line 55
    iput-wide p6, p0, Lcom/nuance/swype/connect/system/NetworkState;->lastConnectionChange:J

    .line 56
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/nuance/swype/connect/system/NetworkState;->connectionStableRequirement:I

    .line 57
    return-void
.end method

.method public constructor <init>(ZZILjava/lang/String;ZJI)V
    .locals 0
    .parameter "hasConnectivity"
    .parameter "isFailOver"
    .parameter "connectionType"
    .parameter "connectionTypeName"
    .parameter "isRoaming"
    .parameter "lastConnectionChange"
    .parameter "connectionStableRequirement"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean p1, p0, Lcom/nuance/swype/connect/system/NetworkState;->hasConnectivity:Z

    .line 40
    iput-boolean p2, p0, Lcom/nuance/swype/connect/system/NetworkState;->isFailover:Z

    .line 41
    iput p3, p0, Lcom/nuance/swype/connect/system/NetworkState;->connectionType:I

    .line 42
    iput-object p4, p0, Lcom/nuance/swype/connect/system/NetworkState;->connectionTypeName:Ljava/lang/String;

    .line 43
    iput-boolean p5, p0, Lcom/nuance/swype/connect/system/NetworkState;->isRoaming:Z

    .line 44
    iput-wide p6, p0, Lcom/nuance/swype/connect/system/NetworkState;->lastConnectionChange:J

    .line 45
    iput p8, p0, Lcom/nuance/swype/connect/system/NetworkState;->connectionStableRequirement:I

    .line 46
    return-void
.end method

.method public static isValidConnection(IZZZZ)Z
    .locals 1
    .parameter "connectionType"
    .parameter "isRoaming"
    .parameter "allowedMobile"
    .parameter "allowedRoaming"
    .parameter "allowedWifi"

    .prologue
    .line 131
    const/4 v0, 0x0

    .line 133
    .local v0, valid:Z
    packed-switch p0, :pswitch_data_0

    .line 160
    :goto_0
    :pswitch_0
    return v0

    .line 135
    :pswitch_1
    const/4 v0, 0x0

    .line 136
    goto :goto_0

    .line 141
    :pswitch_2
    move v0, p4

    .line 142
    goto :goto_0

    .line 150
    :pswitch_3
    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    .line 151
    const/4 v0, 0x1

    goto :goto_0

    .line 152
    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    if-eqz p1, :cond_1

    .line 153
    const/4 v0, 0x1

    goto :goto_0

    .line 155
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getConnectionStableRequirement()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/nuance/swype/connect/system/NetworkState;->connectionStableRequirement:I

    return v0
.end method

.method public getConnectionType()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/nuance/swype/connect/system/NetworkState;->connectionType:I

    return v0
.end method

.method public getConnectionTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/nuance/swype/connect/system/NetworkState;->connectionTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastConnectionChange()J
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/nuance/swype/connect/system/NetworkState;->lastConnectionChange:J

    return-wide v0
.end method

.method public hasConnectivity()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/nuance/swype/connect/system/NetworkState;->hasConnectivity:Z

    return v0
.end method

.method public isFailover()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/nuance/swype/connect/system/NetworkState;->isFailover:Z

    return v0
.end method

.method public isRoaming()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/nuance/swype/connect/system/NetworkState;->isRoaming:Z

    return v0
.end method

.method public isSame(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 115
    instance-of v2, p1, Lcom/nuance/swype/connect/system/NetworkState;

    if-nez v2, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 118
    check-cast v0, Lcom/nuance/swype/connect/system/NetworkState;

    .line 119
    .local v0, compare:Lcom/nuance/swype/connect/system/NetworkState;
    iget-boolean v2, p0, Lcom/nuance/swype/connect/system/NetworkState;->hasConnectivity:Z

    invoke-virtual {v0}, Lcom/nuance/swype/connect/system/NetworkState;->hasConnectivity()Z

    move-result v3

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/nuance/swype/connect/system/NetworkState;->isFailover:Z

    invoke-virtual {v0}, Lcom/nuance/swype/connect/system/NetworkState;->isFailover()Z

    move-result v3

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/nuance/swype/connect/system/NetworkState;->connectionType:I

    invoke-virtual {v0}, Lcom/nuance/swype/connect/system/NetworkState;->getConnectionType()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/connect/system/NetworkState;->connectionTypeName:Ljava/lang/String;

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/nuance/swype/connect/system/NetworkState;->getConnectionTypeName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/connect/system/NetworkState;->connectionTypeName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/connect/system/NetworkState;->connectionTypeName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/system/NetworkState;->getConnectionTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    iget-boolean v2, p0, Lcom/nuance/swype/connect/system/NetworkState;->isRoaming:Z

    invoke-virtual {v0}, Lcom/nuance/swype/connect/system/NetworkState;->isRoaming()Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 125
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isStableConnection()Z
    .locals 5

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/nuance/swype/connect/system/NetworkState;->hasConnectivity:Z

    .line 107
    .local v0, isStable:Z
    iget v1, p0, Lcom/nuance/swype/connect/system/NetworkState;->connectionStableRequirement:I

    if-lez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/nuance/swype/connect/system/NetworkState;->lastConnectionChange:J

    sub-long/2addr v1, v3

    iget v3, p0, Lcom/nuance/swype/connect/system/NetworkState;->connectionStableRequirement:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 109
    const/4 v0, 0x0

    .line 111
    :cond_0
    return v0
.end method

.method public isWifi()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 90
    iget-boolean v1, p0, Lcom/nuance/swype/connect/system/NetworkState;->hasConnectivity:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/nuance/swype/connect/system/NetworkState;->isRoaming:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/nuance/swype/connect/system/NetworkState;->connectionType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setConnectionStableRequirement(I)V
    .locals 0
    .parameter "connectionStableRequirement"

    .prologue
    .line 102
    iput p1, p0, Lcom/nuance/swype/connect/system/NetworkState;->connectionStableRequirement:I

    .line 103
    return-void
.end method
