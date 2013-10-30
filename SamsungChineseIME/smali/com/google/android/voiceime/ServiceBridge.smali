.class Lcom/google/android/voiceime/ServiceBridge;
.super Ljava/lang/Object;
.source "ServiceBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voiceime/ServiceBridge$ConnectionResponse;,
        Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ServiceBridge"


# instance fields
.field private DEBUG:Z

.field private final mCallback:Lcom/google/android/voiceime/IntentApiTrigger$Callback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/voiceime/ServiceBridge;-><init>(Lcom/google/android/voiceime/IntentApiTrigger$Callback;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/google/android/voiceime/IntentApiTrigger$Callback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voiceime/ServiceBridge;->DEBUG:Z

    .line 42
    iput-object p1, p0, Lcom/google/android/voiceime/ServiceBridge;->mCallback:Lcom/google/android/voiceime/IntentApiTrigger$Callback;

    .line 43
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/voiceime/ServiceBridge;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/google/android/voiceime/ServiceBridge;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/voiceime/ServiceBridge;)Lcom/google/android/voiceime/IntentApiTrigger$Callback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/voiceime/ServiceBridge;->mCallback:Lcom/google/android/voiceime/IntentApiTrigger$Callback;

    return-object v0
.end method


# virtual methods
.method public notifyResult(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "recognitionResult"

    .prologue
    .line 71
    new-instance v0, Lcom/google/android/voiceime/ServiceBridge$ConnectionResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/voiceime/ServiceBridge$ConnectionResponse;-><init>(Lcom/google/android/voiceime/ServiceBridge;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/voiceime/ServiceBridge$1;)V

    .line 72
    .local v0, conn:Landroid/content/ServiceConnection;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/voiceime/ServiceHelper;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 74
    return-void
.end method

.method public startVoiceRecognition(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "languageCode"

    .prologue
    .line 49
    iget-boolean v3, p0, Lcom/google/android/voiceime/ServiceBridge;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "ServiceBridge"

    const-string v4, "-----------startVoiceRecognition-------------"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    new-instance v0, Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p2, v3}, Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;-><init>(Lcom/google/android/voiceime/ServiceBridge;Ljava/lang/String;Lcom/google/android/voiceime/ServiceBridge$1;)V

    .line 51
    .local v0, conReq:Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;
    new-instance v3, Lcom/google/android/voiceime/ServiceBridge$1;

    invoke-direct {v3, p0}, Lcom/google/android/voiceime/ServiceBridge$1;-><init>(Lcom/google/android/voiceime/ServiceBridge;)V

    #calls: Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;->setServiceCallback(Lcom/google/android/voiceime/ServiceHelper$Callback;)V
    invoke-static {v0, v3}, Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;->access$300(Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;Lcom/google/android/voiceime/ServiceHelper$Callback;)V

    .line 61
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 62
    .local v2, serviceIntent:Landroid/content/Intent;
    const-class v3, Lcom/google/android/voiceime/ServiceHelper;

    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 64
    iget-boolean v3, p0, Lcom/google/android/voiceime/ServiceBridge;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "ServiceBridge"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "conReq ---------------> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {p1, v2, v0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 67
    .local v1, isBindOk:Z
    iget-boolean v3, p0, Lcom/google/android/voiceime/ServiceBridge;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "ServiceBridge"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isBindOk ------------- > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_2
    return-void
.end method
