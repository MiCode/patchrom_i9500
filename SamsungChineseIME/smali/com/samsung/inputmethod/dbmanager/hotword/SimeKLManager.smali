.class public Lcom/samsung/inputmethod/dbmanager/hotword/SimeKLManager;
.super Ljava/lang/Object;
.source "SimeKLManager.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimeKLManager"

.field private static mInstance:Lcom/samsung/inputmethod/dbmanager/hotword/SimeKLManager;


# instance fields
.field private connectionCallback:Lcom/nuance/connect/language/KLConnectionCallback;

.field private mContext:Landroid/content/Context;

.field private mKLManager:Lcom/nuance/connect/language/KLManager;

.field private mbWorking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeKLManager;->mInstance:Lcom/samsung/inputmethod/dbmanager/hotword/SimeKLManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeKLManager;->mbWorking:Z

    .line 19
    iput-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeKLManager;->mKLManager:Lcom/nuance/connect/language/KLManager;

    .line 20
    iput-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeKLManager;->mContext:Landroid/content/Context;

    .line 125
    new-instance v0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeKLManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/dbmanager/hotword/SimeKLManager$1;-><init>(Lcom/samsung/inputmethod/dbmanager/hotword/SimeKLManager;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeKLManager;->connectionCallback:Lcom/nuance/connect/language/KLConnectionCallback;

    .line 24
    iput-object p1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeKLManager;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/inputmethod/dbmanager/hotword/SimeKLManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 54
    sget-object v0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeKLManager;->mInstance:Lcom/samsung/inputmethod/dbmanager/hotword/SimeKLManager;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeKLManager;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/dbmanager/hotword/SimeKLManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeKLManager;->mInstance:Lcom/samsung/inputmethod/dbmanager/hotword/SimeKLManager;

    .line 57
    :cond_0
    sget-object v0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeKLManager;->mInstance:Lcom/samsung/inputmethod/dbmanager/hotword/SimeKLManager;

    return-object v0
.end method

.method private initKLManager()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 29
    new-instance v1, Lcom/nuance/connect/language/KLManager;

    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeKLManager;->mContext:Landroid/content/Context;

    const-string v3, "SAMSUNG-EXAMPLE"

    invoke-direct {v1, v2, v3}, Lcom/nuance/connect/language/KLManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeKLManager;->mKLManager:Lcom/nuance/connect/language/KLManager;

    .line 31
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeKLManager;->mKLManager:Lcom/nuance/connect/language/KLManager;

    const-string v2, "EXAMPLESTRING"

    invoke-virtual {v1, v2}, Lcom/nuance/connect/language/KLManager;->setCustomerString(Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeKLManager;->mKLManager:Lcom/nuance/connect/language/KLManager;

    invoke-virtual {v1}, Lcom/nuance/connect/language/KLManager;->getConfiguration()Lcom/nuance/connect/language/KLConfiguration;

    move-result-object v0

    .line 35
    .local v0, config:Lcom/nuance/connect/language/KLConfiguration;
    invoke-virtual {v0}, Lcom/nuance/connect/language/KLConfiguration;->isTOSAccepted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    :goto_0
    invoke-virtual {v0, v4}, Lcom/nuance/connect/language/KLConfiguration;->enableCellular(Z)V

    .line 41
    invoke-virtual {v0, v4}, Lcom/nuance/connect/language/KLConfiguration;->enableWiFi(Z)V

    .line 42
    invoke-virtual {v0, v4}, Lcom/nuance/connect/language/KLConfiguration;->enableRoaming(Z)V

    .line 43
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/connect/language/KLConfiguration;->setRefreshInterval(I)V

    .line 45
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeKLManager;->mKLManager:Lcom/nuance/connect/language/KLManager;

    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeKLManager;->connectionCallback:Lcom/nuance/connect/language/KLConnectionCallback;

    invoke-virtual {v1, v2}, Lcom/nuance/connect/language/KLManager;->registerConnectionCallback(Lcom/nuance/connect/language/KLConnectionCallback;)V

    .line 49
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeKLManager;->mKLManager:Lcom/nuance/connect/language/KLManager;

    const-string v2, "9.2"

    const-string v3, "9.2"

    const/4 v4, 0x0

    const-string v5, "9.2"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/nuance/connect/language/KLManager;->setCoreVersions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void

    .line 38
    :cond_0
    invoke-virtual {v0}, Lcom/nuance/connect/language/KLConfiguration;->userHasAcceptedTOS()V

    goto :goto_0
.end method


# virtual methods
.method public checkAvaliableDb()Z
    .locals 2

    .prologue
    .line 116
    const/4 v0, 0x0

    .line 118
    .local v0, bRet:Z
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeKLManager;->mKLManager:Lcom/nuance/connect/language/KLManager;

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeKLManager;->mKLManager:Lcom/nuance/connect/language/KLManager;

    invoke-virtual {v1}, Lcom/nuance/connect/language/KLManager;->refresh()V

    .line 120
    const/4 v0, 0x1

    .line 122
    :cond_0
    return v0
.end method

.method public connectToKLServer()V
    .locals 4

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/samsung/inputmethod/dbmanager/hotword/SimeKLManager;->initKLManager()V

    .line 89
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeKLManager;->mKLManager:Lcom/nuance/connect/language/KLManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeKLManager;->mKLManager:Lcom/nuance/connect/language/KLManager;

    invoke-virtual {v1}, Lcom/nuance/connect/language/KLManager;->isConnectStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeKLManager;->mKLManager:Lcom/nuance/connect/language/KLManager;

    invoke-virtual {v1}, Lcom/nuance/connect/language/KLManager;->start()V

    .line 92
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeKLManager;->mbWorking:Z
    :try_end_0
    .catch Lcom/nuance/connect/language/KLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, e:Lcom/nuance/connect/language/KLException;
    const-string v1, "SimeKLManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to start service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nuance/connect/language/KLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public disConnectFromKLServer()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeKLManager;->mKLManager:Lcom/nuance/connect/language/KLManager;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeKLManager;->mKLManager:Lcom/nuance/connect/language/KLManager;

    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeKLManager;->connectionCallback:Lcom/nuance/connect/language/KLConnectionCallback;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/language/KLManager;->unregisterConnectionCallback(Lcom/nuance/connect/language/KLConnectionCallback;)V

    .line 104
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeKLManager;->mKLManager:Lcom/nuance/connect/language/KLManager;

    invoke-virtual {v0}, Lcom/nuance/connect/language/KLManager;->stop()V

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeKLManager;->mbWorking:Z

    .line 108
    :cond_0
    return-void
.end method

.method public getDeviceService()Lcom/nuance/connect/language/KLDeviceService;
    .locals 5

    .prologue
    .line 75
    const/4 v1, 0x0

    .line 77
    .local v1, deviceService:Lcom/nuance/connect/language/KLDeviceService;
    :try_start_0
    iget-object v3, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeKLManager;->mKLManager:Lcom/nuance/connect/language/KLManager;

    const-string v4, "DEVICE"

    invoke-virtual {v3, v4}, Lcom/nuance/connect/language/KLManager;->getService(Ljava/lang/String;)Lcom/nuance/connect/language/KLService;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/nuance/connect/language/KLDeviceService;

    move-object v1, v0
    :try_end_0
    .catch Lcom/nuance/connect/language/KLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-object v1

    .line 79
    :catch_0
    move-exception v2

    .line 81
    .local v2, e:Lcom/nuance/connect/language/KLException;
    invoke-virtual {v2}, Lcom/nuance/connect/language/KLException;->printStackTrace()V

    goto :goto_0
.end method

.method public getLanguageService()Lcom/nuance/connect/language/KLLanguageService;
    .locals 5

    .prologue
    .line 62
    const/4 v2, 0x0

    .line 64
    .local v2, langService:Lcom/nuance/connect/language/KLLanguageService;
    :try_start_0
    iget-object v3, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeKLManager;->mKLManager:Lcom/nuance/connect/language/KLManager;

    const-string v4, "LANGUAGE"

    invoke-virtual {v3, v4}, Lcom/nuance/connect/language/KLManager;->getService(Ljava/lang/String;)Lcom/nuance/connect/language/KLService;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/nuance/connect/language/KLLanguageService;

    move-object v2, v0
    :try_end_0
    .catch Lcom/nuance/connect/language/KLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-object v2

    .line 66
    :catch_0
    move-exception v1

    .line 68
    .local v1, e:Lcom/nuance/connect/language/KLException;
    invoke-virtual {v1}, Lcom/nuance/connect/language/KLException;->printStackTrace()V

    goto :goto_0
.end method

.method public isKLManagerAvaliable()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeKLManager;->mbWorking:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
