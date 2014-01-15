.class final Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$BluetoothStateTracker;
.super Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BluetoothStateTracker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 467
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;-><init>(Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 467
    invoke-direct {p0}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$BluetoothStateTracker;-><init>()V

    return-void
.end method

.method private static bluetoothStateToFiveState(I)I
    .locals 1
    .parameter "bluetoothState"

    .prologue
    .line 522
    packed-switch p0, :pswitch_data_0

    .line 532
    const/4 v0, 0x4

    :goto_0
    return v0

    .line 524
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 526
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 528
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 530
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 522
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 479
    invoke-static {}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->access$900()Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    if-nez v1, :cond_1

    .line 480
    invoke-static {p1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 481
    .local v0, manager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;
    if-nez v0, :cond_0

    .line 482
    const/4 v1, 0x4

    .line 486
    .end local v0           #manager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;
    :goto_0
    return v1

    .line 484
    .restart local v0       #manager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->access$902(Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;)Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    .line 486
    .end local v0           #manager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;
    :cond_1
    invoke-static {}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->access$900()Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    invoke-static {v1}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$BluetoothStateTracker;->bluetoothStateToFiveState(I)I

    move-result v1

    goto :goto_0
.end method

.method public getButtonDescription()I
    .locals 1

    .prologue
    .line 471
    const v0, 0x7f090822

    return v0
.end method

.method public getButtonId()I
    .locals 1

    .prologue
    .line 469
    const v0, 0x7f0b0082

    return v0
.end method

.method public getButtonImageId(Z)I
    .locals 1
    .parameter "on"

    .prologue
    .line 473
    if-eqz p1, :cond_0

    const v0, 0x7f020138

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f020137

    goto :goto_0
.end method

.method public getContainerId()I
    .locals 1

    .prologue
    .line 468
    const v0, 0x7f0b0081

    return v0
.end method

.method public getIndicatorId()I
    .locals 1

    .prologue
    .line 470
    const v0, 0x7f0b0084

    return v0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 510
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 515
    :goto_0
    return-void

    .line 513
    :cond_0
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 514
    .local v0, bluetoothState:I
    invoke-static {v0}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$BluetoothStateTracker;->bluetoothStateToFiveState(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->setCurrentState(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "desiredState"

    .prologue
    .line 491
    invoke-static {}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->access$900()Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 492
    const-string v0, "SettingsAppWidgetProvider"

    const-string v1, "No LocalBluetoothManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :goto_0
    return-void

    .line 499
    :cond_0
    new-instance v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$BluetoothStateTracker$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$BluetoothStateTracker$1;-><init>(Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$BluetoothStateTracker;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
