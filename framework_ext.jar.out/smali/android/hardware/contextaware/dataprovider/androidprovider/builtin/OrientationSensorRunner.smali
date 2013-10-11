.class public Landroid/hardware/contextaware/dataprovider/androidprovider/builtin/OrientationSensorRunner;
.super Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;
.source "OrientationSensorRunner.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;)V
    .locals 1
    .parameter "context"
    .parameter "observable"

    .prologue
    .line 41
    const v0, 0xea60

    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/contextaware/dataprovider/androidprovider/builtin/OrientationSensorRunner;-><init>(Landroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;I)V
    .locals 1
    .parameter "context"
    .parameter "observable"
    .parameter "rate"

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;I)V

    .line 57
    return-void
.end method


# virtual methods
.method public final disable()V
    .locals 0

    .prologue
    .line 140
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 141
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;->disable()V

    .line 142
    return-void
.end method

.method public final enable()V
    .locals 0

    .prologue
    .line 127
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 128
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;->enable()V

    .line 129
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_ORIENTATION_SENSOR:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 81
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "OriX"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "OriY"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "OriZ"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final getPowerObserver()Landroid/hardware/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    .line 103
    return-object p0
.end method

.method protected final getPowerResetObserver()Landroid/hardware/contextaware/manager/IApPowerResetObserver;
    .locals 0

    .prologue
    .line 115
    return-object p0
.end method

.method protected final getSensorType()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x3

    return v0
.end method
