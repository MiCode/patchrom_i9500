.class Lcom/sec/android/smartface/SmartFaceManager$EventHandler;
.super Landroid/os/Handler;
.source "SmartFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/smartface/SmartFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/smartface/SmartFaceManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/smartface/SmartFaceManager;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 380
    iput-object p1, p0, Lcom/sec/android/smartface/SmartFaceManager$EventHandler;->this$0:Lcom/sec/android/smartface/SmartFaceManager;

    .line 381
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 382
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 386
    iget-object v0, p0, Lcom/sec/android/smartface/SmartFaceManager$EventHandler;->this$0:Lcom/sec/android/smartface/SmartFaceManager;

    #getter for: Lcom/sec/android/smartface/SmartFaceManager;->mListener:Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener;
    invoke-static {v0}, Lcom/sec/android/smartface/SmartFaceManager;->access$400(Lcom/sec/android/smartface/SmartFaceManager;)Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/sec/android/smartface/SmartFaceManager$EventHandler;->this$0:Lcom/sec/android/smartface/SmartFaceManager;

    #getter for: Lcom/sec/android/smartface/SmartFaceManager;->mListener:Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener;
    invoke-static {v0}, Lcom/sec/android/smartface/SmartFaceManager;->access$400(Lcom/sec/android/smartface/SmartFaceManager;)Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/smartface/FaceInfo;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-interface {v1, v0, v2}, Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener;->onInfo(Lcom/sec/android/smartface/FaceInfo;I)V

    .line 394
    :goto_0
    return-void

    .line 392
    :cond_0
    const-string v0, "SmartFaceManager"

    const-string v1, "Listener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
