.class public Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;
.super Ljava/lang/Thread;
.source "EnterpriseContainerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/knox/container/EnterpriseContainerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UnInstallThread"
.end annotation


# instance fields
.field mApksToInstall:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

.field mContainerId:I

.field mParentHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/sec/knox/container/EnterpriseContainerService;


# direct methods
.method public constructor <init>(Lcom/sec/knox/container/EnterpriseContainerService;ILandroid/os/Handler;)V
    .locals 2
    .parameter
    .parameter "cid"
    .parameter "handler"

    .prologue
    const/4 v1, 0x0

    .line 2159
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2145
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->mApksToInstall:Ljava/util/List;

    .line 2146
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->mParentHandler:Landroid/os/Handler;

    .line 2147
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->mContainerId:I

    .line 2148
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->mCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    .line 2160
    iput-object p3, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->mParentHandler:Landroid/os/Handler;

    .line 2161
    iput p2, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->mContainerId:I

    .line 2162
    return-void
.end method

.method public constructor <init>(Lcom/sec/knox/container/EnterpriseContainerService;ILandroid/os/Handler;Ljava/util/List;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V
    .locals 2
    .parameter
    .parameter "containerId"
    .parameter "handler"
    .parameter
    .parameter "cb"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Handler;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .local p4, apks:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 2151
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2145
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->mApksToInstall:Ljava/util/List;

    .line 2146
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->mParentHandler:Landroid/os/Handler;

    .line 2147
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->mContainerId:I

    .line 2148
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->mCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    .line 2152
    iput-object p3, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->mParentHandler:Landroid/os/Handler;

    .line 2153
    iput-object p4, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->mApksToInstall:Ljava/util/List;

    .line 2154
    iput p2, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->mContainerId:I

    .line 2155
    iput-object p5, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->mCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    .line 2156
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Constructor of UnInstall thread"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2157
    return-void
.end method

.method private uninstallPackage(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    .line 2202
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->getValidStr(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5900(Lcom/sec/knox/container/EnterpriseContainerService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2203
    if-eqz p1, :cond_0

    .line 2204
    new-instance v1, Lcom/sec/knox/container/EnterpriseContainerService$PackageDeleteObserver;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    iget v3, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->mContainerId:I

    invoke-direct {v1, v2, v3}, Lcom/sec/knox/container/EnterpriseContainerService$PackageDeleteObserver;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    .line 2206
    .local v1, obs:Lcom/sec/knox/container/EnterpriseContainerService$PackageDeleteObserver;
    :try_start_0
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v1, v3}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 2208
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2209
    :goto_0
    :try_start_1
    iget-boolean v2, v1, Lcom/sec/knox/container/EnterpriseContainerService$PackageDeleteObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    .line 2211
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 2212
    :catch_0
    move-exception v0

    .line 2213
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "EnterpriseContainerService"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2216
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 2217
    :catch_1
    move-exception v0

    .line 2218
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "EnterpriseContainerService"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2221
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #obs:Lcom/sec/knox/container/EnterpriseContainerService$PackageDeleteObserver;
    :cond_0
    :goto_1
    return-void

    .line 2216
    .restart local v1       #obs:Lcom/sec/knox/container/EnterpriseContainerService$PackageDeleteObserver;
    :cond_1
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 2166
    :try_start_0
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->acquireLock()V
    invoke-static {v6}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5700(Lcom/sec/knox/container/EnterpriseContainerService;)V

    .line 2167
    const-string v6, "EnterpriseContainerService"

    const-string v7, "In run of UnInstallThread"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2168
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->mApksToInstall:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2169
    .local v0, apkFilePath:Ljava/lang/String;
    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RemoveContainer Apkfile:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2170
    invoke-direct {p0, v0}, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->uninstallPackage(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2197
    .end local v0           #apkFilePath:Ljava/lang/String;
    .end local v4           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->releaseLock()V
    invoke-static {v7}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5800(Lcom/sec/knox/container/EnterpriseContainerService;)V

    throw v6

    .line 2173
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->mCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    if-eqz v6, :cond_2

    .line 2174
    const-string v6, "EnterpriseContainerService"

    const-string v7, "Callback object for All Package Uninstall success"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2175
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2176
    .local v2, bundleContainerStatus:Landroid/os/Bundle;
    const-string v6, "containerid"

    iget v7, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->mContainerId:I

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2178
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->mCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    const/16 v7, 0x3eb

    invoke-interface {v6, v7, v2}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;->updateStatus(ILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2187
    .end local v2           #bundleContainerStatus:Landroid/os/Bundle;
    :goto_1
    :try_start_2
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->mParentHandler:Landroid/os/Handler;

    if-eqz v6, :cond_1

    .line 2188
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2189
    .local v1, bundle:Landroid/os/Bundle;
    const-string v6, "containerid"

    iget v7, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->mContainerId:I

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2190
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->mParentHandler:Landroid/os/Handler;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 2193
    .local v5, msg:Landroid/os/Message;
    const-string v6, "EnterpriseContainerService"

    const-string v7, "Uninstaller Thread msg to Handler"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2194
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->mParentHandler:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2197
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v5           #msg:Landroid/os/Message;
    :cond_1
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->releaseLock()V
    invoke-static {v6}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5800(Lcom/sec/knox/container/EnterpriseContainerService;)V

    .line 2199
    return-void

    .line 2181
    :cond_2
    :try_start_3
    const-string v6, "EnterpriseContainerService"

    const-string v7, "Call Back not found for uninstall package"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 2183
    :catch_0
    move-exception v3

    .line 2184
    .local v3, e:Ljava/lang/Exception;
    :try_start_4
    const-string v6, "EnterpriseContainerService"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method
