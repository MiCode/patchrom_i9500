.class Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TetherChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/TetherSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/TetherSettings;)V
    .locals 0

    .prologue
    .line 501
    iput-object p1, p0, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/TetherSettings;Lcom/android/settings_ex/TetherSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 501
    invoke-direct {p0, p1}, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/settings_ex/TetherSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "content"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 504
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 507
    const-string v5, "availableArray"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 509
    .local v2, available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "activeArray"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 511
    .local v1, active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "erroredArray"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 513
    .local v4, errored:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    #calls: Lcom/android/settings_ex/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    invoke-static {v8, v5, v6, v7}, Lcom/android/settings_ex/TetherSettings;->access$700(Lcom/android/settings_ex/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 552
    .end local v1           #active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #errored:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 516
    :cond_1
    const-string v5, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 517
    const-string v5, "TetherSettings"

    const-string v6, "received pan state changed."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v5, p0, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings_ex/TetherSettings;

    #calls: Lcom/android/settings_ex/TetherSettings;->updateState()V
    invoke-static {v5}, Lcom/android/settings_ex/TetherSettings;->access$800(Lcom/android/settings_ex/TetherSettings;)V

    goto :goto_0

    .line 519
    :cond_2
    const-string v5, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 520
    iget-object v5, p0, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings_ex/TetherSettings;

    #setter for: Lcom/android/settings_ex/TetherSettings;->mMassStorageActive:Z
    invoke-static {v5, v8}, Lcom/android/settings_ex/TetherSettings;->access$902(Lcom/android/settings_ex/TetherSettings;Z)Z

    .line 521
    iget-object v5, p0, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings_ex/TetherSettings;

    #calls: Lcom/android/settings_ex/TetherSettings;->updateState()V
    invoke-static {v5}, Lcom/android/settings_ex/TetherSettings;->access$800(Lcom/android/settings_ex/TetherSettings;)V

    goto :goto_0

    .line 522
    :cond_3
    const-string v5, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 523
    iget-object v5, p0, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings_ex/TetherSettings;

    #setter for: Lcom/android/settings_ex/TetherSettings;->mMassStorageActive:Z
    invoke-static {v5, v7}, Lcom/android/settings_ex/TetherSettings;->access$902(Lcom/android/settings_ex/TetherSettings;Z)Z

    .line 524
    iget-object v5, p0, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings_ex/TetherSettings;

    #calls: Lcom/android/settings_ex/TetherSettings;->updateState()V
    invoke-static {v5}, Lcom/android/settings_ex/TetherSettings;->access$800(Lcom/android/settings_ex/TetherSettings;)V

    goto :goto_0

    .line 525
    :cond_4
    const-string v5, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 526
    iget-object v5, p0, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings_ex/TetherSettings;

    const-string v6, "connected"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    #setter for: Lcom/android/settings_ex/TetherSettings;->mUsbConnected:Z
    invoke-static {v5, v6}, Lcom/android/settings_ex/TetherSettings;->access$1002(Lcom/android/settings_ex/TetherSettings;Z)Z

    .line 527
    iget-object v5, p0, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings_ex/TetherSettings;

    #calls: Lcom/android/settings_ex/TetherSettings;->updateState()V
    invoke-static {v5}, Lcom/android/settings_ex/TetherSettings;->access$800(Lcom/android/settings_ex/TetherSettings;)V

    goto :goto_0

    .line 528
    :cond_5
    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 529
    iget-object v5, p0, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings_ex/TetherSettings;

    #getter for: Lcom/android/settings_ex/TetherSettings;->mBluetoothEnableForTether:Z
    invoke-static {v5}, Lcom/android/settings_ex/TetherSettings;->access$1100(Lcom/android/settings_ex/TetherSettings;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 530
    const-string v5, "android.bluetooth.adapter.extra.STATE"

    const/high16 v6, -0x8000

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 550
    :cond_6
    :goto_1
    iget-object v5, p0, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings_ex/TetherSettings;

    #calls: Lcom/android/settings_ex/TetherSettings;->updateState()V
    invoke-static {v5}, Lcom/android/settings_ex/TetherSettings;->access$800(Lcom/android/settings_ex/TetherSettings;)V

    goto :goto_0

    .line 533
    :sswitch_0
    iget-object v5, p0, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings_ex/TetherSettings;

    #getter for: Lcom/android/settings_ex/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v5}, Lcom/android/settings_ex/TetherSettings;->access$000(Lcom/android/settings_ex/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothPan;

    .line 534
    .local v3, bluetoothPan:Landroid/bluetooth/BluetoothPan;
    if-eqz v3, :cond_7

    .line 535
    invoke-virtual {v3, v8}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 536
    iget-object v5, p0, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings_ex/TetherSettings;

    #setter for: Lcom/android/settings_ex/TetherSettings;->mBluetoothEnableForTether:Z
    invoke-static {v5, v7}, Lcom/android/settings_ex/TetherSettings;->access$1102(Lcom/android/settings_ex/TetherSettings;Z)Z

    .line 538
    :cond_7
    iget-object v5, p0, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-virtual {v5}, Lcom/android/settings_ex/TetherSettings;->checkBluetoothVisibility()V

    goto :goto_1

    .line 543
    .end local v3           #bluetoothPan:Landroid/bluetooth/BluetoothPan;
    :sswitch_1
    iget-object v5, p0, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings_ex/TetherSettings;

    #setter for: Lcom/android/settings_ex/TetherSettings;->mBluetoothEnableForTether:Z
    invoke-static {v5, v7}, Lcom/android/settings_ex/TetherSettings;->access$1102(Lcom/android/settings_ex/TetherSettings;Z)Z

    goto :goto_1

    .line 530
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method
