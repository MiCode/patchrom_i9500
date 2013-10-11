.class Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech$TtsListener;
.super Ljava/lang/Object;
.source "UnlockTextToSpeech.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;
.implements Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TtsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech$TtsListener;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech$TtsListener;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;)V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 3
    .parameter "status"

    .prologue
    .line 72
    const-string v0, "UnlockTextToSpeech"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInit...TTS : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->access$102(Z)Z

    .line 75
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech$TtsListener;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->doSpeak()V

    .line 76
    return-void
.end method

.method public onUtteranceCompleted(Ljava/lang/String;)V
    .locals 3
    .parameter "utteranceId"

    .prologue
    .line 80
    const-string v0, "UnlockTextToSpeech"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUtteranceCompleted...TTS : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->destroy()V

    .line 83
    return-void
.end method
