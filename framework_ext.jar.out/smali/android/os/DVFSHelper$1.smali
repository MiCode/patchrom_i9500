.class Landroid/os/DVFSHelper$1;
.super Ljava/lang/Object;
.source "DVFSHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/DVFSHelper;->onAppLaunchEvent(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 0

    .prologue
    .line 727
    iput-object p1, p0, Landroid/os/DVFSHelper$1;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 729
    iget-object v1, p0, Landroid/os/DVFSHelper$1;->this$0:Landroid/os/DVFSHelper;

    const/4 v2, 0x1

    #calls: Landroid/os/DVFSHelper;->sendProxyBenchMarkStatusToSSRM(Z)V
    invoke-static {v1, v2}, Landroid/os/DVFSHelper;->access$000(Landroid/os/DVFSHelper;Z)V

    .line 731
    const-wide/16 v1, 0x1388

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 735
    iget-object v1, p0, Landroid/os/DVFSHelper$1;->this$0:Landroid/os/DVFSHelper;

    #calls: Landroid/os/DVFSHelper;->sendProxyBenchMarkStatusToSSRM(Z)V
    invoke-static {v1, v4}, Landroid/os/DVFSHelper;->access$000(Landroid/os/DVFSHelper;Z)V

    .line 737
    :goto_0
    return-void

    .line 732
    :catch_0
    move-exception v0

    .line 733
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_1
    const-string v1, "DVFSHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAppLaunchEvent:: InterruptedException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 735
    iget-object v1, p0, Landroid/os/DVFSHelper$1;->this$0:Landroid/os/DVFSHelper;

    #calls: Landroid/os/DVFSHelper;->sendProxyBenchMarkStatusToSSRM(Z)V
    invoke-static {v1, v4}, Landroid/os/DVFSHelper;->access$000(Landroid/os/DVFSHelper;Z)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/os/DVFSHelper$1;->this$0:Landroid/os/DVFSHelper;

    #calls: Landroid/os/DVFSHelper;->sendProxyBenchMarkStatusToSSRM(Z)V
    invoke-static {v2, v4}, Landroid/os/DVFSHelper;->access$000(Landroid/os/DVFSHelper;Z)V

    throw v1
.end method
