.class Lcom/google/android/voiceime/ServiceBridge$1;
.super Ljava/lang/Object;
.source "ServiceBridge.java"

# interfaces
.implements Lcom/google/android/voiceime/ServiceHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voiceime/ServiceBridge;->startVoiceRecognition(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voiceime/ServiceBridge;


# direct methods
.method constructor <init>(Lcom/google/android/voiceime/ServiceBridge;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/android/voiceime/ServiceBridge$1;->this$0:Lcom/google/android/voiceime/ServiceBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .locals 3
    .parameter "recognitionResult"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/voiceime/ServiceBridge$1;->this$0:Lcom/google/android/voiceime/ServiceBridge;

    #getter for: Lcom/google/android/voiceime/ServiceBridge;->DEBUG:Z
    invoke-static {v0}, Lcom/google/android/voiceime/ServiceBridge;->access$100(Lcom/google/android/voiceime/ServiceBridge;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ServiceBridge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startVoiceRecognition, result is -------------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/google/android/voiceime/ServiceBridge$1;->this$0:Lcom/google/android/voiceime/ServiceBridge;

    #getter for: Lcom/google/android/voiceime/ServiceBridge;->mCallback:Lcom/google/android/voiceime/IntentApiTrigger$Callback;
    invoke-static {v0}, Lcom/google/android/voiceime/ServiceBridge;->access$200(Lcom/google/android/voiceime/ServiceBridge;)Lcom/google/android/voiceime/IntentApiTrigger$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/voiceime/IntentApiTrigger$Callback;->onRecognitionResult(Ljava/lang/String;)V

    .line 58
    return-void
.end method
