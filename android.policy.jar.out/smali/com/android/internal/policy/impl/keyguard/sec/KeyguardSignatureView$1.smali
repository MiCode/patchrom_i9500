.class Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$1;
.super Ljava/lang/Object;
.source "KeyguardSignatureView.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .parameter "className"
    .parameter "service"

    .prologue
    .line 253
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignServiceRunningLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$100(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 255
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    invoke-static {p2}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v4

    #setter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v2, v4}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$202(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;Lcom/android/internal/policy/ISignServiceInterface;)Lcom/android/internal/policy/ISignServiceInterface;

    .line 256
    const-string v2, "KeyguardSignatureView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connected to sign service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 258
    const-string v2, "KeyguardSignatureView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "before set sign service, mSignView: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/widget/SignView;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/widget/SignView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 261
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/widget/SignView;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/SignView;->setSignService(Lcom/android/internal/policy/ISignServiceInterface;)V

    .line 265
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/policy/ISignServiceInterface;->getEngineStatus()Z

    move-result v4

    #setter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mEngineStarted:Z
    invoke-static {v2, v4}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$402(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;Z)Z

    .line 266
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mEngineStarted:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$400(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 267
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v2

    const/16 v4, 0xa

    invoke-interface {v2, v4}, Lcom/android/internal/policy/ISignServiceInterface;->getModelNum(I)I

    move-result v1

    .line 268
    .local v1, signNum:I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    .line 270
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lcom/android/internal/policy/ISignServiceInterface;->readSignatureData(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .end local v1           #signNum:I
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    return-void

    .line 272
    .restart local v1       #signNum:I
    :cond_2
    :try_start_2
    const-string v2, "KeyguardSignatureView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Saved signatures are not sufficient. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 278
    .end local v1           #signNum:I
    :catch_0
    move-exception v0

    .line 279
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 281
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 275
    :cond_3
    :try_start_4
    const-string v2, "KeyguardSignatureView"

    const-string v4, "fail to init engine"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "className"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignServiceRunningLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$100(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 286
    :try_start_0
    const-string v0, "KeyguardSignatureView"

    const-string v2, "Disconnected to sign service"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$202(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;Lcom/android/internal/policy/ISignServiceInterface;)Lcom/android/internal/policy/ISignServiceInterface;

    .line 289
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mEngineStarted:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$402(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;Z)Z

    .line 290
    monitor-exit v1

    .line 291
    return-void

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
