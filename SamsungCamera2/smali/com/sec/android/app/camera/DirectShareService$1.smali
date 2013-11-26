.class Lcom/sec/android/app/camera/DirectShareService$1;
.super Landroid/content/BroadcastReceiver;
.source "DirectShareService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/DirectShareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/DirectShareService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/DirectShareService;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const v9, 0x7f0202f6

    const/4 v8, 0x0

    .line 103
    if-nez p2, :cond_1

    .line 104
    const-string v4, "DirectShareService"

    const-string v5, "onReceive - intent is null"

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    const-string v4, "id"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 109
    .local v2, requestId:I
    const-string v3, ""

    .line 110
    .local v3, type:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/camera/DirectShareService;->getType(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 111
    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/camera/DirectShareService;->getType(I)Ljava/lang/String;

    move-result-object v3

    .line 114
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.sec.android.app.camera.directshare.PROGRESS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 115
    const-string v4, "photo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 116
    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    iget-object v5, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a0203

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/sec/android/app/camera/DirectShareService;->mNotificationProgressText:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/sec/android/app/camera/DirectShareService;->access$002(Lcom/sec/android/app/camera/DirectShareService;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    :goto_1
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    #getter for: Lcom/sec/android/app/camera/DirectShareService;->mNotificationTitle:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/camera/DirectShareService;->access$100(Lcom/sec/android/app/camera/DirectShareService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    #getter for: Lcom/sec/android/app/camera/DirectShareService;->mNotificationProgressText:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/camera/DirectShareService;->access$000(Lcom/sec/android/app/camera/DirectShareService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/16 v5, 0x64

    const-string v6, "progress"

    const/4 v7, 0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v4, v5, v6, v8}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 129
    .local v1, notification:Landroid/app/Notification;
    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    #getter for: Lcom/sec/android/app/camera/DirectShareService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v4}, Lcom/sec/android/app/camera/DirectShareService;->access$200(Lcom/sec/android/app/camera/DirectShareService;)Landroid/app/NotificationManager;

    move-result-object v4

    if-nez v4, :cond_3

    .line 130
    iget-object v5, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    const-string v6, "notification"

    invoke-virtual {v4, v6}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    #setter for: Lcom/sec/android/app/camera/DirectShareService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v5, v4}, Lcom/sec/android/app/camera/DirectShareService;->access$202(Lcom/sec/android/app/camera/DirectShareService;Landroid/app/NotificationManager;)Landroid/app/NotificationManager;

    .line 132
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    #getter for: Lcom/sec/android/app/camera/DirectShareService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v4}, Lcom/sec/android/app/camera/DirectShareService;->access$200(Lcom/sec/android/app/camera/DirectShareService;)Landroid/app/NotificationManager;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 118
    .end local v1           #notification:Landroid/app/Notification;
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    iget-object v5, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a0204

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/sec/android/app/camera/DirectShareService;->mNotificationProgressText:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/sec/android/app/camera/DirectShareService;->access$002(Lcom/sec/android/app/camera/DirectShareService;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 134
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.sec.android.app.camera.directshare.UPLOAD_ERROR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 135
    const-string v4, "DirectShareService"

    const-string v5, "INTENT_UPLOAD_ERROR"

    invoke-static {v4, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string v4, "photo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 138
    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    iget-object v5, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a0208

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/sec/android/app/camera/DirectShareService;->mNotificationResultText:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/sec/android/app/camera/DirectShareService;->access$302(Lcom/sec/android/app/camera/DirectShareService;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    iget-object v5, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a020c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/sec/android/app/camera/DirectShareService;->mToastTest:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/sec/android/app/camera/DirectShareService;->access$402(Lcom/sec/android/app/camera/DirectShareService;Ljava/lang/String;)Ljava/lang/String;

    .line 145
    :goto_2
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    #getter for: Lcom/sec/android/app/camera/DirectShareService;->mNotificationTitle:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/camera/DirectShareService;->access$100(Lcom/sec/android/app/camera/DirectShareService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    #getter for: Lcom/sec/android/app/camera/DirectShareService;->mNotificationResultText:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/camera/DirectShareService;->access$300(Lcom/sec/android/app/camera/DirectShareService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 151
    .restart local v1       #notification:Landroid/app/Notification;
    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    #getter for: Lcom/sec/android/app/camera/DirectShareService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v4}, Lcom/sec/android/app/camera/DirectShareService;->access$200(Lcom/sec/android/app/camera/DirectShareService;)Landroid/app/NotificationManager;

    move-result-object v4

    if-nez v4, :cond_6

    .line 152
    iget-object v5, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    const-string v6, "notification"

    invoke-virtual {v4, v6}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    #setter for: Lcom/sec/android/app/camera/DirectShareService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v5, v4}, Lcom/sec/android/app/camera/DirectShareService;->access$202(Lcom/sec/android/app/camera/DirectShareService;Landroid/app/NotificationManager;)Landroid/app/NotificationManager;

    .line 154
    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    #getter for: Lcom/sec/android/app/camera/DirectShareService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v4}, Lcom/sec/android/app/camera/DirectShareService;->access$200(Lcom/sec/android/app/camera/DirectShareService;)Landroid/app/NotificationManager;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 156
    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    #getter for: Lcom/sec/android/app/camera/DirectShareService;->mToastTest:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/camera/DirectShareService;->access$400(Lcom/sec/android/app/camera/DirectShareService;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 158
    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    const-string v5, "type"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/sec/android/app/camera/DirectShareService;->reTransferSendIntent(ILjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 141
    .end local v1           #notification:Landroid/app/Notification;
    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    iget-object v5, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a0209

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/sec/android/app/camera/DirectShareService;->mNotificationResultText:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/sec/android/app/camera/DirectShareService;->access$302(Lcom/sec/android/app/camera/DirectShareService;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    iget-object v5, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a020f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/sec/android/app/camera/DirectShareService;->mToastTest:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/sec/android/app/camera/DirectShareService;->access$402(Lcom/sec/android/app/camera/DirectShareService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_2

    .line 160
    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.sec.android.app.camera.directshare.SEND_COMPLETE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 161
    const-string v4, "DirectShareService"

    const-string v5, "INTENT_SEND_COMPLETE"

    invoke-static {v4, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string v4, "photo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 164
    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    iget-object v5, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a0206

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/sec/android/app/camera/DirectShareService;->mNotificationResultText:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/sec/android/app/camera/DirectShareService;->access$302(Lcom/sec/android/app/camera/DirectShareService;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    iget-object v5, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a020b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/sec/android/app/camera/DirectShareService;->mToastTest:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/sec/android/app/camera/DirectShareService;->access$402(Lcom/sec/android/app/camera/DirectShareService;Ljava/lang/String;)Ljava/lang/String;

    .line 171
    :goto_3
    const-string v4, "failedfileurlList"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 172
    .local v0, fileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_a

    .line 173
    const-string v4, "DirectShareService"

    const-string v5, "failed file transfer in send_complete. retry transfer"

    invoke-static {v4, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    invoke-virtual {v4, v2, v0}, Lcom/sec/android/app/camera/DirectShareService;->reTransferSendIntent(ILjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 167
    .end local v0           #fileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    iget-object v5, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a0207

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/sec/android/app/camera/DirectShareService;->mNotificationResultText:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/sec/android/app/camera/DirectShareService;->access$302(Lcom/sec/android/app/camera/DirectShareService;Ljava/lang/String;)Ljava/lang/String;

    .line 168
    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    iget-object v5, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a020e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/sec/android/app/camera/DirectShareService;->mToastTest:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/sec/android/app/camera/DirectShareService;->access$402(Lcom/sec/android/app/camera/DirectShareService;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_3

    .line 178
    .restart local v0       #fileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    #getter for: Lcom/sec/android/app/camera/DirectShareService;->mNotificationTitle:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/camera/DirectShareService;->access$100(Lcom/sec/android/app/camera/DirectShareService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    #getter for: Lcom/sec/android/app/camera/DirectShareService;->mNotificationResultText:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/camera/DirectShareService;->access$300(Lcom/sec/android/app/camera/DirectShareService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 184
    .restart local v1       #notification:Landroid/app/Notification;
    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    #getter for: Lcom/sec/android/app/camera/DirectShareService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v4}, Lcom/sec/android/app/camera/DirectShareService;->access$200(Lcom/sec/android/app/camera/DirectShareService;)Landroid/app/NotificationManager;

    move-result-object v4

    if-nez v4, :cond_b

    .line 185
    iget-object v5, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    const-string v6, "notification"

    invoke-virtual {v4, v6}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    #setter for: Lcom/sec/android/app/camera/DirectShareService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v5, v4}, Lcom/sec/android/app/camera/DirectShareService;->access$202(Lcom/sec/android/app/camera/DirectShareService;Landroid/app/NotificationManager;)Landroid/app/NotificationManager;

    .line 187
    :cond_b
    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    #getter for: Lcom/sec/android/app/camera/DirectShareService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v4}, Lcom/sec/android/app/camera/DirectShareService;->access$200(Lcom/sec/android/app/camera/DirectShareService;)Landroid/app/NotificationManager;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 189
    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    #getter for: Lcom/sec/android/app/camera/DirectShareService;->mToastTest:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/camera/DirectShareService;->access$400(Lcom/sec/android/app/camera/DirectShareService;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 191
    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/camera/DirectShareService;->removeCompletedState(I)V

    .line 193
    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/DirectShareService;->isCompletedTransfer()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 194
    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/DirectShareService;->finishService()V

    goto/16 :goto_0
.end method
