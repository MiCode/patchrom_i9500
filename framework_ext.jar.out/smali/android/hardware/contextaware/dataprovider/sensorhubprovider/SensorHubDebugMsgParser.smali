.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubDebugMsgParser;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;
.source "SensorHubDebugMsgParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;-><init>()V

    return-void
.end method


# virtual methods
.method public final parse([BI)I
    .locals 9
    .parameter "packet"
    .parameter "next"

    .prologue
    const/4 v7, -0x1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 35
    .local v6, tmpPacket:[B
    move v4, p2

    .line 37
    .local v4, tmpNext:I
    array-length v8, p1

    sub-int/2addr v8, v4

    add-int/lit8 v8, v8, -0x1

    if-gez v8, :cond_0

    move v5, v7

    .line 59
    :goto_0
    return v5

    .line 41
    :cond_0
    add-int/lit8 v5, v4, 0x1

    .end local v4           #tmpNext:I
    .local v5, tmpNext:I
    aget-byte v2, v6, v4

    .line 42
    .local v2, msgLen:I
    if-gez v2, :cond_1

    .line 43
    const-string v8, "debug msg len is negative"

    invoke-static {v8}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move v4, v5

    .end local v5           #tmpNext:I
    .restart local v4       #tmpNext:I
    move v5, v7

    .line 44
    goto :goto_0

    .line 47
    .end local v4           #tmpNext:I
    .restart local v5       #tmpNext:I
    :cond_1
    new-array v0, v2, [B

    .line 48
    .local v0, debugMsg:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 49
    add-int/lit8 v4, v5, 0x1

    .end local v5           #tmpNext:I
    .restart local v4       #tmpNext:I
    aget-byte v7, v6, v5

    aput-byte v7, v0, v1

    .line 48
    add-int/lit8 v1, v1, 0x1

    move v5, v4

    .end local v4           #tmpNext:I
    .restart local v5       #tmpNext:I
    goto :goto_1

    .line 52
    :cond_2
    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->byteArrToString([B)Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, str:Ljava/lang/String;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 54
    :cond_3
    const-string v7, "debug msg is null"

    invoke-static {v7}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    :goto_2
    move v4, v5

    .line 59
    .end local v5           #tmpNext:I
    .restart local v4       #tmpNext:I
    goto :goto_0

    .line 56
    .end local v4           #tmpNext:I
    .restart local v5       #tmpNext:I
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[SensorHub Debug]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_2
.end method
