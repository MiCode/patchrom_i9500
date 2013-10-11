.class Landroid/hardware/contextaware/manager/ContextManager;
.super Ljava/lang/Object;
.source "ContextManager.java"


# instance fields
.field private final mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/contextaware/creator/ContextProviderCreator;",
            ">;"
        }
    .end annotation
.end field

.field private final mUtilManager:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/contextaware/utilbundle/IUtilManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 5
    .parameter "context"
    .parameter "looper"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v1, Landroid/hardware/contextaware/creator/builtin/SensorHubParserConcreteCreator;

    invoke-direct {v1, p1}, Landroid/hardware/contextaware/creator/builtin/SensorHubParserConcreteCreator;-><init>(Landroid/content/Context;)V

    .line 56
    .local v1, sensorHubParserConcreteCreator:Landroid/hardware/contextaware/creator/builtin/SensorHubParserConcreteCreator;
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Landroid/hardware/contextaware/manager/ContextManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 57
    iget-object v2, p0, Landroid/hardware/contextaware/manager/ContextManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v3, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator;

    invoke-virtual {v1}, Landroid/hardware/contextaware/creator/builtin/SensorHubParserConcreteCreator;->getPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;

    move-result-object v4

    invoke-direct {v3, p1, p2, v4}, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v2, p0, Landroid/hardware/contextaware/manager/ContextManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v3, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;

    invoke-virtual {v1}, Landroid/hardware/contextaware/creator/builtin/SensorHubParserConcreteCreator;->getPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;

    move-result-object v4

    invoke-direct {v3, p1, p2, v4}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 63
    .local v0, creator:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/hardware/contextaware/creator/ContextProviderCreator;>;"
    iget-object v2, p0, Landroid/hardware/contextaware/manager/ContextManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v2, p0, Landroid/hardware/contextaware/manager/ContextManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v2, p0, Landroid/hardware/contextaware/manager/ContextManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v3, Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator;

    invoke-virtual {v1}, Landroid/hardware/contextaware/creator/builtin/SensorHubParserConcreteCreator;->getPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;

    move-result-object v4

    invoke-direct {v3, v0, p1, p2, v4}, Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Landroid/hardware/contextaware/manager/ContextManager;->mUtilManager:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 69
    iget-object v2, p0, Landroid/hardware/contextaware/manager/ContextManager;->mUtilManager:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->getInstance()Landroid/hardware/contextaware/utilbundle/CaPowerManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v2, p0, Landroid/hardware/contextaware/manager/ContextManager;->mUtilManager:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CaTelephonyManager;->getInstance()Landroid/hardware/contextaware/utilbundle/CaTelephonyManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v2, p0, Landroid/hardware/contextaware/manager/ContextManager;->mUtilManager:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CaAlarmManager;->getInstance()Landroid/hardware/contextaware/utilbundle/CaAlarmManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v2, p0, Landroid/hardware/contextaware/manager/ContextManager;->mUtilManager:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->getInstance()Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/manager/ContextManager;->initializeUtil(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method private initializeUtil(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 197
    iget-object v2, p0, Landroid/hardware/contextaware/manager/ContextManager;->mUtilManager:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/utilbundle/IUtilManager;

    .line 198
    .local v0, i:Landroid/hardware/contextaware/utilbundle/IUtilManager;
    invoke-interface {v0, p1}, Landroid/hardware/contextaware/utilbundle/IUtilManager;->initializeManager(Landroid/content/Context;)V

    goto :goto_0

    .line 200
    .end local v0           #i:Landroid/hardware/contextaware/utilbundle/IUtilManager;
    :cond_0
    return-void
.end method


# virtual methods
.method protected final getContextProviderObj(Ljava/lang/String;)Landroid/hardware/contextaware/manager/ContextProvider;
    .locals 4
    .parameter "service"

    .prologue
    .line 177
    const/4 v2, 0x0

    .line 179
    .local v2, obj:Landroid/hardware/contextaware/manager/ContextProvider;
    iget-object v3, p0, Landroid/hardware/contextaware/manager/ContextManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/hardware/contextaware/creator/ContextProviderCreator;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 180
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/creator/ContextProviderCreator;

    .line 181
    .local v0, creator:Landroid/hardware/contextaware/creator/ContextProviderCreator;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->existContextProvider(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 182
    invoke-virtual {v0, p1}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->create(Ljava/lang/String;)Landroid/hardware/contextaware/manager/ContextProvider;

    move-result-object v2

    .line 187
    .end local v0           #creator:Landroid/hardware/contextaware/creator/ContextProviderCreator;
    :cond_1
    return-object v2
.end method

.method protected final getCreator()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/contextaware/creator/ContextProviderCreator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public final notifyInitContext(Ljava/lang/String;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 163
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/manager/ContextManager;->getContextProviderObj(Ljava/lang/String;)Landroid/hardware/contextaware/manager/ContextProvider;

    move-result-object v0

    .line 164
    .local v0, provider:Landroid/hardware/contextaware/manager/ContextProvider;
    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextProvider;->notifyInitContext()V

    .line 167
    :cond_0
    return-void
.end method

.method protected final reset(Ljava/lang/String;)V
    .locals 2
    .parameter "service"

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/manager/ContextManager;->getContextProviderObj(Ljava/lang/String;)Landroid/hardware/contextaware/manager/ContextProvider;

    move-result-object v0

    .line 151
    .local v0, provider:Landroid/hardware/contextaware/manager/ContextProvider;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextProvider;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextProvider;->clear()V

    .line 154
    :cond_0
    return-void
.end method

.method protected final setProperty(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1
    .parameter "service"
    .parameter "property"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "ITE;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p3, value:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/manager/ContextManager;->getContextProviderObj(Ljava/lang/String;)Landroid/hardware/contextaware/manager/ContextProvider;

    move-result-object v0

    .line 138
    .local v0, provider:Landroid/hardware/contextaware/manager/ContextProvider;
    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0, p2, p3}, Landroid/hardware/contextaware/manager/ContextProvider;->setProperty(ILjava/lang/Object;)Z

    .line 141
    :cond_0
    return-void
.end method

.method protected final start(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;Ljava/lang/String;Landroid/hardware/contextaware/manager/IContextObserver;Z)V
    .locals 3
    .parameter "listener"
    .parameter "service"
    .parameter "observer"
    .parameter "restore"

    .prologue
    .line 91
    invoke-virtual {p0, p2}, Landroid/hardware/contextaware/manager/ContextManager;->getContextProviderObj(Ljava/lang/String;)Landroid/hardware/contextaware/manager/ContextProvider;

    move-result-object v0

    .line 92
    .local v0, provider:Landroid/hardware/contextaware/manager/ContextProvider;
    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {v0, p3}, Landroid/hardware/contextaware/manager/ContextProvider;->registerObserver(Landroid/hardware/contextaware/manager/IContextObserver;)V

    .line 94
    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextProvider;->getUsedServiceCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 95
    invoke-virtual {v0, p3}, Landroid/hardware/contextaware/manager/ContextProvider;->registerFaultDetectionObserver(Landroid/hardware/contextaware/manager/IContextObserver;)V

    .line 97
    :cond_0
    invoke-virtual {v0, p1, p4}, Landroid/hardware/contextaware/manager/ContextProvider;->start(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;Z)V

    .line 99
    :cond_1
    return-void
.end method

.method protected final stop(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;Ljava/lang/String;Landroid/hardware/contextaware/manager/IContextObserver;Z)V
    .locals 2
    .parameter "listener"
    .parameter "service"
    .parameter "observer"
    .parameter "restore"

    .prologue
    .line 115
    invoke-virtual {p0, p2}, Landroid/hardware/contextaware/manager/ContextManager;->getContextProviderObj(Ljava/lang/String;)Landroid/hardware/contextaware/manager/ContextProvider;

    move-result-object v0

    .line 116
    .local v0, provider:Landroid/hardware/contextaware/manager/ContextProvider;
    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0, p1, p4}, Landroid/hardware/contextaware/manager/ContextProvider;->stop(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;Z)V

    .line 118
    invoke-virtual {v0, p3}, Landroid/hardware/contextaware/manager/ContextProvider;->unregisterObserver(Landroid/hardware/contextaware/manager/IContextObserver;)V

    .line 119
    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextProvider;->getUsedServiceCount()I

    move-result v1

    if-gtz v1, :cond_0

    .line 120
    invoke-virtual {v0, p3}, Landroid/hardware/contextaware/manager/ContextProvider;->unregisterFaultDetectionObserver(Landroid/hardware/contextaware/manager/IContextObserver;)V

    .line 123
    :cond_0
    return-void
.end method
