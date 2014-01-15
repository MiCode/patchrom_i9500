.class public Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeRequest;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothAuthorizeRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothAuthorizeRequest"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    .line 75
    const-string v5, "BluetoothAuthorizeRequest"

    const-string v6, "onReceive"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.bluetooth.device.action.ACTION_AUTHORIZE_REQUEST"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 79
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 80
    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    const-string v5, "android.bluetooth.device.extra.UUID"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v3

    .line 82
    .local v3, service:Landroid/os/ParcelUuid;
    invoke-static {v3}, Landroid/bluetooth/BluetoothUuid;->isMap(Landroid/os/ParcelUuid;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3}, Landroid/bluetooth/BluetoothUuid;->isMse(Landroid/os/ParcelUuid;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3}, Landroid/bluetooth/BluetoothUuid;->isSap(Landroid/os/ParcelUuid;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 83
    :cond_0
    const-string v5, "BluetoothAuthorizeRequest"

    const-string v6, "MAP, SAP skip.."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .end local v2           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v3           #service:Landroid/os/ParcelUuid;
    :goto_0
    return-void

    .line 99
    .restart local v2       #device:Landroid/bluetooth/BluetoothDevice;
    .restart local v3       #service:Landroid/os/ParcelUuid;
    :cond_1
    const-string v5, "phone"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 100
    .local v4, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    .line 101
    .local v1, call_State:I
    const-string v5, "BluetoothAuthorizeRequest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCallState() returns :  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static {v3}, Landroid/bluetooth/BluetoothUuid;->isSap(Landroid/os/ParcelUuid;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v1, :cond_2

    .line 103
    invoke-virtual {v2, v3, v8, v8}, Landroid/bluetooth/BluetoothDevice;->authorizeService(Landroid/os/ParcelUuid;ZZ)Z

    goto :goto_0

    .line 107
    :cond_2
    const-class v5, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;

    invoke-virtual {p2, p1, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 108
    const-string v5, "android.bluetooth.device.action.ACTION_AUTHORIZE_REQUEST"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const/high16 v5, 0x1000

    invoke-virtual {p2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 115
    .end local v1           #call_State:I
    .end local v2           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v3           #service:Landroid/os/ParcelUuid;
    .end local v4           #telephonyManager:Landroid/telephony/TelephonyManager;
    :goto_1
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 111
    :cond_3
    const-string v5, "BluetoothAuthorizeRequest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown intent action:  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
