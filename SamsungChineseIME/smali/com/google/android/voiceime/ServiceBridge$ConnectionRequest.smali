.class Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;
.super Ljava/lang/Object;
.source "ServiceBridge.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voiceime/ServiceBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionRequest"
.end annotation


# instance fields
.field private final mLanguageCode:Ljava/lang/String;

.field private mServiceCallback:Lcom/google/android/voiceime/ServiceHelper$Callback;

.field final synthetic this$0:Lcom/google/android/voiceime/ServiceBridge;


# direct methods
.method private constructor <init>(Lcom/google/android/voiceime/ServiceBridge;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "languageCode"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;->this$0:Lcom/google/android/voiceime/ServiceBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p2, p0, Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;->mLanguageCode:Ljava/lang/String;

    .line 87
    #getter for: Lcom/google/android/voiceime/ServiceBridge;->DEBUG:Z
    invoke-static {p1}, Lcom/google/android/voiceime/ServiceBridge;->access$100(Lcom/google/android/voiceime/ServiceBridge;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ServiceBridge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectionRequest : languageCode -----------> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/voiceime/ServiceBridge;Ljava/lang/String;Lcom/google/android/voiceime/ServiceBridge$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;-><init>(Lcom/google/android/voiceime/ServiceBridge;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;Lcom/google/android/voiceime/ServiceHelper$Callback;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;->setServiceCallback(Lcom/google/android/voiceime/ServiceHelper$Callback;)V

    return-void
.end method

.method private setServiceCallback(Lcom/google/android/voiceime/ServiceHelper$Callback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;->mServiceCallback:Lcom/google/android/voiceime/ServiceHelper$Callback;

    .line 92
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "className"
    .parameter "service"

    .prologue
    .line 96
    check-cast p2, Lcom/google/android/voiceime/ServiceHelper$ServiceHelperBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/google/android/voiceime/ServiceHelper$ServiceHelperBinder;->getService()Lcom/google/android/voiceime/ServiceHelper;

    move-result-object v0

    .line 98
    .local v0, serviceHelper:Lcom/google/android/voiceime/ServiceHelper;
    iget-object v1, p0, Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;->mLanguageCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;->mServiceCallback:Lcom/google/android/voiceime/ServiceHelper$Callback;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/voiceime/ServiceHelper;->startRecognition(Ljava/lang/String;Lcom/google/android/voiceime/ServiceHelper$Callback;)V

    .line 99
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "className"

    .prologue
    .line 104
    return-void
.end method
