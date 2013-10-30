.class Lcom/nuance/connect/language/KLManager$2;
.super Ljava/lang/Object;
.source "KLManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/language/KLManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/language/KLManager;


# direct methods
.method constructor <init>(Lcom/nuance/connect/language/KLManager;)V
    .locals 0
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/nuance/connect/language/KLManager$2;->this$0:Lcom/nuance/connect/language/KLManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8
    .parameter "className"
    .parameter "service"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 358
    if-nez p2, :cond_0

    .line 359
    iget-object v3, p0, Lcom/nuance/connect/language/KLManager$2;->this$0:Lcom/nuance/connect/language/KLManager;

    #setter for: Lcom/nuance/connect/language/KLManager;->mConnectBound:Z
    invoke-static {v3, v6}, Lcom/nuance/connect/language/KLManager;->access$002(Lcom/nuance/connect/language/KLManager;Z)Z

    .line 383
    :goto_0
    return-void

    .line 364
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/nuance/connect/language/KLManager$2;->this$0:Lcom/nuance/connect/language/KLManager;

    new-instance v4, Landroid/os/Messenger;

    invoke-direct {v4, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v4, v3, Lcom/nuance/connect/language/KLManager;->mSendMessenger:Landroid/os/Messenger;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :goto_1
    const/16 v3, 0xc9

    invoke-static {v7, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 372
    .local v2, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 374
    .local v0, data:Landroid/os/Bundle;
    const-string v3, "ENABLE_DATA_CONNECTION"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 375
    const-string v3, "HANDLER_LIST"

    iget-object v4, p0, Lcom/nuance/connect/language/KLManager$2;->this$0:Lcom/nuance/connect/language/KLManager;

    #getter for: Lcom/nuance/connect/language/KLManager;->handlerRegistry:Lcom/nuance/swype/connect/api/HandlerRegistry;
    invoke-static {v4}, Lcom/nuance/connect/language/KLManager;->access$100(Lcom/nuance/connect/language/KLManager;)Lcom/nuance/swype/connect/api/HandlerRegistry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/connect/api/HandlerRegistry;->getRegisteredHandlers()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 377
    iget-object v3, p0, Lcom/nuance/connect/language/KLManager$2;->this$0:Lcom/nuance/connect/language/KLManager;

    invoke-virtual {v3, v2}, Lcom/nuance/connect/language/KLManager;->sendConnectMessage(Landroid/os/Message;)Z

    .line 378
    iget-object v3, p0, Lcom/nuance/connect/language/KLManager$2;->this$0:Lcom/nuance/connect/language/KLManager;

    const/16 v4, 0x119

    const-string v5, "URL=https://api-test.swypeconnect.com/\nDEFAULT_DELAY=300\nSTABLE_CELLUAR_CONNECTION_THRESHOLD=30\nSTABLE_WIFI_CONNECTION_THRESHOLD=30\nLOGGING=1\nPROPERTY_LANG_AUTO_LIST=-1"

    invoke-virtual {v3, v4, v5}, Lcom/nuance/connect/language/KLManager;->sendConnectMessage(ILjava/lang/Object;)Z

    .line 379
    iget-object v3, p0, Lcom/nuance/connect/language/KLManager$2;->this$0:Lcom/nuance/connect/language/KLManager;

    const/16 v4, 0xde

    invoke-virtual {v3, v4, v7, v6, v6}, Lcom/nuance/connect/language/KLManager;->sendConnectMessage(ILjava/lang/Object;II)Z

    .line 380
    iget-object v3, p0, Lcom/nuance/connect/language/KLManager$2;->this$0:Lcom/nuance/connect/language/KLManager;

    invoke-virtual {v3}, Lcom/nuance/connect/language/KLManager;->sendRefreshFrequency()V

    .line 382
    iget-object v3, p0, Lcom/nuance/connect/language/KLManager$2;->this$0:Lcom/nuance/connect/language/KLManager;

    #calls: Lcom/nuance/connect/language/KLManager;->processQueuedMessages()V
    invoke-static {v3}, Lcom/nuance/connect/language/KLManager;->access$200(Lcom/nuance/connect/language/KLManager;)V

    goto :goto_0

    .line 365
    .end local v0           #data:Landroid/os/Bundle;
    .end local v2           #msg:Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 366
    .local v1, ex:Ljava/lang/NullPointerException;
    iget-object v3, p0, Lcom/nuance/connect/language/KLManager$2;->this$0:Lcom/nuance/connect/language/KLManager;

    #setter for: Lcom/nuance/connect/language/KLManager;->mConnectBound:Z
    invoke-static {v3, v6}, Lcom/nuance/connect/language/KLManager;->access$002(Lcom/nuance/connect/language/KLManager;Z)Z

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .parameter "className"

    .prologue
    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected class="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 389
    iget-object v1, p0, Lcom/nuance/connect/language/KLManager$2;->this$0:Lcom/nuance/connect/language/KLManager;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/nuance/connect/language/KLManager;->mSendMessenger:Landroid/os/Messenger;

    .line 390
    iget-object v1, p0, Lcom/nuance/connect/language/KLManager$2;->this$0:Lcom/nuance/connect/language/KLManager;

    const/4 v2, 0x0

    #setter for: Lcom/nuance/connect/language/KLManager;->mConnectBound:Z
    invoke-static {v1, v2}, Lcom/nuance/connect/language/KLManager;->access$002(Lcom/nuance/connect/language/KLManager;Z)Z

    .line 393
    new-instance v0, Lcom/nuance/connect/language/KLManager$2$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/language/KLManager$2$1;-><init>(Lcom/nuance/connect/language/KLManager$2;)V

    .line 403
    .local v0, r:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/nuance/connect/language/KLManager$2;->this$0:Lcom/nuance/connect/language/KLManager;

    #getter for: Lcom/nuance/connect/language/KLManager;->mHandler:Lcom/nuance/connect/language/KLManager$IncomingHandler;
    invoke-static {v1}, Lcom/nuance/connect/language/KLManager;->access$400(Lcom/nuance/connect/language/KLManager;)Lcom/nuance/connect/language/KLManager$IncomingHandler;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Lcom/nuance/connect/language/KLManager$IncomingHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 404
    return-void
.end method
