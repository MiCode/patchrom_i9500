.class public abstract Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;
.source "LibTypeProvider.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;)V
    .locals 0
    .parameter "context"
    .parameter "observable"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;-><init>(Landroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected final getInstructionForDisable()B
    .locals 1

    .prologue
    .line 56
    const/16 v0, -0x4e

    return v0
.end method

.method protected final getInstructionForEnable()B
    .locals 1

    .prologue
    .line 45
    const/16 v0, -0x4f

    return v0
.end method
