.class public Lcom/android/server/usb/UsbNotificationHandler;
.super Landroid/os/Handler;
.source "UsbNotificationHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;,
        Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;
    }
.end annotation


# static fields
.field private static final MSG_EXPIRED_USBDEVICE:I = 0x2

.field private static final MSG_UPDATE_USBDEVICE:I = 0x1


# instance fields
.field private final DEBUG:Z

.field private final DELAY:I

.field private final TAG:Ljava/lang/String;

.field private final mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mReady:Z

.field map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "l"
    .parameter "tag"

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 45
    iput-boolean v1, p0, Lcom/android/server/usb/UsbNotificationHandler;->DEBUG:Z

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler;->map:Ljava/util/HashMap;

    .line 49
    iput-boolean v1, p0, Lcom/android/server/usb/UsbNotificationHandler;->mReady:Z

    .line 50
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/server/usb/UsbNotificationHandler;->DELAY:I

    .line 60
    new-instance v0, Lcom/android/server/usb/UsbNotificationHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbNotificationHandler$1;-><init>(Lcom/android/server/usb/UsbNotificationHandler;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    .line 68
    new-instance v0, Lcom/android/server/usb/UsbNotificationHandler$2;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbNotificationHandler$2;-><init>(Lcom/android/server/usb/UsbNotificationHandler;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 54
    iput-object p3, p0, Lcom/android/server/usb/UsbNotificationHandler;->TAG:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/android/server/usb/UsbNotificationHandler;->mContext:Landroid/content/Context;

    .line 56
    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 57
    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbNotificationHandler;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/usb/UsbNotificationHandler;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/usb/UsbNotificationHandler;->sendMessageDelayed(III)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/usb/UsbNotificationHandler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private sendMessageDelayed(III)V
    .locals 3
    .parameter "what"
    .parameter "arg"
    .parameter "delay"

    .prologue
    .line 110
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 111
    .local v0, m:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 112
    int-to-long v1, p3

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 113
    return-void
.end method


# virtual methods
.method public clearAllNotificaton()V
    .locals 3

    .prologue
    .line 157
    iget-object v2, p0, Lcom/android/server/usb/UsbNotificationHandler;->map:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 158
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 160
    .local v1, key:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbNotificationHandler;->clearNotification(I)V

    goto :goto_0

    .line 162
    .end local v1           #key:Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method public clearNotification(I)V
    .locals 3
    .parameter "key"

    .prologue
    .line 166
    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler;->map:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler;->map:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;

    .line 168
    .local v0, work:Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;
    iget-boolean v1, p0, Lcom/android/server/usb/UsbNotificationHandler;->mReady:Z

    if-nez v1, :cond_1

    .line 169
    invoke-virtual {v0}, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->clearAll()V

    .line 175
    .end local v0           #work:Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;
    :cond_0
    :goto_0
    return-void

    .line 171
    .restart local v0       #work:Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->notStayNofication()V

    goto :goto_0
.end method

.method public clearNotification(Ljava/lang/String;)V
    .locals 2
    .parameter "id"

    .prologue
    .line 178
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 179
    .local v0, key:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbNotificationHandler;->clearNotification(I)V

    .line 180
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 5
    .parameter "fd"
    .parameter "pw"

    .prologue
    .line 464
    const-string v3, "  Notification : "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 465
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    ready : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/usb/UsbNotificationHandler;->mReady:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 467
    iget-object v3, p0, Lcom/android/server/usb/UsbNotificationHandler;->map:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 468
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 469
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 470
    .local v1, key:Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/server/usb/UsbNotificationHandler;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;

    .line 471
    .local v2, work:Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->getStringId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->countLists()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 473
    .end local v1           #key:Ljava/lang/Integer;
    .end local v2           #work:Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;
    :cond_0
    return-void
.end method

.method public enqueueNotification(IIIZLandroid/app/PendingIntent;ZLjava/lang/String;)V
    .locals 9
    .parameter "titleId"
    .parameter "messageId"
    .parameter "icon"
    .parameter "dismissable"
    .parameter "pi"
    .parameter "keep"
    .parameter "szId"

    .prologue
    .line 120
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/usb/UsbNotificationHandler;->enqueueNotification(IIIZZLandroid/app/PendingIntent;ZLjava/lang/String;)V

    .line 121
    return-void
.end method

.method public enqueueNotification(IIIZZLandroid/app/PendingIntent;ZLjava/lang/String;)V
    .locals 13
    .parameter "titleId"
    .parameter "messageId"
    .parameter "icon"
    .parameter "visible"
    .parameter "dismissable"
    .parameter "pi"
    .parameter "keep"
    .parameter "device"

    .prologue
    .line 125
    new-instance v1, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;-><init>(Lcom/android/server/usb/UsbNotificationHandler;IIIZZLandroid/app/PendingIntent;ZLjava/lang/String;)V

    .line 126
    .local v1, unit:Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;
    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 127
    .local v11, key:Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/server/usb/UsbNotificationHandler;->map:Ljava/util/HashMap;

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    iget-object v2, p0, Lcom/android/server/usb/UsbNotificationHandler;->map:Ljava/util/HashMap;

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;

    .line 129
    .local v12, work:Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;
    invoke-virtual {v12, v1}, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->push(Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;)V

    .line 135
    :goto_0
    return-void

    .line 131
    .end local v12           #work:Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;
    :cond_0
    new-instance v12, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;

    move-object/from16 v0, p8

    invoke-direct {v12, p0, v0}, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;-><init>(Lcom/android/server/usb/UsbNotificationHandler;Ljava/lang/String;)V

    .line 132
    .restart local v12       #work:Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;
    iget-object v2, p0, Lcom/android/server/usb/UsbNotificationHandler;->map:Ljava/util/HashMap;

    invoke-virtual {v2, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-virtual {v12, v1}, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->push(Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;)V

    goto :goto_0
.end method

.method public enqueueNotification(IIIZZLjava/lang/String;)V
    .locals 9
    .parameter "titleId"
    .parameter "messageId"
    .parameter "icon"
    .parameter "dismissable"
    .parameter "keep"
    .parameter "szId"

    .prologue
    .line 116
    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move v7, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/usb/UsbNotificationHandler;->enqueueNotification(IIIZZLandroid/app/PendingIntent;ZLjava/lang/String;)V

    .line 117
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 83
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 85
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 87
    .local v0, key:I
    iget-boolean v2, p0, Lcom/android/server/usb/UsbNotificationHandler;->mReady:Z

    if-eqz v2, :cond_0

    .line 88
    iget-object v2, p0, Lcom/android/server/usb/UsbNotificationHandler;->map:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    iget-object v2, p0, Lcom/android/server/usb/UsbNotificationHandler;->map:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;

    .line 90
    .local v1, work:Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;
    invoke-virtual {v1}, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->update()V

    goto :goto_0

    .line 92
    .end local v1           #work:Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;
    :cond_1
    iget-object v2, p0, Lcom/android/server/usb/UsbNotificationHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_UPDATE_USBDEVICE : can\'t have a key ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 96
    .end local v0           #key:I
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 98
    .restart local v0       #key:I
    iget-object v2, p0, Lcom/android/server/usb/UsbNotificationHandler;->map:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 99
    iget-object v2, p0, Lcom/android/server/usb/UsbNotificationHandler;->map:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;

    .line 100
    .restart local v1       #work:Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;
    invoke-virtual {v1}, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->remove()V

    goto :goto_0

    .line 102
    .end local v1           #work:Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;
    :cond_2
    iget-object v2, p0, Lcom/android/server/usb/UsbNotificationHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_EXPIRED_USBDEVICE : can\'t have a key ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public readyNotification()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 137
    iput-boolean v4, p0, Lcom/android/server/usb/UsbNotificationHandler;->mReady:Z

    .line 138
    iget-object v2, p0, Lcom/android/server/usb/UsbNotificationHandler;->map:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 139
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 141
    .local v1, key:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/usb/UsbNotificationHandler;->sendMessageDelayed(III)V

    goto :goto_0

    .line 143
    .end local v1           #key:Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method public reflashNotificaton()V
    .locals 4

    .prologue
    .line 147
    iget-object v3, p0, Lcom/android/server/usb/UsbNotificationHandler;->map:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 148
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 149
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 150
    .local v1, key:Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/server/usb/UsbNotificationHandler;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;

    .line 151
    .local v2, work:Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;
    invoke-virtual {v2}, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->reflash()V

    goto :goto_0

    .line 153
    .end local v1           #key:Ljava/lang/Integer;
    .end local v2           #work:Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;
    :cond_0
    return-void
.end method
