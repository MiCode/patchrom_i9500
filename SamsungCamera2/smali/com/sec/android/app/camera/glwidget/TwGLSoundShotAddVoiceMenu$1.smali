.class Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu$1;
.super Landroid/os/Handler;
.source "TwGLSoundShotAddVoiceMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 395
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 406
    :goto_0
    return-void

    .line 398
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;

    #calls: Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->setRecordProgressIncreased()V
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;)V

    goto :goto_0

    .line 401
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;

    iget-object v1, v1, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->qar:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->getVisualizationBands()[I

    move-result-object v0

    .line 402
    .local v0, mRecordingAmpitude:[I
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;

    #calls: Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->setRecoringAmplitude([I)V
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;[I)V

    .line 403
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;

    #calls: Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->updateRecordingAmplevel()V
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;)V

    goto :goto_0

    .line 395
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
