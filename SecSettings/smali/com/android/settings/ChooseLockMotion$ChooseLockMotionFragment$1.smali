.class Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment$1;
.super Landroid/os/Handler;
.source "ChooseLockMotion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment$1;->this$0:Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 79
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 84
    :goto_0
    return-void

    .line 81
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment$1;->this$0:Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment;

    #calls: Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment;->updateAnimation()V
    invoke-static {v0}, Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment;->access$000(Lcom/android/settings_ex/ChooseLockMotion$ChooseLockMotionFragment;)V

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
    .end packed-switch
.end method
