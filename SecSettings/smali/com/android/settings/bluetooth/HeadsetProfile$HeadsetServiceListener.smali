.class final Lcom/android/settings_ex/bluetooth/HeadsetProfile$HeadsetServiceListener;
.super Ljava/lang/Object;
.source "HeadsetProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/bluetooth/HeadsetProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HeadsetServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/HeadsetProfile;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/bluetooth/HeadsetProfile;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/settings_ex/bluetooth/HeadsetProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/bluetooth/HeadsetProfile;Lcom/android/settings_ex/bluetooth/HeadsetProfile$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/HeadsetProfile$HeadsetServiceListener;-><init>(Lcom/android/settings_ex/bluetooth/HeadsetProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 6
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 63
    invoke-static {}, Lcom/android/settings_ex/bluetooth/HeadsetProfile;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "HeadsetProfile"

    const-string v4, "Bluetooth service connected"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/settings_ex/bluetooth/HeadsetProfile;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2
    #setter for: Lcom/android/settings_ex/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v3, p2}, Lcom/android/settings_ex/bluetooth/HeadsetProfile;->access$102(Lcom/android/settings_ex/bluetooth/HeadsetProfile;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 67
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/settings_ex/bluetooth/HeadsetProfile;

    #getter for: Lcom/android/settings_ex/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v3}, Lcom/android/settings_ex/bluetooth/HeadsetProfile;->access$100(Lcom/android/settings_ex/bluetooth/HeadsetProfile;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 68
    .local v1, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 69
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 70
    .local v2, firstDevice:Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/settings_ex/bluetooth/HeadsetProfile;

    #getter for: Lcom/android/settings_ex/bluetooth/HeadsetProfile;->mDeviceManager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v3}, Lcom/android/settings_ex/bluetooth/HeadsetProfile;->access$200(Lcom/android/settings_ex/bluetooth/HeadsetProfile;)Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 72
    .local v0, device:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;
    if-nez v0, :cond_1

    .line 73
    const-string v3, "HeadsetProfile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HeadsetProfile found new device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/settings_ex/bluetooth/HeadsetProfile;

    #getter for: Lcom/android/settings_ex/bluetooth/HeadsetProfile;->mDeviceManager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v3}, Lcom/android/settings_ex/bluetooth/HeadsetProfile;->access$200(Lcom/android/settings_ex/bluetooth/HeadsetProfile;)Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/settings_ex/bluetooth/HeadsetProfile;

    #getter for: Lcom/android/settings_ex/bluetooth/HeadsetProfile;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;
    invoke-static {v4}, Lcom/android/settings_ex/bluetooth/HeadsetProfile;->access$300(Lcom/android/settings_ex/bluetooth/HeadsetProfile;)Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/settings_ex/bluetooth/HeadsetProfile;

    #getter for: Lcom/android/settings_ex/bluetooth/HeadsetProfile;->mProfileManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;
    invoke-static {v5}, Lcom/android/settings_ex/bluetooth/HeadsetProfile;->access$400(Lcom/android/settings_ex/bluetooth/HeadsetProfile;)Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 76
    :cond_1
    if-eqz v0, :cond_3

    .line 77
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/settings_ex/bluetooth/HeadsetProfile;

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;I)V

    .line 79
    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 85
    .end local v0           #device:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;
    .end local v2           #firstDevice:Landroid/bluetooth/BluetoothDevice;
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/settings_ex/bluetooth/HeadsetProfile;

    #getter for: Lcom/android/settings_ex/bluetooth/HeadsetProfile;->mProfileManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;
    invoke-static {v3}, Lcom/android/settings_ex/bluetooth/HeadsetProfile;->access$400(Lcom/android/settings_ex/bluetooth/HeadsetProfile;)Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->callServiceConnectedListeners()V

    .line 86
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/settings_ex/bluetooth/HeadsetProfile;

    const/4 v4, 0x1

    #setter for: Lcom/android/settings_ex/bluetooth/HeadsetProfile;->mIsProfileReady:Z
    invoke-static {v3, v4}, Lcom/android/settings_ex/bluetooth/HeadsetProfile;->access$502(Lcom/android/settings_ex/bluetooth/HeadsetProfile;Z)Z

    .line 87
    return-void

    .line 81
    .restart local v0       #device:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;
    .restart local v2       #firstDevice:Landroid/bluetooth/BluetoothDevice;
    :cond_3
    const-string v3, "HeadsetProfile"

    const-string v4, "Bluetooth device is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 90
    invoke-static {}, Lcom/android/settings_ex/bluetooth/HeadsetProfile;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HeadsetProfile"

    const-string v1, "Bluetooth service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/settings_ex/bluetooth/HeadsetProfile;

    #getter for: Lcom/android/settings_ex/bluetooth/HeadsetProfile;->mProfileManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;
    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/HeadsetProfile;->access$400(Lcom/android/settings_ex/bluetooth/HeadsetProfile;)Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->callServiceDisconnectedListeners()V

    .line 92
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/settings_ex/bluetooth/HeadsetProfile;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings_ex/bluetooth/HeadsetProfile;->mIsProfileReady:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/bluetooth/HeadsetProfile;->access$502(Lcom/android/settings_ex/bluetooth/HeadsetProfile;Z)Z

    .line 93
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/settings_ex/bluetooth/HeadsetProfile;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings_ex/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, v1}, Lcom/android/settings_ex/bluetooth/HeadsetProfile;->access$102(Lcom/android/settings_ex/bluetooth/HeadsetProfile;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 94
    return-void
.end method
