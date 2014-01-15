.class Lcom/android/settings_ex/homesync/FileOperation$1;
.super Ljava/lang/Object;
.source "FileOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/homesync/FileOperation;-><init>(Landroid/app/Activity;Lcom/android/settings_ex/homesync/FileOperationProgress;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/homesync/FileOperation;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/homesync/FileOperation;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/settings_ex/homesync/FileOperation$1;->this$0:Lcom/android/settings_ex/homesync/FileOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 91
    :try_start_0
    const-string v2, "HomeSyncFileOperation"

    const-string v3, "before doFileOperation"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v2, p0, Lcom/android/settings_ex/homesync/FileOperation$1;->this$0:Lcom/android/settings_ex/homesync/FileOperation;

    #getter for: Lcom/android/settings_ex/homesync/FileOperation;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings_ex/homesync/FileOperation;->access$000(Lcom/android/settings_ex/homesync/FileOperation;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/settings_ex/homesync/FileOperation$1;->this$0:Lcom/android/settings_ex/homesync/FileOperation;

    #getter for: Lcom/android/settings_ex/homesync/FileOperation;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings_ex/homesync/FileOperation;->access$000(Lcom/android/settings_ex/homesync/FileOperation;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/android/settings_ex/homesync/FileOperationService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 94
    const-string v2, "HomeSyncFileOperation"

    const-string v3, "before doFileOperation"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v2, p0, Lcom/android/settings_ex/homesync/FileOperation$1;->this$0:Lcom/android/settings_ex/homesync/FileOperation;

    invoke-virtual {v2}, Lcom/android/settings_ex/homesync/FileOperation;->doFileOperation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    iget-object v2, p0, Lcom/android/settings_ex/homesync/FileOperation$1;->this$0:Lcom/android/settings_ex/homesync/FileOperation;

    #calls: Lcom/android/settings_ex/homesync/FileOperation;->releasePowerWakeLock()V
    invoke-static {v2}, Lcom/android/settings_ex/homesync/FileOperation;->access$100(Lcom/android/settings_ex/homesync/FileOperation;)V

    .line 125
    iget-object v2, p0, Lcom/android/settings_ex/homesync/FileOperation$1;->this$0:Lcom/android/settings_ex/homesync/FileOperation;

    #getter for: Lcom/android/settings_ex/homesync/FileOperation;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings_ex/homesync/FileOperation;->access$000(Lcom/android/settings_ex/homesync/FileOperation;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/settings_ex/homesync/FileOperation$1;->this$0:Lcom/android/settings_ex/homesync/FileOperation;

    #getter for: Lcom/android/settings_ex/homesync/FileOperation;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings_ex/homesync/FileOperation;->access$000(Lcom/android/settings_ex/homesync/FileOperation;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/android/settings_ex/homesync/FileOperationService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 127
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/homesync/FileOperation$1;->this$0:Lcom/android/settings_ex/homesync/FileOperation;

    #getter for: Lcom/android/settings_ex/homesync/FileOperation;->futureTaskHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings_ex/homesync/FileOperation;->access$300(Lcom/android/settings_ex/homesync/FileOperation;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/homesync/FileOperation$1;->this$0:Lcom/android/settings_ex/homesync/FileOperation;

    #getter for: Lcom/android/settings_ex/homesync/FileOperation;->futureTaskRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/settings_ex/homesync/FileOperation;->access$200(Lcom/android/settings_ex/homesync/FileOperation;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    return-void

    .line 96
    :catch_0
    move-exception v1

    .line 97
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    iget-object v2, p0, Lcom/android/settings_ex/homesync/FileOperation$1;->this$0:Lcom/android/settings_ex/homesync/FileOperation;

    iput-object v1, v2, Lcom/android/settings_ex/homesync/FileOperation;->operationException:Ljava/lang/Exception;

    .line 98
    const/4 v0, 0x0

    .line 119
    .local v0, absoluteFilename:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #absoluteFilename:Ljava/lang/StringBuilder;
    const-string v2, "FileOperation.java Exception = ["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .restart local v0       #absoluteFilename:Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    iget-object v2, p0, Lcom/android/settings_ex/homesync/FileOperation$1;->this$0:Lcom/android/settings_ex/homesync/FileOperation;

    #calls: Lcom/android/settings_ex/homesync/FileOperation;->releasePowerWakeLock()V
    invoke-static {v2}, Lcom/android/settings_ex/homesync/FileOperation;->access$100(Lcom/android/settings_ex/homesync/FileOperation;)V

    .line 125
    iget-object v2, p0, Lcom/android/settings_ex/homesync/FileOperation$1;->this$0:Lcom/android/settings_ex/homesync/FileOperation;

    #getter for: Lcom/android/settings_ex/homesync/FileOperation;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings_ex/homesync/FileOperation;->access$000(Lcom/android/settings_ex/homesync/FileOperation;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/settings_ex/homesync/FileOperation$1;->this$0:Lcom/android/settings_ex/homesync/FileOperation;

    #getter for: Lcom/android/settings_ex/homesync/FileOperation;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings_ex/homesync/FileOperation;->access$000(Lcom/android/settings_ex/homesync/FileOperation;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/android/settings_ex/homesync/FileOperationService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0

    .line 124
    .end local v0           #absoluteFilename:Ljava/lang/StringBuilder;
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/settings_ex/homesync/FileOperation$1;->this$0:Lcom/android/settings_ex/homesync/FileOperation;

    #calls: Lcom/android/settings_ex/homesync/FileOperation;->releasePowerWakeLock()V
    invoke-static {v3}, Lcom/android/settings_ex/homesync/FileOperation;->access$100(Lcom/android/settings_ex/homesync/FileOperation;)V

    .line 125
    iget-object v3, p0, Lcom/android/settings_ex/homesync/FileOperation$1;->this$0:Lcom/android/settings_ex/homesync/FileOperation;

    #getter for: Lcom/android/settings_ex/homesync/FileOperation;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings_ex/homesync/FileOperation;->access$000(Lcom/android/settings_ex/homesync/FileOperation;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/settings_ex/homesync/FileOperation$1;->this$0:Lcom/android/settings_ex/homesync/FileOperation;

    #getter for: Lcom/android/settings_ex/homesync/FileOperation;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/settings_ex/homesync/FileOperation;->access$000(Lcom/android/settings_ex/homesync/FileOperation;)Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/android/settings_ex/homesync/FileOperationService;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    throw v2
.end method
