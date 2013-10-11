.class public abstract Landroid/hardware/contextaware/dataprovider/DataProvider;
.super Landroid/hardware/contextaware/manager/ContextProvider;
.source "DataProvider.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;)V
    .locals 0
    .parameter "context"
    .parameter "looper"
    .parameter "observable"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/contextaware/manager/ContextProvider;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected final initialize()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 51
    const-string v0, "mContext is null."

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 56
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/DataProvider;->initializeManager()V

    goto :goto_0
.end method

.method protected abstract initializeManager()V
.end method

.method protected final terminate()V
    .locals 0

    .prologue
    .line 65
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/DataProvider;->terminateManager()V

    .line 66
    return-void
.end method

.method protected abstract terminateManager()V
.end method
