.class Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$1$1;
.super Ljava/lang/Object;
.source "KeyguardUnlockView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$1;->setVoiceRecognitionFailCue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$1;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$1;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    const/4 v1, 0x1

    #setter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsVoiceUnlockFailed:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->access$202(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;Z)Z

    .line 143
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    #calls: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->refreshDefaultHelpText()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)V

    .line 144
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$1;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mDefaultHelpText:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->access$400(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$1;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->access$500(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 147
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mVoiceHelpTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->access$600(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 149
    :cond_0
    return-void
.end method
