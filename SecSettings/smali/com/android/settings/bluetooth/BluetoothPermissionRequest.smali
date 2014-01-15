.class public final Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPermissionRequest.java"


# static fields
.field private static final DEBUG:Z = true

.field public static final NOTIFICATION_ID:I = 0x1080080

.field private static final TAG:Ljava/lang/String; = "BluetoothPermissionRequest"


# instance fields
.field mContext:Landroid/content/Context;

.field mDeleteIntent:Landroid/content/Intent;

.field mDevice:Landroid/bluetooth/BluetoothDevice;

.field mNotificationManager:Landroid/app/NotificationManager;

.field mRequestType:I

.field mReturnClass:Ljava/lang/String;

.field mReturnPackage:Ljava/lang/String;

.field private mServiceUuid:Landroid/os/ParcelUuid;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mDeleteIntent:Landroid/content/Intent;

    .line 56
    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method private addConnectionNotification(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const v8, 0x7f0900d7

    const v7, 0x1080080

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 246
    new-instance v1, Landroid/app/Notification;

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v7, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 250
    .local v1, notification:Landroid/app/Notification;
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, deviceName:Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0900d8

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v5, p2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 255
    const/16 v2, 0x18

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 257
    iput v6, v1, Landroid/app/Notification;->defaults:I

    .line 258
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mDeleteIntent:Landroid/content/Intent;

    invoke-static {p1, v5, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 260
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v3, "CON"

    invoke-virtual {v2, v3, v7, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 261
    return-void

    .line 250
    .end local v0           #deviceName:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private addMapNotification(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const v9, 0x7f0900df

    const v8, 0x1080080

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 282
    new-instance v1, Landroid/app/Notification;

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v8, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 286
    .local v1, notification:Landroid/app/Notification;
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, deviceName:Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0900d8

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v7, p2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 291
    const/16 v2, 0x18

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 293
    iput v6, v1, Landroid/app/Notification;->defaults:I

    .line 294
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mDeleteIntent:Landroid/content/Intent;

    invoke-static {p1, v7, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 296
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v3, "MAP"

    invoke-virtual {v2, v3, v8, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 297
    return-void

    .line 286
    .end local v0           #deviceName:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private addPbapNotification(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const v8, 0x7f0900da

    const v7, 0x1080080

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 264
    new-instance v1, Landroid/app/Notification;

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v7, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 268
    .local v1, notification:Landroid/app/Notification;
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, deviceName:Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0900d8

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v5, p2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 273
    const/16 v2, 0x18

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 275
    iput v5, v1, Landroid/app/Notification;->defaults:I

    .line 276
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mDeleteIntent:Landroid/content/Intent;

    invoke-static {p1, v5, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 278
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v3, "PBAP"

    invoke-virtual {v2, v3, v7, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 279
    return-void

    .line 268
    .end local v0           #deviceName:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private addSapNotification(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const v9, 0x7f0900e3

    const v8, 0x1080080

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 300
    new-instance v1, Landroid/app/Notification;

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v8, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 304
    .local v1, notification:Landroid/app/Notification;
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, deviceName:Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0900e4

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v7, p2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 309
    const/16 v2, 0x18

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 311
    iput v6, v1, Landroid/app/Notification;->defaults:I

    .line 312
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mDeleteIntent:Landroid/content/Intent;

    invoke-static {p1, v7, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 314
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v3, "SAP"

    invoke-virtual {v2, v3, v8, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 315
    return-void

    .line 304
    .end local v0           #deviceName:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkUserChoice()Z
    .locals 14

    .prologue
    .line 323
    const/4 v11, 0x0

    .line 333
    .local v11, processed:Z
    iget v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    move v12, v11

    .line 407
    .end local v11           #processed:Z
    .local v12, processed:I
    :goto_0
    return v12

    .line 339
    .end local v12           #processed:I
    .restart local v11       #processed:Z
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    move-result-object v6

    .line 340
    .local v6, bluetoothManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;
    invoke-virtual {v6}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v8

    .line 342
    .local v8, cachedDeviceManager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8, v0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    move-result-object v7

    .line 344
    .local v7, cachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;
    if-nez v7, :cond_1

    .line 345
    invoke-virtual {v6}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8, v0, v2, v3}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    move-result-object v7

    .line 349
    :cond_1
    const-string v0, "BluetoothPermissionRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkUserChoice mRequestType ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const-string v1, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    .line 351
    .local v1, intentName:Ljava/lang/String;
    iget v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    .line 352
    invoke-virtual {v7}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v10

    .line 354
    .local v10, phonebookPermission:I
    const-string v0, "BluetoothPermissionRequest"

    const-string v2, "checkUserChoice BluetoothDevice_PHONEBOOK_ACCESS"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    if-nez v10, :cond_2

    move v12, v11

    .line 356
    .restart local v12       #processed:I
    goto :goto_0

    .line 359
    .end local v12           #processed:I
    :cond_2
    const/4 v0, 0x1

    if-ne v10, v0, :cond_4

    .line 360
    const/4 v2, 0x1

    const-string v3, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    const/4 v4, 0x1

    iget v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->sendIntentToReceiver(Ljava/lang/String;ZLjava/lang/String;ZI)V

    .line 361
    const/4 v11, 0x1

    .line 406
    .end local v10           #phonebookPermission:I
    :cond_3
    :goto_1
    const-string v0, "BluetoothPermissionRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkUserChoice = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v12, v11

    .line 407
    .restart local v12       #processed:I
    goto :goto_0

    .line 362
    .end local v12           #processed:I
    .restart local v10       #phonebookPermission:I
    :cond_4
    const/4 v0, 0x2

    if-ne v10, v0, :cond_5

    .line 363
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->sendIntentToReceiver(Ljava/lang/String;ZLjava/lang/String;ZI)V

    .line 366
    const/4 v11, 0x1

    goto :goto_1

    .line 368
    :cond_5
    const-string v0, "BluetoothPermissionRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad phonebookPermission: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 370
    .end local v10           #phonebookPermission:I
    :cond_6
    iget v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_a

    .line 371
    invoke-virtual {v7}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getMapPermissionChoice()I

    move-result v9

    .line 372
    .local v9, mapPermission:I
    const-string v0, "BluetoothPermissionRequest"

    const-string v2, "checkUserChoice BluetoothDevice.REQUEST_TYPE_MESSAGE_ACCESS"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    if-nez v9, :cond_7

    move v12, v11

    .line 374
    .restart local v12       #processed:I
    goto/16 :goto_0

    .line 377
    .end local v12           #processed:I
    :cond_7
    const/4 v0, 0x1

    if-ne v9, v0, :cond_8

    .line 378
    const/4 v2, 0x1

    const-string v3, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    const/4 v4, 0x1

    iget v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->sendIntentToReceiver(Ljava/lang/String;ZLjava/lang/String;ZI)V

    .line 379
    const/4 v11, 0x1

    goto :goto_1

    .line 380
    :cond_8
    const/4 v0, 0x2

    if-ne v9, v0, :cond_9

    .line 381
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->sendIntentToReceiver(Ljava/lang/String;ZLjava/lang/String;ZI)V

    .line 384
    const/4 v11, 0x1

    goto :goto_1

    .line 386
    :cond_9
    const-string v0, "BluetoothPermissionRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad mapPermission: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 388
    .end local v9           #mapPermission:I
    :cond_a
    iget v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 389
    invoke-virtual {v7}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getSapPermissionChoice()I

    move-result v13

    .line 390
    .local v13, sapPermission:I
    const-string v0, "BluetoothPermissionRequest"

    const-string v2, "checkUserChoice BluetoothDevice.REQUEST_TYPE_SIM_ACCESS"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    if-nez v13, :cond_b

    move v12, v11

    .line 392
    .restart local v12       #processed:I
    goto/16 :goto_0

    .line 395
    .end local v12           #processed:I
    :cond_b
    const/4 v0, 0x1

    if-ne v13, v0, :cond_c

    .line 396
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mServiceUuid:Landroid/os/ParcelUuid;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/bluetooth/BluetoothDevice;->authorizeService(Landroid/os/ParcelUuid;ZZ)Z

    .line 397
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 398
    :cond_c
    const/4 v0, 0x2

    if-ne v13, v0, :cond_d

    .line 399
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mServiceUuid:Landroid/os/ParcelUuid;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/bluetooth/BluetoothDevice;->authorizeService(Landroid/os/ParcelUuid;ZZ)Z

    .line 400
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 402
    :cond_d
    const-string v0, "BluetoothPermissionRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad sapPermission: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private playPopupAlert(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 432
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 433
    .local v2, res:Landroid/content/res/Resources;
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 434
    .local v0, builder:Landroid/app/Notification$Builder;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 435
    const-string v3, "notification"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 437
    .local v1, manager:Landroid/app/NotificationManager;
    const v3, 0x1080080

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 438
    return-void
.end method

.method private sendIntentToReceiver(Ljava/lang/String;ZLjava/lang/String;ZI)V
    .locals 3
    .parameter "intentName"
    .parameter "allowed"
    .parameter "extraName"
    .parameter "extraValue"
    .parameter "requestType"

    .prologue
    .line 413
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 415
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 416
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    :cond_0
    const-string v2, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 423
    if-eqz p3, :cond_1

    .line 424
    invoke-virtual {v0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 426
    :cond_1
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 427
    const-string v1, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 428
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 429
    return-void

    .line 419
    :cond_2
    const/4 v1, 0x2

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mContext:Landroid/content/Context;

    .line 61
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, action:Ljava/lang/String;
    const-string v7, "BluetoothPermissionRequest"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive :: action="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const-string v7, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 66
    const-string v7, "android.bluetooth.adapter.extra.STATE"

    const/high16 v8, -0x8000

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 67
    .local v5, state:I
    const/16 v7, 0xd

    if-ne v5, v7, :cond_0

    .line 68
    const-string v7, "notification"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 70
    .local v0, Manager:Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 243
    .end local v0           #Manager:Landroid/app/NotificationManager;
    .end local v5           #state:I
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    const-string v7, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 74
    const-string v7, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    iput-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 75
    const-string v7, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v8, 0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    .line 77
    const-string v7, "android.bluetooth.device.extra.PACKAGE_NAME"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    .line 78
    const-string v7, "android.bluetooth.device.extra.CLASS_NAME"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    .line 80
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .local v3, connectionAccessIntent:Landroid/content/Intent;
    const-class v7, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;

    invoke-virtual {v3, p1, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 82
    const/high16 v7, 0x1000

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 83
    const-string v7, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    iget v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    const-string v7, "android.bluetooth.device.extra.DEVICE"

    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 86
    const-string v7, "android.bluetooth.device.extra.PACKAGE_NAME"

    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string v7, "android.bluetooth.device.extra.CLASS_NAME"

    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->checkUserChoice()Z

    move-result v7

    if-nez v7, :cond_0

    .line 96
    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, deviceAddress:Ljava/lang/String;
    :goto_1
    invoke-static {p1, v4}, Lcom/android/settings_ex/bluetooth/LocalBluetoothPreferences;->shouldShowDialogInForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 99
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 100
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->playPopupAlert(Landroid/content/Context;)V

    goto :goto_0

    .line 96
    .end local v4           #deviceAddress:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 130
    .restart local v4       #deviceAddress:Ljava/lang/String;
    :cond_3
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mDeleteIntent:Landroid/content/Intent;

    .line 131
    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mDeleteIntent:Landroid/content/Intent;

    const-string v8, "android.bluetooth.device.extra.DEVICE"

    iget-object v9, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 132
    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mDeleteIntent:Landroid/content/Intent;

    const-string v8, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 135
    const-string v7, "notification"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    iput-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mNotificationManager:Landroid/app/NotificationManager;

    .line 138
    iget v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 139
    invoke-direct {p0, p1, v3}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->addConnectionNotification(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 140
    :cond_4
    iget v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    .line 141
    invoke-direct {p0, p1, v3}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->addPbapNotification(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 142
    :cond_5
    iget v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_6

    .line 143
    invoke-direct {p0, p1, v3}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->addMapNotification(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 145
    :cond_6
    const-string v7, "BluetoothPermissionRequest"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error: bad request type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 148
    .end local v3           #connectionAccessIntent:Landroid/content/Intent;
    .end local v4           #deviceAddress:Ljava/lang/String;
    :cond_7
    const-string v7, "android.bluetooth.device.action.ACTION_AUTHORIZE_REQUEST"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 150
    const-string v7, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    iput-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 151
    const-string v7, "android.bluetooth.device.extra.UUID"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mServiceUuid:Landroid/os/ParcelUuid;

    .line 152
    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mServiceUuid:Landroid/os/ParcelUuid;

    invoke-static {v7}, Landroid/bluetooth/BluetoothUuid;->isSap(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 153
    const/4 v7, 0x4

    iput v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    .line 156
    const-string v7, "phone"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 157
    .local v6, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    .line 158
    .local v2, call_State:I
    const-string v7, "BluetoothPermissionRequest"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getCallState() returns :  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    if-eqz v2, :cond_8

    .line 161
    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mServiceUuid:Landroid/os/ParcelUuid;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/bluetooth/BluetoothDevice;->authorizeService(Landroid/os/ParcelUuid;ZZ)Z

    goto/16 :goto_0

    .line 165
    :cond_8
    sget-object v7, Landroid/bluetooth/BluetoothUuid;->SIM_ACC:Landroid/os/ParcelUuid;

    invoke-static {v7}, Landroid/sec/enterprise/BluetoothUtils;->isProfileAuthorizedBySecurityPolicy(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 167
    const-string v7, "BluetoothPermissionRequest"

    const-string v8, "MAP service blocked by MDM policy or voice call is active"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mServiceUuid:Landroid/os/ParcelUuid;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/bluetooth/BluetoothDevice;->authorizeService(Landroid/os/ParcelUuid;ZZ)Z

    goto/16 :goto_0

    .line 173
    .end local v2           #call_State:I
    .end local v6           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_9
    const-string v7, "BluetoothPermissionRequest"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error: bad mServiceUuid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mServiceUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 177
    .restart local v2       #call_State:I
    .restart local v6       #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_a
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    .restart local v3       #connectionAccessIntent:Landroid/content/Intent;
    const-class v7, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;

    invoke-virtual {v3, p1, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 179
    const/high16 v7, 0x1000

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 180
    const-string v7, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    iget v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 182
    const-string v7, "android.bluetooth.device.extra.DEVICE"

    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 183
    const-string v7, "android.bluetooth.device.extra.UUID"

    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mServiceUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v8}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->checkUserChoice()Z

    move-result v7

    if-nez v7, :cond_0

    .line 192
    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 194
    .restart local v4       #deviceAddress:Ljava/lang/String;
    :goto_2
    invoke-static {p1, v4}, Lcom/android/settings_ex/bluetooth/LocalBluetoothPreferences;->shouldShowDialogInForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 195
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 196
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->playPopupAlert(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 192
    .end local v4           #deviceAddress:Ljava/lang/String;
    :cond_b
    const/4 v4, 0x0

    goto :goto_2

    .line 202
    .restart local v4       #deviceAddress:Ljava/lang/String;
    :cond_c
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mDeleteIntent:Landroid/content/Intent;

    .line 203
    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mDeleteIntent:Landroid/content/Intent;

    const-string v8, "android.bluetooth.device.extra.DEVICE"

    iget-object v9, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 204
    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mDeleteIntent:Landroid/content/Intent;

    const-string v8, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 207
    const-string v7, "notification"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    iput-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mNotificationManager:Landroid/app/NotificationManager;

    .line 210
    iget v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_d

    .line 211
    invoke-direct {p0, p1, v3}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->addSapNotification(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 213
    :cond_d
    const-string v7, "BluetoothPermissionRequest"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error: bad request type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
