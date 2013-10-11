.class Lcom/android/server/enterprise/email/LDAPAccountPolicy$1;
.super Ljava/lang/Object;
.source "LDAPAccountPolicy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/email/LDAPAccountPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/email/LDAPAccountPolicy;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$1;->this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "className"
    .parameter "binder"

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$1;->this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;

    invoke-static {p2}, Landroid/app/enterprise/ILDAPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/ILDAPInterface;

    move-result-object v1

    #setter for: Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mService:Landroid/app/enterprise/ILDAPInterface;
    invoke-static {v0, v1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->access$002(Lcom/android/server/enterprise/email/LDAPAccountPolicy;Landroid/app/enterprise/ILDAPInterface;)Landroid/app/enterprise/ILDAPInterface;

    .line 62
    const-string v0, "LDAPAccountPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EDM LDAP Service connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$1;->this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;

    #getter for: Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mService:Landroid/app/enterprise/ILDAPInterface;
    invoke-static {v2}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->access$000(Lcom/android/server/enterprise/email/LDAPAccountPolicy;)Landroid/app/enterprise/ILDAPInterface;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$1;->this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mService:Landroid/app/enterprise/ILDAPInterface;
    invoke-static {v0, v1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->access$002(Lcom/android/server/enterprise/email/LDAPAccountPolicy;Landroid/app/enterprise/ILDAPInterface;)Landroid/app/enterprise/ILDAPInterface;

    .line 67
    iget-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$1;->this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mIsBound:Z
    invoke-static {v0, v1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->access$102(Lcom/android/server/enterprise/email/LDAPAccountPolicy;Z)Z

    .line 68
    const-string v0, "LDAPAccountPolicyService"

    const-string v1, "EDM LDAP Service disconnected"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method
