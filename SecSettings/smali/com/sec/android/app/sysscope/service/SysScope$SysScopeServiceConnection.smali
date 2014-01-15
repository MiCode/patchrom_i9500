.class final Lcom/sec/android/app/sysscope/service/SysScope$SysScopeServiceConnection;
.super Ljava/lang/Object;
.source "SysScope.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sysscope/service/SysScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SysScopeServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sysscope/service/SysScope;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sysscope/service/SysScope;)V
    .locals 0

    .prologue
    .line 683
    iput-object p1, p0, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeServiceConnection;->this$0:Lcom/sec/android/app/sysscope/service/SysScope;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/sysscope/service/SysScope;Lcom/sec/android/app/sysscope/service/SysScope$SysScopeServiceConnection;)V
    .locals 0

    .prologue
    .line 683
    invoke-direct {p0, p1}, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeServiceConnection;-><init>(Lcom/sec/android/app/sysscope/service/SysScope;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "boundService"

    .prologue
    .line 686
    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeServiceConnection;->this$0:Lcom/sec/android/app/sysscope/service/SysScope;

    invoke-static {p2}, Lcom/sec/android/app/sysscope/service/ISysScopeService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/sysscope/service/ISysScopeService;

    move-result-object v2

    #setter for: Lcom/sec/android/app/sysscope/service/SysScope;->mService:Lcom/sec/android/app/sysscope/service/ISysScopeService;
    invoke-static {v1, v2}, Lcom/sec/android/app/sysscope/service/SysScope;->access$0(Lcom/sec/android/app/sysscope/service/SysScope;Lcom/sec/android/app/sysscope/service/ISysScopeService;)V

    .line 687
    const-string v1, "SysScope"

    const-string v2, "onSErviceConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeServiceConnection;->this$0:Lcom/sec/android/app/sysscope/service/SysScope;

    #calls: Lcom/sec/android/app/sysscope/service/SysScope;->verifyServiceIntegrity()Z
    invoke-static {v1}, Lcom/sec/android/app/sysscope/service/SysScope;->access$1(Lcom/sec/android/app/sysscope/service/SysScope;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 699
    :cond_0
    :goto_0
    return-void

    .line 693
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeServiceConnection;->this$0:Lcom/sec/android/app/sysscope/service/SysScope;

    #getter for: Lcom/sec/android/app/sysscope/service/SysScope;->mService:Lcom/sec/android/app/sysscope/service/ISysScopeService;
    invoke-static {v1}, Lcom/sec/android/app/sysscope/service/SysScope;->access$2(Lcom/sec/android/app/sysscope/service/SysScope;)Lcom/sec/android/app/sysscope/service/ISysScopeService;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeServiceConnection;->this$0:Lcom/sec/android/app/sysscope/service/SysScope;

    #getter for: Lcom/sec/android/app/sysscope/service/SysScope;->mRemoteListener:Lcom/sec/android/app/sysscope/service/ISysScopeListener;
    invoke-static {v2}, Lcom/sec/android/app/sysscope/service/SysScope;->access$3(Lcom/sec/android/app/sysscope/service/SysScope;)Lcom/sec/android/app/sysscope/service/ISysScopeListener;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/sysscope/service/ISysScopeService;->registerListener(Lcom/sec/android/app/sysscope/service/ISysScopeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 697
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeServiceConnection;->this$0:Lcom/sec/android/app/sysscope/service/SysScope;

    #getter for: Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;
    invoke-static {v1}, Lcom/sec/android/app/sysscope/service/SysScope;->access$4(Lcom/sec/android/app/sysscope/service/SysScope;)Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 698
    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeServiceConnection;->this$0:Lcom/sec/android/app/sysscope/service/SysScope;

    #getter for: Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;
    invoke-static {v1}, Lcom/sec/android/app/sysscope/service/SysScope;->access$4(Lcom/sec/android/app/sysscope/service/SysScope;)Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;->onReady()V

    goto :goto_0

    .line 694
    :catch_0
    move-exception v0

    .line 695
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 703
    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeServiceConnection;->this$0:Lcom/sec/android/app/sysscope/service/SysScope;

    #setter for: Lcom/sec/android/app/sysscope/service/SysScope;->mService:Lcom/sec/android/app/sysscope/service/ISysScopeService;
    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/service/SysScope;->access$0(Lcom/sec/android/app/sysscope/service/SysScope;Lcom/sec/android/app/sysscope/service/ISysScopeService;)V

    .line 704
    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeServiceConnection;->this$0:Lcom/sec/android/app/sysscope/service/SysScope;

    #setter for: Lcom/sec/android/app/sysscope/service/SysScope;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/service/SysScope;->access$5(Lcom/sec/android/app/sysscope/service/SysScope;Landroid/content/ServiceConnection;)V

    .line 705
    const-string v0, "SysScope"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    return-void
.end method
