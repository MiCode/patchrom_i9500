.class Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView$3;
.super Ljava/lang/Object;
.source "KeyguardCarrierLockView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 162
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    const-string v2, "tel"

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mPhoneNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 164
    .local v0, phoneIntent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 165
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->access$400(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 166
    return-void
.end method
