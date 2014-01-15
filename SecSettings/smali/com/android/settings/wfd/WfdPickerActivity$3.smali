.class Lcom/android/settings_ex/wfd/WfdPickerActivity$3;
.super Landroid/os/Handler;
.source "WfdPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wfd/WfdPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wfd/WfdPickerActivity;)V
    .locals 0

    .prologue
    .line 511
    iput-object p1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$3;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 513
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHandler : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 516
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$3;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCanShake:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$2302(Lcom/android/settings_ex/wfd/WfdPickerActivity;Z)Z

    .line 517
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$3;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;
    invoke-static {v0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$2400(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$3;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;
    invoke-static {v0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$2400(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$3;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMotionListener:Landroid/hardware/motion/MRListener;
    invoke-static {v1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$2500(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Landroid/hardware/motion/MRListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 520
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$3;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #calls: Lcom/android/settings_ex/wfd/WfdPickerActivity;->isP2pEnabled()Z
    invoke-static {v0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$2600(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Z

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$3;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    invoke-virtual {v0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$3;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$1000(Lcom/android/settings_ex/wfd/WfdPickerActivity;)I

    move-result v0

    if-eq v0, v4, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$3;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$1000(Lcom/android/settings_ex/wfd/WfdPickerActivity;)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$3;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$1000(Lcom/android/settings_ex/wfd/WfdPickerActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 524
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$3;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #calls: Lcom/android/settings_ex/wfd/WfdPickerActivity;->scanDevice()V
    invoke-static {v0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$1700(Lcom/android/settings_ex/wfd/WfdPickerActivity;)V

    .line 525
    :cond_2
    const/16 v0, 0x1e1

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 528
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$3;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #setter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCanShake:Z
    invoke-static {v0, v3}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$2302(Lcom/android/settings_ex/wfd/WfdPickerActivity;Z)Z

    .line 529
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$3;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;
    invoke-static {v0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$2400(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$3;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;
    invoke-static {v0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$2400(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$3;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMotionListener:Landroid/hardware/motion/MRListener;
    invoke-static {v1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$2500(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Landroid/hardware/motion/MRListener;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    goto :goto_0

    .line 514
    nop

    :pswitch_data_0
    .packed-switch 0x1e0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
