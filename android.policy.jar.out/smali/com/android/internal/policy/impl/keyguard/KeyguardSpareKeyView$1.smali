.class Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView$1;
.super Ljava/lang/Object;
.source "KeyguardSpareKeyView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 118
    return-void
.end method
