.class public abstract Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;
.super Landroid/hardware/contextaware/dataprovider/DataProvider;
.source "SensorHubProvider.java"

# interfaces
.implements Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubCmdProtocol;
.implements Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;


# instance fields
.field private mFaultDetectionResult:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;)V
    .locals 1
    .parameter "context"
    .parameter "observable"

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/hardware/contextaware/dataprovider/DataProvider;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected final checkFaultDetectionResult()Z
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mFaultDetectionResult:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public disable()V
    .locals 3

    .prologue
    .line 95
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstLibType()B

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstructionForDisable()B

    move-result v0

    if-nez v0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstructionForDisable()B

    move-result v0

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstLibType()B

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [B

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendCmdToSensorHub(BB[B)V

    goto :goto_0
.end method

.method protected final disableForRestore()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method public enable()V
    .locals 3

    .prologue
    .line 77
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getDataPacket()[B

    move-result-object v0

    .line 78
    .local v0, dataPacket:[B
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstLibType()B

    move-result v1

    if-ltz v1, :cond_0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-gtz v1, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->readyToEnable()V

    .line 84
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstructionForEnable()B

    move-result v1

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstLibType()B

    move-result v2

    invoke-virtual {p0, v1, v2, v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendCmdToSensorHub(BB[B)V

    goto :goto_0
.end method

.method protected final enableForRestore()V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method protected getDataPacket()[B
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x2

    new-array v0, v0, [B

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 246
    const/4 v0, 0x1

    .line 248
    .local v0, result:I
    iget v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mFaultDetectionResult:I

    if-lez v1, :cond_0

    .line 249
    const/4 v0, 0x0

    .line 250
    const-string v1, "success"

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 264
    :goto_0
    invoke-virtual {p0, v0}, Landroid/hardware/contextaware/manager/ContextProvider;->getFaultDetectionResult(I)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    .line 252
    :cond_0
    iget v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mFaultDetectionResult:I

    const/4 v2, -0x5

    if-ne v1, v2, :cond_1

    .line 253
    const/4 v0, 0x2

    .line 254
    const-string v1, "fail to I2C comm"

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 255
    :cond_1
    iget v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mFaultDetectionResult:I

    const/16 v2, -0xb

    if-ne v1, v2, :cond_2

    .line 256
    const/4 v0, 0x3

    .line 257
    const-string v1, "I2C comm success, but fail to receive the ack from SensorHub"

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 259
    :cond_2
    const/4 v0, 0x4

    .line 260
    const-string v1, "fail to comm between Kernel and SensorHubManager"

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract getInstLibType()B
.end method

.method protected abstract getInstructionForDisable()B
.end method

.method protected abstract getInstructionForEnable()B
.end method

.method protected final initializeManager()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public parse([BI)I
    .locals 6
    .parameter "packet"
    .parameter "next"

    .prologue
    .line 177
    move v2, p2

    .line 179
    .local v2, tmpNext:I
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getContextValueNames()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v1, v4, v5

    .line 181
    .local v1, name:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    array-length v4, p1

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    if-gez v4, :cond_1

    .line 182
    :cond_0
    const/4 v3, -0x1

    .line 190
    :goto_0
    return v3

    .line 185
    :cond_1
    add-int/lit8 v3, v2, 0x1

    .end local v2           #tmpNext:I
    .local v3, tmpNext:I
    aget-byte v0, p1, v2

    .line 186
    .local v0, data:B
    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 188
    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->notifyObserver()V

    move v2, v3

    .line 190
    .end local v3           #tmpNext:I
    .restart local v2       #tmpNext:I
    goto :goto_0
.end method

.method public final pause()V
    .locals 0

    .prologue
    .line 216
    return-void
.end method

.method protected readyToEnable()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method protected final reset()V
    .locals 0

    .prologue
    .line 234
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->enable()V

    .line 235
    return-void
.end method

.method public final resume()V
    .locals 0

    .prologue
    .line 225
    return-void
.end method

.method public final sendCmdToSensorHub(BB[B)V
    .locals 2
    .parameter "inst"
    .parameter "type"
    .parameter "data"

    .prologue
    .line 159
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->getInstance()Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub(BB[B)I

    move-result v0

    .line 161
    .local v0, result:I
    const/16 v1, -0x3e7

    if-ne v0, v1, :cond_0

    .line 166
    :goto_0
    return-void

    .line 165
    :cond_0
    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mFaultDetectionResult:I

    goto :goto_0
.end method

.method protected final terminateManager()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method
