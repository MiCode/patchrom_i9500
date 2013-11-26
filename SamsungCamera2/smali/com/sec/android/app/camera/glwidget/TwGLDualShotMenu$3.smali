.class Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$3;
.super Landroid/view/OrientationEventListener;
.source "TwGLDualShotMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->setOrientationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 395
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 397
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 402
    :goto_0
    return-void

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->roundOrientation(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->setOrientationChanged(I)V

    goto :goto_0
.end method
