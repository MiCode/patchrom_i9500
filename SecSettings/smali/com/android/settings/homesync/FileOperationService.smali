.class public Lcom/android/settings_ex/homesync/FileOperationService;
.super Landroid/app/Service;
.source "FileOperationService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MyFiles"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "arg0"

    .prologue
    .line 32
    const-string v0, "MyFiles"

    const-string v1, "FileOperationService onBind!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 39
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 40
    const-string v0, "MyFiles"

    const-string v1, "FileOperationService onCreate!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 46
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 47
    const-string v0, "MyFiles"

    const-string v1, "FileOperationService onDestory!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 49
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 54
    const-string v1, "MyFiles"

    const-string v2, "FileOperationService onStartCommand!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 56
    .local v0, notification:Landroid/app/Notification;
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 57
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    return v1
.end method
