.class Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$4;
.super Ljava/lang/Object;
.source "EnterpriseSSOPolicy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$4;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .parameter "className"
    .parameter "binder"

    .prologue
    .line 206
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3$Stub;->asInterface(Landroid/os/IBinder;)Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;

    move-result-object v0

    .line 207
    .local v0, centrifyService3:Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;
    const-string v2, "EnterpriseSSOPolicy Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service connected container3: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$4;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    #getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;
    invoke-static {v2}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$400(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    move-result-object v2

    iput-object v0, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;->centrifyInterface:Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;

    .line 209
    new-instance v1, Landroid/content/Intent;

    const-string v2, "sso.enterprise.container.setup.success"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 210
    .local v1, mIntent:Landroid/content/Intent;
    const-string v2, "containerid"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 211
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$4;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    #getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$200(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    monitor-exit p0

    return-void

    .line 206
    .end local v0           #centrifyService3:Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;
    .end local v1           #mIntent:Landroid/content/Intent;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "className"

    .prologue
    .line 215
    const-string v1, "EnterpriseSSOPolicy Service"

    const-string v2, "container3 Service has unexpectedly disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$4;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    #getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;
    invoke-static {v1}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$400(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    move-result-object v1

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;->centrifyInterface:Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;

    .line 217
    new-instance v0, Landroid/content/Intent;

    const-string v1, "sso.enterprise.container.disconnected"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 218
    .local v0, mIntent:Landroid/content/Intent;
    const-string v1, "containerid"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 219
    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$4;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    #getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$200(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 220
    return-void
.end method
