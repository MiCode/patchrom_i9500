.class Lcom/android/server/toolkit/ToolkitManagerService$1;
.super Landroid/os/Handler;
.source "ToolkitManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/toolkit/ToolkitManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/toolkit/ToolkitManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/toolkit/ToolkitManagerService;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/android/server/toolkit/ToolkitManagerService$1;->this$0:Lcom/android/server/toolkit/ToolkitManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 344
    const/4 v1, 0x0

    .line 345
    .local v1, receiveData:Lcom/android/server/toolkit/ToolkitManagerService$ReceiveData;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 395
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 347
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1           #receiveData:Lcom/android/server/toolkit/ToolkitManagerService$ReceiveData;
    check-cast v1, Lcom/android/server/toolkit/ToolkitManagerService$ReceiveData;

    .line 348
    .restart local v1       #receiveData:Lcom/android/server/toolkit/ToolkitManagerService$ReceiveData;
    iget-object v2, p0, Lcom/android/server/toolkit/ToolkitManagerService$1;->this$0:Lcom/android/server/toolkit/ToolkitManagerService;

    iget-object v3, v1, Lcom/android/server/toolkit/ToolkitManagerService$ReceiveData;->mIntent:Landroid/content/Intent;

    iget v4, v1, Lcom/android/server/toolkit/ToolkitManagerService$ReceiveData;->mType:I

    iget-object v5, v1, Lcom/android/server/toolkit/ToolkitManagerService$ReceiveData;->mBundle:Landroid/os/Bundle;

    #calls: Lcom/android/server/toolkit/ToolkitManagerService;->SendData(Landroid/content/Intent;ILandroid/os/Bundle;)Z
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/toolkit/ToolkitManagerService;->access$000(Lcom/android/server/toolkit/ToolkitManagerService;Landroid/content/Intent;ILandroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 349
    iget-object v2, p0, Lcom/android/server/toolkit/ToolkitManagerService$1;->this$0:Lcom/android/server/toolkit/ToolkitManagerService;

    const/4 v3, 0x1

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v5, 0x3e8

    #calls: Lcom/android/server/toolkit/ToolkitManagerService;->SendMessage(ILjava/lang/Object;I)V
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/toolkit/ToolkitManagerService;->access$100(Lcom/android/server/toolkit/ToolkitManagerService;ILjava/lang/Object;I)V

    goto :goto_0

    .line 354
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/toolkit/ToolkitManagerService$1;->this$0:Lcom/android/server/toolkit/ToolkitManagerService;

    #getter for: Lcom/android/server/toolkit/ToolkitManagerService;->mTabWindow:Lcom/android/server/toolkit/ToolkitTabDialog;
    invoke-static {v2}, Lcom/android/server/toolkit/ToolkitManagerService;->access$200(Lcom/android/server/toolkit/ToolkitManagerService;)Lcom/android/server/toolkit/ToolkitTabDialog;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 355
    iget-object v2, p0, Lcom/android/server/toolkit/ToolkitManagerService$1;->this$0:Lcom/android/server/toolkit/ToolkitManagerService;

    #getter for: Lcom/android/server/toolkit/ToolkitManagerService;->mTabWindow:Lcom/android/server/toolkit/ToolkitTabDialog;
    invoke-static {v2}, Lcom/android/server/toolkit/ToolkitManagerService;->access$200(Lcom/android/server/toolkit/ToolkitManagerService;)Lcom/android/server/toolkit/ToolkitTabDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 358
    :cond_1
    iget-object v2, p0, Lcom/android/server/toolkit/ToolkitManagerService$1;->this$0:Lcom/android/server/toolkit/ToolkitManagerService;

    new-instance v3, Lcom/android/server/toolkit/ToolkitTabDialog;

    iget-object v4, p0, Lcom/android/server/toolkit/ToolkitManagerService$1;->this$0:Lcom/android/server/toolkit/ToolkitManagerService;

    #getter for: Lcom/android/server/toolkit/ToolkitManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/toolkit/ToolkitManagerService;->access$300(Lcom/android/server/toolkit/ToolkitManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/toolkit/ToolkitTabDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/android/server/toolkit/ToolkitManagerService;->mTabWindow:Lcom/android/server/toolkit/ToolkitTabDialog;
    invoke-static {v2, v3}, Lcom/android/server/toolkit/ToolkitManagerService;->access$202(Lcom/android/server/toolkit/ToolkitManagerService;Lcom/android/server/toolkit/ToolkitTabDialog;)Lcom/android/server/toolkit/ToolkitTabDialog;

    .line 359
    iget-object v2, p0, Lcom/android/server/toolkit/ToolkitManagerService$1;->this$0:Lcom/android/server/toolkit/ToolkitManagerService;

    #getter for: Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentPluginPackageNameList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/toolkit/ToolkitManagerService;->access$400(Lcom/android/server/toolkit/ToolkitManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/toolkit/ToolkitManagerService$1;->this$0:Lcom/android/server/toolkit/ToolkitManagerService;

    #getter for: Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentPluginPackageNameList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/toolkit/ToolkitManagerService;->access$400(Lcom/android/server/toolkit/ToolkitManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 360
    iget-object v2, p0, Lcom/android/server/toolkit/ToolkitManagerService$1;->this$0:Lcom/android/server/toolkit/ToolkitManagerService;

    #getter for: Lcom/android/server/toolkit/ToolkitManagerService;->mTabWindow:Lcom/android/server/toolkit/ToolkitTabDialog;
    invoke-static {v2}, Lcom/android/server/toolkit/ToolkitManagerService;->access$200(Lcom/android/server/toolkit/ToolkitManagerService;)Lcom/android/server/toolkit/ToolkitTabDialog;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/toolkit/ToolkitManagerService$1;->this$0:Lcom/android/server/toolkit/ToolkitManagerService;

    #getter for: Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentPluginPackageNameList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/toolkit/ToolkitManagerService;->access$400(Lcom/android/server/toolkit/ToolkitManagerService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/toolkit/ToolkitTabDialog;->setPackageList(Ljava/util/ArrayList;)V

    .line 361
    iget-object v2, p0, Lcom/android/server/toolkit/ToolkitManagerService$1;->this$0:Lcom/android/server/toolkit/ToolkitManagerService;

    #getter for: Lcom/android/server/toolkit/ToolkitManagerService;->mTabWindow:Lcom/android/server/toolkit/ToolkitTabDialog;
    invoke-static {v2}, Lcom/android/server/toolkit/ToolkitManagerService;->access$200(Lcom/android/server/toolkit/ToolkitManagerService;)Lcom/android/server/toolkit/ToolkitTabDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 363
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 364
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.MULTIWINDOW_TOOLKIT_INIT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    const-string v2, "android.intent.extra.REQUEST_WINDOW_MODE"

    const v3, 0x2002010

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 366
    const/high16 v2, 0x3000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 367
    iget-object v2, p0, Lcom/android/server/toolkit/ToolkitManagerService$1;->this$0:Lcom/android/server/toolkit/ToolkitManagerService;

    #getter for: Lcom/android/server/toolkit/ToolkitManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/toolkit/ToolkitManagerService;->access$300(Lcom/android/server/toolkit/ToolkitManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 368
    const-string v2, "ToolkitManagerService"

    const-string v3, "The empty app is run."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 373
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_3
    iget-object v2, p0, Lcom/android/server/toolkit/ToolkitManagerService$1;->this$0:Lcom/android/server/toolkit/ToolkitManagerService;

    #getter for: Lcom/android/server/toolkit/ToolkitManagerService;->mTabWindow:Lcom/android/server/toolkit/ToolkitTabDialog;
    invoke-static {v2}, Lcom/android/server/toolkit/ToolkitManagerService;->access$200(Lcom/android/server/toolkit/ToolkitManagerService;)Lcom/android/server/toolkit/ToolkitTabDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 374
    iget-object v2, p0, Lcom/android/server/toolkit/ToolkitManagerService$1;->this$0:Lcom/android/server/toolkit/ToolkitManagerService;

    #getter for: Lcom/android/server/toolkit/ToolkitManagerService;->mTabWindow:Lcom/android/server/toolkit/ToolkitTabDialog;
    invoke-static {v2}, Lcom/android/server/toolkit/ToolkitManagerService;->access$200(Lcom/android/server/toolkit/ToolkitManagerService;)Lcom/android/server/toolkit/ToolkitTabDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/toolkit/ToolkitTabDialog;->destroy()V

    goto/16 :goto_0

    .line 379
    :pswitch_4
    iget-object v2, p0, Lcom/android/server/toolkit/ToolkitManagerService$1;->this$0:Lcom/android/server/toolkit/ToolkitManagerService;

    #getter for: Lcom/android/server/toolkit/ToolkitManagerService;->mTabWindow:Lcom/android/server/toolkit/ToolkitTabDialog;
    invoke-static {v2}, Lcom/android/server/toolkit/ToolkitManagerService;->access$200(Lcom/android/server/toolkit/ToolkitManagerService;)Lcom/android/server/toolkit/ToolkitTabDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 380
    iget-object v2, p0, Lcom/android/server/toolkit/ToolkitManagerService$1;->this$0:Lcom/android/server/toolkit/ToolkitManagerService;

    #getter for: Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentPluginPackageNameList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/toolkit/ToolkitManagerService;->access$400(Lcom/android/server/toolkit/ToolkitManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 381
    iget-object v2, p0, Lcom/android/server/toolkit/ToolkitManagerService$1;->this$0:Lcom/android/server/toolkit/ToolkitManagerService;

    #getter for: Lcom/android/server/toolkit/ToolkitManagerService;->mTabWindow:Lcom/android/server/toolkit/ToolkitTabDialog;
    invoke-static {v2}, Lcom/android/server/toolkit/ToolkitManagerService;->access$200(Lcom/android/server/toolkit/ToolkitManagerService;)Lcom/android/server/toolkit/ToolkitTabDialog;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/toolkit/ToolkitManagerService$1;->this$0:Lcom/android/server/toolkit/ToolkitManagerService;

    #getter for: Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentPluginPackageNameList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/toolkit/ToolkitManagerService;->access$400(Lcom/android/server/toolkit/ToolkitManagerService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/toolkit/ToolkitTabDialog;->setPackageList(Ljava/util/ArrayList;)V

    .line 382
    iget-object v2, p0, Lcom/android/server/toolkit/ToolkitManagerService$1;->this$0:Lcom/android/server/toolkit/ToolkitManagerService;

    #getter for: Lcom/android/server/toolkit/ToolkitManagerService;->mShowingTab:Z
    invoke-static {v2}, Lcom/android/server/toolkit/ToolkitManagerService;->access$500(Lcom/android/server/toolkit/ToolkitManagerService;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 383
    iget-object v2, p0, Lcom/android/server/toolkit/ToolkitManagerService$1;->this$0:Lcom/android/server/toolkit/ToolkitManagerService;

    #getter for: Lcom/android/server/toolkit/ToolkitManagerService;->mTabWindow:Lcom/android/server/toolkit/ToolkitTabDialog;
    invoke-static {v2}, Lcom/android/server/toolkit/ToolkitManagerService;->access$200(Lcom/android/server/toolkit/ToolkitManagerService;)Lcom/android/server/toolkit/ToolkitTabDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 386
    :cond_3
    iget-object v2, p0, Lcom/android/server/toolkit/ToolkitManagerService$1;->this$0:Lcom/android/server/toolkit/ToolkitManagerService;

    #getter for: Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentPluginPackageNameList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/toolkit/ToolkitManagerService;->access$400(Lcom/android/server/toolkit/ToolkitManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/toolkit/ToolkitManagerService$1;->this$0:Lcom/android/server/toolkit/ToolkitManagerService;

    #getter for: Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentPluginPackageNameList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/toolkit/ToolkitManagerService;->access$400(Lcom/android/server/toolkit/ToolkitManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 387
    :cond_4
    iget-object v2, p0, Lcom/android/server/toolkit/ToolkitManagerService$1;->this$0:Lcom/android/server/toolkit/ToolkitManagerService;

    #getter for: Lcom/android/server/toolkit/ToolkitManagerService;->mShowingTab:Z
    invoke-static {v2}, Lcom/android/server/toolkit/ToolkitManagerService;->access$500(Lcom/android/server/toolkit/ToolkitManagerService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 388
    iget-object v2, p0, Lcom/android/server/toolkit/ToolkitManagerService$1;->this$0:Lcom/android/server/toolkit/ToolkitManagerService;

    #getter for: Lcom/android/server/toolkit/ToolkitManagerService;->mTabWindow:Lcom/android/server/toolkit/ToolkitTabDialog;
    invoke-static {v2}, Lcom/android/server/toolkit/ToolkitManagerService;->access$200(Lcom/android/server/toolkit/ToolkitManagerService;)Lcom/android/server/toolkit/ToolkitTabDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/toolkit/ToolkitTabDialog;->destroy()V

    goto/16 :goto_0

    .line 345
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
