.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/GyroTemperatureRunner;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "GyroTemperatureRunner.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;)V
    .locals 0
    .parameter "context"
    .parameter "observable"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(Landroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;)V

    .line 42
    return-void
.end method


# virtual methods
.method public final disable()V
    .locals 0

    .prologue
    .line 165
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 166
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->disable()V

    .line 167
    return-void
.end method

.method public final enable()V
    .locals 0

    .prologue
    .line 152
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 153
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->enable()V

    .line 154
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_GYRO_TEMPERATURE:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 75
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "GyroTemperature"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final getInitContextBundle()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 113
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/GyroTemperatureRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 114
    .local v1, name:Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 115
    .local v0, contextBundle:Landroid/os/Bundle;
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 117
    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    .prologue
    .line 63
    const/16 v0, 0xf

    return v0
.end method

.method protected final getPowerObserver()Landroid/hardware/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    .line 128
    return-object p0
.end method

.method protected final getPowerResetObserver()Landroid/hardware/contextaware/manager/IApPowerResetObserver;
    .locals 0

    .prologue
    .line 140
    return-object p0
.end method

.method public final parse([BI)I
    .locals 8
    .parameter "packet"
    .parameter "next"

    .prologue
    .line 87
    move v4, p2

    .line 89
    .local v4, tmpNext:I
    array-length v6, p1

    sub-int/2addr v6, v4

    add-int/lit8 v6, v6, -0x1

    if-gez v6, :cond_0

    .line 90
    const/4 v5, -0x1

    .line 101
    :goto_0
    return v5

    .line 93
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/GyroTemperatureRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v1, v6, v7

    .line 95
    .local v1, name:Ljava/lang/String;
    add-int/lit8 v5, v4, 0x1

    .end local v4           #tmpNext:I
    .local v5, tmpNext:I
    aget-byte v0, p1, v4

    .line 96
    .local v0, data:I
    int-to-double v2, v0

    .line 97
    .local v2, temperature:D
    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v6

    invoke-virtual {v6, v1, v2, v3}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 99
    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->notifyObserver()V

    move v4, v5

    .line 101
    .end local v5           #tmpNext:I
    .restart local v4       #tmpNext:I
    goto :goto_0
.end method
