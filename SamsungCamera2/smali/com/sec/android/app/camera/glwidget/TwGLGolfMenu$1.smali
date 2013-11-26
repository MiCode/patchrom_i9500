.class Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu$1;
.super Landroid/view/OrientationEventListener;
.source "TwGLGolfMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->setOrientationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 261
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 263
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 272
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->roundOrientation(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mOrientation:I
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;)I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->roundOrientation(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    const v1, 0x7f0a01f9

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->roundOrientation(I)I

    move-result v1

    #setter for: Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mOrientation:I
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->access$002(Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;I)I

    goto :goto_0
.end method
