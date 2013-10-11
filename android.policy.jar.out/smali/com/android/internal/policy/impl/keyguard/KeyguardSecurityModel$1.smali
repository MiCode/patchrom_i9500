.class Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$1;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardSecurityModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 91
    monitor-exit v1

    .line 92
    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
