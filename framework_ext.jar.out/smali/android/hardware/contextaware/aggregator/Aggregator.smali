.class public abstract Landroid/hardware/contextaware/aggregator/Aggregator;
.super Landroid/hardware/contextaware/manager/ContextProvider;
.source "Aggregator.java"

# interfaces
.implements Landroid/hardware/contextaware/manager/IContextObserver;


# instance fields
.field private mAggregatorFaultDetectionResult:Z

.field private final mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/contextaware/manager/ContextProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/CopyOnWriteArrayList;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;)V
    .locals 0
    .parameter "context"
    .parameter "looper"
    .parameter
    .parameter "observable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/contextaware/manager/ContextProvider;",
            ">;",
            "Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    .local p3, collectionList:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/hardware/contextaware/manager/ContextProvider;>;"
    invoke-direct {p0, p1, p2, p4}, Landroid/hardware/contextaware/manager/ContextProvider;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;)V

    .line 60
    iput-object p3, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 61
    return-void
.end method

.method private registerObserver()V
    .locals 3

    .prologue
    .line 166
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/hardware/contextaware/manager/ContextProvider;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/ContextProvider;

    .line 168
    .local v1, next:Landroid/hardware/contextaware/manager/ContextProvider;
    if-eqz v1, :cond_0

    .line 169
    invoke-virtual {v1, p0}, Landroid/hardware/contextaware/manager/ContextProvider;->registerObserver(Landroid/hardware/contextaware/manager/IContextObserver;)V

    .line 170
    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getUsedServiceCount()I

    move-result v2

    if-gtz v2, :cond_0

    .line 171
    invoke-virtual {v1, p0}, Landroid/hardware/contextaware/manager/ContextProvider;->registerFaultDetectionObserver(Landroid/hardware/contextaware/manager/IContextObserver;)V

    goto :goto_0

    .line 175
    .end local v1           #next:Landroid/hardware/contextaware/manager/ContextProvider;
    :cond_1
    return-void
.end method

.method private unregisterObserver()V
    .locals 3

    .prologue
    .line 181
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/hardware/contextaware/manager/ContextProvider;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/ContextProvider;

    .line 183
    .local v1, next:Landroid/hardware/contextaware/manager/ContextProvider;
    if-eqz v1, :cond_0

    .line 184
    invoke-virtual {v1, p0}, Landroid/hardware/contextaware/manager/ContextProvider;->unregisterObserver(Landroid/hardware/contextaware/manager/IContextObserver;)V

    .line 185
    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getUsedServiceCount()I

    move-result v2

    if-gtz v2, :cond_0

    .line 186
    invoke-virtual {v1, p0}, Landroid/hardware/contextaware/manager/ContextProvider;->unregisterFaultDetectionObserver(Landroid/hardware/contextaware/manager/IContextObserver;)V

    goto :goto_0

    .line 190
    .end local v1           #next:Landroid/hardware/contextaware/manager/ContextProvider;
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 150
    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->isRunning()Z

    move-result v2

    if-nez v2, :cond_1

    .line 160
    :cond_0
    return-void

    .line 154
    :cond_1
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/hardware/contextaware/manager/ContextProvider;>;"
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/ContextProvider;

    .line 156
    .local v1, next:Landroid/hardware/contextaware/manager/ContextProvider;
    if-eqz v1, :cond_2

    .line 157
    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/ContextProvider;->clear()V

    goto :goto_0
.end method

.method public disable()V
    .locals 3

    .prologue
    .line 249
    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->isDisable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 259
    :cond_0
    return-void

    .line 253
    :cond_1
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/hardware/contextaware/manager/ContextProvider;>;"
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 254
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/ContextProvider;

    .line 255
    .local v1, next:Landroid/hardware/contextaware/manager/ContextProvider;
    if-eqz v1, :cond_2

    .line 256
    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/ContextProvider;->disable()V

    goto :goto_0
.end method

.method protected final disableForStop(Z)V
    .locals 0
    .parameter "restore"

    .prologue
    .line 408
    return-void
.end method

.method public enable()V
    .locals 3

    .prologue
    .line 229
    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->isEnable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 240
    :cond_0
    return-void

    .line 233
    :cond_1
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/hardware/contextaware/manager/ContextProvider;>;"
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/ContextProvider;

    .line 235
    .local v1, next:Landroid/hardware/contextaware/manager/ContextProvider;
    if-eqz v1, :cond_2

    .line 236
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 237
    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/ContextProvider;->enable()V

    goto :goto_0
.end method

.method protected final enableForStart(Z)V
    .locals 0
    .parameter "restore"

    .prologue
    .line 397
    return-void
.end method

.method public final getFaultDetectionResult()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 343
    const/4 v0, 0x0

    .line 345
    .local v0, bundle:Landroid/os/Bundle;
    iget-boolean v1, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mAggregatorFaultDetectionResult:Z

    if-eqz v1, :cond_0

    .line 346
    const/4 v1, 0x0

    invoke-super {p0, v1}, Landroid/hardware/contextaware/manager/ContextProvider;->getFaultDetectionResult(I)Landroid/os/Bundle;

    move-result-object v0

    .line 353
    :goto_0
    return-object v0

    .line 349
    :cond_0
    const/4 v1, 0x1

    invoke-super {p0, v1}, Landroid/hardware/contextaware/manager/ContextProvider;->getFaultDetectionResult(I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method protected final getSubCollectionObj(Ljava/lang/String;)Landroid/hardware/contextaware/manager/ContextProvider;
    .locals 4
    .parameter "collectionName"

    .prologue
    .line 296
    const/4 v2, 0x0

    .line 298
    .local v2, subCollectionObj:Landroid/hardware/contextaware/manager/ContextProvider;
    iget-object v3, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/hardware/contextaware/manager/ContextProvider;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 299
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/ContextProvider;

    .line 300
    .local v1, obj:Landroid/hardware/contextaware/manager/ContextProvider;
    if-eqz v1, :cond_0

    .line 303
    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/ContextProvider;->getContextType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 304
    move-object v2, v1

    .line 309
    .end local v1           #obj:Landroid/hardware/contextaware/manager/ContextProvider;
    :cond_1
    return-object v2
.end method

.method protected final getSubCollectors()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/contextaware/manager/ContextProvider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 385
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method protected final initialize()V
    .locals 0

    .prologue
    .line 82
    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->initializeAggregator()V

    .line 83
    return-void
.end method

.method protected initializeAggregator()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method protected final notifyApStatus()V
    .locals 4

    .prologue
    .line 275
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/hardware/contextaware/manager/ContextProvider;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 276
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/ContextProvider;

    .line 277
    .local v1, next:Landroid/hardware/contextaware/manager/ContextProvider;
    if-eqz v1, :cond_0

    .line 280
    instance-of v2, v1, Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProvider;

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 281
    check-cast v2, Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProvider;

    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getAPStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProvider;->updateAPStatus(I)V

    .line 283
    :cond_1
    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/ContextProvider;->updateApPowerStatusForPreparedCollection()V

    goto :goto_0

    .line 285
    .end local v1           #next:Landroid/hardware/contextaware/manager/ContextProvider;
    :cond_2
    const/4 v2, 0x0

    invoke-super {p0, v2}, Landroid/hardware/contextaware/manager/ContextProvider;->setAPStatus(I)V

    .line 286
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 199
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/hardware/contextaware/manager/ContextProvider;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 200
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/ContextProvider;

    .line 201
    .local v1, next:Landroid/hardware/contextaware/manager/ContextProvider;
    if-eqz v1, :cond_0

    .line 202
    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/ContextProvider;->pause()V

    goto :goto_0

    .line 205
    .end local v1           #next:Landroid/hardware/contextaware/manager/ContextProvider;
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 214
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/hardware/contextaware/manager/ContextProvider;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 215
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/ContextProvider;

    .line 216
    .local v1, next:Landroid/hardware/contextaware/manager/ContextProvider;
    if-eqz v1, :cond_0

    .line 217
    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/ContextProvider;->resume()V

    goto :goto_0

    .line 220
    .end local v1           #next:Landroid/hardware/contextaware/manager/ContextProvider;
    :cond_1
    return-void
.end method

.method public final start(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;Z)V
    .locals 3
    .parameter "listener"
    .parameter "restore"

    .prologue
    .line 105
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mAggregatorFaultDetectionResult:Z

    .line 106
    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->registerObserver()V

    .line 108
    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->isEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/hardware/contextaware/manager/ContextProvider;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/ContextProvider;

    .line 111
    .local v1, next:Landroid/hardware/contextaware/manager/ContextProvider;
    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {v1, p1, p2}, Landroid/hardware/contextaware/manager/ContextProvider;->start(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;Z)V

    goto :goto_0

    .line 117
    .end local v0           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/hardware/contextaware/manager/ContextProvider;>;"
    .end local v1           #next:Landroid/hardware/contextaware/manager/ContextProvider;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/hardware/contextaware/manager/ContextProvider;->start(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;Z)V

    .line 118
    return-void
.end method

.method public final stop(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;Z)V
    .locals 3
    .parameter "listener"
    .parameter "restore"

    .prologue
    .line 129
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mAggregatorFaultDetectionResult:Z

    .line 131
    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->isDisable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/hardware/contextaware/manager/ContextProvider;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/ContextProvider;

    .line 134
    .local v1, next:Landroid/hardware/contextaware/manager/ContextProvider;
    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {v1, p1, p2}, Landroid/hardware/contextaware/manager/ContextProvider;->stop(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;Z)V

    goto :goto_0

    .line 140
    .end local v0           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/hardware/contextaware/manager/ContextProvider;>;"
    .end local v1           #next:Landroid/hardware/contextaware/manager/ContextProvider;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/hardware/contextaware/manager/ContextProvider;->stop(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;Z)V

    .line 141
    return-void
.end method

.method protected final terminate()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->unregisterObserver()V

    .line 93
    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->terminateAggregator()V

    .line 94
    return-void
.end method

.method protected terminateAggregator()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method protected updateApSleep()V
    .locals 0

    .prologue
    .line 320
    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->notifyApStatus()V

    .line 321
    return-void
.end method

.method protected updateApWakeup()V
    .locals 0

    .prologue
    .line 331
    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->notifyApStatus()V

    .line 332
    return-void
.end method

.method public abstract updateContext(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public final updateFaultDetectionResult(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .parameter "operation"
    .parameter "type"
    .parameter "context"

    .prologue
    .line 366
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->CMD_PROCESS_FAULT_DETECTION:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    :goto_0
    return-void

    .line 370
    :cond_0
    const-string v0, "CheckResult"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const-string v0, "CheckResult"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 372
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mAggregatorFaultDetectionResult:Z

    .line 373
    const-string v0, "Result of aggregator subCollection is failed."

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 375
    :cond_2
    const-string v0, "Result of aggregator subCollection is successed."

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method
