.class Lcom/sec/android/app/camera/ShareShot$1$1;
.super Ljava/util/TimerTask;
.source "ShareShot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/ShareShot$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/ShareShot$1;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/ShareShot$1;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/sec/android/app/camera/ShareShot$1$1;->this$1:Lcom/sec/android/app/camera/ShareShot$1;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot$1$1;->this$1:Lcom/sec/android/app/camera/ShareShot$1;

    iget-object v0, v0, Lcom/sec/android/app/camera/ShareShot$1;->this$0:Lcom/sec/android/app/camera/ShareShot;

    iget-object v0, v0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isActivityDestoying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot$1$1;->this$1:Lcom/sec/android/app/camera/ShareShot$1;

    iget-object v0, v0, Lcom/sec/android/app/camera/ShareShot$1;->this$0:Lcom/sec/android/app/camera/ShareShot;

    iget-object v0, v0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot$1$1;->this$1:Lcom/sec/android/app/camera/ShareShot$1;

    iget-object v0, v0, Lcom/sec/android/app/camera/ShareShot$1;->this$0:Lcom/sec/android/app/camera/ShareShot;

    iget-object v0, v0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot$1$1;->this$1:Lcom/sec/android/app/camera/ShareShot$1;

    iget-object v0, v0, Lcom/sec/android/app/camera/ShareShot$1;->this$0:Lcom/sec/android/app/camera/ShareShot;

    iget-object v0, v0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot$1$1;->this$1:Lcom/sec/android/app/camera/ShareShot$1;

    iget-object v0, v0, Lcom/sec/android/app/camera/ShareShot$1;->this$0:Lcom/sec/android/app/camera/ShareShot;

    iget-object v0, v0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->updateThumbnailButton()V

    .line 120
    :cond_0
    return-void
.end method
