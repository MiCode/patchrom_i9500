.class final enum Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList$5;
.super Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;
.source "AndroidRunnerConcreteCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;
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
    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator$1;)V

    return-void
.end method


# virtual methods
.method public final getObject()Landroid/hardware/contextaware/manager/ContextProvider;
    .locals 5

    .prologue
    .line 147
    #calls: Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->access$3700()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    #calls: Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->access$4000()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/hardware/contextaware/dataprovider/androidprovider/builtin/OrientationSensorRunner;

    #calls: Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->getContext()Landroid/content/Context;
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->access$3800()Landroid/content/Context;

    move-result-object v3

    #calls: Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->access$3900()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/hardware/contextaware/dataprovider/androidprovider/builtin/OrientationSensorRunner;-><init>(Landroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_0
    #calls: Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->access$4100()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/manager/ContextProvider;

    return-object v0
.end method

.method public final varargs getObject([Ljava/lang/Object;)Landroid/hardware/contextaware/manager/ContextProvider;
    .locals 6
    .parameter "property"

    .prologue
    .line 163
    array-length v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 164
    const/4 v0, 0x0

    .line 174
    :goto_0
    return-object v0

    .line 167
    :cond_0
    #calls: Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->access$4300()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 168
    #calls: Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->access$4600()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/hardware/contextaware/dataprovider/androidprovider/builtin/OrientationSensorRunner;

    #calls: Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->getContext()Landroid/content/Context;
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->access$4400()Landroid/content/Context;

    move-result-object v4

    #calls: Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->access$4500()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;

    move-result-object v5

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v3, v4, v5, v0}, Landroid/hardware/contextaware/dataprovider/androidprovider/builtin/OrientationSensorRunner;-><init>(Landroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :cond_1
    #calls: Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->access$4700()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/manager/ContextProvider;

    goto :goto_0
.end method

.method public final getObjectForSubCollection()Landroid/hardware/contextaware/manager/ContextProvider;
    .locals 3

    .prologue
    .line 158
    new-instance v0, Landroid/hardware/contextaware/dataprovider/androidprovider/builtin/OrientationSensorRunner;

    #calls: Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->getContext()Landroid/content/Context;
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->access$4200()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/hardware/contextaware/dataprovider/androidprovider/builtin/OrientationSensorRunner;-><init>(Landroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;)V

    return-object v0
.end method

.method public final varargs getObjectForSubCollection([Ljava/lang/Object;)Landroid/hardware/contextaware/manager/ContextProvider;
    .locals 4
    .parameter "property"

    .prologue
    .line 180
    new-instance v1, Landroid/hardware/contextaware/dataprovider/androidprovider/builtin/OrientationSensorRunner;

    #calls: Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->getContext()Landroid/content/Context;
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->access$4800()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v2, v3, v0}, Landroid/hardware/contextaware/dataprovider/androidprovider/builtin/OrientationSensorRunner;-><init>(Landroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;I)V

    return-object v1
.end method
