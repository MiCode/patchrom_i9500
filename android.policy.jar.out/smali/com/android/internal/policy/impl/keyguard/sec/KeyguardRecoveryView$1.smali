.class Lcom/android/internal/policy/impl/keyguard/sec/KeyguardRecoveryView$1;
.super Ljava/lang/Object;
.source "KeyguardRecoveryView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/sec/KeyguardRecoveryView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardRecoveryView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardRecoveryView;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardRecoveryView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardRecoveryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardRecoveryView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardRecoveryView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardRecoveryView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardRecoveryView;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardRecoveryView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 142
    return-void
.end method
