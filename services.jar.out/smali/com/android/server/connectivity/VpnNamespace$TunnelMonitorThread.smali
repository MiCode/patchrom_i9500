.class Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;
.super Ljava/lang/Thread;
.source "VpnNamespace.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/VpnNamespace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TunnelMonitorThread"
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;

.field private name:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/connectivity/VpnNamespace;

.field private vpn:Lcom/android/server/connectivity/Vpn;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/VpnNamespace;Ljava/lang/String;Lcom/android/server/connectivity/Vpn;)V
    .locals 1
    .parameter
    .parameter "name"
    .parameter "vpn"

    .prologue
    .line 707
    iput-object p1, p0, Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;->this$0:Lcom/android/server/connectivity/VpnNamespace;

    .line 708
    const-string v0, "TunMonThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 709
    iput-object p2, p0, Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;->name:Ljava/lang/String;

    .line 710
    iput-object p3, p0, Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;->vpn:Lcom/android/server/connectivity/Vpn;

    .line 711
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "message"

    .prologue
    .line 723
    if-eqz p1, :cond_0

    .line 724
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_2

    .line 726
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;->this$0:Lcom/android/server/connectivity/VpnNamespace;

    iget-object v2, p0, Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;->name:Ljava/lang/String;

    #calls: Lcom/android/server/connectivity/VpnNamespace;->checkIf(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/android/server/connectivity/VpnNamespace;->access$700(Lcom/android/server/connectivity/VpnNamespace;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 727
    invoke-static {}, Lcom/android/server/connectivity/VpnNamespace;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "interface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is gone"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    iget-object v1, p0, Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;->vpn:Lcom/android/server/connectivity/Vpn;

    iget-object v2, p0, Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/Vpn;->interfaceRemoved(Ljava/lang/String;)V

    .line 740
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 731
    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 733
    :catch_0
    move-exception v0

    .line 734
    .local v0, e:Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/connectivity/VpnNamespace;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException while checking on tunnel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 736
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 737
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    goto :goto_0
.end method

.method quit()V
    .locals 2

    .prologue
    .line 718
    iget-object v0, p0, Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;->handler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 719
    return-void
.end method

.method restart()V
    .locals 4

    .prologue
    .line 714
    iget-object v0, p0, Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 715
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 746
    invoke-static {}, Lcom/android/server/connectivity/VpnNamespace;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is starting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 748
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;->handler:Landroid/os/Handler;

    .line 749
    iget-object v0, p0, Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 750
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 751
    invoke-static {}, Lcom/android/server/connectivity/VpnNamespace;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is exiting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    return-void
.end method
