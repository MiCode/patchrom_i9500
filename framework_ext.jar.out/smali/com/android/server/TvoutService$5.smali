.class Lcom/android/server/TvoutService$5;
.super Landroid/view/OrientationEventListener;
.source "TvoutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/TvoutService;->setOrientationListener(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TvoutService;


# direct methods
.method constructor <init>(Lcom/android/server/TvoutService;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/server/TvoutService$5;->this$0:Lcom/android/server/TvoutService;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 8
    .parameter "orientation"

    .prologue
    const-wide/16 v6, 0x2

    const-wide/16 v4, 0x0

    const/16 v2, 0x10e

    const/16 v1, 0x5a

    const/4 v3, 0x1

    .line 320
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/android/server/TvoutService$5;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->CAMERA_POSITION:I
    invoke-static {v0}, Lcom/android/server/TvoutService;->access$200(Lcom/android/server/TvoutService;)I

    move-result v0

    if-nez v0, :cond_5

    .line 327
    iget-object v0, p0, Lcom/android/server/TvoutService$5;->this$0:Lcom/android/server/TvoutService;

    #setter for: Lcom/android/server/TvoutService;->newOrientation:I
    invoke-static {v0, v1}, Lcom/android/server/TvoutService;->access$302(Lcom/android/server/TvoutService;I)I

    .line 332
    :goto_1
    iget-object v0, p0, Lcom/android/server/TvoutService$5;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v0, p1}, Lcom/android/server/TvoutService;->TvoutSetOrientation(I)Z

    .line 333
    rem-int/lit16 p1, p1, 0x168

    .line 334
    const/16 v0, 0x2d

    if-ge p1, v0, :cond_7

    .line 336
    iget-object v0, p0, Lcom/android/server/TvoutService$5;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->CAMERA_POSITION:I
    invoke-static {v0}, Lcom/android/server/TvoutService;->access$200(Lcom/android/server/TvoutService;)I

    move-result v0

    if-nez v0, :cond_6

    .line 337
    iget-object v0, p0, Lcom/android/server/TvoutService$5;->this$0:Lcom/android/server/TvoutService;

    #setter for: Lcom/android/server/TvoutService;->newOrientation:I
    invoke-static {v0, v1}, Lcom/android/server/TvoutService;->access$302(Lcom/android/server/TvoutService;I)I

    .line 338
    iget-object v0, p0, Lcom/android/server/TvoutService$5;->this$0:Lcom/android/server/TvoutService;

    #setter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v0, v4, v5}, Lcom/android/server/TvoutService;->access$402(Lcom/android/server/TvoutService;J)J

    .line 383
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/server/TvoutService$5;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->CAMERA_ON:Z
    invoke-static {v0}, Lcom/android/server/TvoutService;->access$500(Lcom/android/server/TvoutService;)Z

    move-result v0

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/android/server/TvoutService$5;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->HDMI_CONNECT:Z
    invoke-static {v0}, Lcom/android/server/TvoutService;->access$600(Lcom/android/server/TvoutService;)Z

    move-result v0

    if-eq v0, v3, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/server/TvoutService$5;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->CAMERA_ON:Z
    invoke-static {v0}, Lcom/android/server/TvoutService;->access$500(Lcom/android/server/TvoutService;)Z

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/server/TvoutService$5;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->ALLSHARE_CAST_CONNECT:Z
    invoke-static {v0}, Lcom/android/server/TvoutService;->access$700(Lcom/android/server/TvoutService;)Z

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/server/TvoutService$5;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->RVF_CONNECT:Z
    invoke-static {v0}, Lcom/android/server/TvoutService;->access$800(Lcom/android/server/TvoutService;)Z

    move-result v0

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/server/TvoutService$5;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->PRESENTATION_RUNNING:I
    invoke-static {v0}, Lcom/android/server/TvoutService;->access$900(Lcom/android/server/TvoutService;)I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 384
    :cond_4
    const-string v0, "persist.sys.camera.transform"

    iget-object v1, p0, Lcom/android/server/TvoutService$5;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v1}, Lcom/android/server/TvoutService;->access$400(Lcom/android/server/TvoutService;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/android/server/TvoutService$5;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->CAMERA_POSITION:I
    invoke-static {v0}, Lcom/android/server/TvoutService;->access$200(Lcom/android/server/TvoutService;)I

    move-result v0

    if-nez v0, :cond_f

    .line 386
    iget-object v0, p0, Lcom/android/server/TvoutService$5;->this$0:Lcom/android/server/TvoutService;

    iget-object v1, p0, Lcom/android/server/TvoutService$5;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->newOrientation:I
    invoke-static {v1}, Lcom/android/server/TvoutService;->access$300(Lcom/android/server/TvoutService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/TvoutService;->TvoutSetRearCameraRotation(I)Z

    goto :goto_0

    .line 329
    :cond_5
    iget-object v0, p0, Lcom/android/server/TvoutService$5;->this$0:Lcom/android/server/TvoutService;

    #setter for: Lcom/android/server/TvoutService;->newOrientation:I
    invoke-static {v0, v2}, Lcom/android/server/TvoutService;->access$302(Lcom/android/server/TvoutService;I)I

    goto :goto_1

    .line 341
    :cond_6
    iget-object v0, p0, Lcom/android/server/TvoutService$5;->this$0:Lcom/android/server/TvoutService;

    #setter for: Lcom/android/server/TvoutService;->newOrientation:I
    invoke-static {v0, v2}, Lcom/android/server/TvoutService;->access$302(Lcom/android/server/TvoutService;I)I

    .line 342
    iget-object v0, p0, Lcom/android/server/TvoutService$5;->this$0:Lcom/android/server/TvoutService;

    #setter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v0, v6, v7}, Lcom/android/server/TvoutService;->access$402(Lcom/android/server/TvoutService;J)J

    goto :goto_2

    .line 345
    :cond_7
    const/16 v0, 0x87

    if-ge p1, v0, :cond_9

    .line 347
    iget-object v0, p0, Lcom/android/server/TvoutService$5;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v1, 0x1

    #setter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v0, v1, v2}, Lcom/android/server/TvoutService;->access$402(Lcom/android/server/TvoutService;J)J

    .line 348
    iget-object v0, p0, Lcom/android/server/TvoutService$5;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->CAMERA_POSITION:I
    invoke-static {v0}, Lcom/android/server/TvoutService;->access$200(Lcom/android/server/TvoutService;)I

    move-result v0

    if-nez v0, :cond_8

    .line 349
    iget-object v0, p0, Lcom/android/server/TvoutService$5;->this$0:Lcom/android/server/TvoutService;

    const/16 v1, 0xb4

    #setter for: Lcom/android/server/TvoutService;->newOrientation:I
    invoke-static {v0, v1}, Lcom/android/server/TvoutService;->access$302(Lcom/android/server/TvoutService;I)I

    goto :goto_2

    .line 351
    :cond_8
    iget-object v0, p0, Lcom/android/server/TvoutService$5;->this$0:Lcom/android/server/TvoutService;

    const/16 v1, 0xb4

    #setter for: Lcom/android/server/TvoutService;->newOrientation:I
    invoke-static {v0, v1}, Lcom/android/server/TvoutService;->access$302(Lcom/android/server/TvoutService;I)I

    goto/16 :goto_2

    .line 353
    :cond_9
    const/16 v0, 0xe1

    if-ge p1, v0, :cond_b

    .line 355
    iget-object v0, p0, Lcom/android/server/TvoutService$5;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->CAMERA_POSITION:I
    invoke-static {v0}, Lcom/android/server/TvoutService;->access$200(Lcom/android/server/TvoutService;)I

    move-result v0

    if-nez v0, :cond_a

    .line 356
    iget-object v0, p0, Lcom/android/server/TvoutService$5;->this$0:Lcom/android/server/TvoutService;

    #setter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v0, v6, v7}, Lcom/android/server/TvoutService;->access$402(Lcom/android/server/TvoutService;J)J

    .line 357
    iget-object v0, p0, Lcom/android/server/TvoutService$5;->this$0:Lcom/android/server/TvoutService;

    #setter for: Lcom/android/server/TvoutService;->newOrientation:I
    invoke-static {v0, v2}, Lcom/android/server/TvoutService;->access$302(Lcom/android/server/TvoutService;I)I

    goto/16 :goto_2

    .line 360
    :cond_a
    iget-object v0, p0, Lcom/android/server/TvoutService$5;->this$0:Lcom/android/server/TvoutService;

    #setter for: Lcom/android/server/TvoutService;->newOrientation:I
    invoke-static {v0, v1}, Lcom/android/server/TvoutService;->access$302(Lcom/android/server/TvoutService;I)I

    .line 361
    iget-object v0, p0, Lcom/android/server/TvoutService$5;->this$0:Lcom/android/server/TvoutService;

    #setter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v0, v4, v5}, Lcom/android/server/TvoutService;->access$402(Lcom/android/server/TvoutService;J)J

    goto/16 :goto_2

    .line 364
    :cond_b
    const/16 v0, 0x13b

    if-ge p1, v0, :cond_d

    .line 366
    iget-object v0, p0, Lcom/android/server/TvoutService$5;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v1, 0x3

    #setter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v0, v1, v2}, Lcom/android/server/TvoutService;->access$402(Lcom/android/server/TvoutService;J)J

    .line 367
    iget-object v0, p0, Lcom/android/server/TvoutService$5;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->CAMERA_POSITION:I
    invoke-static {v0}, Lcom/android/server/TvoutService;->access$200(Lcom/android/server/TvoutService;)I

    move-result v0

    if-nez v0, :cond_c

    .line 368
    iget-object v0, p0, Lcom/android/server/TvoutService$5;->this$0:Lcom/android/server/TvoutService;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/TvoutService;->newOrientation:I
    invoke-static {v0, v1}, Lcom/android/server/TvoutService;->access$302(Lcom/android/server/TvoutService;I)I

    goto/16 :goto_2

    .line 370
    :cond_c
    iget-object v0, p0, Lcom/android/server/TvoutService$5;->this$0:Lcom/android/server/TvoutService;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/TvoutService;->newOrientation:I
    invoke-static {v0, v1}, Lcom/android/server/TvoutService;->access$302(Lcom/android/server/TvoutService;I)I

    goto/16 :goto_2

    .line 372
    :cond_d
    const/16 v0, 0x168

    if-ge p1, v0, :cond_2

    .line 374
    iget-object v0, p0, Lcom/android/server/TvoutService$5;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->CAMERA_POSITION:I
    invoke-static {v0}, Lcom/android/server/TvoutService;->access$200(Lcom/android/server/TvoutService;)I

    move-result v0

    if-nez v0, :cond_e

    .line 375
    iget-object v0, p0, Lcom/android/server/TvoutService$5;->this$0:Lcom/android/server/TvoutService;

    #setter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v0, v4, v5}, Lcom/android/server/TvoutService;->access$402(Lcom/android/server/TvoutService;J)J

    goto/16 :goto_2

    .line 378
    :cond_e
    iget-object v0, p0, Lcom/android/server/TvoutService$5;->this$0:Lcom/android/server/TvoutService;

    #setter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v0, v6, v7}, Lcom/android/server/TvoutService;->access$402(Lcom/android/server/TvoutService;J)J

    goto/16 :goto_2

    .line 388
    :cond_f
    iget-object v0, p0, Lcom/android/server/TvoutService$5;->this$0:Lcom/android/server/TvoutService;

    iget-object v1, p0, Lcom/android/server/TvoutService$5;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->newOrientation:I
    invoke-static {v1}, Lcom/android/server/TvoutService;->access$300(Lcom/android/server/TvoutService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/TvoutService;->TvoutSetFrontCameraRotation(I)Z

    goto/16 :goto_0
.end method
