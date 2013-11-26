.class Lcom/sec/android/app/camera/glwidget/TwGLWheelList$3;
.super Ljava/lang/Object;
.source "TwGLWheelList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->playSwipeSound()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)V
    .locals 0

    .prologue
    .line 800
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 803
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mSwipeSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$1500(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mSwipeSoundId:I
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$1300(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mStreamVolume:I
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$1400(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mStreamVolume:I
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$1400(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)I

    move-result v3

    int-to-float v3, v3

    const/high16 v6, 0x3f80

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 804
    return-void
.end method
