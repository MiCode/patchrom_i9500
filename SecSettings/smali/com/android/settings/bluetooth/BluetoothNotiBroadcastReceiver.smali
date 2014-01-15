.class public final Lcom/android/settings_ex/bluetooth/BluetoothNotiBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothNotiBroadcastReceiver.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field public static final NOTIFICATION_ID:I = 0x1080080

.field private static final TAG:Ljava/lang/String; = "BluetoothNotiBroadcastReceiver"

.field private static carkitIsAdded:Z

.field private static mLocalAdapterName:Ljava/lang/String;

.field private static mNotiManager:Landroid/app/NotificationManager;

.field private static myplaceIsAtvice:Z

.field private static quickPanelOn:Z


# instance fields
.field private mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 48
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/settings_ex/bluetooth/BluetoothNotiBroadcastReceiver;->DBG:Z

    .line 50
    sput-boolean v1, Lcom/android/settings_ex/bluetooth/BluetoothNotiBroadcastReceiver;->quickPanelOn:Z

    .line 52
    sput-boolean v1, Lcom/android/settings_ex/bluetooth/BluetoothNotiBroadcastReceiver;->carkitIsAdded:Z

    .line 54
    sput-boolean v1, Lcom/android/settings_ex/bluetooth/BluetoothNotiBroadcastReceiver;->myplaceIsAtvice:Z

    .line 58
    sput-object v3, Lcom/android/settings_ex/bluetooth/BluetoothNotiBroadcastReceiver;->mNotiManager:Landroid/app/NotificationManager;

    .line 62
    sput-object v3, Lcom/android/settings_ex/bluetooth/BluetoothNotiBroadcastReceiver;->mLocalAdapterName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private destroyNotification(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 175
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sput-object v0, Lcom/android/settings_ex/bluetooth/BluetoothNotiBroadcastReceiver;->mNotiManager:Landroid/app/NotificationManager;

    .line 176
    sget-object v0, Lcom/android/settings_ex/bluetooth/BluetoothNotiBroadcastReceiver;->mNotiManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 177
    sget-object v0, Lcom/android/settings_ex/bluetooth/BluetoothNotiBroadcastReceiver;->mNotiManager:Landroid/app/NotificationManager;

    const v1, 0x1080080

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 178
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings_ex/bluetooth/BluetoothNotiBroadcastReceiver;->mNotiManager:Landroid/app/NotificationManager;

    .line 180
    :cond_0
    return-void
.end method

.method private displayNotification(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const v7, 0x7f0900dd

    .line 154
    new-instance v0, Landroid/app/Notification;

    const v3, 0x7f0204d7

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 157
    .local v0, notification:Landroid/app/Notification;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 158
    .local v2, settingIntent:Landroid/content/Intent;
    const-string v3, "android.settings.BLUETOOTH_SETTINGS"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const/high16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 160
    const/4 v3, 0x0

    const/high16 v4, 0x4000

    invoke-static {p1, v3, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 163
    .local v1, pending:Landroid/app/PendingIntent;
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0900de

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p1, v3, v4, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 165
    iget v3, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v0, Landroid/app/Notification;->flags:I

    .line 166
    iget v3, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v0, Landroid/app/Notification;->defaults:I

    .line 168
    const-string v3, "notification"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    sput-object v3, Lcom/android/settings_ex/bluetooth/BluetoothNotiBroadcastReceiver;->mNotiManager:Landroid/app/NotificationManager;

    .line 169
    sget-object v3, Lcom/android/settings_ex/bluetooth/BluetoothNotiBroadcastReceiver;->mNotiManager:Landroid/app/NotificationManager;

    if-eqz v3, :cond_0

    .line 170
    sget-object v3, Lcom/android/settings_ex/bluetooth/BluetoothNotiBroadcastReceiver;->mNotiManager:Landroid/app/NotificationManager;

    const v4, 0x1080080

    invoke-virtual {v3, v4, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 172
    :cond_0
    return-void
.end method

.method private updateDeviceName(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 183
    invoke-static {p1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 184
    .local v0, manager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;
    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothNotiBroadcastReceiver;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings_ex/bluetooth/BluetoothNotiBroadcastReceiver;->mLocalAdapterName:Ljava/lang/String;

    .line 187
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothNotiBroadcastReceiver;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothNotiBroadcastReceiver;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    sget-object v2, Lcom/android/settings_ex/bluetooth/BluetoothNotiBroadcastReceiver;->mLocalAdapterName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->setName(Ljava/lang/String;)V

    .line 189
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 66
    const-string v1, "BluetoothNotiBroadcastReceiver"

    const-string v2, "onReceive"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    .line 68
    .local v11, action:Ljava/lang/String;
    const-string v1, "android.systemui.statusbar.action.BLUETOOTH_ON"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings_ex/bluetooth/BluetoothNotiBroadcastReceiver;->quickPanelOn:Z

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 71
    const-string v1, "android.bluetooth.device.extra.BOND_STATE"

    const/high16 v2, -0x8000

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 73
    .local v15, state:I
    const/16 v1, 0xc

    if-ne v1, v15, :cond_0

    .line 74
    invoke-direct/range {p0 .. p1}, Lcom/android/settings_ex/bluetooth/BluetoothNotiBroadcastReceiver;->destroyNotification(Landroid/content/Context;)V

    .line 75
    sget-boolean v1, Lcom/android/settings_ex/bluetooth/BluetoothNotiBroadcastReceiver;->myplaceIsAtvice:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 78
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    .line 79
    .local v7, BtDevice:Landroid/bluetooth/BluetoothDevice;
    if-eqz v7, :cond_3

    .line 80
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v13

    .line 81
    .local v13, cod:I
    and-int/lit16 v9, v13, 0x1ffc

    .line 82
    .local v9, Class:I
    const-string v1, "BluetoothNotiBroadcastReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " cod :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Class :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/16 v1, 0x408

    if-eq v9, v1, :cond_2

    const/16 v1, 0x420

    if-ne v9, v1, :cond_9

    .line 86
    :cond_2
    const-string v1, "BluetoothNotiBroadcastReceiver"

    const-string v2, "this is handsfree for car audio"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .end local v9           #Class:I
    .end local v13           #cod:I
    :cond_3
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/settings_ex/bluetooth/BluetoothNotiBroadcastReceiver;->carkitIsAdded:Z

    .line 94
    sget-boolean v1, Lcom/android/settings_ex/bluetooth/BluetoothNotiBroadcastReceiver;->DBG:Z

    if-eqz v1, :cond_4

    .line 95
    const-string v1, "BluetoothNotiBroadcastReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Carkit Connected deviceName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Connected deviceAddr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.android.settings.myplace.MyPlaceProvider"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 99
    .local v12, c:Landroid/database/Cursor;
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 101
    :cond_5
    sget-boolean v1, Lcom/android/settings_ex/bluetooth/BluetoothNotiBroadcastReceiver;->DBG:Z

    if-eqz v1, :cond_6

    .line 102
    const-string v1, "BluetoothNotiBroadcastReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const-string v1, "BluetoothNotiBroadcastReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "profile_name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "profile_name"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const-string v1, "BluetoothNotiBroadcastReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bt_device_name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bt_device_name"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v1, "BluetoothNotiBroadcastReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bt_mac_address : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bt_mac_address"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_6
    const-string v1, "bt_mac_address"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 108
    .local v10, MyPlacesAddr:Ljava/lang/String;
    if-eqz v10, :cond_a

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 109
    sget-boolean v1, Lcom/android/settings_ex/bluetooth/BluetoothNotiBroadcastReceiver;->DBG:Z

    if-eqz v1, :cond_7

    .line 110
    const-string v1, "BluetoothNotiBroadcastReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found MyPlace :: MyPlace = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "profile_name"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_7
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings_ex/bluetooth/BluetoothNotiBroadcastReceiver;->carkitIsAdded:Z

    .line 117
    .end local v10           #MyPlacesAddr:Ljava/lang/String;
    :cond_8
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 118
    sget-boolean v1, Lcom/android/settings_ex/bluetooth/BluetoothNotiBroadcastReceiver;->carkitIsAdded:Z

    if-nez v1, :cond_0

    .line 119
    new-instance v8, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .local v8, CKintent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v8, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 121
    const-string v1, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v2, 0x7

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 123
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 89
    .end local v8           #CKintent:Landroid/content/Intent;
    .end local v12           #c:Landroid/database/Cursor;
    .restart local v9       #Class:I
    .restart local v13       #cod:I
    :cond_9
    const-string v1, "BluetoothNotiBroadcastReceiver"

    const-string v2, "this is not handsfree for car audio"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 115
    .end local v9           #Class:I
    .end local v13           #cod:I
    .restart local v10       #MyPlacesAddr:Ljava/lang/String;
    .restart local v12       #c:Landroid/database/Cursor;
    :cond_a
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    .line 127
    .end local v7           #BtDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v10           #MyPlacesAddr:Ljava/lang/String;
    .end local v12           #c:Landroid/database/Cursor;
    .end local v15           #state:I
    :cond_b
    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 128
    invoke-direct/range {p0 .. p1}, Lcom/android/settings_ex/bluetooth/BluetoothNotiBroadcastReceiver;->destroyNotification(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 129
    :cond_c
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 130
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x8000

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 132
    .restart local v15       #state:I
    const/16 v1, 0xd

    if-ne v1, v15, :cond_d

    .line 133
    invoke-direct/range {p0 .. p1}, Lcom/android/settings_ex/bluetooth/BluetoothNotiBroadcastReceiver;->destroyNotification(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 134
    :cond_d
    const/16 v1, 0xc

    if-ne v1, v15, :cond_0

    .line 135
    sget-boolean v1, Lcom/android/settings_ex/bluetooth/BluetoothNotiBroadcastReceiver;->quickPanelOn:Z

    if-eqz v1, :cond_0

    .line 136
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/settings_ex/bluetooth/BluetoothNotiBroadcastReceiver;->quickPanelOn:Z

    .line 139
    sget-boolean v1, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mIsForegroundBtSettings:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->canLaunchQuickBtView:Z

    if-nez v1, :cond_0

    .line 140
    const-string v1, "BluetoothNotiBroadcastReceiver"

    const-string v2, "Call list dialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 142
    .local v14, startDialogIntent:Landroid/content/Intent;
    const-class v1, Lcom/android/settings_ex/bluetooth/BluetoothScanDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const/high16 v1, 0x1080

    invoke-virtual {v14, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 144
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 149
    .end local v14           #startDialogIntent:Landroid/content/Intent;
    .end local v15           #state:I
    :cond_e
    const-string v1, "com.android.settings_ex.DEVICE_NAME_CHANGED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    invoke-direct/range {p0 .. p1}, Lcom/android/settings_ex/bluetooth/BluetoothNotiBroadcastReceiver;->updateDeviceName(Landroid/content/Context;)V

    goto/16 :goto_0
.end method
