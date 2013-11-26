.class Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$1;
.super Landroid/os/Handler;
.source "TwGLDualShotMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 90
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 92
    :pswitch_0
    const-string v0, "TwGLDualShotMenu"

    const-string v1, "Hide Boundry"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;)Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;)Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->hideBoundryRect()V

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;)Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setGrowable(Z)V

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CommonEngine;->setEffectVisibleSync(Z)V

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
