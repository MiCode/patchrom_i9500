.class Landroid/hardware/motion/MotionRecognitionService$5;
.super Landroid/os/Handler;
.source "MotionRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/MotionRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/motion/MotionRecognitionService;


# direct methods
.method constructor <init>(Landroid/hardware/motion/MotionRecognitionService;)V
    .locals 0

    .prologue
    .line 629
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionService$5;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 632
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_1

    .line 633
    const-string v1, "MotionRecognitionService"

    const-string v2, " send reactive alert "

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$5;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v1, v1, Landroid/hardware/motion/MotionRecognitionService;->mEventPool:Landroid/hardware/motion/MotionRecognitionService$EventPool;

    invoke-virtual {v1}, Landroid/hardware/motion/MotionRecognitionService$EventPool;->obtain()Landroid/hardware/motion/MREvent;

    move-result-object v0

    .line 635
    .local v0, motionEvent:Landroid/hardware/motion/MREvent;
    const/16 v1, 0x43

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MREvent;->setMotion(I)V

    .line 636
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$5;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #calls: Landroid/hardware/motion/MotionRecognitionService;->sendMotionEvent(Landroid/hardware/motion/MREvent;)V
    invoke-static {v1, v0}, Landroid/hardware/motion/MotionRecognitionService;->access$1900(Landroid/hardware/motion/MotionRecognitionService;Landroid/hardware/motion/MREvent;)V

    .line 644
    .end local v0           #motionEvent:Landroid/hardware/motion/MREvent;
    :cond_0
    :goto_0
    return-void

    .line 638
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_0

    .line 639
    const-string v1, "MotionRecognitionService"

    const-string v2, " send flat to new listner"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$5;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v1, v1, Landroid/hardware/motion/MotionRecognitionService;->mEventPool:Landroid/hardware/motion/MotionRecognitionService$EventPool;

    invoke-virtual {v1}, Landroid/hardware/motion/MotionRecognitionService$EventPool;->obtain()Landroid/hardware/motion/MREvent;

    move-result-object v0

    .line 641
    .restart local v0       #motionEvent:Landroid/hardware/motion/MREvent;
    const/16 v1, 0x47

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MREvent;->setMotion(I)V

    .line 642
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$5;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #calls: Landroid/hardware/motion/MotionRecognitionService;->sendMotionEvent(Landroid/hardware/motion/MREvent;)V
    invoke-static {v1, v0}, Landroid/hardware/motion/MotionRecognitionService;->access$1900(Landroid/hardware/motion/MotionRecognitionService;Landroid/hardware/motion/MREvent;)V

    goto :goto_0
.end method
