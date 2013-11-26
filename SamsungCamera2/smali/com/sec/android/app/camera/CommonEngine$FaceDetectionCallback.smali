.class final Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CommonEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FaceDetectionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CommonEngine;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/CommonEngine;)V
    .locals 0

    .prologue
    .line 669
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/CommonEngine;Lcom/sec/android/app/camera/CommonEngine$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 669
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;-><init>(Lcom/sec/android/app/camera/CommonEngine;)V

    return-void
.end method


# virtual methods
.method public onFaceDetection([Lcom/sec/android/seccamera/SecCamera$Face;Lcom/sec/android/seccamera/SecCamera;)V
    .locals 3
    .parameter "faces"
    .parameter "camera"

    .prologue
    const/4 v2, 0x1

    .line 671
    invoke-static {}, Lcom/sec/android/app/camera/CommonEngine;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 689
    :cond_0
    :goto_0
    return-void

    .line 674
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mOnFacePositionChangedListener:Lcom/sec/android/app/camera/CommonEngine$OnFacePositionChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFaceDetectionMode()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 675
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    #getter for: Lcom/sec/android/app/camera/CommonEngine;->mCheckingFace:I
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$1200(Lcom/sec/android/app/camera/CommonEngine;)I

    move-result v0

    if-nez v0, :cond_3

    .line 676
    array-length v0, p1

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getFaceCount()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 677
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/camera/CommonEngine;->bFaceRectHidden:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->access$402(Lcom/sec/android/app/camera/CommonEngine;Z)Z

    .line 678
    array-length v0, p1

    if-eqz v0, :cond_2

    .line 679
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->startHideFaceRectTimer()V

    .line 682
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    #getter for: Lcom/sec/android/app/camera/CommonEngine;->bFaceRectHidden:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$400(Lcom/sec/android/app/camera/CommonEngine;)Z

    move-result v0

    if-eq v0, v2, :cond_0

    .line 685
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mOnFacePositionChangedListener:Lcom/sec/android/app/camera/CommonEngine$OnFacePositionChangedListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/CommonEngine$OnFacePositionChangedListener;->onFacePositionChanged([Lcom/sec/android/seccamera/SecCamera$Face;)V

    .line 687
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    #getter for: Lcom/sec/android/app/camera/CommonEngine;->mCheckingFace:I
    invoke-static {v1}, Lcom/sec/android/app/camera/CommonEngine;->access$1200(Lcom/sec/android/app/camera/CommonEngine;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x3

    #setter for: Lcom/sec/android/app/camera/CommonEngine;->mCheckingFace:I
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->access$1202(Lcom/sec/android/app/camera/CommonEngine;I)I

    goto :goto_0
.end method
