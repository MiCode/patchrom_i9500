.class public Lcom/nuance/connect/language/KLManager;
.super Ljava/lang/Object;
.source "KLManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/language/KLManager$IncomingHandler;
    }
.end annotation


# static fields
.field public static final DEVICE_SERVICE:Ljava/lang/String; = "DEVICE"

.field public static final LANGUAGE_SERVICE:Ljava/lang/String; = "LANGUAGE"

.field public static final TAG:Ljava/lang/String; = "LanguageKeyboardSDK"

.field private static final connectivityFilter:Landroid/content/IntentFilter; = null

.field private static final connectivityFilterSpec:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"


# instance fields
.field private applicationId:Ljava/lang/String;

.field private configuration:Lcom/nuance/connect/language/KLConfiguration;

.field private connectStatus:I

.field private connectionCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nuance/connect/language/KLConnectionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private connectivityReceiver:Landroid/content/BroadcastReceiver;

.field protected context:Landroid/content/Context;

.field private coreVersionAlpha:Ljava/lang/String;

.field private coreVersionChinese:Ljava/lang/String;

.field private coreVersionJapanese:Ljava/lang/String;

.field private coreVersionKorean:Ljava/lang/String;

.field private currentState:Lcom/nuance/swype/connect/system/NetworkState;

.field private customerString:Ljava/lang/String;

.field private final handlerRegistry:Lcom/nuance/swype/connect/api/HandlerRegistry;

.field private isConnectAvailable:Z

.field private isConnectStarted:Z

.field private isConnectStopped:Z

.field private mConnectBound:Z

.field private mConnectConnection:Landroid/content/ServiceConnection;

.field private final mHandler:Lcom/nuance/connect/language/KLManager$IncomingHandler;

.field private final mMessenger:Landroid/os/Messenger;

.field protected mSendMessenger:Landroid/os/Messenger;

.field private final messageQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private oemId:Ljava/lang/String;

.field private services:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/language/KLService;",
            ">;"
        }
    .end annotation
.end field

.field private store:Lcom/nuance/swype/connect/store/FileStore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 126
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/connect/language/KLManager;->connectivityFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "applicationId"

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v7, -0x1

    iput v7, p0, Lcom/nuance/connect/language/KLManager;->connectStatus:I

    .line 69
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/nuance/connect/language/KLManager;->isConnectStopped:Z

    .line 72
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v7, p0, Lcom/nuance/connect/language/KLManager;->messageQueue:Ljava/util/concurrent/BlockingQueue;

    .line 77
    new-instance v7, Lcom/nuance/swype/connect/api/HandlerRegistry;

    invoke-direct {v7}, Lcom/nuance/swype/connect/api/HandlerRegistry;-><init>()V

    iput-object v7, p0, Lcom/nuance/connect/language/KLManager;->handlerRegistry:Lcom/nuance/swype/connect/api/HandlerRegistry;

    .line 112
    new-instance v7, Lcom/nuance/connect/language/KLManager$IncomingHandler;

    invoke-direct {v7, p0}, Lcom/nuance/connect/language/KLManager$IncomingHandler;-><init>(Lcom/nuance/connect/language/KLManager;)V

    iput-object v7, p0, Lcom/nuance/connect/language/KLManager;->mHandler:Lcom/nuance/connect/language/KLManager$IncomingHandler;

    .line 113
    new-instance v7, Landroid/os/Messenger;

    iget-object v8, p0, Lcom/nuance/connect/language/KLManager;->mHandler:Lcom/nuance/connect/language/KLManager$IncomingHandler;

    invoke-direct {v7, v8}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/nuance/connect/language/KLManager;->mMessenger:Landroid/os/Messenger;

    .line 120
    new-instance v7, Lcom/nuance/connect/language/KLManager$1;

    invoke-direct {v7, p0}, Lcom/nuance/connect/language/KLManager$1;-><init>(Lcom/nuance/connect/language/KLManager;)V

    iput-object v7, p0, Lcom/nuance/connect/language/KLManager;->connectivityReceiver:Landroid/content/BroadcastReceiver;

    .line 139
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, p0, Lcom/nuance/connect/language/KLManager;->connectionCallbacks:Ljava/util/Set;

    .line 355
    new-instance v7, Lcom/nuance/connect/language/KLManager$2;

    invoke-direct {v7, p0}, Lcom/nuance/connect/language/KLManager$2;-><init>(Lcom/nuance/connect/language/KLManager;)V

    iput-object v7, p0, Lcom/nuance/connect/language/KLManager;->mConnectConnection:Landroid/content/ServiceConnection;

    .line 152
    const-string v7, "LanguageKeyboardSDK"

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/nuance/swype/connect/util/Logger;->configure(Ljava/lang/String;I)V

    .line 154
    iput-object p1, p0, Lcom/nuance/connect/language/KLManager;->context:Landroid/content/Context;

    .line 156
    invoke-direct {p0}, Lcom/nuance/connect/language/KLManager;->isConnectClientClassExist()Z

    move-result v7

    iput-boolean v7, p0, Lcom/nuance/connect/language/KLManager;->isConnectAvailable:Z

    .line 157
    invoke-direct {p0}, Lcom/nuance/connect/language/KLManager;->setConfigConnectStatus()I

    .line 159
    iput-object p2, p0, Lcom/nuance/connect/language/KLManager;->applicationId:Ljava/lang/String;

    .line 160
    const-string v7, "30030"

    iput-object v7, p0, Lcom/nuance/connect/language/KLManager;->oemId:Ljava/lang/String;

    .line 162
    new-instance v7, Lcom/nuance/swype/connect/store/FileStore;

    invoke-direct {v7, p1}, Lcom/nuance/swype/connect/store/FileStore;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/nuance/connect/language/KLManager;->store:Lcom/nuance/swype/connect/store/FileStore;

    .line 163
    new-instance v7, Lcom/nuance/connect/language/KLConfiguration;

    iget-object v8, p0, Lcom/nuance/connect/language/KLManager;->store:Lcom/nuance/swype/connect/store/FileStore;

    invoke-direct {v7, p0, v8}, Lcom/nuance/connect/language/KLConfiguration;-><init>(Lcom/nuance/connect/language/KLManager;Lcom/nuance/swype/connect/store/PersistentDataStore;)V

    iput-object v7, p0, Lcom/nuance/connect/language/KLManager;->configuration:Lcom/nuance/connect/language/KLConfiguration;

    .line 166
    const-string v7, "KL-SDK Version: 1.2.0.14619-PRERELEASE(20130404.100433)"

    invoke-static {v7}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 168
    iget v7, p0, Lcom/nuance/connect/language/KLManager;->connectStatus:I

    if-lez v7, :cond_1

    .line 169
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/nuance/connect/language/KLManager;->services:Ljava/util/Map;

    .line 171
    new-instance v6, Lcom/nuance/connect/language/KLDeviceService;

    invoke-direct {v6, p0}, Lcom/nuance/connect/language/KLDeviceService;-><init>(Lcom/nuance/connect/language/KLManager;)V

    .line 172
    .local v6, service:Lcom/nuance/connect/language/KLService;
    iget-object v7, p0, Lcom/nuance/connect/language/KLManager;->services:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/nuance/connect/language/KLService;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    new-instance v6, Lcom/nuance/connect/language/KLLanguageService;

    .end local v6           #service:Lcom/nuance/connect/language/KLService;
    invoke-direct {v6, p0}, Lcom/nuance/connect/language/KLLanguageService;-><init>(Lcom/nuance/connect/language/KLManager;)V

    .line 175
    .restart local v6       #service:Lcom/nuance/connect/language/KLService;
    iget-object v7, p0, Lcom/nuance/connect/language/KLManager;->services:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/nuance/connect/language/KLService;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v7, p0, Lcom/nuance/connect/language/KLManager;->services:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 178
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/connect/language/KLService;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nuance/connect/language/KLService;

    invoke-virtual {v7}, Lcom/nuance/connect/language/KLService;->getHandlers()[Lcom/nuance/swype/connect/api/ConnectHandler;

    move-result-object v0

    .local v0, arr$:[Lcom/nuance/swype/connect/api/ConnectHandler;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 179
    .local v2, handler:Lcom/nuance/swype/connect/api/ConnectHandler;
    iget-object v7, p0, Lcom/nuance/connect/language/KLManager;->handlerRegistry:Lcom/nuance/swype/connect/api/HandlerRegistry;

    invoke-virtual {v7, v2}, Lcom/nuance/swype/connect/api/HandlerRegistry;->add(Lcom/nuance/swype/connect/api/ConnectHandler;)Lcom/nuance/swype/connect/api/HandlerRegistry;

    .line 178
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 183
    .end local v0           #arr$:[Lcom/nuance/swype/connect/api/ConnectHandler;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/connect/language/KLService;>;"
    .end local v2           #handler:Lcom/nuance/swype/connect/api/ConnectHandler;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #service:Lcom/nuance/connect/language/KLService;
    :cond_1
    return-void
.end method

.method static synthetic access$002(Lcom/nuance/connect/language/KLManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/nuance/connect/language/KLManager;->mConnectBound:Z

    return p1
.end method

.method static synthetic access$100(Lcom/nuance/connect/language/KLManager;)Lcom/nuance/swype/connect/api/HandlerRegistry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/nuance/connect/language/KLManager;->handlerRegistry:Lcom/nuance/swype/connect/api/HandlerRegistry;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/connect/language/KLManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/nuance/connect/language/KLManager;->processQueuedMessages()V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/connect/language/KLManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/nuance/connect/language/KLManager;->isConnectStopped:Z

    return v0
.end method

.method static synthetic access$400(Lcom/nuance/connect/language/KLManager;)Lcom/nuance/connect/language/KLManager$IncomingHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/nuance/connect/language/KLManager;->mHandler:Lcom/nuance/connect/language/KLManager$IncomingHandler;

    return-object v0
.end method

.method private checkPermission(Ljava/lang/String;)Z
    .locals 1
    .parameter "permission"

    .prologue
    .line 420
    iget-object v0, p0, Lcom/nuance/connect/language/KLManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getConnectClass()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 194
    const-string v0, "com.nuance.swype.connect.ConnectClient"

    .line 196
    .local v0, className:Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    return-object v0

    .line 197
    :catch_0
    move-exception v1

    .line 198
    .local v1, ex:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private isConnectClientClassExist()Z
    .locals 2

    .prologue
    .line 222
    :try_start_0
    invoke-direct {p0}, Lcom/nuance/connect/language/KLManager;->getConnectClass()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    const/4 v1, 0x1

    .line 225
    :goto_0
    return v1

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, ex:Ljava/lang/IllegalStateException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private processQueuedMessages()V
    .locals 4

    .prologue
    .line 412
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 413
    .local v0, drained:Ljava/util/List;,"Ljava/util/List<Landroid/os/Message;>;"
    iget-object v3, p0, Lcom/nuance/connect/language/KLManager;->messageQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3, v0}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;)I

    .line 414
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 415
    .local v2, message:Landroid/os/Message;
    invoke-virtual {p0, v2}, Lcom/nuance/connect/language/KLManager;->sendConnectMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 417
    .end local v2           #message:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private setConfigConnectStatus()I
    .locals 2

    .prologue
    .line 696
    iget v0, p0, Lcom/nuance/connect/language/KLManager;->connectStatus:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 697
    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/connect/language/KLManager;->connectStatus:I

    .line 699
    :cond_0
    iget v0, p0, Lcom/nuance/connect/language/KLManager;->connectStatus:I

    return v0
.end method

.method private validApplicationId(Ljava/lang/String;)Z
    .locals 2
    .parameter "applicationId"

    .prologue
    .line 433
    const/4 v0, 0x0

    .line 435
    .local v0, valid:Z
    if-nez p1, :cond_1

    .line 436
    const/4 v0, 0x0

    .line 443
    :cond_0
    :goto_0
    return v0

    .line 437
    :cond_1
    const-string v1, "SAMSUNG"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 438
    const/4 v0, 0x1

    goto :goto_0

    .line 439
    :cond_2
    const-string v1, "SAMSUNG"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getConfiguration()Lcom/nuance/connect/language/KLConfiguration;
    .locals 1

    .prologue
    .line 756
    iget-object v0, p0, Lcom/nuance/connect/language/KLManager;->configuration:Lcom/nuance/connect/language/KLConfiguration;

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/nuance/connect/language/KLManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getCustomerString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/nuance/connect/language/KLManager;->customerString:Ljava/lang/String;

    return-object v0
.end method

.method public getKLVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 732
    const-string v0, "1.2.0.14619-PRERELEASE"

    return-object v0
.end method

.method public getOemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lcom/nuance/connect/language/KLManager;->oemId:Ljava/lang/String;

    return-object v0
.end method

.method public getService(Ljava/lang/String;)Lcom/nuance/connect/language/KLService;
    .locals 2
    .parameter "serviceName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/connect/language/KLException;
        }
    .end annotation

    .prologue
    .line 688
    iget-boolean v0, p0, Lcom/nuance/connect/language/KLManager;->mConnectBound:Z

    if-nez v0, :cond_0

    .line 689
    new-instance v0, Lcom/nuance/connect/language/KLException;

    const/16 v1, 0x69

    invoke-direct {v0, v1}, Lcom/nuance/connect/language/KLException;-><init>(I)V

    throw v0

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/language/KLManager;->services:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/language/KLService;

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 6
    .parameter "handler"
    .parameter "msg"

    .prologue
    .line 266
    iget-object v4, p0, Lcom/nuance/connect/language/KLManager;->handlerRegistry:Lcom/nuance/swype/connect/api/HandlerRegistry;

    invoke-virtual {v4, p1, p2}, Lcom/nuance/swype/connect/api/HandlerRegistry;->tryHandleMessage(Landroid/os/Handler;Landroid/os/Message;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 350
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 269
    :cond_1
    iget v4, p2, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    .line 278
    :sswitch_1
    const-string v4, "LanguageKeyboardSDK"

    const-string v5, "MESSAGE_HOST_CLIENT_START_COMPLETE"

    invoke-static {v4, v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/nuance/connect/language/KLManager;->isConnectStarted:Z

    goto :goto_0

    .line 271
    :sswitch_2
    const-string v4, "LanguageKeyboardSDK"

    const-string v5, "MESSAGE_HOST_GET_HANDLERS"

    invoke-static {v4, v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v4, p0, Lcom/nuance/connect/language/KLManager;->handlerRegistry:Lcom/nuance/swype/connect/api/HandlerRegistry;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/api/HandlerRegistry;->getRegisteredHandlers()Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, handlers:Ljava/lang/String;
    const/16 v4, 0xef

    invoke-virtual {p0, v4, v2}, Lcom/nuance/connect/language/KLManager;->sendConnectMessage(ILjava/lang/Object;)Z

    goto :goto_0

    .line 284
    .end local v2           #handlers:Ljava/lang/String;
    :sswitch_3
    const-string v4, "LanguageKeyboardSDK"

    const-string v5, "MESSAGE_HOST_INVALID_HANDLERS"

    invoke-static {v4, v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "DEFAULT_KEY"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, connectVersion:Ljava/lang/String;
    if-eqz v0, :cond_0

    goto :goto_0

    .line 291
    .end local v0           #connectVersion:Ljava/lang/String;
    :sswitch_4
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 304
    :sswitch_5
    const-string v4, "LanguageKeyboardSDK"

    const-string v5, "MESSAGE_HOST_INVALID_HANDLERS"

    invoke-static {v4, v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 308
    :sswitch_6
    const-string v4, "LanguageKeyboardSDK"

    const-string v5, "MESSAGE_HOST_GET_CORE_VERSIONS"

    invoke-static {v4, v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const/4 v4, 0x0

    const/16 v5, 0x116

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    .line 310
    .local v3, message:Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 311
    .local v1, data:Landroid/os/Bundle;
    const-string v4, "PROP_CORE_ALPHA"

    iget-object v5, p0, Lcom/nuance/connect/language/KLManager;->coreVersionAlpha:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v4, "PROP_CORE_CHINESE"

    iget-object v5, p0, Lcom/nuance/connect/language/KLManager;->coreVersionChinese:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v4, "PROP_CORE_JAPANESE"

    iget-object v5, p0, Lcom/nuance/connect/language/KLManager;->coreVersionJapanese:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v4, "PROP_CORE_KOREAN"

    iget-object v5, p0, Lcom/nuance/connect/language/KLManager;->coreVersionKorean:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-virtual {v3, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 316
    invoke-virtual {p0, v3}, Lcom/nuance/connect/language/KLManager;->sendConnectMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 320
    .end local v1           #data:Landroid/os/Bundle;
    .end local v3           #message:Landroid/os/Message;
    :sswitch_7
    const-string v4, "LanguageKeyboardSDK"

    const-string v5, "MESSAGE_HOST_GET_SDK_VERSION"

    invoke-static {v4, v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const/16 v4, 0x117

    invoke-virtual {p0}, Lcom/nuance/connect/language/KLManager;->getKLVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/nuance/connect/language/KLManager;->sendConnectMessage(ILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 325
    :sswitch_8
    const-string v4, "LanguageKeyboardSDK"

    const-string v5, "MESSAGE_HOST_GET_APPLICATION_ID"

    invoke-static {v4, v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const/16 v4, 0x118

    iget-object v5, p0, Lcom/nuance/connect/language/KLManager;->applicationId:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/nuance/connect/language/KLManager;->sendConnectMessage(ILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 330
    :sswitch_9
    const-string v4, "LanguageKeyboardSDK"

    const-string v5, "MESSAGE_HOST_GET_CUSTOMER_STRING"

    invoke-static {v4, v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const/16 v4, 0x11d

    iget-object v5, p0, Lcom/nuance/connect/language/KLManager;->customerString:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/nuance/connect/language/KLManager;->sendConnectMessage(ILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 335
    :sswitch_a
    const-string v4, "LanguageKeyboardSDK"

    const-string v5, "MESSAGE_HOST_GET_CELLULAR_DATA"

    invoke-static {v4, v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-virtual {p0}, Lcom/nuance/connect/language/KLManager;->sendCellularDataState()V

    .line 337
    invoke-virtual {p0}, Lcom/nuance/connect/language/KLManager;->sendRoamingState()V

    goto/16 :goto_0

    .line 341
    :sswitch_b
    const-string v4, "LanguageKeyboardSDK"

    const-string v5, "MESSAGE_HOST_GET_WIFI_DATA"

    invoke-static {v4, v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0}, Lcom/nuance/connect/language/KLManager;->sendWifiState()V

    goto/16 :goto_0

    .line 269
    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x61 -> :sswitch_1
        0x62 -> :sswitch_3
        0x64 -> :sswitch_4
        0x6a -> :sswitch_0
        0x7a -> :sswitch_a
        0x7b -> :sswitch_2
        0x7c -> :sswitch_5
        0x9a -> :sswitch_6
        0x9d -> :sswitch_7
        0x9e -> :sswitch_8
        0x9f -> :sswitch_b
        0xa1 -> :sswitch_9
    .end sparse-switch
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/nuance/connect/language/KLManager;->isConnectAvailable:Z

    return v0
.end method

.method public isConnectStarted()Z
    .locals 1

    .prologue
    .line 677
    iget-boolean v0, p0, Lcom/nuance/connect/language/KLManager;->isConnectStarted:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/nuance/connect/language/KLManager;->isConnectAvailable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/connect/language/KLManager;->mConnectBound:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onConnectivityChanged()V
    .locals 14

    .prologue
    const/4 v1, 0x1

    .line 760
    iget-object v6, p0, Lcom/nuance/connect/language/KLManager;->context:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/ConnectivityManager;

    .line 762
    .local v9, cm:Landroid/net/ConnectivityManager;
    const/4 v0, 0x0

    .line 765
    .local v0, newState:Lcom/nuance/swype/connect/system/NetworkState;
    invoke-virtual {v9}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v11

    .line 766
    .local v11, info:Landroid/net/NetworkInfo;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 767
    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 768
    .local v3, connectionType:I
    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    .line 769
    .local v4, connectionTypeName:Ljava/lang/String;
    invoke-virtual {v11}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v5

    .line 770
    .local v5, isRoaming:Z
    invoke-virtual {v11}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v2

    .line 772
    .local v2, isFailover:Z
    iget-object v6, p0, Lcom/nuance/connect/language/KLManager;->configuration:Lcom/nuance/connect/language/KLConfiguration;

    invoke-virtual {v6}, Lcom/nuance/connect/language/KLConfiguration;->allowCellular()Z

    move-result v6

    iget-object v7, p0, Lcom/nuance/connect/language/KLManager;->configuration:Lcom/nuance/connect/language/KLConfiguration;

    invoke-virtual {v7}, Lcom/nuance/connect/language/KLConfiguration;->allowRoaming()Z

    move-result v7

    iget-object v13, p0, Lcom/nuance/connect/language/KLManager;->configuration:Lcom/nuance/connect/language/KLConfiguration;

    invoke-virtual {v13}, Lcom/nuance/connect/language/KLConfiguration;->allowWifi()Z

    move-result v13

    invoke-static {v3, v5, v6, v7, v13}, Lcom/nuance/swype/connect/system/NetworkState;->isValidConnection(IZZZZ)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 774
    new-instance v0, Lcom/nuance/swype/connect/system/NetworkState;

    .end local v0           #newState:Lcom/nuance/swype/connect/system/NetworkState;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct/range {v0 .. v7}, Lcom/nuance/swype/connect/system/NetworkState;-><init>(ZZILjava/lang/String;ZJ)V

    .line 779
    .end local v2           #isFailover:Z
    .end local v3           #connectionType:I
    .end local v4           #connectionTypeName:Ljava/lang/String;
    .end local v5           #isRoaming:Z
    .restart local v0       #newState:Lcom/nuance/swype/connect/system/NetworkState;
    :cond_0
    if-nez v0, :cond_1

    .line 780
    new-instance v0, Lcom/nuance/swype/connect/system/NetworkState;

    .end local v0           #newState:Lcom/nuance/swype/connect/system/NetworkState;
    invoke-direct {v0}, Lcom/nuance/swype/connect/system/NetworkState;-><init>()V

    .line 783
    .restart local v0       #newState:Lcom/nuance/swype/connect/system/NetworkState;
    :cond_1
    iget-object v6, p0, Lcom/nuance/connect/language/KLManager;->currentState:Lcom/nuance/swype/connect/system/NetworkState;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/nuance/connect/language/KLManager;->currentState:Lcom/nuance/swype/connect/system/NetworkState;

    invoke-virtual {v6, v0}, Lcom/nuance/swype/connect/system/NetworkState;->isSame(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 784
    :cond_2
    iget-object v6, p0, Lcom/nuance/connect/language/KLManager;->currentState:Lcom/nuance/swype/connect/system/NetworkState;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/nuance/connect/language/KLManager;->currentState:Lcom/nuance/swype/connect/system/NetworkState;

    invoke-virtual {v6}, Lcom/nuance/swype/connect/system/NetworkState;->hasConnectivity()Z

    move-result v6

    invoke-virtual {v0}, Lcom/nuance/swype/connect/system/NetworkState;->hasConnectivity()Z

    move-result v7

    if-eq v6, v7, :cond_4

    :cond_3
    move v12, v1

    .line 786
    .local v12, notify:Z
    :goto_0
    iput-object v0, p0, Lcom/nuance/connect/language/KLManager;->currentState:Lcom/nuance/swype/connect/system/NetworkState;

    .line 787
    if-eqz v12, :cond_6

    .line 788
    iget-object v1, p0, Lcom/nuance/connect/language/KLManager;->connectionCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/nuance/connect/language/KLConnectionCallback;

    .line 789
    .local v8, callback:Lcom/nuance/connect/language/KLConnectionCallback;
    iget-object v1, p0, Lcom/nuance/connect/language/KLManager;->currentState:Lcom/nuance/swype/connect/system/NetworkState;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/system/NetworkState;->hasConnectivity()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 790
    invoke-interface {v8}, Lcom/nuance/connect/language/KLConnectionCallback;->connected()V

    goto :goto_1

    .line 784
    .end local v8           #callback:Lcom/nuance/connect/language/KLConnectionCallback;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v12           #notify:Z
    :cond_4
    const/4 v12, 0x0

    goto :goto_0

    .line 792
    .restart local v8       #callback:Lcom/nuance/connect/language/KLConnectionCallback;
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v12       #notify:Z
    :cond_5
    invoke-interface {v8}, Lcom/nuance/connect/language/KLConnectionCallback;->disconnected()V

    goto :goto_1

    .line 798
    .end local v8           #callback:Lcom/nuance/connect/language/KLConnectionCallback;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v12           #notify:Z
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connectivity.checkAvailableNetworkConnections()\nhasConnectivity: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/nuance/swype/connect/system/NetworkState;->hasConnectivity()Z

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 800
    return-void
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 669
    const/16 v0, 0xee

    invoke-virtual {p0, v0}, Lcom/nuance/connect/language/KLManager;->sendConnectMessage(I)Z

    .line 670
    return-void
.end method

.method public registerConnectionCallback(Lcom/nuance/connect/language/KLConnectionCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 740
    iget-object v0, p0, Lcom/nuance/connect/language/KLManager;->connectionCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 741
    return-void
.end method

.method protected sendCellularDataState()V
    .locals 2

    .prologue
    .line 803
    const/16 v0, 0xed

    iget-object v1, p0, Lcom/nuance/connect/language/KLManager;->configuration:Lcom/nuance/connect/language/KLConfiguration;

    invoke-virtual {v1}, Lcom/nuance/connect/language/KLConfiguration;->allowCellular()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLManager;->sendConnectMessage(ILjava/lang/Object;)Z

    .line 805
    return-void
.end method

.method protected sendConnectMessage(I)Z
    .locals 2
    .parameter "what"

    .prologue
    const/high16 v1, -0x8000

    .line 553
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/nuance/connect/language/KLManager;->sendConnectMessage(ILjava/lang/Object;II)Z

    move-result v0

    return v0
.end method

.method protected sendConnectMessage(ILjava/lang/Object;)Z
    .locals 1
    .parameter "what"
    .parameter "obj"

    .prologue
    const/high16 v0, -0x8000

    .line 564
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/nuance/connect/language/KLManager;->sendConnectMessage(ILjava/lang/Object;II)Z

    move-result v0

    return v0
.end method

.method protected sendConnectMessage(ILjava/lang/Object;II)Z
    .locals 4
    .parameter "what"
    .parameter "obj"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 584
    iget v2, p0, Lcom/nuance/connect/language/KLManager;->connectStatus:I

    if-nez v2, :cond_0

    .line 585
    const/4 v2, 0x0

    .line 622
    .end local p2
    :goto_0
    return v2

    .line 587
    .restart local p2
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 588
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/nuance/connect/language/KLManager;->mMessenger:Landroid/os/Messenger;

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 591
    :try_start_0
    instance-of v2, p2, Ljava/util/HashMap;

    if-eqz v2, :cond_2

    .line 592
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 593
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "DEFAULT_KEY"

    check-cast p2, Ljava/util/HashMap;

    .end local p2
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 594
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    .end local v0           #data:Landroid/os/Bundle;
    :cond_1
    :goto_1
    iput p3, v1, Landroid/os/Message;->arg1:I

    .line 620
    iput p4, v1, Landroid/os/Message;->arg2:I

    .line 622
    invoke-virtual {p0, v1}, Lcom/nuance/connect/language/KLManager;->sendConnectMessage(Landroid/os/Message;)Z

    move-result v2

    goto :goto_0

    .line 595
    .restart local p2
    :cond_2
    :try_start_1
    instance-of v2, p2, Ljava/util/Map;

    if-eqz v2, :cond_3

    .line 596
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 597
    .restart local v0       #data:Landroid/os/Bundle;
    const-string v2, "DEFAULT_KEY"

    check-cast p2, Ljava/io/Serializable;

    .end local p2
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 598
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_1

    .line 614
    .end local v0           #data:Landroid/os/Bundle;
    :catch_0
    move-exception v2

    goto :goto_1

    .line 599
    .restart local p2
    :cond_3
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 600
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 601
    .restart local v0       #data:Landroid/os/Bundle;
    const-string v2, "DEFAULT_KEY"

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_1

    .line 603
    .end local v0           #data:Landroid/os/Bundle;
    .restart local p2
    :cond_4
    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_5

    .line 604
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 605
    .restart local v0       #data:Landroid/os/Bundle;
    const-string v2, "DEFAULT_KEY"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 606
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_1

    .line 607
    .end local v0           #data:Landroid/os/Bundle;
    .restart local p2
    :cond_5
    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_6

    .line 608
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 609
    .restart local v0       #data:Landroid/os/Bundle;
    const-string v2, "DEFAULT_KEY"

    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 610
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_1

    .line 611
    .end local v0           #data:Landroid/os/Bundle;
    .restart local p2
    :cond_6
    instance-of v2, p2, Landroid/os/Bundle;

    if-eqz v2, :cond_1

    .line 612
    check-cast p2, Landroid/os/Bundle;

    .end local p2
    invoke-virtual {v1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected sendConnectMessage(Landroid/os/Message;)Z
    .locals 6
    .parameter "message"

    .prologue
    const/4 v5, 0x0

    .line 632
    const/4 v2, 0x0

    .line 634
    .local v2, returnValue:Z
    iget-boolean v4, p0, Lcom/nuance/connect/language/KLManager;->isConnectAvailable:Z

    if-eqz v4, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v3, v2

    .line 658
    .end local v2           #returnValue:Z
    .local v3, returnValue:I
    :goto_0
    return v3

    .line 638
    .end local v3           #returnValue:I
    .restart local v2       #returnValue:Z
    :cond_1
    iget-boolean v4, p0, Lcom/nuance/connect/language/KLManager;->mConnectBound:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/nuance/connect/language/KLManager;->mSendMessenger:Landroid/os/Messenger;

    if-eqz v4, :cond_2

    .line 640
    :try_start_0
    iget-object v4, p0, Lcom/nuance/connect/language/KLManager;->mMessenger:Landroid/os/Messenger;

    iput-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 641
    iget-object v4, p0, Lcom/nuance/connect/language/KLManager;->mSendMessenger:Landroid/os/Messenger;

    invoke-virtual {v4, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 642
    const/4 v2, 0x1

    .line 654
    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 655
    iget-object v4, p0, Lcom/nuance/connect/language/KLManager;->messageQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    :cond_3
    move v3, v2

    .line 658
    .restart local v3       #returnValue:I
    goto :goto_0

    .line 643
    .end local v3           #returnValue:I
    :catch_0
    move-exception v1

    .line 646
    .local v1, re:Landroid/os/RemoteException;
    iput-boolean v5, p0, Lcom/nuance/connect/language/KLManager;->mConnectBound:Z

    goto :goto_1

    .line 649
    .end local v1           #re:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 650
    .local v0, e:Ljava/lang/Exception;
    iput-boolean v5, p0, Lcom/nuance/connect/language/KLManager;->mConnectBound:Z

    goto :goto_1

    .line 647
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v4

    goto :goto_1
.end method

.method protected sendDownloadIdleTimeout()V
    .locals 2

    .prologue
    .line 818
    const/16 v0, 0x122

    iget-object v1, p0, Lcom/nuance/connect/language/KLManager;->configuration:Lcom/nuance/connect/language/KLConfiguration;

    invoke-virtual {v1}, Lcom/nuance/connect/language/KLConfiguration;->getDownloadIdleTimeout()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLManager;->sendConnectMessage(ILjava/lang/Object;)Z

    .line 820
    return-void
.end method

.method protected sendRefreshFrequency()V
    .locals 3

    .prologue
    .line 823
    iget-object v1, p0, Lcom/nuance/connect/language/KLManager;->configuration:Lcom/nuance/connect/language/KLConfiguration;

    invoke-virtual {v1}, Lcom/nuance/connect/language/KLConfiguration;->getRefreshInterval()I

    move-result v0

    .line 824
    .local v0, interval:I
    if-ltz v0, :cond_0

    .line 825
    const/16 v1, 0x11b

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/nuance/connect/language/KLManager;->sendConnectMessage(ILjava/lang/Object;)Z

    .line 828
    :cond_0
    return-void
.end method

.method protected sendRoamingState()V
    .locals 2

    .prologue
    .line 813
    const/16 v0, 0x11c

    iget-object v1, p0, Lcom/nuance/connect/language/KLManager;->configuration:Lcom/nuance/connect/language/KLConfiguration;

    invoke-virtual {v1}, Lcom/nuance/connect/language/KLConfiguration;->allowRoaming()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLManager;->sendConnectMessage(ILjava/lang/Object;)Z

    .line 815
    return-void
.end method

.method protected sendWifiState()V
    .locals 2

    .prologue
    .line 808
    const/16 v0, 0x11a

    iget-object v1, p0, Lcom/nuance/connect/language/KLManager;->configuration:Lcom/nuance/connect/language/KLConfiguration;

    invoke-virtual {v1}, Lcom/nuance/connect/language/KLConfiguration;->allowWifi()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLManager;->sendConnectMessage(ILjava/lang/Object;)Z

    .line 810
    return-void
.end method

.method public setCoreVersions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "alpha"
    .parameter "chinese"
    .parameter "japanese"
    .parameter "korean"

    .prologue
    .line 721
    iput-object p1, p0, Lcom/nuance/connect/language/KLManager;->coreVersionAlpha:Ljava/lang/String;

    .line 722
    iput-object p2, p0, Lcom/nuance/connect/language/KLManager;->coreVersionChinese:Ljava/lang/String;

    .line 723
    iput-object p3, p0, Lcom/nuance/connect/language/KLManager;->coreVersionJapanese:Ljava/lang/String;

    .line 724
    iput-object p4, p0, Lcom/nuance/connect/language/KLManager;->coreVersionKorean:Ljava/lang/String;

    .line 725
    return-void
.end method

.method public setCustomerString(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 247
    iput-object p1, p0, Lcom/nuance/connect/language/KLManager;->customerString:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public start()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/connect/language/KLException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x6c

    const/4 v10, 0x0

    .line 452
    iput-boolean v10, p0, Lcom/nuance/connect/language/KLManager;->isConnectStopped:Z

    .line 455
    iget-object v7, p0, Lcom/nuance/connect/language/KLManager;->configuration:Lcom/nuance/connect/language/KLConfiguration;

    invoke-virtual {v7}, Lcom/nuance/connect/language/KLConfiguration;->isTOSAccepted()Z

    move-result v7

    if-nez v7, :cond_0

    .line 456
    new-instance v7, Lcom/nuance/connect/language/KLException;

    const/16 v8, 0x68

    invoke-direct {v7, v8}, Lcom/nuance/connect/language/KLException;-><init>(I)V

    throw v7

    .line 458
    :cond_0
    invoke-direct {p0}, Lcom/nuance/connect/language/KLManager;->isConnectClientClassExist()Z

    move-result v7

    if-nez v7, :cond_1

    .line 459
    new-instance v7, Lcom/nuance/connect/language/KLException;

    const/16 v8, 0x65

    invoke-direct {v7, v8}, Lcom/nuance/connect/language/KLException;-><init>(I)V

    throw v7

    .line 462
    :cond_1
    iget-object v7, p0, Lcom/nuance/connect/language/KLManager;->applicationId:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/nuance/connect/language/KLManager;->validApplicationId(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 463
    new-instance v7, Lcom/nuance/connect/language/KLException;

    const/16 v8, 0x6b

    invoke-direct {v7, v8}, Lcom/nuance/connect/language/KLException;-><init>(I)V

    throw v7

    .line 473
    :cond_2
    const-string v7, "30"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    const-string v7, "20130404.100433"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 474
    const-string v7, "Checking time for expiration"

    invoke-static {v7}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 476
    :try_start_0
    const-string v7, "20130404.100433"

    const-string v8, "."

    const-string v9, "T"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 477
    .local v3, rfc2445Format:Ljava/lang/String;
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 478
    .local v2, now:Landroid/text/format/Time;
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 480
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 481
    .local v6, whenLicenseExpires:Landroid/text/format/Time;
    invoke-virtual {v6, v3}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 482
    iget v7, v6, Landroid/text/format/Time;->monthDay:I

    const-string v8, "30"

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v6, Landroid/text/format/Time;->monthDay:I

    .line 483
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/text/format/Time;->normalize(Z)J

    .line 486
    invoke-virtual {v2, v6}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 487
    new-instance v7, Lcom/nuance/connect/language/KLException;

    const/16 v8, 0x6c

    invoke-direct {v7, v8}, Lcom/nuance/connect/language/KLException;-><init>(I)V

    throw v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/util/TimeFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 489
    .end local v2           #now:Landroid/text/format/Time;
    .end local v3           #rfc2445Format:Ljava/lang/String;
    .end local v6           #whenLicenseExpires:Landroid/text/format/Time;
    :catch_0
    move-exception v1

    .line 490
    .local v1, ne:Ljava/lang/NumberFormatException;
    new-instance v7, Lcom/nuance/connect/language/KLException;

    invoke-direct {v7, v11}, Lcom/nuance/connect/language/KLException;-><init>(I)V

    throw v7

    .line 491
    .end local v1           #ne:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v5

    .line 492
    .local v5, te:Landroid/util/TimeFormatException;
    new-instance v7, Lcom/nuance/connect/language/KLException;

    invoke-direct {v7, v11}, Lcom/nuance/connect/language/KLException;-><init>(I)V

    throw v7

    .line 496
    .end local v5           #te:Landroid/util/TimeFormatException;
    :cond_3
    iget-object v7, p0, Lcom/nuance/connect/language/KLManager;->coreVersionAlpha:Ljava/lang/String;

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/nuance/connect/language/KLManager;->coreVersionChinese:Ljava/lang/String;

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/nuance/connect/language/KLManager;->coreVersionJapanese:Ljava/lang/String;

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/nuance/connect/language/KLManager;->coreVersionKorean:Ljava/lang/String;

    if-nez v7, :cond_4

    .line 498
    new-instance v7, Lcom/nuance/connect/language/KLException;

    const/16 v8, 0x6a

    invoke-direct {v7, v8}, Lcom/nuance/connect/language/KLException;-><init>(I)V

    throw v7

    .line 501
    :cond_4
    const-string v7, "android.permission.INTERNET"

    invoke-direct {p0, v7}, Lcom/nuance/connect/language/KLManager;->checkPermission(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "android.permission.ACCESS_NETWORK_STATE"

    invoke-direct {p0, v7}, Lcom/nuance/connect/language/KLManager;->checkPermission(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "android.permission.ACCESS_WIFI_STATE"

    invoke-direct {p0, v7}, Lcom/nuance/connect/language/KLManager;->checkPermission(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 504
    :cond_5
    new-instance v7, Lcom/nuance/connect/language/KLException;

    const/16 v8, 0x64

    invoke-direct {v7, v8}, Lcom/nuance/connect/language/KLException;-><init>(I)V

    throw v7

    .line 509
    :cond_6
    :try_start_1
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    iget-object v8, p0, Lcom/nuance/connect/language/KLManager;->context:Landroid/content/Context;

    const-string v9, "com.nuance.swype.connect.ConnectClient"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 510
    .local v4, service:Landroid/content/Intent;
    iget-object v7, p0, Lcom/nuance/connect/language/KLManager;->context:Landroid/content/Context;

    iget-object v8, p0, Lcom/nuance/connect/language/KLManager;->mConnectConnection:Landroid/content/ServiceConnection;

    const/4 v9, 0x1

    invoke-virtual {v7, v4, v8, v9}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/nuance/connect/language/KLManager;->mConnectBound:Z

    .line 512
    iget-object v7, p0, Lcom/nuance/connect/language/KLManager;->context:Landroid/content/Context;

    iget-object v8, p0, Lcom/nuance/connect/language/KLManager;->connectivityReceiver:Landroid/content/BroadcastReceiver;

    sget-object v9, Lcom/nuance/connect/language/KLManager;->connectivityFilter:Landroid/content/IntentFilter;

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 514
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/nuance/connect/language/KLManager;->isConnectStarted:Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    .line 519
    .end local v4           #service:Landroid/content/Intent;
    :goto_0
    return-void

    .line 515
    :catch_2
    move-exception v0

    .line 516
    .local v0, ex:Ljava/lang/SecurityException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SecurityException ex="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 517
    iput-boolean v10, p0, Lcom/nuance/connect/language/KLManager;->mConnectBound:Z

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 526
    const-string v0, "Stopping KLManager"

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 528
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/language/KLManager;->isConnectStopped:Z

    .line 530
    iget-boolean v0, p0, Lcom/nuance/connect/language/KLManager;->mConnectBound:Z

    if-eqz v0, :cond_0

    .line 533
    const/16 v0, 0xca

    invoke-virtual {p0, v0}, Lcom/nuance/connect/language/KLManager;->sendConnectMessage(I)Z

    .line 534
    iget-object v0, p0, Lcom/nuance/connect/language/KLManager;->mHandler:Lcom/nuance/connect/language/KLManager$IncomingHandler;

    invoke-virtual {v0}, Lcom/nuance/connect/language/KLManager$IncomingHandler;->stop()V

    .line 537
    iget-object v0, p0, Lcom/nuance/connect/language/KLManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/nuance/connect/language/KLManager;->mConnectConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 538
    iput-boolean v2, p0, Lcom/nuance/connect/language/KLManager;->mConnectBound:Z

    .line 539
    iput-boolean v2, p0, Lcom/nuance/connect/language/KLManager;->isConnectStarted:Z

    .line 541
    iget-object v0, p0, Lcom/nuance/connect/language/KLManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/nuance/connect/language/KLManager;->connectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 543
    :cond_0
    return-void
.end method

.method public unregisterConnectionCallback(Lcom/nuance/connect/language/KLConnectionCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 748
    iget-object v0, p0, Lcom/nuance/connect/language/KLManager;->connectionCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 749
    return-void
.end method
