.class final enum Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList$8;
.super Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList;
.source "SensorHubRunnerConcreteCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter "x0"

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$1;)V

    return-void
.end method


# virtual methods
.method public final getObject()Landroid/hardware/contextaware/manager/ContextProvider;
    .locals 5

    .prologue
    .line 189
    #calls: Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->access$3600()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    #calls: Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->access$3900()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PowerNotiRunner;

    #calls: Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContext()Landroid/content/Context;
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->access$3700()Landroid/content/Context;

    move-result-object v3

    #calls: Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->access$3800()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PowerNotiRunner;-><init>(Landroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_0
    #calls: Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->access$4000()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/manager/ContextProvider;

    return-object v0
.end method
