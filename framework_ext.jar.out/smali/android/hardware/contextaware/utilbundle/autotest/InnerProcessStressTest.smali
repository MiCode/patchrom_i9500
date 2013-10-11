.class abstract Landroid/hardware/contextaware/utilbundle/autotest/InnerProcessStressTest;
.super Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTest;
.source "InnerProcessStressTest.java"


# direct methods
.method protected constructor <init>(I)V
    .locals 0
    .parameter "delayTime"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTest;-><init>(I)V

    .line 35
    return-void
.end method


# virtual methods
.method protected abstract getPacket(I)[B
.end method

.method public final run()V
    .locals 8

    .prologue
    .line 53
    const/4 v5, 0x0

    .line 57
    .local v5, packet:[B
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTest;->getDelayTime()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 59
    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/hardware/contextaware/utilbundle/autotest/InnerProcessStressTest;->getPacket(I)[B

    move-result-object v5

    .line 60
    if-eqz v5, :cond_0

    array-length v6, v5

    if-lez v6, :cond_0

    .line 64
    move-object v0, v5

    .local v0, arr$:[B
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-byte v2, v0, v3

    .line 65
    .local v2, i:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Packet = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 64
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68
    .end local v2           #i:I
    :cond_1
    invoke-static {}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->getInstance()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->parseForScenarioTesting([B)Z

    .line 71
    invoke-super {p0}, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTest;->isStopTest()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    .line 78
    .end local v0           #arr$:[B
    .end local v3           #i$:I
    .end local v4           #len$:I
    :goto_1
    return-void

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
