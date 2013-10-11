.class Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView$1;
.super Ljava/lang/Object;
.source "KeyguardSmartcardPINView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->doHapticKeyClick()V

    .line 132
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->verifyPasswordAndUnlock()V

    .line 135
    :cond_0
    return-void
.end method
