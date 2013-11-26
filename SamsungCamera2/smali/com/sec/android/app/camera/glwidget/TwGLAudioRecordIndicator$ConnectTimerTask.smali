.class Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator$ConnectTimerTask;
.super Ljava/util/TimerTask;
.source "TwGLAudioRecordIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectTimerTask"
.end annotation


# instance fields
.field mCnt:I

.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;)V
    .locals 1

    .prologue
    .line 71
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator$ConnectTimerTask;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator$ConnectTimerTask;->mCnt:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator$ConnectTimerTask;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 75
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator$ConnectTimerTask;->mCnt:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator$ConnectTimerTask;->mCnt:I

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator$ConnectTimerTask;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mRecordAmpIndicatorMicImage:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator$ConnectTimerTask;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mMicImageArray:[I
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;)[I

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator$ConnectTimerTask;->mCnt:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 77
    return-void
.end method
