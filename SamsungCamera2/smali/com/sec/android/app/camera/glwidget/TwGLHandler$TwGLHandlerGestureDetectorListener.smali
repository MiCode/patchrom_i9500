.class public Lcom/sec/android/app/camera/glwidget/TwGLHandler$TwGLHandlerGestureDetectorListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TwGLHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TwGLHandlerGestureDetectorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLHandler;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLHandler;)V
    .locals 0

    .prologue
    .line 1209
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler$TwGLHandlerGestureDetectorListener;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler$TwGLHandlerGestureDetectorListener;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandlerMoveListener:Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerMoveListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLHandler;)Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerMoveListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler$TwGLHandlerGestureDetectorListener;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mDisable:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1213
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler$TwGLHandlerGestureDetectorListener;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandlerMoveListener:Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerMoveListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLHandler;)Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerMoveListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerMoveListener;->onLongPressed()V

    .line 1215
    :cond_0
    return-void
.end method
