.class Lcom/android/settings_ex/motion/MotionTutorialSettings$1;
.super Landroid/os/Handler;
.source "MotionTutorialSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/motion/MotionTutorialSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/motion/MotionTutorialSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/motion/MotionTutorialSettings;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings$1;->this$0:Lcom/android/settings_ex/motion/MotionTutorialSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 123
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 128
    :goto_0
    return-void

    .line 125
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings$1;->this$0:Lcom/android/settings_ex/motion/MotionTutorialSettings;

    #calls: Lcom/android/settings_ex/motion/MotionTutorialSettings;->updateAnimation()V
    invoke-static {v0}, Lcom/android/settings_ex/motion/MotionTutorialSettings;->access$000(Lcom/android/settings_ex/motion/MotionTutorialSettings;)V

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
    .end packed-switch
.end method
