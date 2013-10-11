.class Lcom/android/server/enterprise/device/DeviceInfo$2;
.super Ljava/lang/Object;
.source "DeviceInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/device/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/device/DeviceInfo;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/device/DeviceInfo;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo$2;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 148
    const-string v0, "DeviceInfo"

    const-string v1, "Trying to connect to SysScope Service"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo$2;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    #getter for: Lcom/android/server/enterprise/device/DeviceInfo;->mSysScopeServiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/enterprise/device/DeviceInfo;->access$100(Lcom/android/server/enterprise/device/DeviceInfo;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 150
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo$2;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    #getter for: Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/enterprise/device/DeviceInfo;->access$300(Lcom/android/server/enterprise/device/DeviceInfo;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.app.enterprise.SYSSCOPE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo$2;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    #getter for: Lcom/android/server/enterprise/device/DeviceInfo;->connSysScope:Landroid/content/ServiceConnection;
    invoke-static {v2}, Lcom/android/server/enterprise/device/DeviceInfo;->access$200(Lcom/android/server/enterprise/device/DeviceInfo;)Landroid/content/ServiceConnection;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 152
    return-void
.end method
