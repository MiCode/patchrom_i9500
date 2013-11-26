.class Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$1;
.super Landroid/view/OrientationEventListener;
.source "TwGLModeMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->setOrientationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 459
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    const/4 v3, 0x1

    .line 461
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    invoke-static {p1}, Lcom/sec/android/glview/TwGLUtil;->getGLOrientationBySystemOrientation(I)I

    move-result v0

    .line 465
    .local v0, newOrientation:I
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->access$1000(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mLastOrientation:I
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->access$1100(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 466
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;

    #setter for: Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mLastOrientation:I
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->access$1102(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;I)I

    .line 467
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuType:I
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->access$1200(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 468
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mLastOrientation:I
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->access$1100(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)I

    move-result v2

    #calls: Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->initGridMode(ZI)V
    invoke-static {v1, v3, v2}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->access$1300(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;ZI)V

    goto :goto_0

    .line 470
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mWheelMenu:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->access$1400(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mLastOrientation:I
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->access$1100(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->refreshList(I)V

    goto :goto_0
.end method
