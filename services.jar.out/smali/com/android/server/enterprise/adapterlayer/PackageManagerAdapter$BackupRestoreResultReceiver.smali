.class Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$BackupRestoreResultReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PackageManagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackupRestoreResultReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;)V
    .locals 0

    .prologue
    .line 799
    iput-object p1, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$BackupRestoreResultReceiver;->this$0:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 799
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$BackupRestoreResultReceiver;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 802
    const-string v0, "PackageManagerAdapter"

    const-string v1, "onReceiveResult "

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    const-string v0, "edm.intent.action.backup.result"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 804
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$BackupRestoreResultReceiver;->this$0:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    iget-object v1, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupLock:Ljava/lang/Object;

    monitor-enter v1

    .line 805
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$BackupRestoreResultReceiver;->this$0:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    const-string v2, "backupResult"

    const/4 v3, -0x2

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupReturnCode:I
    invoke-static {v0, v2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->access$302(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;I)I

    .line 807
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$BackupRestoreResultReceiver;->this$0:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    iget-object v0, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 808
    monitor-exit v1

    .line 816
    :cond_0
    :goto_0
    return-void

    .line 808
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 809
    :cond_1
    const-string v0, "edm.intent.action.restore.result"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$BackupRestoreResultReceiver;->this$0:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    iget-object v1, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mRestoreLock:Ljava/lang/Object;

    monitor-enter v1

    .line 811
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$BackupRestoreResultReceiver;->this$0:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    const-string v2, "restoreResult"

    const/4 v3, -0x2

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mRestoreReturnCode:I
    invoke-static {v0, v2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->access$402(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;I)I

    .line 813
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$BackupRestoreResultReceiver;->this$0:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    iget-object v0, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mRestoreLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 814
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method
