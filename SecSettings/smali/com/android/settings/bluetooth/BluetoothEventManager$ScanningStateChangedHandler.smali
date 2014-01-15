.class Lcom/android/settings_ex/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/android/settings_ex/bluetooth/BluetoothEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/bluetooth/BluetoothEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanningStateChangedHandler"
.end annotation


# instance fields
.field private final mStarted:Z

.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/BluetoothEventManager;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;Z)V
    .locals 0
    .parameter
    .parameter "started"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-boolean p2, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->mStarted:Z

    .line 183
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .parameter "context"
    .parameter "intent"
    .parameter "device"

    .prologue
    .line 186
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;
    invoke-static {v2}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v3

    monitor-enter v3

    .line 187
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;
    invoke-static {v2}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/bluetooth/BluetoothCallback;

    .line 188
    .local v0, callback:Lcom/android/settings_ex/bluetooth/BluetoothCallback;
    iget-boolean v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->mStarted:Z

    invoke-interface {v0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothCallback;->onScanningStateChanged(Z)V

    goto :goto_0

    .line 190
    .end local v0           #callback:Lcom/android/settings_ex/bluetooth/BluetoothCallback;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v2}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;)Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->mStarted:Z

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;->onScanningStateChanged(Z)V

    .line 192
    invoke-static {p1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothPreferences;->persistDiscoveringTimestamp(Landroid/content/Context;)V

    .line 193
    return-void
.end method
