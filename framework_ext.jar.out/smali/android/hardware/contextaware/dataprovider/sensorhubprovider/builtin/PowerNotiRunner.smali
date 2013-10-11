.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PowerNotiRunner;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "PowerNotiRunner.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;)V
    .locals 0
    .parameter "context"
    .parameter "observable"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(Landroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;)V

    .line 44
    return-void
.end method


# virtual methods
.method public final disable()V
    .locals 0

    .prologue
    .line 150
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 151
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->disable()V

    .line 152
    return-void
.end method

.method public final enable()V
    .locals 0

    .prologue
    .line 137
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 138
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->enable()V

    .line 139
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_POWER_NOTI:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 77
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Noti"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public final getFaultDetectionResult()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 162
    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getUsedTotalCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 163
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    .line 168
    :goto_0
    return-object v0

    .line 166
    :cond_0
    const-string v0, "success"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 168
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/hardware/contextaware/manager/ContextProvider;->getFaultDetectionResult(I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method protected final getInstLibType()B
    .locals 1

    .prologue
    .line 65
    const/4 v0, -0x1

    return v0
.end method

.method protected final getPowerObserver()Landroid/hardware/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    .line 113
    return-object p0
.end method

.method protected final getPowerResetObserver()Landroid/hardware/contextaware/manager/IApPowerResetObserver;
    .locals 0

    .prologue
    .line 125
    return-object p0
.end method

.method public final updateApPowerStatus(IJ)V
    .locals 4
    .parameter "status"
    .parameter "timeStamp"

    .prologue
    .line 89
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PowerNotiRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, names:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 92
    .local v0, data:I
    const/16 v2, -0x2f

    if-ne p1, v2, :cond_1

    .line 93
    const/4 v0, 0x1

    .line 100
    :goto_0
    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v2, v3, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 102
    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->notifyObserver()V

    .line 103
    :cond_0
    return-void

    .line 94
    :cond_1
    const/16 v2, -0x2e

    if-ne p1, v2, :cond_0

    .line 95
    const/4 v0, 0x2

    goto :goto_0
.end method
