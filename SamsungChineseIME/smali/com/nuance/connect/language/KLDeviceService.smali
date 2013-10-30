.class public final Lcom/nuance/connect/language/KLDeviceService;
.super Lcom/nuance/connect/language/KLService;
.source "KLDeviceService.java"


# instance fields
.field private configurationHandler:Lcom/nuance/swype/connect/api/ConnectHandler;

.field private deviceCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nuance/connect/language/KLDeviceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private deviceHandler:Lcom/nuance/swype/connect/api/ConnectHandler;

.field private deviceId:Ljava/lang/String;

.field private managerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/connect/language/KLManager;",
            ">;"
        }
    .end annotation
.end field

.field private swyperId:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/nuance/connect/language/KLManager;)V
    .locals 1
    .parameter "manager"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/nuance/connect/language/KLService;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/language/KLDeviceService;->deviceCallbacks:Ljava/util/Set;

    .line 31
    new-instance v0, Lcom/nuance/connect/language/KLDeviceService$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/language/KLDeviceService$1;-><init>(Lcom/nuance/connect/language/KLDeviceService;)V

    iput-object v0, p0, Lcom/nuance/connect/language/KLDeviceService;->configurationHandler:Lcom/nuance/swype/connect/api/ConnectHandler;

    .line 94
    new-instance v0, Lcom/nuance/connect/language/KLDeviceService$2;

    invoke-direct {v0, p0}, Lcom/nuance/connect/language/KLDeviceService$2;-><init>(Lcom/nuance/connect/language/KLDeviceService;)V

    iput-object v0, p0, Lcom/nuance/connect/language/KLDeviceService;->deviceHandler:Lcom/nuance/swype/connect/api/ConnectHandler;

    .line 115
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nuance/connect/language/KLDeviceService;->managerRef:Ljava/lang/ref/WeakReference;

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/language/KLDeviceService;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/nuance/connect/language/KLDeviceService;->managerRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$102(Lcom/nuance/connect/language/KLDeviceService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/nuance/connect/language/KLDeviceService;->swyperId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/nuance/connect/language/KLDeviceService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/nuance/connect/language/KLDeviceService;->notifyCallbacksOfSwyperId()V

    return-void
.end method

.method static synthetic access$302(Lcom/nuance/connect/language/KLDeviceService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/nuance/connect/language/KLDeviceService;->deviceId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/nuance/connect/language/KLDeviceService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/nuance/connect/language/KLDeviceService;->notifyCallbacksOfDeviceId()V

    return-void
.end method

.method private notifyCallbacksOfDeviceId()V
    .locals 3

    .prologue
    .line 137
    iget-object v2, p0, Lcom/nuance/connect/language/KLDeviceService;->deviceCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/language/KLDeviceCallback;

    .line 138
    .local v0, callback:Lcom/nuance/connect/language/KLDeviceCallback;
    iget-object v2, p0, Lcom/nuance/connect/language/KLDeviceService;->deviceId:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/nuance/connect/language/KLDeviceCallback;->deviceRegistered(Ljava/lang/String;)V

    goto :goto_0

    .line 140
    .end local v0           #callback:Lcom/nuance/connect/language/KLDeviceCallback;
    :cond_0
    return-void
.end method

.method private notifyCallbacksOfSwyperId()V
    .locals 3

    .prologue
    .line 131
    iget-object v2, p0, Lcom/nuance/connect/language/KLDeviceService;->deviceCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/language/KLDeviceCallback;

    .line 132
    .local v0, callback:Lcom/nuance/connect/language/KLDeviceCallback;
    iget-object v2, p0, Lcom/nuance/connect/language/KLDeviceService;->swyperId:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/nuance/connect/language/KLDeviceCallback;->swyperId(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    .end local v0           #callback:Lcom/nuance/connect/language/KLDeviceCallback;
    :cond_0
    return-void
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/nuance/connect/language/KLDeviceService;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method protected getHandlers()[Lcom/nuance/swype/connect/api/ConnectHandler;
    .locals 3

    .prologue
    .line 119
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nuance/swype/connect/api/ConnectHandler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/connect/language/KLDeviceService;->configurationHandler:Lcom/nuance/swype/connect/api/ConnectHandler;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nuance/connect/language/KLDeviceService;->deviceHandler:Lcom/nuance/swype/connect/api/ConnectHandler;

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    const-string v0, "DEVICE"

    return-object v0
.end method

.method public getSwyperId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/nuance/connect/language/KLDeviceService;->swyperId:Ljava/lang/String;

    return-object v0
.end method

.method public registerCallback(Lcom/nuance/connect/language/KLDeviceCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/nuance/connect/language/KLDeviceService;->deviceCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 169
    return-void
.end method

.method public unregisterCallback(Lcom/nuance/connect/language/KLDeviceCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/nuance/connect/language/KLDeviceService;->deviceCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 181
    return-void
.end method

.method public unregisterCallbacks()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/nuance/connect/language/KLDeviceService;->deviceCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 188
    return-void
.end method
