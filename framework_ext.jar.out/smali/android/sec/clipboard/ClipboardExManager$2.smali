.class Landroid/sec/clipboard/ClipboardExManager$2;
.super Ljava/lang/Object;
.source "ClipboardExManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/sec/clipboard/ClipboardExManager;->setData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/sec/clipboard/ClipboardExManager;

.field final synthetic val$clipData:Landroid/sec/clipboard/data/ClipboardData;


# direct methods
.method constructor <init>(Landroid/sec/clipboard/ClipboardExManager;Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Landroid/sec/clipboard/ClipboardExManager$2;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    iput-object p2, p0, Landroid/sec/clipboard/ClipboardExManager$2;->val$clipData:Landroid/sec/clipboard/data/ClipboardData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 349
    :try_start_0
    iget-object v4, p0, Landroid/sec/clipboard/ClipboardExManager$2;->val$clipData:Landroid/sec/clipboard/data/ClipboardData;

    if-eqz v4, :cond_0

    #calls: Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->access$200()Landroid/sec/clipboard/IClipboardService;

    move-result-object v4

    iget-object v5, p0, Landroid/sec/clipboard/ClipboardExManager$2;->val$clipData:Landroid/sec/clipboard/data/ClipboardData;

    invoke-virtual {v5}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v5

    iget-object v6, p0, Landroid/sec/clipboard/ClipboardExManager$2;->val$clipData:Landroid/sec/clipboard/data/ClipboardData;

    invoke-interface {v4, v5, v6}, Landroid/sec/clipboard/IClipboardService;->SetClipboardData(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 351
    .local v0, Result:Z
    :goto_0
    iget-object v3, p0, Landroid/sec/clipboard/ClipboardExManager$2;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    #getter for: Landroid/sec/clipboard/ClipboardExManager;->mSetDataHandler:Landroid/os/Handler;
    invoke-static {v3}, Landroid/sec/clipboard/ClipboardExManager;->access$300(Landroid/sec/clipboard/ClipboardExManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 353
    .local v2, msg:Landroid/os/Message;
    if-eqz v0, :cond_1

    .line 354
    const/4 v3, 0x0

    iput v3, v2, Landroid/os/Message;->what:I

    .line 358
    :goto_1
    iget-object v3, p0, Landroid/sec/clipboard/ClipboardExManager$2;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    #getter for: Landroid/sec/clipboard/ClipboardExManager;->mSetDataHandler:Landroid/os/Handler;
    invoke-static {v3}, Landroid/sec/clipboard/ClipboardExManager;->access$300(Landroid/sec/clipboard/ClipboardExManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 364
    .end local v0           #Result:Z
    .end local v2           #msg:Landroid/os/Message;
    :goto_2
    return-void

    :cond_0
    move v0, v3

    .line 349
    goto :goto_0

    .line 356
    .restart local v0       #Result:Z
    .restart local v2       #msg:Landroid/os/Message;
    :cond_1
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 360
    .end local v0           #Result:Z
    .end local v2           #msg:Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 361
    .local v1, e:Ljava/lang/Exception;
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "ClipboardServiceEx"

    const-string v4, "setData(ClipboardData)(RemoteException): "

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method
