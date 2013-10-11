.class Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$1;
.super Ljava/lang/Object;
.source "KeyguardFaceVoiceUnlockView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public displayPrepareMsg()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->displayPrepareMsg()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)V

    .line 218
    return-void
.end method

.method public displayRecognitionMsg(J)V
    .locals 1
    .parameter "millis"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->displayRecognitionMsg(J)V
    invoke-static {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;J)V

    .line 223
    return-void
.end method

.method public displayVerifyFailMsg()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->displayVerifyFailMsg()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)V

    .line 233
    return-void
.end method

.method public displayVerifyFailMsgDelayed(J)V
    .locals 1
    .parameter "timeoutMillis"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->displayVerifyFailMsgDelayed(J)V
    invoke-static {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;J)V

    .line 228
    return-void
.end method

.method public displayVerifySuccessMsg()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->displayVerifySuccessMsg()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)V

    .line 238
    return-void
.end method

.method public hideVoiceLayout()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->hideVoiceLayout()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)V

    .line 243
    return-void
.end method

.method public isErrorShowed()Z
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->isErrorShowed()Z

    move-result v0

    return v0
.end method

.method public updateVolume(I)V
    .locals 1
    .parameter "volume"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->updateVolume(I)V

    .line 248
    return-void
.end method
