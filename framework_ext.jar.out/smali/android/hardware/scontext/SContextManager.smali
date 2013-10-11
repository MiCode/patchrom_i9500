.class public Landroid/hardware/scontext/SContextManager;
.super Ljava/lang/Object;
.source "SContextManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    }
.end annotation


# static fields
.field private static final NONE_SERVICE:I = 0x0

.field private static final SCONTEXT_SERVICE_NUM:I = 0xf

.field private static final TAG:Ljava/lang/String; = "SContextManager"


# instance fields
.field private final mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field mMainLooper:Landroid/os/Looper;

.field private mSContextService:Landroid/hardware/scontext/ISContextService;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .parameter "mainLooper"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 62
    const-string v0, "scontext"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/scontext/ISContextService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/scontext/ISContextService;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    .line 64
    iput-object p1, p0, Landroid/hardware/scontext/SContextManager;->mMainLooper:Landroid/os/Looper;

    .line 65
    return-void
.end method

.method private getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    .locals 4
    .parameter "listener"

    .prologue
    .line 302
    if-eqz p1, :cond_0

    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 303
    :cond_0
    const/4 v2, 0x0

    .line 316
    :cond_1
    :goto_0
    return-object v2

    .line 306
    :cond_2
    const/4 v2, 0x0

    .line 308
    .local v2, scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;>;"
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 309
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    .line 310
    .local v0, delegate:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    invoke-virtual {v0}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->getListener()Landroid/hardware/scontext/SContextListener;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 311
    move-object v2, v0

    .line 312
    goto :goto_0
.end method

.method private registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContext;)Z
    .locals 6
    .parameter "listener"
    .parameter "scontext"

    .prologue
    const/4 v3, 0x0

    .line 210
    invoke-virtual {p2}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v2

    .line 211
    .local v2, service:I
    if-eqz p1, :cond_0

    if-lez v2, :cond_0

    const/16 v4, 0xf

    if-le v2, v4, :cond_1

    .line 233
    :cond_0
    :goto_0
    return v3

    .line 215
    :cond_1
    const/16 v4, 0x8

    if-ne v2, v4, :cond_2

    .line 216
    const-string v4, "SContextManager"

    const-string v5, "Environment is not supported."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 220
    :cond_2
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v1

    .line 222
    .local v1, scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    if-nez v1, :cond_3

    .line 223
    new-instance v1, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    .end local v1           #scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v3}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;-><init>(Landroid/hardware/scontext/SContextManager;Landroid/hardware/scontext/SContextListener;Landroid/os/Handler;)V

    .line 224
    .restart local v1       #scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_3
    :try_start_0
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v3, v1, p2}, Landroid/hardware/scontext/ISContextService;->registerCallback(Landroid/os/IBinder;Landroid/hardware/scontext/SContext;)V

    .line 229
    const-string v3, "SContextManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  .registerListener : listener = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", service="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "SContextManager"

    const-string v4, "RemoteException in registerListener: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public initializeSContextService(I)V
    .locals 3
    .parameter "service"

    .prologue
    .line 284
    if-lez p1, :cond_0

    const/16 v1, 0xf

    if-le p1, v1, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v1, p1}, Landroid/hardware/scontext/ISContextService;->initializeSContextService(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SContextManager"

    const-string v2, "RemoteException in initializeSContextService: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;I)Z
    .locals 3
    .parameter "listener"
    .parameter "service"

    .prologue
    .line 76
    new-instance v1, Landroid/hardware/scontext/SContext;

    invoke-direct {v1}, Landroid/hardware/scontext/SContext;-><init>()V

    .line 77
    .local v1, scontext:Landroid/hardware/scontext/SContext;
    invoke-virtual {v1, p2}, Landroid/hardware/scontext/SContext;->setType(I)V

    .line 78
    invoke-direct {p0, p1, v1}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContext;)Z

    move-result v0

    .line 80
    .local v0, res:Z
    if-eqz v0, :cond_0

    .line 81
    const/4 v2, 0x1

    .line 83
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;II)Z
    .locals 3
    .parameter "listener"
    .parameter "service"
    .parameter "arg"

    .prologue
    .line 99
    new-instance v1, Landroid/hardware/scontext/SContext;

    invoke-direct {v1}, Landroid/hardware/scontext/SContext;-><init>()V

    .line 100
    .local v1, scontext:Landroid/hardware/scontext/SContext;
    invoke-virtual {v1, p2}, Landroid/hardware/scontext/SContext;->setType(I)V

    .line 101
    const/4 v2, 0x3

    if-ne p2, v2, :cond_1

    .line 102
    invoke-virtual {v1, p3}, Landroid/hardware/scontext/SContext;->setStepCount(I)V

    .line 106
    :cond_0
    :goto_0
    invoke-direct {p0, p1, v1}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContext;)Z

    move-result v0

    .line 108
    .local v0, res:Z
    if-eqz v0, :cond_2

    .line 109
    const/4 v2, 0x1

    .line 111
    :goto_1
    return v2

    .line 103
    .end local v0           #res:Z
    :cond_1
    const/4 v2, 0x6

    if-ne p2, v2, :cond_0

    .line 104
    invoke-virtual {v1, p3}, Landroid/hardware/scontext/SContext;->setDeviceType(I)V

    goto :goto_0

    .line 111
    .restart local v0       #res:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIDD)Z
    .locals 7
    .parameter "listener"
    .parameter "service"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 156
    new-instance v0, Landroid/hardware/scontext/SContext;

    invoke-direct {v0}, Landroid/hardware/scontext/SContext;-><init>()V

    .line 157
    .local v0, scontext:Landroid/hardware/scontext/SContext;
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContext;->setType(I)V

    .line 159
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    move v1, p3

    move-wide v2, p4

    move-wide v4, p6

    .line 160
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/scontext/SContext;->setUserInfo(IDD)V

    .line 163
    :cond_0
    invoke-direct {p0, p1, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContext;)Z

    move-result v6

    .line 165
    .local v6, res:Z
    if-eqz v6, :cond_1

    .line 166
    const/4 v1, 0x1

    .line 168
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;III)Z
    .locals 3
    .parameter "listener"
    .parameter "service"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 126
    new-instance v1, Landroid/hardware/scontext/SContext;

    invoke-direct {v1}, Landroid/hardware/scontext/SContext;-><init>()V

    .line 127
    .local v1, scontext:Landroid/hardware/scontext/SContext;
    invoke-virtual {v1, p2}, Landroid/hardware/scontext/SContext;->setType(I)V

    .line 129
    const/16 v2, 0x8

    if-ne p2, v2, :cond_1

    .line 130
    invoke-virtual {v1, p3, p4}, Landroid/hardware/scontext/SContext;->setEnvironmentInfo(II)V

    .line 135
    :cond_0
    :goto_0
    invoke-direct {p0, p1, v1}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContext;)Z

    move-result v0

    .line 137
    .local v0, res:Z
    if-eqz v0, :cond_2

    .line 138
    const/4 v2, 0x1

    .line 140
    :goto_1
    return v2

    .line 131
    .end local v0           #res:Z
    :cond_1
    const/16 v2, 0xc

    if-ne p2, v2, :cond_0

    .line 132
    invoke-virtual {v1, p3, p4}, Landroid/hardware/scontext/SContext;->setShakeInfo(II)V

    goto :goto_0

    .line 140
    .restart local v0       #res:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIIDI)Z
    .locals 7
    .parameter "listener"
    .parameter "service"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"

    .prologue
    .line 185
    new-instance v0, Landroid/hardware/scontext/SContext;

    invoke-direct {v0}, Landroid/hardware/scontext/SContext;-><init>()V

    .line 186
    .local v0, scontext:Landroid/hardware/scontext/SContext;
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContext;->setType(I)V

    .line 188
    const/16 v1, 0x9

    if-ne p2, v1, :cond_0

    move v1, p3

    move v2, p4

    move-wide v3, p5

    move v5, p7

    .line 189
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/scontext/SContext;->setParametersForMFP(IIDI)V

    .line 192
    :cond_0
    invoke-direct {p0, p1, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContext;)Z

    move-result v6

    .line 194
    .local v6, res:Z
    if-eqz v6, :cond_1

    .line 195
    const/4 v1, 0x1

    .line 197
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unregisterListener(Landroid/hardware/scontext/SContextListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 242
    if-nez p1, :cond_1

    .line 249
    :cond_0
    return-void

    .line 246
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    .line 247
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    .line 246
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public unregisterListener(Landroid/hardware/scontext/SContextListener;I)V
    .locals 5
    .parameter "listener"
    .parameter "service"

    .prologue
    .line 258
    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    const/16 v2, 0xf

    if-le p2, v2, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v1

    .line 264
    .local v1, scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    if-eqz v1, :cond_0

    .line 269
    :try_start_0
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v2, v1, p2}, Landroid/hardware/scontext/ISContextService;->unregisterCallback(Landroid/os/IBinder;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 270
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 271
    const-string v2, "SContextManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  .unregisterListener : listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "SContextManager"

    const-string v3, "RemoteException in unregisterListener: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
