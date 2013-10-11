.class Lcom/android/internal/policy/impl/keyguard/KeyguardPINView$3;
.super Ljava/lang/Object;
.source "KeyguardPINView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 98
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    const/16 v2, 0x43

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 101
    .local v0, event:Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 102
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 108
    .end local v0           #event:Landroid/view/KeyEvent;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->doHapticKeyClick()V

    .line 109
    return-void
.end method
