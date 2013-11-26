.class Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton$2;
.super Ljava/lang/Object;
.source "TwGLItemThumbnailButton.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->refreshButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 230
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    #getter for: Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;)Lcom/sec/android/glview/TwGLView$OnTouchListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 231
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 232
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButtonHighlight:Lcom/sec/android/glview/TwGLNinePatch;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;)Lcom/sec/android/glview/TwGLNinePatch;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 240
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    #getter for: Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->access$800(Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;)Lcom/sec/android/glview/TwGLView$OnTouchListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-interface {v0, v1, p2}, Lcom/sec/android/glview/TwGLView$OnTouchListener;->onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 242
    :cond_1
    return v0

    .line 233
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 234
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->access$700(Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;)Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;)Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mCommandId:I
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getSettingValue(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;)Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mCommandId:I
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 235
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButtonHighlight:Lcom/sec/android/glview/TwGLNinePatch;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;)Lcom/sec/android/glview/TwGLNinePatch;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto :goto_0

    .line 237
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButtonHighlight:Lcom/sec/android/glview/TwGLNinePatch;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;)Lcom/sec/android/glview/TwGLNinePatch;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto :goto_0
.end method
