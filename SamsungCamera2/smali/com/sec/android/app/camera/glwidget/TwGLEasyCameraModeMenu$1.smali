.class Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$1;
.super Landroid/view/OrientationEventListener;
.source "TwGLEasyCameraModeMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->setOrientationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 227
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    .line 229
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    invoke-static {p1}, Lcom/sec/android/glview/TwGLUtil;->getGLOrientationBySystemOrientation(I)I

    move-result v0

    .line 233
    .local v0, newOrientation:I
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mLastOrientation:I
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->access$900(Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 234
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;

    #setter for: Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mLastOrientation:I
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->access$902(Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;I)I

    .line 235
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mLastOrientation:I
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->access$900(Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;)I

    move-result v3

    #calls: Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->init(ZI)V
    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->access$1000(Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;ZI)V

    goto :goto_0
.end method
