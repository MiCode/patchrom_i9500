.class public abstract Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PositioningProviderForExtLib;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ExtLibTypeProvider;
.source "PositioningProviderForExtLib.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;)V
    .locals 0
    .parameter "context"
    .parameter "observable"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ExtLibTypeProvider;-><init>(Landroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected final getDependentService()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_MOVEMENT_FOR_POSITIONING:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    .prologue
    .line 46
    const/16 v0, 0x9

    return v0
.end method
