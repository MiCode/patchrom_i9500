.class public final Lcom/android/settings_ex/bluetooth/BluetoothPairingRequest;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPairingRequest.java"


# static fields
.field private static final NOTIFICATION_ID:I = 0x1080080


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private playPopupAlert(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 115
    .local v2, res:Landroid/content/res/Resources;
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 116
    .local v0, builder:Landroid/app/Notification$Builder;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 118
    const-string v3, "notification"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 120
    .local v1, manager:Landroid/app/NotificationManager;
    const v3, 0x1080080

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 121
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/high16 v9, -0x8000

    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, action:Ljava/lang/String;
    const-string v8, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 47
    const-string v8, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 49
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    const-string v8, "android.bluetooth.device.extra.PAIRING_VARIANT"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 51
    .local v7, type:I
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 52
    .local v4, pairingIntent:Landroid/content/Intent;
    const-class v8, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;

    invoke-virtual {v4, p1, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 53
    const-string v8, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v4, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 54
    const-string v8, "android.bluetooth.device.extra.PAIRING_VARIANT"

    invoke-virtual {v4, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 55
    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    const/4 v8, 0x4

    if-eq v7, v8, :cond_0

    const/4 v8, 0x5

    if-ne v7, v8, :cond_1

    .line 58
    :cond_0
    const-string v8, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 60
    .local v5, pairingKey:I
    const-string v8, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {v4, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 62
    .end local v5           #pairingKey:I
    :cond_1
    const-string v8, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const/high16 v8, 0x1000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 65
    const-string v8, "power"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 67
    .local v6, powerManager:Landroid/os/PowerManager;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, deviceAddress:Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 69
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/BluetoothPairingRequest;->playPopupAlert(Landroid/content/Context;)V

    .line 111
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #deviceAddress:Ljava/lang/String;
    .end local v4           #pairingIntent:Landroid/content/Intent;
    .end local v6           #powerManager:Landroid/os/PowerManager;
    .end local v7           #type:I
    :cond_2
    :goto_1
    return-void

    .line 67
    .restart local v1       #device:Landroid/bluetooth/BluetoothDevice;
    .restart local v4       #pairingIntent:Landroid/content/Intent;
    .restart local v6       #powerManager:Landroid/os/PowerManager;
    .restart local v7       #type:I
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 104
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #pairingIntent:Landroid/content/Intent;
    .end local v6           #powerManager:Landroid/os/PowerManager;
    .end local v7           #type:I
    :cond_4
    const-string v8, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 107
    const-string v8, "notification"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 109
    .local v3, manager:Landroid/app/NotificationManager;
    const v8, 0x1080080

    invoke-virtual {v3, v8}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1
.end method
