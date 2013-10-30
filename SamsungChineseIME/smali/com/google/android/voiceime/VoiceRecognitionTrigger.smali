.class public Lcom/google/android/voiceime/VoiceRecognitionTrigger;
.super Ljava/lang/Object;
.source "VoiceRecognitionTrigger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voiceime/VoiceRecognitionTrigger$Listener;
    }
.end annotation


# instance fields
.field private DEBUG:Z

.field private TAG:Ljava/lang/String;

.field private mImeTrigger:Lcom/google/android/voiceime/ImeTrigger;

.field private final mInputMethodService:Landroid/inputmethodservice/InputMethodService;

.field private mIntentApiTrigger:Lcom/google/android/voiceime/IntentApiTrigger;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTrigger:Lcom/google/android/voiceime/Trigger;


# direct methods
.method public constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .locals 1
    .parameter "inputMethodService"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "VoiceRecognitionTrigger"

    iput-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->TAG:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->DEBUG:Z

    .line 47
    iput-object p1, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    .line 48
    invoke-direct {p0}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->getTrigger()Lcom/google/android/voiceime/Trigger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mTrigger:Lcom/google/android/voiceime/Trigger;

    .line 49
    return-void
.end method

.method private getImeTrigger()Lcom/google/android/voiceime/Trigger;
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mImeTrigger:Lcom/google/android/voiceime/ImeTrigger;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/google/android/voiceime/ImeTrigger;

    iget-object v1, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-direct {v0, v1}, Lcom/google/android/voiceime/ImeTrigger;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mImeTrigger:Lcom/google/android/voiceime/ImeTrigger;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mImeTrigger:Lcom/google/android/voiceime/ImeTrigger;

    return-object v0
.end method

.method private getIntentTrigger()Lcom/google/android/voiceime/Trigger;
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mIntentApiTrigger:Lcom/google/android/voiceime/IntentApiTrigger;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/google/android/voiceime/IntentApiTrigger;

    iget-object v1, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-direct {v0, v1}, Lcom/google/android/voiceime/IntentApiTrigger;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mIntentApiTrigger:Lcom/google/android/voiceime/IntentApiTrigger;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mIntentApiTrigger:Lcom/google/android/voiceime/IntentApiTrigger;

    return-object v0
.end method

.method private getTrigger()Lcom/google/android/voiceime/Trigger;
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Lcom/google/android/voiceime/ImeTrigger;->isInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    iget-boolean v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->TAG:Ljava/lang/String;

    const-string v1, "return IME trigger"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    invoke-direct {p0}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->getImeTrigger()Lcom/google/android/voiceime/Trigger;

    move-result-object v0

    .line 60
    :goto_0
    return-object v0

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Lcom/google/android/voiceime/IntentApiTrigger;->isInstalled(Landroid/inputmethodservice/InputMethodService;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 56
    iget-boolean v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->DEBUG:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->TAG:Ljava/lang/String;

    const-string v1, "return Intent API trigger"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_2
    invoke-direct {p0}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->getIntentTrigger()Lcom/google/android/voiceime/Trigger;

    move-result-object v0

    goto :goto_0

    .line 59
    :cond_3
    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->TAG:Ljava/lang/String;

    const-string v1, "no triger, return null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNetworkAvailable()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 122
    :try_start_0
    iget-object v4, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 125
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 126
    .local v2, info:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 130
    .end local v0           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v2           #info:Landroid/net/NetworkInfo;
    :goto_0
    return v3

    .line 126
    .restart local v0       #connectivityManager:Landroid/net/ConnectivityManager;
    .restart local v2       #info:Landroid/net/NetworkInfo;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 127
    .end local v0           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v2           #info:Landroid/net/NetworkInfo;
    :catch_0
    move-exception v1

    .line 130
    .local v1, e:Ljava/lang/SecurityException;
    goto :goto_0
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->isNetworkAvailable()Z

    move-result v0

    return v0
.end method

.method public isInstalled()Z
    .locals 3

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTrigger --------> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mTrigger:Lcom/google/android/voiceime/Trigger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mTrigger:Lcom/google/android/voiceime/Trigger;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStartInputView()V
    .locals 2

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->TAG:Ljava/lang/String;

    const-string v1, "--------onStartInputView---------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mTrigger:Lcom/google/android/voiceime/Trigger;

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mTrigger:Lcom/google/android/voiceime/Trigger;

    invoke-interface {v0}, Lcom/google/android/voiceime/Trigger;->onStartInputView()V

    .line 117
    :cond_1
    invoke-direct {p0}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->getTrigger()Lcom/google/android/voiceime/Trigger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mTrigger:Lcom/google/android/voiceime/Trigger;

    .line 118
    return-void
.end method

.method public register(Lcom/google/android/voiceime/VoiceRecognitionTrigger$Listener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 141
    new-instance v1, Lcom/google/android/voiceime/VoiceRecognitionTrigger$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/voiceime/VoiceRecognitionTrigger$1;-><init>(Lcom/google/android/voiceime/VoiceRecognitionTrigger;Lcom/google/android/voiceime/VoiceRecognitionTrigger$Listener;)V

    iput-object v1, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 150
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 151
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    iget-object v2, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/inputmethodservice/InputMethodService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 153
    return-void
.end method

.method public startVoiceRecognition()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->startVoiceRecognition(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public startVoiceRecognition(Ljava/lang/String;)V
    .locals 1
    .parameter "language"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mTrigger:Lcom/google/android/voiceime/Trigger;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mTrigger:Lcom/google/android/voiceime/Trigger;

    invoke-interface {v0, p1}, Lcom/google/android/voiceime/Trigger;->startVoiceRecognition(Ljava/lang/String;)V

    .line 108
    :cond_0
    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    iget-object v1, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/InputMethodService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 163
    :cond_0
    return-void
.end method
