.class public abstract Landroid/hardware/contextaware/creator/ContextProviderCreator;
.super Ljava/lang/Object;
.source "ContextProviderCreator.java"


# static fields
.field private static sAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;

.field private static sContext:Landroid/content/Context;

.field private static final sContextProviderMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/hardware/contextaware/manager/ContextProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static sLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/hardware/contextaware/creator/ContextProviderCreator;->sContextProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;)V
    .locals 0
    .parameter "context"
    .parameter "looper"
    .parameter "observable"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {p1}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->setContext(Landroid/content/Context;)V

    .line 55
    invoke-static {p2}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->setLooper(Landroid/os/Looper;)V

    .line 56
    invoke-static {p3}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->setAPPowerObservable(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;)V

    .line 57
    return-void
.end method

.method private create(Ljava/lang/String;Z)Landroid/hardware/contextaware/manager/ContextProvider;
    .locals 2
    .parameter "name"
    .parameter "isSubCollection"

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->existContextProvider(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    const/4 v0, 0x0

    .line 115
    :goto_0
    return-object v0

    .line 107
    :cond_0
    const/4 v0, 0x0

    .line 109
    .local v0, provider:Landroid/hardware/contextaware/manager/ContextProvider;
    if-eqz p2, :cond_1

    .line 110
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->getValueOfList(Ljava/lang/String;)Landroid/hardware/contextaware/creator/IListObjectCreator;

    move-result-object v1

    invoke-interface {v1}, Landroid/hardware/contextaware/creator/IListObjectCreator;->getObjectForSubCollection()Landroid/hardware/contextaware/manager/ContextProvider;

    move-result-object v0

    goto :goto_0

    .line 112
    :cond_1
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->getValueOfList(Ljava/lang/String;)Landroid/hardware/contextaware/creator/IListObjectCreator;

    move-result-object v1

    invoke-interface {v1}, Landroid/hardware/contextaware/creator/IListObjectCreator;->getObject()Landroid/hardware/contextaware/manager/ContextProvider;

    move-result-object v0

    goto :goto_0
.end method

.method protected static final getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;
    .locals 1

    .prologue
    .line 233
    sget-object v0, Landroid/hardware/contextaware/creator/ContextProviderCreator;->sAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;

    return-object v0
.end method

.method protected static final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 194
    sget-object v0, Landroid/hardware/contextaware/creator/ContextProviderCreator;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method protected static final getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/hardware/contextaware/manager/ContextProvider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    sget-object v0, Landroid/hardware/contextaware/creator/ContextProviderCreator;->sContextProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method protected static getLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 213
    sget-object v0, Landroid/hardware/contextaware/creator/ContextProviderCreator;->sLooper:Landroid/os/Looper;

    return-object v0
.end method

.method private static setAPPowerObservable(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;)V
    .locals 0
    .parameter "sAPPowerObservable"

    .prologue
    .line 224
    sput-object p0, Landroid/hardware/contextaware/creator/ContextProviderCreator;->sAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;

    .line 225
    return-void
.end method

.method private static setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "sContext"

    .prologue
    .line 185
    sput-object p0, Landroid/hardware/contextaware/creator/ContextProviderCreator;->sContext:Landroid/content/Context;

    .line 186
    return-void
.end method

.method private static setLooper(Landroid/os/Looper;)V
    .locals 0
    .parameter "sLooper"

    .prologue
    .line 204
    sput-object p0, Landroid/hardware/contextaware/creator/ContextProviderCreator;->sLooper:Landroid/os/Looper;

    .line 205
    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;)Landroid/hardware/contextaware/manager/ContextProvider;
    .locals 1
    .parameter "name"

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->create(Ljava/lang/String;Z)Landroid/hardware/contextaware/manager/ContextProvider;

    move-result-object v0

    return-object v0
.end method

.method public final varargs create(Ljava/lang/String;Z[Ljava/lang/Object;)Landroid/hardware/contextaware/manager/ContextProvider;
    .locals 2
    .parameter "name"
    .parameter "isSubCollection"
    .parameter "property"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->existContextProvider(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 132
    const/4 v0, 0x0

    .line 147
    :goto_0
    return-object v0

    .line 135
    :cond_0
    const/4 v0, 0x0

    .line 137
    .local v0, provider:Landroid/hardware/contextaware/manager/ContextProvider;
    if-eqz p3, :cond_1

    array-length v1, p3

    if-gtz v1, :cond_2

    .line 138
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->create(Ljava/lang/String;Z)Landroid/hardware/contextaware/manager/ContextProvider;

    move-result-object v0

    goto :goto_0

    .line 141
    :cond_2
    if-eqz p2, :cond_3

    .line 142
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->getValueOfList(Ljava/lang/String;)Landroid/hardware/contextaware/creator/IListObjectCreator;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/hardware/contextaware/creator/IListObjectCreator;->getObjectForSubCollection([Ljava/lang/Object;)Landroid/hardware/contextaware/manager/ContextProvider;

    move-result-object v0

    goto :goto_0

    .line 144
    :cond_3
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->getValueOfList(Ljava/lang/String;)Landroid/hardware/contextaware/creator/IListObjectCreator;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/hardware/contextaware/creator/IListObjectCreator;->getObject([Ljava/lang/Object;)Landroid/hardware/contextaware/manager/ContextProvider;

    move-result-object v0

    goto :goto_0
.end method

.method public varargs create(Ljava/lang/String;[Ljava/lang/Object;)Landroid/hardware/contextaware/manager/ContextProvider;
    .locals 1
    .parameter "name"
    .parameter "property"

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->create(Ljava/lang/String;Z[Ljava/lang/Object;)Landroid/hardware/contextaware/manager/ContextProvider;

    move-result-object v0

    return-object v0
.end method

.method public final existContextProvider(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    .line 158
    const/4 v1, 0x1

    .line 161
    .local v1, exist:Z
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->getValueOfList(Ljava/lang/String;)Landroid/hardware/contextaware/creator/IListObjectCreator;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    return v1

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract getValueOfList(Ljava/lang/String;)Landroid/hardware/contextaware/creator/IListObjectCreator;
.end method
