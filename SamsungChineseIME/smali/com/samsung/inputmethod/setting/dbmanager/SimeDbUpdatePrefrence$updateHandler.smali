.class Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence$updateHandler;
.super Landroid/os/Handler;
.source "SimeDbUpdatePrefrence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "updateHandler"
.end annotation


# instance fields
.field mParentRefrence:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 212
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 213
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence$updateHandler;->mParentRefrence:Ljava/lang/ref/WeakReference;

    .line 214
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 219
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence$updateHandler;->mParentRefrence:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;

    .line 221
    .local v1, mParent:Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;
    if-nez v1, :cond_0

    .line 286
    :goto_0
    return-void

    .line 224
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 262
    :pswitch_1
    #calls: Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->setItemStatus(ZI)V
    invoke-static {v1, v5, v5}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->access$200(Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;ZI)V

    goto :goto_0

    .line 227
    :pswitch_2
    #calls: Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->setItemStatus(ZI)V
    invoke-static {v1, v3, v5}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->access$200(Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;ZI)V

    goto :goto_0

    .line 231
    :pswitch_3
    #calls: Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->setItemStatus(ZI)V
    invoke-static {v1, v5, v5}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->access$200(Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;ZI)V

    .line 232
    #getter for: Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->access$300(Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;)Landroid/content/Context;

    move-result-object v2

    #getter for: Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->access$300(Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b00a1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 240
    :pswitch_4
    #calls: Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->setItemStatus(ZI)V
    invoke-static {v1, v5, v5}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->access$200(Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;ZI)V

    .line 241
    const/4 v2, 0x3

    #calls: Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->showAlertDialog(I)V
    invoke-static {v1, v2}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->access$400(Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;I)V

    goto :goto_0

    .line 245
    :pswitch_5
    #calls: Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->setItemStatus(ZI)V
    invoke-static {v1, v5, v5}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->access$200(Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;ZI)V

    .line 246
    const/4 v2, 0x4

    #calls: Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->showAlertDialog(I)V
    invoke-static {v1, v2}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->access$400(Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;I)V

    goto :goto_0

    .line 252
    :pswitch_6
    #calls: Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->setItemStatus(ZI)V
    invoke-static {v1, v5, v5}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->access$200(Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;ZI)V

    .line 253
    const/16 v2, 0x8

    #calls: Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->showAlertDialog(I)V
    invoke-static {v1, v2}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->access$400(Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;I)V

    goto :goto_0

    .line 257
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/inputmethod/dbmanager/SimeDownloadInfo;

    .line 258
    .local v0, downloadInfo:Lcom/samsung/inputmethod/dbmanager/SimeDownloadInfo;
    iget v2, v0, Lcom/samsung/inputmethod/dbmanager/SimeDownloadInfo;->percent:I

    #calls: Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->setItemStatus(ZI)V
    invoke-static {v1, v3, v2}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->access$200(Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;ZI)V

    goto :goto_0

    .line 274
    .end local v0           #downloadInfo:Lcom/samsung/inputmethod/dbmanager/SimeDownloadInfo;
    :pswitch_8
    #calls: Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->setItemStatus(ZI)V
    invoke-static {v1, v5, v5}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->access$200(Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;ZI)V

    .line 275
    #getter for: Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->access$300(Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;)Landroid/content/Context;

    move-result-object v2

    #getter for: Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->access$300(Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b00b2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 224
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
