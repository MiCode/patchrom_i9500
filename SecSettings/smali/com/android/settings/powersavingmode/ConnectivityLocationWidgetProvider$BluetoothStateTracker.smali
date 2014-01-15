.class final Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$BluetoothStateTracker;
.super Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;
.source "ConnectivityLocationWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BluetoothStateTracker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;-><init>(Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 357
    invoke-direct {p0}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$BluetoothStateTracker;-><init>()V

    return-void
.end method

.method private static bluetoothStateToFiveState(I)I
    .locals 1
    .parameter "bluetoothState"

    .prologue
    .line 403
    packed-switch p0, :pswitch_data_0

    .line 413
    const/4 v0, 0x4

    :goto_0
    return v0

    .line 405
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 407
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 409
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 411
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 403
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
    .line 360
    invoke-static {}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->access$600()Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    if-nez v1, :cond_1

    .line 361
    invoke-static {p1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 362
    .local v0, manager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;
    if-nez v0, :cond_0

    .line 363
    const/4 v1, 0x4

    .line 367
    .end local v0           #manager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;
    :goto_0
    return v1

    .line 365
    .restart local v0       #manager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->access$602(Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;)Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    .line 367
    .end local v0           #manager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;
    :cond_1
    invoke-static {}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->access$600()Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    invoke-static {v1}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$BluetoothStateTracker;->bluetoothStateToFiveState(I)I

    move-result v1

    goto :goto_0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 391
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 396
    :goto_0
    return-void

    .line 394
    :cond_0
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 395
    .local v0, bluetoothState:I
    invoke-static {v0}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$BluetoothStateTracker;->bluetoothStateToFiveState(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->setCurrentState(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "desiredState"

    .prologue
    .line 372
    invoke-static {}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->access$600()Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 373
    sget-boolean v0, Lcom/android/settings_ex/Utils;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "ConnectivityLocationWidgetProvider"

    const-string v1, "No LocalBluetoothManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    new-instance v0, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$BluetoothStateTracker$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$BluetoothStateTracker$1;-><init>(Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$BluetoothStateTracker;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
