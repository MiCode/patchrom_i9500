.class Lcom/android/internal/policy/impl/keyguard/sec/KeyguardBackupRestoreManager$1;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardBackupRestoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/sec/KeyguardBackupRestoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardBackupRestoreManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardBackupRestoreManager;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardBackupRestoreManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardBackupRestoreManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, action:Ljava/lang/String;
    const-string v3, "KeyguardBackupRestoreManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive ( action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const-string v3, "android.intent.action.REQUEST_BACKUP_LOCKSCREEN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 38
    const-string v3, "SAVE_PATH"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, basePath:Ljava/lang/String;
    const-string v3, "SOURCE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, source:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardBackupRestoreManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardBackupRestoreManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardBackupRestoreManager;->launchKeyguardBackuporRestore(ZLjava/lang/String;Ljava/lang/String;)V

    .line 46
    .end local v1           #basePath:Ljava/lang/String;
    .end local v2           #source:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    const-string v3, "android.intent.action.REQUEST_RESTORE_LOCKSCREEN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 42
    const-string v3, "SAVE_PATH"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    .restart local v1       #basePath:Ljava/lang/String;
    const-string v3, "SOURCE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    .restart local v2       #source:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardBackupRestoreManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardBackupRestoreManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardBackupRestoreManager;->launchKeyguardBackuporRestore(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
