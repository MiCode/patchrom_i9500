.class Lcom/sec/android/smartface/SmartFaceManager$SmartFaceClient;
.super Lcom/sec/android/smartface/ISmartFaceClient$Stub;
.source "SmartFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/smartface/SmartFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartFaceClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/smartface/SmartFaceManager;


# direct methods
.method constructor <init>(Lcom/sec/android/smartface/SmartFaceManager;)V
    .locals 2

    .prologue
    .line 347
    iput-object p1, p0, Lcom/sec/android/smartface/SmartFaceManager$SmartFaceClient;->this$0:Lcom/sec/android/smartface/SmartFaceManager;

    invoke-direct {p0}, Lcom/sec/android/smartface/ISmartFaceClient$Stub;-><init>()V

    .line 348
    const-string v0, "SmartFaceManager"

    const-string v1, "New SmartFaceClient"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    return-void
.end method


# virtual methods
.method public onInfo(Lcom/sec/android/smartface/FaceInfo;I)V
    .locals 3
    .parameter "data"
    .parameter "service_type"

    .prologue
    const/4 v2, 0x0

    .line 353
    iget-object v1, p0, Lcom/sec/android/smartface/SmartFaceManager$SmartFaceClient;->this$0:Lcom/sec/android/smartface/SmartFaceManager;

    #getter for: Lcom/sec/android/smartface/SmartFaceManager;->mEventHandler:Lcom/sec/android/smartface/SmartFaceManager$EventHandler;
    invoke-static {v1}, Lcom/sec/android/smartface/SmartFaceManager;->access$300(Lcom/sec/android/smartface/SmartFaceManager;)Lcom/sec/android/smartface/SmartFaceManager$EventHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/sec/android/smartface/SmartFaceManager$SmartFaceClient;->this$0:Lcom/sec/android/smartface/SmartFaceManager;

    #getter for: Lcom/sec/android/smartface/SmartFaceManager;->mEventHandler:Lcom/sec/android/smartface/SmartFaceManager$EventHandler;
    invoke-static {v1}, Lcom/sec/android/smartface/SmartFaceManager;->access$300(Lcom/sec/android/smartface/SmartFaceManager;)Lcom/sec/android/smartface/SmartFaceManager$EventHandler;

    move-result-object v1

    invoke-virtual {v1, p2, v2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 355
    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/android/smartface/SmartFaceManager$SmartFaceClient;->this$0:Lcom/sec/android/smartface/SmartFaceManager;

    #getter for: Lcom/sec/android/smartface/SmartFaceManager;->mEventHandler:Lcom/sec/android/smartface/SmartFaceManager$EventHandler;
    invoke-static {v1}, Lcom/sec/android/smartface/SmartFaceManager;->access$300(Lcom/sec/android/smartface/SmartFaceManager;)Lcom/sec/android/smartface/SmartFaceManager$EventHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 361
    .end local v0           #m:Landroid/os/Message;
    :goto_0
    return-void

    .line 359
    :cond_0
    const-string v1, "SmartFaceManager"

    const-string v2, "EventHandler is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
