.class Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;
.super Landroid/os/Handler;
.source "FaceDetectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/facedetection/FaceDetectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mOwner:Lcom/sec/android/facedetection/FaceDetectionService;

.field final synthetic this$0:Lcom/sec/android/facedetection/FaceDetectionService;


# direct methods
.method public constructor <init>(Lcom/sec/android/facedetection/FaceDetectionService;Lcom/sec/android/facedetection/FaceDetectionService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "f"
    .parameter "l"

    .prologue
    .line 257
    iput-object p1, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    .line 258
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 259
    iput-object p2, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->mOwner:Lcom/sec/android/facedetection/FaceDetectionService;

    .line 260
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const-wide/16 v10, 0xbb8

    const/4 v8, 0x3

    const/4 v4, 0x1

    .line 264
    iget-object v5, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    iget-object v5, v5, Lcom/sec/android/facedetection/FaceDetectionService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 266
    const-string v5, "FaceDetectionService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 443
    :goto_0
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    iget-object v4, v4, Lcom/sec/android/facedetection/FaceDetectionService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 444
    return-void

    .line 274
    :pswitch_0
    :try_start_0
    const-string v5, "FaceDetectionService"

    const-string v6, "open()"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v5, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    const/16 v6, 0xb

    const/16 v7, 0xa

    iget-object v8, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mCallbackThread:Landroid/os/HandlerThread;
    invoke-static {v8}, Lcom/sec/android/facedetection/FaceDetectionService;->access$500(Lcom/sec/android/facedetection/FaceDetectionService;)Landroid/os/HandlerThread;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v6, v7, v8, v9}, Lcom/sec/android/seccamera/SecCamera;->open(IILandroid/os/Looper;Z)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v6

    #setter for: Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v5, v6}, Lcom/sec/android/facedetection/FaceDetectionService;->access$402(Lcom/sec/android/facedetection/FaceDetectionService;Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera;

    .line 279
    const-string v5, "FaceDetectionService"

    const-string v6, "open() x"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 284
    :goto_1
    :try_start_1
    iget-object v5, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v5}, Lcom/sec/android/facedetection/FaceDetectionService;->access$400(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 286
    new-instance v0, Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    invoke-direct {v0}, Lcom/sec/android/seccamera/SecCamera$CameraInfo;-><init>()V

    .line 287
    .local v0, cameraInfo:Lcom/sec/android/seccamera/SecCamera$CameraInfo;
    const/4 v5, 0x1

    invoke-static {v5, v0}, Lcom/sec/android/seccamera/SecCamera;->getCameraInfo(ILcom/sec/android/seccamera/SecCamera$CameraInfo;)V

    .line 288
    iget-object v5, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    iget v6, v0, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->orientation:I

    rsub-int v6, v6, 0x168

    rem-int/lit16 v6, v6, 0x168

    #setter for: Lcom/sec/android/facedetection/FaceDetectionService;->mDegreeOffset:I
    invoke-static {v5, v6}, Lcom/sec/android/facedetection/FaceDetectionService;->access$602(Lcom/sec/android/facedetection/FaceDetectionService;I)I

    .line 289
    const-string v5, "FaceDetectionService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Faces need to be rotated counter clock-wise "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mDegreeOffset:I
    invoke-static {v7}, Lcom/sec/android/facedetection/FaceDetectionService;->access$600(Lcom/sec/android/facedetection/FaceDetectionService;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " degree."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v5, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v5}, Lcom/sec/android/facedetection/FaceDetectionService;->access$400(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/seccamera/SecCamera;->getParameters()Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v2

    .line 291
    .local v2, mParam:Lcom/sec/android/seccamera/SecCamera$Parameters;
    const/16 v5, 0x7530

    const/16 v6, 0x7530

    invoke-virtual {v2, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    .line 295
    const-string v5, "lsi: intelligent-mode"

    const-string v6, "qualcomm: intelligent-mode and no-display"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 297
    const-string v5, "intelligent-mode"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 299
    const-string v5, "184x104"

    invoke-static {v5}, Lcom/sec/android/facedetection/FaceDetectionService;->strToSize(Ljava/lang/String;)Lcom/sec/android/facedetection/FaceDetectionService$Size;

    move-result-object v3

    .line 300
    .local v3, size:Lcom/sec/android/facedetection/FaceDetectionService$Size;
    iget v5, v3, Lcom/sec/android/facedetection/FaceDetectionService$Size;->width:I

    iget v6, v3, Lcom/sec/android/facedetection/FaceDetectionService$Size;->height:I

    invoke-virtual {v2, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewSize(II)V

    .line 344
    .end local v3           #size:Lcom/sec/android/facedetection/FaceDetectionService$Size;
    :goto_2
    const-string v5, "vtmode"

    const/4 v6, 0x3

    invoke-virtual {v2, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 346
    iget-object v5, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v5}, Lcom/sec/android/facedetection/FaceDetectionService;->access$400(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 348
    iget-object v5, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v5}, Lcom/sec/android/facedetection/FaceDetectionService;->access$400(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->mOwner:Lcom/sec/android/facedetection/FaceDetectionService;

    invoke-virtual {v5, v6}, Lcom/sec/android/seccamera/SecCamera;->setFaceDetectionListener(Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;)V

    .line 349
    iget-object v5, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v5}, Lcom/sec/android/facedetection/FaceDetectionService;->access$400(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->mOwner:Lcom/sec/android/facedetection/FaceDetectionService;

    invoke-virtual {v5, v6}, Lcom/sec/android/seccamera/SecCamera;->setErrorCallback(Lcom/sec/android/seccamera/SecCamera$ErrorCallback;)V

    .line 353
    iget-object v5, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v5}, Lcom/sec/android/facedetection/FaceDetectionService;->access$400(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/seccamera/SecCamera;->startPreview()V

    .line 354
    const-string v5, "FaceDetectionService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage signal: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 370
    .end local v0           #cameraInfo:Lcom/sec/android/seccamera/SecCamera$CameraInfo;
    .end local v2           #mParam:Lcom/sec/android/seccamera/SecCamera$Parameters;
    :goto_3
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #calls: Lcom/sec/android/facedetection/FaceDetectionService;->letGo()V
    invoke-static {v4}, Lcom/sec/android/facedetection/FaceDetectionService;->access$800(Lcom/sec/android/facedetection/FaceDetectionService;)V

    goto/16 :goto_0

    .line 280
    :catch_0
    move-exception v1

    .line 282
    .local v1, e:Ljava/lang/RuntimeException;
    :try_start_2
    const-string v5, "FaceDetectionService"

    const-string v6, "Unable to open Camera"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 363
    .end local v1           #e:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 365
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "FaceDetectionService"

    const-string v6, "Something goes wrong!!! Retry!"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 366
    iget-object v5, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mMainHandler:Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;
    invoke-static {v5}, Lcom/sec/android/facedetection/FaceDetectionService;->access$700(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->removeMessages(I)V

    .line 367
    iget-object v5, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mMainHandler:Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;
    invoke-static {v5}, Lcom/sec/android/facedetection/FaceDetectionService;->access$700(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;

    move-result-object v5

    invoke-virtual {v5, v4, v10, v11}, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3

    .line 304
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #cameraInfo:Lcom/sec/android/seccamera/SecCamera$CameraInfo;
    .restart local v2       #mParam:Lcom/sec/android/seccamera/SecCamera$Parameters;
    :cond_0
    :try_start_3
    const-string v5, "FaceDetectionService"

    const-string v6, "I don\'t know how to enable the vision camera."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 358
    .end local v0           #cameraInfo:Lcom/sec/android/seccamera/SecCamera$CameraInfo;
    .end local v2           #mParam:Lcom/sec/android/seccamera/SecCamera$Parameters;
    :cond_1
    const-string v5, "FaceDetectionService"

    const-string v6, "Retry! START_CAMERA!!"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v5, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mMainHandler:Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;
    invoke-static {v5}, Lcom/sec/android/facedetection/FaceDetectionService;->access$700(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->removeMessages(I)V

    .line 360
    iget-object v5, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mMainHandler:Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;
    invoke-static {v5}, Lcom/sec/android/facedetection/FaceDetectionService;->access$700(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;

    move-result-object v5

    const/4 v6, 0x1

    const-wide/16 v7, 0xbb8

    invoke-virtual {v5, v6, v7, v8}, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 375
    :pswitch_1
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v4}, Lcom/sec/android/facedetection/FaceDetectionService;->access$400(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 381
    :try_start_4
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v4}, Lcom/sec/android/facedetection/FaceDetectionService;->access$400(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/seccamera/SecCamera;->stopPreview()V

    .line 382
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v4}, Lcom/sec/android/facedetection/FaceDetectionService;->access$400(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/seccamera/SecCamera;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 389
    :cond_2
    :goto_4
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    const/4 v5, 0x0

    #setter for: Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v4, v5}, Lcom/sec/android/facedetection/FaceDetectionService;->access$402(Lcom/sec/android/facedetection/FaceDetectionService;Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera;

    .line 391
    const-string v4, "FaceDetectionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage signal: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #calls: Lcom/sec/android/facedetection/FaceDetectionService;->letGo()V
    invoke-static {v4}, Lcom/sec/android/facedetection/FaceDetectionService;->access$800(Lcom/sec/android/facedetection/FaceDetectionService;)V

    goto/16 :goto_0

    .line 384
    :catch_2
    move-exception v1

    .line 386
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v4, "FaceDetectionService"

    const-string v5, "Something goes wrong!!! Ignore."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 399
    .end local v1           #e:Ljava/lang/Exception;
    :pswitch_2
    iget-object v5, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v5}, Lcom/sec/android/facedetection/FaceDetectionService;->access$400(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 402
    :try_start_5
    iget-object v5, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    iget-object v5, v5, Lcom/sec/android/facedetection/FaceDetectionService;->lock2:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 403
    iget-object v5, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mLastDeviceOrientation:I
    invoke-static {v5}, Lcom/sec/android/facedetection/FaceDetectionService;->access$900(Lcom/sec/android/facedetection/FaceDetectionService;)I

    move-result v5

    if-gez v5, :cond_5

    .line 404
    const-string v5, "FaceDetectionService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "4 direction face detect"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mLastDeviceOrientation:I
    invoke-static {v7}, Lcom/sec/android/facedetection/FaceDetectionService;->access$900(Lcom/sec/android/facedetection/FaceDetectionService;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :goto_5
    iget-object v5, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v5}, Lcom/sec/android/facedetection/FaceDetectionService;->access$400(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mLastDeviceOrientation:I
    invoke-static {v6}, Lcom/sec/android/facedetection/FaceDetectionService;->access$900(Lcom/sec/android/facedetection/FaceDetectionService;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/seccamera/SecCamera;->sendFaceDetectionHint(I)V

    .line 409
    iget-object v5, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v5}, Lcom/sec/android/facedetection/FaceDetectionService;->access$400(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v6, v8, :cond_6

    :goto_6
    invoke-virtual {v5, v4}, Lcom/sec/android/seccamera/SecCamera;->startFaceDetectionSW_ForFaceService(Z)V

    .line 412
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    iget-object v4, v4, Lcom/sec/android/facedetection/FaceDetectionService;->callback:Ljava/util/concurrent/locks/Condition;

    const-wide/32 v5, 0x3b9aca00

    invoke-interface {v4, v5, v6}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_3

    const-string v4, "FaceDetectionService"

    const-string v5, "START_FD_XXX_EYE failed. No Callback."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 420
    :cond_3
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    iget-object v4, v4, Lcom/sec/android/facedetection/FaceDetectionService;->lock2:Ljava/util/concurrent/locks/Lock;

    :goto_7
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 424
    :cond_4
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #calls: Lcom/sec/android/facedetection/FaceDetectionService;->letGo()V
    invoke-static {v4}, Lcom/sec/android/facedetection/FaceDetectionService;->access$800(Lcom/sec/android/facedetection/FaceDetectionService;)V

    goto/16 :goto_0

    .line 406
    :cond_5
    :try_start_6
    iget-object v5, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    iget-object v6, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mLastDeviceOrientation:I
    invoke-static {v6}, Lcom/sec/android/facedetection/FaceDetectionService;->access$900(Lcom/sec/android/facedetection/FaceDetectionService;)I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    iget-object v7, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mDegreeOffset:I
    invoke-static {v7}, Lcom/sec/android/facedetection/FaceDetectionService;->access$600(Lcom/sec/android/facedetection/FaceDetectionService;)I

    move-result v7

    div-int/lit8 v7, v7, 0x5a

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    rem-int/lit8 v6, v6, 0x4

    #setter for: Lcom/sec/android/facedetection/FaceDetectionService;->mLastDeviceOrientation:I
    invoke-static {v5, v6}, Lcom/sec/android/facedetection/FaceDetectionService;->access$902(Lcom/sec/android/facedetection/FaceDetectionService;I)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    .line 414
    :catch_3
    move-exception v1

    .line 416
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_7
    const-string v4, "FaceDetectionService"

    const-string v5, "START_FD_XXX_EYE failed."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 420
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    iget-object v4, v4, Lcom/sec/android/facedetection/FaceDetectionService;->lock2:Ljava/util/concurrent/locks/Lock;

    goto :goto_7

    .line 409
    .end local v1           #e:Ljava/lang/Exception;
    :cond_6
    const/4 v4, 0x0

    goto :goto_6

    .line 420
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    iget-object v5, v5, Lcom/sec/android/facedetection/FaceDetectionService;->lock2:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4

    .line 429
    :pswitch_3
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v4}, Lcom/sec/android/facedetection/FaceDetectionService;->access$400(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 432
    :try_start_8
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v4}, Lcom/sec/android/facedetection/FaceDetectionService;->access$400(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/seccamera/SecCamera;->stopFaceDetection()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 440
    :cond_7
    :goto_8
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #calls: Lcom/sec/android/facedetection/FaceDetectionService;->letGo()V
    invoke-static {v4}, Lcom/sec/android/facedetection/FaceDetectionService;->access$800(Lcom/sec/android/facedetection/FaceDetectionService;)V

    goto/16 :goto_0

    .line 434
    :catch_4
    move-exception v1

    .line 436
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v4, "FaceDetectionService"

    const-string v5, "STOP_FD failed."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 267
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
