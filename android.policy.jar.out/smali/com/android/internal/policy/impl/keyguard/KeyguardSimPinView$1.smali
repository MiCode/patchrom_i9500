.class Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$1;
.super Ljava/lang/Object;
.source "KeyguardSimPinView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->getSimPinRetry()I
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;)I

    move-result v1

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mRemainingCount:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->access$002(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;I)I

    .line 137
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->doHapticKeyClick()V

    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->verifyPasswordAndUnlock()V

    .line 139
    return-void
.end method
