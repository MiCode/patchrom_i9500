.class final Landroid/app/ContextImpl$27;
.super Landroid/app/ContextImpl$StaticServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 495
    invoke-direct {p0}, Landroid/app/ContextImpl$StaticServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createStaticService()Ljava/lang/Object;
    .locals 9

    .prologue
    .line 497
    const-string v5, "lpp"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 498
    .local v0, b:Landroid/os/IBinder;
    const/4 v4, 0x0

    .line 500
    .local v4, lppManager:Ljava/lang/Object;
    :try_start_0
    const-string v5, "com.samsung.lpp.LPPLoader"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 501
    .local v3, lppLoader:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v5, "getLPPManager"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/os/IBinder;

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 502
    .local v2, getLppManager:Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 506
    .end local v2           #getLppManager:Ljava/lang/reflect/Method;
    .end local v3           #lppLoader:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v4           #lppManager:Ljava/lang/Object;
    :goto_0
    return-object v4

    .line 503
    .restart local v4       #lppManager:Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 504
    .local v1, e:Ljava/lang/Throwable;
    const-string v5, "ContextImpl"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
