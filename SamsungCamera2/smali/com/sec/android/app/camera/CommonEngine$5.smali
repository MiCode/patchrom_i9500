.class Lcom/sec/android/app/camera/CommonEngine$5;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CommonEngine;->doStartEngineAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CommonEngine;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CommonEngine;)V
    .locals 0

    .prologue
    .line 4491
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine$5;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 4493
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$5;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    #calls: Lcom/sec/android/app/camera/CommonEngine;->openCameraDevice()V
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$3200(Lcom/sec/android/app/camera/CommonEngine;)V

    .line 4496
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$5;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$5;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCeState;->handleMessage(Landroid/os/Message;)V

    .line 4497
    return-void
.end method
