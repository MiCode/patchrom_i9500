.class public Lcom/sec/android/app/screenrecorder/remote/SRServiceController;
.super Ljava/lang/Object;
.source "SRServiceController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenRecorder"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSRService:Lcom/sec/android/app/screenrecorder/remote/ISRService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/screenrecorder/remote/SRServiceController;->mContext:Landroid/content/Context;

    .line 11
    return-void
.end method


# virtual methods
.method public BindService(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/sec/android/app/screenrecorder/remote/SRServiceController;->mContext:Landroid/content/Context;

    .line 19
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SCREENRECORDER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/app/screenrecorder/remote/SRServiceController;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 22
    const-string v1, "ScreenRecorder"

    const-string v2, "SRServiceController::BindService binding failed"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_0
    return-void
.end method

.method public IsRunning()Z
    .locals 3

    .prologue
    .line 47
    const/4 v1, 0x0

    .line 50
    .local v1, result:Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/screenrecorder/remote/SRServiceController;->mSRService:Lcom/sec/android/app/screenrecorder/remote/ISRService;

    invoke-interface {v2}, Lcom/sec/android/app/screenrecorder/remote/ISRService;->IsRunning()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 55
    :goto_0
    return v1

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public StartSR(Ljava/lang/String;)Z
    .locals 3
    .parameter "from"

    .prologue
    .line 34
    const/4 v1, 0x0

    .line 37
    .local v1, result:Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/screenrecorder/remote/SRServiceController;->mSRService:Lcom/sec/android/app/screenrecorder/remote/ISRService;

    invoke-interface {v2, p1}, Lcom/sec/android/app/screenrecorder/remote/ISRService;->StartSR(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 42
    :goto_0
    return v1

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public StopSR(Ljava/lang/String;)Z
    .locals 3
    .parameter "from"

    .prologue
    .line 60
    const/4 v1, 0x0

    .line 63
    .local v1, result:Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/screenrecorder/remote/SRServiceController;->mSRService:Lcom/sec/android/app/screenrecorder/remote/ISRService;

    invoke-interface {v2, p1}, Lcom/sec/android/app/screenrecorder/remote/ISRService;->StopSR(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 68
    :goto_0
    return v1

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public UnbindService()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sec/android/app/screenrecorder/remote/SRServiceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/screenrecorder/remote/SRServiceController;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "name"
    .parameter "service"

    .prologue
    .line 78
    invoke-static {p2}, Lcom/sec/android/app/screenrecorder/remote/ISRService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/screenrecorder/remote/ISRService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/screenrecorder/remote/SRServiceController;->mSRService:Lcom/sec/android/app/screenrecorder/remote/ISRService;

    .line 79
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/screenrecorder/remote/SRServiceController;->mSRService:Lcom/sec/android/app/screenrecorder/remote/ISRService;

    .line 74
    return-void
.end method
