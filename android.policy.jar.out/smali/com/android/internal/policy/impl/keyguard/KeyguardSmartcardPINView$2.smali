.class Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView$2;
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
    .line 146
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 149
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 151
    .local v0, str:Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    .end local v0           #str:Ljava/lang/CharSequence;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->doHapticKeyClick()V

    .line 157
    return-void
.end method
