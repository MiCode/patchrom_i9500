.class Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$2;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 182
    const-string v3, "com.samsung.cover.OPEN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 183
    const-string v3, "coverOpen"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 184
    .local v1, isCoverOpen:Z
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    #setter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mClearCoverOpened:Z
    invoke-static {v3, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->access$902(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;Z)Z

    .line 185
    if-eqz v1, :cond_2

    .line 188
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "automatic_unlock"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 190
    .local v0, isAutoUnlock:Z
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->access$1000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsVoiceUnlockFailed:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->access$200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    .line 191
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->access$1000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->onResume()V

    .line 199
    .end local v0           #isAutoUnlock:Z
    .end local v1           #isCoverOpen:Z
    :cond_0
    :goto_1
    return-void

    .restart local v1       #isCoverOpen:Z
    :cond_1
    move v0, v2

    .line 188
    goto :goto_0

    .line 194
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->access$1000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 195
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->access$1000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->onPause()V

    goto :goto_1
.end method
