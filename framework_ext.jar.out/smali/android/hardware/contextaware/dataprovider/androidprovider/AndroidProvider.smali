.class public abstract Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProvider;
.super Landroid/hardware/contextaware/dataprovider/DataProvider;
.source "AndroidProvider.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;)V
    .locals 0
    .parameter "context"
    .parameter "looper"
    .parameter "observable"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/contextaware/dataprovider/DataProvider;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;)V

    .line 40
    return-void
.end method


# virtual methods
.method public final getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 56
    const-string v0, "success"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 57
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/hardware/contextaware/manager/ContextProvider;->getFaultDetectionResult(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public updateAPStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/hardware/contextaware/manager/ContextProvider;->setAPStatus(I)V

    .line 49
    return-void
.end method
