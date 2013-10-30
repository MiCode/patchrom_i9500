.class public Lcom/nuance/swype/connect/compat/TrafficStatsCompat;
.super Ljava/lang/Object;
.source "TrafficStatsCompat.java"


# static fields
.field public static final UNSUPPORTED:I = -0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static getMobileRxBytes()J
    .locals 2

    .prologue
    .line 26
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMobileRxPackets()J
    .locals 2

    .prologue
    .line 30
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMobileTxBytes()J
    .locals 2

    .prologue
    .line 34
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMobileTxPackets()J
    .locals 2

    .prologue
    .line 38
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTotalRxBytes()J
    .locals 2

    .prologue
    .line 42
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTotalRxPackets()J
    .locals 2

    .prologue
    .line 46
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxPackets()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUidRxBytes(I)J
    .locals 2
    .parameter "uid"

    .prologue
    .line 50
    invoke-static {p0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUidRxPackets(I)J
    .locals 8
    .parameter "uid"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 60
    const-class v2, Landroid/net/TrafficStats;

    const-string v3, "getUidRxPackets"

    new-array v4, v7, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/nuance/swype/connect/compat/CompatUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 62
    .local v0, getMobileRxPackets:Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 63
    const-class v2, Landroid/net/TrafficStats;

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v2, v3}, Lcom/nuance/swype/connect/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 64
    .local v1, o:Ljava/lang/Object;
    check-cast v1, Ljava/lang/Long;

    .end local v1           #o:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 67
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public static getUidTxBytes(I)J
    .locals 2
    .parameter "uid"

    .prologue
    .line 54
    invoke-static {p0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUidTxPackets(I)J
    .locals 8
    .parameter "uid"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 71
    const-class v2, Landroid/net/TrafficStats;

    const-string v3, "getUidTxPackets"

    new-array v4, v7, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/nuance/swype/connect/compat/CompatUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 73
    .local v0, getMobileTxPackets:Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 74
    const-class v2, Landroid/net/TrafficStats;

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v2, v3}, Lcom/nuance/swype/connect/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 75
    .local v1, o:Ljava/lang/Object;
    check-cast v1, Ljava/lang/Long;

    .end local v1           #o:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 78
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0
.end method
