.class public abstract Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ExtLibTypeProvider;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;
.source "ExtLibTypeProvider.java"

# interfaces
.implements Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ITimeOutCheckObserver;


# static fields
.field private static final DEFAULT_TIME_OUT:I = 0x2


# instance fields
.field private mTimeOutCheckService:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TimeOutCheckService;

.field private mTimeOutCheckThreadHandler:Ljava/lang/Thread;

.field private mTimeOutOccurrence:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;)V
    .locals 0
    .parameter "context"
    .parameter "observable"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;-><init>(Landroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;)V

    .line 53
    return-void
.end method

.method private clearTimeOutCheckService()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ExtLibTypeProvider;->mTimeOutCheckService:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TimeOutCheckService;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ExtLibTypeProvider;->mTimeOutCheckService:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TimeOutCheckService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TimeOutCheckService;->setStopFlag(Z)V

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ExtLibTypeProvider;->mTimeOutCheckThreadHandler:Ljava/lang/Thread;

    .line 204
    :cond_0
    return-void
.end method

.method private doTimeOutChecking()V
    .locals 3

    .prologue
    .line 147
    invoke-direct {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ExtLibTypeProvider;->clearTimeOutCheckService()V

    .line 149
    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TimeOutCheckService;

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ExtLibTypeProvider;->getTimeOutCheckObserver()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ITimeOutCheckObserver;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ExtLibTypeProvider;->getTimeOut()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TimeOutCheckService;-><init>(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ITimeOutCheckObserver;I)V

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ExtLibTypeProvider;->mTimeOutCheckService:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TimeOutCheckService;

    .line 151
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ExtLibTypeProvider;->mTimeOutCheckService:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TimeOutCheckService;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ExtLibTypeProvider;->mTimeOutCheckThreadHandler:Ljava/lang/Thread;

    .line 152
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ExtLibTypeProvider;->mTimeOutCheckThreadHandler:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 153
    return-void
.end method


# virtual methods
.method protected final checkNotifyCondition()Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ExtLibTypeProvider;->mTimeOutOccurrence:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract getDependentService()Ljava/lang/String;
.end method

.method protected final getInstructionForDisable()B
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method protected final getInstructionForEnable()B
    .locals 1

    .prologue
    .line 129
    const/16 v0, -0x48

    return v0
.end method

.method protected final getTimeOut()I
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x2

    return v0
.end method

.method protected abstract getTimeOutCheckObserver()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ITimeOutCheckObserver;
.end method

.method public final parse([BI)I
    .locals 3
    .parameter "packet"
    .parameter "next"

    .prologue
    .line 163
    invoke-super {p0, p1, p2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->parse([BI)I

    move-result v0

    .line 165
    .local v0, tmpNext:I
    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ExtLibTypeProvider;->mTimeOutCheckService:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TimeOutCheckService;

    if-nez v1, :cond_1

    .line 166
    const-string v1, "mTimeOutCheckService is null"

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 171
    :cond_0
    :goto_0
    return v0

    .line 167
    :cond_1
    if-ltz v0, :cond_0

    .line 168
    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ExtLibTypeProvider;->mTimeOutCheckService:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TimeOutCheckService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TimeOutCheckService;->setCmdReceiveFlag(Z)V

    goto :goto_0
.end method

.method protected final readyToEnable()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ExtLibTypeProvider;->setTimeOutOccurence(Z)V

    .line 119
    return-void
.end method

.method protected final setTimeOutOccurence(Z)V
    .locals 0
    .parameter "timeOut"

    .prologue
    .line 193
    iput-boolean p1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ExtLibTypeProvider;->mTimeOutOccurrence:Z

    .line 194
    return-void
.end method

.method public final start(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;Z)V
    .locals 5
    .parameter "listener"
    .parameter "restore"

    .prologue
    .line 73
    invoke-virtual {p1}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->getServices()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 74
    .local v0, i:I
    invoke-static {}, Landroid/hardware/contextaware/ContextList;->getInstance()Landroid/hardware/contextaware/ContextList;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/hardware/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ExtLibTypeProvider;->getDependentService()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    invoke-direct {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ExtLibTypeProvider;->doTimeOutChecking()V

    .line 79
    invoke-super {p0, p1, p2}, Landroid/hardware/contextaware/manager/ContextProvider;->start(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;Z)V

    .line 80
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->checkFaultDetectionResult()Z

    move-result v2

    if-nez v2, :cond_1

    .line 81
    invoke-direct {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ExtLibTypeProvider;->clearTimeOutCheckService()V

    .line 94
    .end local v0           #i:I
    :cond_1
    :goto_0
    return-void

    .line 86
    :cond_2
    if-nez p2, :cond_1

    .line 87
    const-string v2, "insuffieient requirement"

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 89
    const-string v2, "START"

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getContextTypeOfFaultDetection()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-super {p0, v4}, Landroid/hardware/contextaware/manager/ContextProvider;->getFaultDetectionResult(I)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/contextaware/manager/ContextProvider;->notifyFaultDetectionObserver(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method
