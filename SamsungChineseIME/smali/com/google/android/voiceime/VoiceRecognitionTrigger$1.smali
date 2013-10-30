.class Lcom/google/android/voiceime/VoiceRecognitionTrigger$1;
.super Landroid/content/BroadcastReceiver;
.source "VoiceRecognitionTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voiceime/VoiceRecognitionTrigger;->register(Lcom/google/android/voiceime/VoiceRecognitionTrigger$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voiceime/VoiceRecognitionTrigger;

.field final synthetic val$listener:Lcom/google/android/voiceime/VoiceRecognitionTrigger$Listener;


# direct methods
.method constructor <init>(Lcom/google/android/voiceime/VoiceRecognitionTrigger;Lcom/google/android/voiceime/VoiceRecognitionTrigger$Listener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger$1;->this$0:Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    iput-object p2, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger$1;->val$listener:Lcom/google/android/voiceime/VoiceRecognitionTrigger$Listener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 144
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger$1;->val$listener:Lcom/google/android/voiceime/VoiceRecognitionTrigger$Listener;

    invoke-interface {v1}, Lcom/google/android/voiceime/VoiceRecognitionTrigger$Listener;->onVoiceImeEnabledStatusChange()V

    .line 148
    :cond_0
    return-void
.end method
