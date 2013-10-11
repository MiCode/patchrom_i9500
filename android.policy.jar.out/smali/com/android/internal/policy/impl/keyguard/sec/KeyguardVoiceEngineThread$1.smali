.class Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread$1;
.super Landroid/os/Handler;
.source "KeyguardVoiceEngineThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 168
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 272
    const-string v3, "KeyguardVoiceEngineThread"

    const-string v4, "Sent MSG cannot be handled here"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 171
    :sswitch_0
    :try_start_0
    const-string v3, "KeyguardVoiceEngineThread"

    const-string v4, "initialize WakeUpCmdRecognizer"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->init()I

    .line 173
    const-string v3, "KeyguardVoiceEngineThread"

    const-string v4, "initialize WakeUpCmdRecognizer - finished"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "KeyguardVoiceEngineThread"

    const-string v4, "Error while initializing WakeUpCmdRecognizer"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 180
    .end local v0           #e:Ljava/lang/Exception;
    :sswitch_1
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mVoiceVerifyStarted:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->access$100(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mVEPowerManager:Landroid/os/PowerManager;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->access$200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;)Landroid/os/PowerManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 185
    const-string v3, "KeyguardVoiceEngineThread"

    const-string v4, "startVerify WakeUpCmdRecognizer"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    const/4 v4, 0x1

    #setter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mVoiceVerifyStarted:Z
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->access$102(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;Z)Z

    .line 187
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    const/4 v4, 0x1

    #calls: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->updateNotification(Z)V
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->access$400(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;Z)V

    .line 188
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->startVerify(I)I

    .line 189
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCallback:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->access$500(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;)Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;->refreshVoiceUnlockHelpText()V

    .line 190
    const-string v3, "KeyguardVoiceEngineThread"

    const-string v4, "startVerify WakeUpCmdRecognizer - finished"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 193
    :catch_1
    move-exception v0

    .line 194
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "KeyguardVoiceEngineThread"

    const-string v4, "Error while startVerify WakeUpCmdRecognizer"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 199
    .end local v0           #e:Ljava/lang/Exception;
    :sswitch_2
    :try_start_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mVoiceVerifyStarted:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->access$100(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;)Z

    move-result v4

    if-ne v4, v3, :cond_0

    .line 200
    const-string v3, "KeyguardVoiceEngineThread"

    const-string v4, "terminateVerify WakeUpCmdRecognizer"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->stopVerify()I

    .line 202
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    const/4 v4, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mVoiceVerifyStarted:Z
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->access$102(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;Z)Z

    .line 203
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    const/4 v4, 0x0

    #calls: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->updateNotification(Z)V
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->access$400(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;Z)V

    .line 204
    const-string v3, "KeyguardVoiceEngineThread"

    const-string v4, "terminateVerify WakeUpCmdRecognizer finished"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 206
    :catch_2
    move-exception v0

    .line 207
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "KeyguardVoiceEngineThread"

    const-string v4, "Error while terminateVerify WakeUpCmdRecognizer"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 212
    .end local v0           #e:Ljava/lang/Exception;
    :sswitch_3
    :try_start_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 213
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mVoiceVerifyStarted:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->access$100(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 214
    const-string v3, "KeyguardVoiceEngineThread"

    const-string v4, "cleanUp stopVerify WakeUpCmdRecognizer"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->stopVerify()I

    .line 216
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    const/4 v4, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mVoiceVerifyStarted:Z
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->access$102(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;Z)Z

    .line 217
    const-string v3, "KeyguardVoiceEngineThread"

    const-string v4, "cleanUp stopVerify WakeUpCmdRecognizer - finished"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_1
    const-string v3, "KeyguardVoiceEngineThread"

    const-string v4, "cleanUp destroy WakeUpCmdRecognizer"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->destroy()V

    .line 222
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    const/4 v4, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->access$002(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    .line 223
    const-string v3, "KeyguardVoiceEngineThread"

    const-string v4, "cleanUp destroy WakeUpCmdRecognizer - finished"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 225
    :catch_3
    move-exception v0

    .line 226
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "KeyguardVoiceEngineThread"

    const-string v4, "Error while terminating WakeUpCmdRecognizer"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 231
    .end local v0           #e:Ljava/lang/Exception;
    :sswitch_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    #setter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mIsRunning:Z
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->access$602(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;Z)Z

    .line 232
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->removeAllMsgs()V

    .line 233
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    .line 234
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    #setter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mContext:Landroid/content/Context;
    invoke-static {v3, v6}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->access$302(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;Landroid/content/Context;)Landroid/content/Context;

    .line 235
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    #setter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mVEPowerManager:Landroid/os/PowerManager;
    invoke-static {v3, v6}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->access$202(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;Landroid/os/PowerManager;)Landroid/os/PowerManager;

    .line 236
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    #setter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v3, v6}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->access$702(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;Lcom/android/internal/widget/LockPatternUtils;)Lcom/android/internal/widget/LockPatternUtils;

    .line 237
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    #setter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3, v6}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->access$802(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    goto/16 :goto_0

    .line 240
    :sswitch_5
    const/4 v2, 0x0

    .line 241
    .local v2, tmpIntent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->choiceMultipleWakeUpIntent(I)Landroid/content/Intent;

    move-result-object v2

    .line 242
    if-eqz v2, :cond_3

    .line 244
    const/high16 v5, 0x1020

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 246
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v3, :cond_2

    .line 247
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    #calls: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->isSecure()Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->access$900(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;)Z

    move-result v1

    .line 250
    .local v1, isSecureLock:Z
    const-string v5, "isSecure"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 252
    const-string v5, "AUTO_LISTEN"

    if-nez v1, :cond_4

    :goto_1
    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 256
    .end local v1           #isSecureLock:Z
    :cond_2
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 260
    :goto_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 266
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    #calls: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->dismissLockScreen()V
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->access$1000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;)V

    goto/16 :goto_0

    .restart local v1       #isSecureLock:Z
    :cond_4
    move v3, v4

    .line 252
    goto :goto_1

    .line 257
    .end local v1           #isSecureLock:Z
    :catch_4
    move-exception v0

    .line 258
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "KeyguardVoiceEngineThread"

    const-string v4, "dismissKeyguard remoteException"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 269
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v2           #tmpIntent:Landroid/content/Intent;
    :sswitch_6
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->setVoiceRecognitionFailCue()V

    goto/16 :goto_0

    .line 168
    :sswitch_data_0
    .sparse-switch
        0x6e -> :sswitch_0
        0x78 -> :sswitch_1
        0x82 -> :sswitch_2
        0x8c -> :sswitch_3
        0x96 -> :sswitch_4
        0xa0 -> :sswitch_5
        0xaa -> :sswitch_6
    .end sparse-switch
.end method
