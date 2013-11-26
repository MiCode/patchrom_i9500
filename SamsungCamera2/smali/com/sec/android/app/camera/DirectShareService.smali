.class public Lcom/sec/android/app/camera/DirectShareService;
.super Landroid/app/Service;
.source "DirectShareService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/DirectShareService$SendInfo;
    }
.end annotation


# static fields
.field public static final EXTRAS_FAILED_FILE_URL_LIST:Ljava/lang/String; = "failedfileurlList"

.field public static final EXTRAS_FILE_TYPE:Ljava/lang/String; = "type"

.field public static final EXTRAS_FILE_URL_LIST:Ljava/lang/String; = "fileurlList"

.field public static final EXTRAS_RECEIVER_LIST:Ljava/lang/String; = "receiverlist"

.field public static final EXTRAS_REQUEST_ID:Ljava/lang/String; = "id"

.field public static final INTENT_PROGRESS:Ljava/lang/String; = "com.sec.android.app.camera.directshare.PROGRESS"

.field public static final INTENT_SEND_COMPLETE:Ljava/lang/String; = "com.sec.android.app.camera.directshare.SEND_COMPLETE"

.field public static final INTENT_UPLOAD_COMPLETE:Ljava/lang/String; = "com.sec.android.app.camera.directshare.UPLOAD_COMPLETE"

.field public static final INTENT_UPLOAD_ERROR:Ljava/lang/String; = "com.sec.android.app.camera.directshare.UPLOAD_ERROR"

.field private static final TAG:Ljava/lang/String; = "DirectShareService"


# instance fields
.field mBcReceiver:Landroid/content/BroadcastReceiver;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mNotificationProgressText:Ljava/lang/String;

.field private mNotificationResultText:Ljava/lang/String;

.field private mNotificationTitle:Ljava/lang/String;

.field mSendInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/DirectShareService$SendInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mToastTest:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/DirectShareService;->mSendInfoList:Ljava/util/ArrayList;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/camera/DirectShareService;->mNotificationTitle:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/camera/DirectShareService;->mNotificationProgressText:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/camera/DirectShareService;->mNotificationResultText:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/camera/DirectShareService;->mToastTest:Ljava/lang/String;

    .line 99
    new-instance v0, Lcom/sec/android/app/camera/DirectShareService$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/DirectShareService$1;-><init>(Lcom/sec/android/app/camera/DirectShareService;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/DirectShareService;->mBcReceiver:Landroid/content/BroadcastReceiver;

    .line 293
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/DirectShareService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sec/android/app/camera/DirectShareService;->mNotificationProgressText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/camera/DirectShareService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/sec/android/app/camera/DirectShareService;->mNotificationProgressText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/DirectShareService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sec/android/app/camera/DirectShareService;->mNotificationTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/DirectShareService;)Landroid/app/NotificationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sec/android/app/camera/DirectShareService;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/camera/DirectShareService;Landroid/app/NotificationManager;)Landroid/app/NotificationManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/sec/android/app/camera/DirectShareService;->mNotificationManager:Landroid/app/NotificationManager;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/DirectShareService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sec/android/app/camera/DirectShareService;->mNotificationResultText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/camera/DirectShareService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/sec/android/app/camera/DirectShareService;->mNotificationResultText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/DirectShareService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sec/android/app/camera/DirectShareService;->mToastTest:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/camera/DirectShareService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/sec/android/app/camera/DirectShareService;->mToastTest:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public finishService()V
    .locals 2

    .prologue
    .line 201
    const-string v0, "DirectShareService"

    const-string v1, "finishService"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 204
    return-void
.end method

.method public getReceiverList(I)Ljava/lang/String;
    .locals 5
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 260
    iget-object v2, p0, Lcom/sec/android/app/camera/DirectShareService;->mSendInfoList:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 261
    const-string v2, "DirectShareService"

    const-string v4, "getType - mSendInfoList is null"

    invoke-static {v2, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 277
    :cond_0
    :goto_0
    return-object v1

    .line 265
    :cond_1
    const/4 v1, 0x0

    .line 267
    .local v1, receiver:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/DirectShareService;->mSendInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 268
    iget-object v2, p0, Lcom/sec/android/app/camera/DirectShareService;->mSendInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/DirectShareService$SendInfo;

    iget v2, v2, Lcom/sec/android/app/camera/DirectShareService$SendInfo;->mRequestId:I

    if-ne v2, p1, :cond_3

    .line 269
    iget-object v2, p0, Lcom/sec/android/app/camera/DirectShareService;->mSendInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/DirectShareService$SendInfo;

    iget-object v1, v2, Lcom/sec/android/app/camera/DirectShareService$SendInfo;->mReceiverList:Ljava/lang/String;

    .line 274
    :cond_2
    if-nez v1, :cond_0

    move-object v1, v3

    .line 277
    goto :goto_0

    .line 267
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getType(I)Ljava/lang/String;
    .locals 5
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 238
    iget-object v2, p0, Lcom/sec/android/app/camera/DirectShareService;->mSendInfoList:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 239
    const-string v2, "DirectShareService"

    const-string v4, "getType - mSendInfoList is null"

    invoke-static {v2, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 255
    :goto_0
    return-object v2

    .line 243
    :cond_0
    const/4 v1, 0x0

    .line 245
    .local v1, info:Lcom/sec/android/app/camera/DirectShareService$SendInfo;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/DirectShareService;->mSendInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 246
    iget-object v2, p0, Lcom/sec/android/app/camera/DirectShareService;->mSendInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/DirectShareService$SendInfo;

    iget v2, v2, Lcom/sec/android/app/camera/DirectShareService$SendInfo;->mRequestId:I

    if-ne v2, p1, :cond_2

    .line 247
    iget-object v2, p0, Lcom/sec/android/app/camera/DirectShareService;->mSendInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #info:Lcom/sec/android/app/camera/DirectShareService$SendInfo;
    check-cast v1, Lcom/sec/android/app/camera/DirectShareService$SendInfo;

    .line 252
    .restart local v1       #info:Lcom/sec/android/app/camera/DirectShareService$SendInfo;
    :cond_1
    if-eqz v1, :cond_3

    .line 253
    iget-object v2, v1, Lcom/sec/android/app/camera/DirectShareService$SendInfo;->mType:Ljava/lang/String;

    goto :goto_0

    .line 245
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v2, v3

    .line 255
    goto :goto_0
.end method

.method public isCompletedTransfer()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 282
    iget-object v1, p0, Lcom/sec/android/app/camera/DirectShareService;->mSendInfoList:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 283
    const-string v1, "DirectShareService"

    const-string v2, "isCompletedTransfer - mSendInfoList is null"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_0
    :goto_0
    return v0

    .line 287
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/DirectShareService;->mSendInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 288
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 40
    const-string v1, "DirectShareService"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 43
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.app.camera.directshare.UPLOAD_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 44
    const-string v1, "com.sec.android.app.camera.directshare.SEND_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 45
    const-string v1, "com.sec.android.app.camera.directshare.UPLOAD_ERROR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    const-string v1, "com.sec.android.app.camera.directshare.PROGRESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/sec/android/app/camera/DirectShareService;->mBcReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 49
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 50
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    const-string v0, "DirectShareService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcom/sec/android/app/camera/DirectShareService;->mBcReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 57
    const-string v0, "DirectShareService"

    const-string v1, "unregisterReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lcom/sec/android/app/camera/DirectShareService;->mBcReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 59
    iput-object v2, p0, Lcom/sec/android/app/camera/DirectShareService;->mBcReceiver:Landroid/content/BroadcastReceiver;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/DirectShareService;->mSendInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/sec/android/app/camera/DirectShareService;->mSendInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 64
    iput-object v2, p0, Lcom/sec/android/app/camera/DirectShareService;->mSendInfoList:Ljava/util/ArrayList;

    .line 67
    :cond_1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 68
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 72
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 73
    const-string v0, "DirectShareService"

    const-string v1, "onStartCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    if-nez p1, :cond_0

    .line 76
    const-string v0, "DirectShareService"

    const-string v1, "onStartCommand - intent is null"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v0, 0x2

    .line 91
    :goto_0
    return v0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/DirectShareService;->mSendInfoList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 81
    const-string v0, "DirectShareService"

    const-string v1, "mSendInfoList == null"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/DirectShareService;->mSendInfoList:Ljava/util/ArrayList;

    .line 85
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/camera/DirectShareService;->mSendInfoList:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/app/camera/DirectShareService$SendInfo;

    const-string v1, "id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v1, "type"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    const-string v1, "receiverlist"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/DirectShareService$SendInfo;-><init>(Lcom/sec/android/app/camera/DirectShareService;ILjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0205

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/DirectShareService;->mNotificationTitle:Ljava/lang/String;

    .line 89
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/DirectShareService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 91
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public reTransferSendIntent(ILjava/util/ArrayList;)V
    .locals 3
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p2, filename:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "DirectShareService"

    const-string v2, "reTransferSendIntent"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.directshare.service.send"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 210
    .local v0, sendIntent:Landroid/content/Intent;
    const-string v1, "filepathlist"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 211
    const-string v1, "receiverlist"

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/DirectShareService;->getReceiverList(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-string v1, "requestIdentifier"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 213
    const-string v1, "targetApp"

    const-string v2, "com.samsung.android.app.directsharegallery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    const-string v1, "sourceApp"

    const-string v2, "com.sec.android.app.camera.directshare"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    const-string v1, "uploadCompleted"

    const-string v2, "com.sec.android.app.camera.directshare.UPLOAD_COMPLETE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    const-string v1, "sendCompleted"

    const-string v2, "com.sec.android.app.camera.directshare.SEND_COMPLETE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    const-string v1, "onError"

    const-string v2, "com.sec.android.app.camera.directshare.UPLOAD_ERROR"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 221
    return-void
.end method

.method public removeCompletedState(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 224
    iget-object v1, p0, Lcom/sec/android/app/camera/DirectShareService;->mSendInfoList:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 225
    const-string v1, "DirectShareService"

    const-string v2, "removeCompletedState - mSendInfoList is null"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/DirectShareService;->mSendInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/sec/android/app/camera/DirectShareService;->mSendInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/DirectShareService$SendInfo;

    iget v1, v1, Lcom/sec/android/app/camera/DirectShareService$SendInfo;->mRequestId:I

    if-ne v1, p1, :cond_2

    .line 231
    iget-object v1, p0, Lcom/sec/android/app/camera/DirectShareService;->mSendInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 229
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
