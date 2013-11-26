.class Lcom/sec/android/app/camera/CameraSettings$1;
.super Ljava/lang/Object;
.source "CameraSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CameraSettings;->requestGroupInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CameraSettings;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CameraSettings;)V
    .locals 0

    .prologue
    .line 4727
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraSettings$1;->this$0:Lcom/sec/android/app/camera/CameraSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 7
    .parameter "arg0"

    .prologue
    .line 4731
    if-nez p1, :cond_1

    .line 4732
    const-string v4, "CameraSettings"

    const-string v5, "arg0 is null"

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 4754
    :cond_0
    :goto_0
    return-void

    .line 4736
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4737
    const-string v4, "CameraSettings"

    const-string v5, "arg0 is group owner"

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4739
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v0

    .line 4740
    .local v0, devList:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4742
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "devList size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4744
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4745
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 4746
    .local v1, device:Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraSettings$1;->this$0:Lcom/sec/android/app/camera/CameraSettings;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4, v1}, Lcom/sec/android/app/camera/Camera;->setWifiP2pDeviceInfo(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_1

    .line 4749
    .end local v0           #devList:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    .end local v1           #device:Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v2           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    :cond_2
    const-string v4, "CameraSettings"

    const-string v5, "arg0 is client"

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4751
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    .line 4752
    .local v3, ownerDev:Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraSettings$1;->this$0:Lcom/sec/android/app/camera/CameraSettings;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4, v3}, Lcom/sec/android/app/camera/Camera;->setWifiP2pDeviceInfo(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_0
.end method
