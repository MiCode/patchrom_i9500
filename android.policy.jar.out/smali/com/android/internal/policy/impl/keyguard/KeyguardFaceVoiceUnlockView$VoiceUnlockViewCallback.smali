.class public interface abstract Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;
.super Ljava/lang/Object;
.source "KeyguardFaceVoiceUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VoiceUnlockViewCallback"
.end annotation


# virtual methods
.method public abstract displayPrepareMsg()V
.end method

.method public abstract displayRecognitionMsg(J)V
.end method

.method public abstract displayVerifyFailMsg()V
.end method

.method public abstract displayVerifyFailMsgDelayed(J)V
.end method

.method public abstract displayVerifySuccessMsg()V
.end method

.method public abstract hideVoiceLayout()V
.end method

.method public abstract isErrorShowed()Z
.end method

.method public abstract updateVolume(I)V
.end method
