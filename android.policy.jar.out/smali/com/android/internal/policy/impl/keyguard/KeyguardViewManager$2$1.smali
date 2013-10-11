.class Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$2$1;
.super Ljava/lang/Object;
.source "KeyguardViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$2;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$2;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$2$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 128
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "posted runnable by mConfigChangeReceiver"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$2$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$2;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->shouldEnableScreenRotation()Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Z

    move-result v1

    .line 131
    .local v1, rotationEnabled:Z
    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$2$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$2;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mLastOrientation:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 132
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "run() : call maybeCreateKeyguardLocked()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$2$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$2;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$2$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$2;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->shouldEnableScreenRotation()Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->maybeCreateKeyguardLocked(ZZLandroid/os/Bundle;)V
    invoke-static {v2, v3, v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;ZZLandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/view/ViewRootImpl$CalledFromWrongThreadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Landroid/view/ViewRootImpl$CalledFromWrongThreadException;
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "run() : CalledFromWrongThreadException!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$2$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$2;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$200()Ljava/lang/String;

    move-result-object v3

    const-string v4, "   at "

    const/16 v5, 0xa

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->dumpStackTrack(Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v2, v3, v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method
