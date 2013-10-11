.class Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;
.super Ljava/lang/Object;
.source "SPenGestureView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->addSPenEvent(Landroid/view/MotionEvent;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V
    .locals 0

    .prologue
    .line 1630
    iput-object p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    .line 1632
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveCropThread:Z
    invoke-static {v10, v14}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$902(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z

    .line 1635
    :try_start_0
    const-string v10, "SPenGesture"

    const-string v11, "mSPenGestureCropDispatchThread run!!"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1638
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 1639
    .local v0, boundsOfPath:Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 1640
    .local v1, boundsOfSecondPath:Landroid/graphics/RectF;
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    .line 1642
    .local v6, cropImgSaveHandler:Landroid/os/Handler;
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z

    move-result v10

    if-ne v10, v14, :cond_0

    .line 1643
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Path;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v0, v11}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 1646
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget v11, v0, Landroid/graphics/RectF;->right:F

    float-to-int v11, v11

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordX:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3502(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    .line 1647
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget v11, v0, Landroid/graphics/RectF;->left:F

    float-to-int v11, v11

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordX:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3602(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    .line 1648
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget v11, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v11, v11

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordY:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3702(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    .line 1649
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget v11, v0, Landroid/graphics/RectF;->top:F

    float-to-int v11, v11

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordY:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3802(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    .line 1652
    :cond_0
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsableSecondPath:Z
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3900(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z

    move-result v10

    if-ne v10, v14, :cond_4

    .line 1653
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Path;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v1, v11}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 1656
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z

    move-result v10

    if-ne v10, v14, :cond_9

    .line 1657
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordX:I
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v10

    int-to-float v10, v10

    iget v11, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v10, v10, v11

    if-gez v10, :cond_1

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget v11, v1, Landroid/graphics/RectF;->right:F

    float-to-int v11, v11

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordX:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3502(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    .line 1658
    :cond_1
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordX:I
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3600(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v10

    int-to-float v10, v10

    iget v11, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v10, v10, v11

    if-lez v10, :cond_2

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget v11, v1, Landroid/graphics/RectF;->left:F

    float-to-int v11, v11

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordX:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3602(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    .line 1659
    :cond_2
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordY:I
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v10

    int-to-float v10, v10

    iget v11, v1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v10, v10, v11

    if-gez v10, :cond_3

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget v11, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v11, v11

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordY:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3702(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    .line 1660
    :cond_3
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordY:I
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v10

    int-to-float v10, v10

    iget v11, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v10, v10, v11

    if-lez v10, :cond_4

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget v11, v1, Landroid/graphics/RectF;->top:F

    float-to-int v11, v11

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordY:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3802(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    .line 1673
    :cond_4
    :goto_0
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget-object v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordX:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v11

    add-int/lit8 v11, v11, 0xa

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordX:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3502(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    .line 1674
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget-object v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordX:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3600(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v11

    add-int/lit8 v11, v11, -0xa

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordX:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3602(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    .line 1675
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget-object v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordY:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v11

    add-int/lit8 v11, v11, 0xa

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordY:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3702(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    .line 1676
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget-object v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordY:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v11

    add-int/lit8 v11, v11, -0xa

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordY:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3802(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    .line 1678
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget-object v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordX:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v11

    iget-object v12, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordX:I
    invoke-static {v12}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3600(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v12

    sub-int/2addr v11, v12

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropImageWidth:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4102(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    .line 1679
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget-object v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordY:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v11

    iget-object v12, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordY:I
    invoke-static {v12}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v12

    sub-int/2addr v11, v12

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropImageHeight:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4202(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    .line 1681
    const-wide/16 v10, 0x64

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    .line 1683
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #calls: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->GetDefaultDisplayBimap()Landroid/graphics/Bitmap;
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Bitmap;

    .line 1685
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget-object v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v11

    iget-object v12, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I
    invoke-static {v12}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4600(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v12

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropTempBitmap:Landroid/graphics/Bitmap;
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4402(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1686
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget-object v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v11

    iget-object v12, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I
    invoke-static {v12}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4600(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v12

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4702(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1688
    new-instance v5, Landroid/graphics/Canvas;

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropTempBitmap:Landroid/graphics/Bitmap;
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-direct {v5, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1689
    .local v5, canvasForCrop:Landroid/graphics/Canvas;
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Bitmap;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v5, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1690
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z

    move-result v10

    if-ne v10, v14, :cond_5

    .line 1691
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Path;

    move-result-object v10

    sget-object v11, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v5, v10, v11}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 1693
    :cond_5
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsableSecondPath:Z
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3900(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z

    move-result v10

    if-ne v10, v14, :cond_6

    .line 1694
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Path;

    move-result-object v10

    sget-object v11, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v5, v10, v11}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 1696
    :cond_6
    const/4 v10, 0x0

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v10, v11}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1699
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget-object v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropImageWidth:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v11

    iget-object v12, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropImageHeight:I
    invoke-static {v12}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v12

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropBitmap:Landroid/graphics/Bitmap;
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4902(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1700
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropBitmap:Landroid/graphics/Bitmap;
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4900(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-direct {v2, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1701
    .local v2, canvasFinal:Landroid/graphics/Canvas;
    new-instance v9, Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordX:I
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3600(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordY:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v11

    iget-object v12, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordX:I
    invoke-static {v12}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v12

    iget-object v13, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordY:I
    invoke-static {v13}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v13

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1702
    .local v9, srcRectForCrop:Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropImageWidth:I
    invoke-static {v12}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v12

    iget-object v13, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropImageHeight:I
    invoke-static {v13}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v13

    invoke-direct {v7, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1703
    .local v7, dstRectForCrop:Landroid/graphics/Rect;
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropTempBitmap:Landroid/graphics/Bitmap;
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Bitmap;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v9, v7, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1706
    new-instance v4, Landroid/graphics/Canvas;

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-direct {v4, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1707
    .local v4, canvasForAnimationLine:Landroid/graphics/Canvas;
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z

    move-result v10

    if-ne v10, v14, :cond_7

    .line 1708
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Path;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;
    invoke-static {v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Paint;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1709
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v10

    const/4 v11, 0x2

    if-le v10, v11, :cond_a

    .line 1710
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointXForCircle:F
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)F

    move-result v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointYForCircle:F
    invoke-static {v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)F

    move-result v11

    const/high16 v12, 0x4100

    iget-object v13, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;
    invoke-static {v13}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Paint;

    move-result-object v13

    invoke-virtual {v4, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1711
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointXForCircle:F
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)F

    move-result v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointYForCircle:F
    invoke-static {v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)F

    move-result v11

    const/high16 v12, 0x4080

    iget-object v13, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;
    invoke-static {v13}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Paint;

    move-result-object v13

    invoke-virtual {v4, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1718
    :cond_7
    :goto_1
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsableSecondPath:Z
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3900(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z

    move-result v10

    if-ne v10, v14, :cond_8

    .line 1719
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Path;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;
    invoke-static {v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Paint;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1720
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointX:I
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v10

    int-to-float v10, v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointY:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5900(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x4100

    iget-object v13, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;
    invoke-static {v13}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Paint;

    move-result-object v13

    invoke-virtual {v4, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1721
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointX:I
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v10

    int-to-float v10, v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointY:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5900(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x4080

    iget-object v13, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;
    invoke-static {v13}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Paint;

    move-result-object v13

    invoke-virtual {v4, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1725
    :cond_8
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget-object v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropImageWidth:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v11

    iget-object v12, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropImageHeight:I
    invoke-static {v12}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v12

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropBitmapForAnimation:Landroid/graphics/Bitmap;
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$6002(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1726
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropBitmapForAnimation:Landroid/graphics/Bitmap;
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$6000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-direct {v3, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1727
    .local v3, canvasFinalForAnimation:Landroid/graphics/Canvas;
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropTempBitmap:Landroid/graphics/Bitmap;
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Bitmap;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v9, v7, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1728
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Bitmap;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v9, v7, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1730
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget-object v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordX:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v11

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordXForIntent:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$6102(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    .line 1731
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget-object v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordX:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3600(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v11

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordXForIntent:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$6202(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    .line 1732
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget-object v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordY:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v11

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordYForIntent:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$6302(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    .line 1733
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget-object v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordY:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v11

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordYForIntent:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$6402(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    .line 1735
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$6500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->reset()V

    .line 1737
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    const/4 v11, -0x1

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$6602(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    .line 1738
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    const/4 v11, -0x1

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$6702(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    .line 1739
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    const/4 v11, -0x1

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$6802(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    .line 1740
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    const/4 v11, -0x1

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$6902(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    .line 1741
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    const/4 v11, -0x1

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointX:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5602(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    .line 1742
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    const/4 v11, -0x1

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointY:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5702(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    .line 1743
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    const/4 v11, -0x1

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointX:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5802(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    .line 1744
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    const/4 v11, -0x1

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointY:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5902(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    .line 1745
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    const/high16 v11, -0x4080

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointXForCircle:F
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5202(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;F)F

    .line 1746
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    const/high16 v11, -0x4080

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointYForCircle:F
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5302(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;F)F

    .line 1747
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    const/4 v11, 0x1

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3302(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z

    .line 1748
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    const/4 v11, 0x0

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsableSecondPath:Z
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3902(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z

    .line 1749
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    const/4 v11, 0x0

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5102(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    .line 1751
    new-instance v10, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9$1;

    invoke-direct {v10, p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9$1;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;)V

    const-wide/16 v11, 0x64

    invoke-virtual {v6, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1781
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$7700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1784
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1790
    .end local v0           #boundsOfPath:Landroid/graphics/RectF;
    .end local v1           #boundsOfSecondPath:Landroid/graphics/RectF;
    .end local v2           #canvasFinal:Landroid/graphics/Canvas;
    .end local v3           #canvasFinalForAnimation:Landroid/graphics/Canvas;
    .end local v4           #canvasForAnimationLine:Landroid/graphics/Canvas;
    .end local v5           #canvasForCrop:Landroid/graphics/Canvas;
    .end local v6           #cropImgSaveHandler:Landroid/os/Handler;
    .end local v7           #dstRectForCrop:Landroid/graphics/Rect;
    .end local v9           #srcRectForCrop:Landroid/graphics/Rect;
    :goto_2
    return-void

    .line 1663
    .restart local v0       #boundsOfPath:Landroid/graphics/RectF;
    .restart local v1       #boundsOfSecondPath:Landroid/graphics/RectF;
    .restart local v6       #cropImgSaveHandler:Landroid/os/Handler;
    :cond_9
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget v11, v1, Landroid/graphics/RectF;->right:F

    float-to-int v11, v11

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordX:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3502(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    .line 1664
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget v11, v1, Landroid/graphics/RectF;->left:F

    float-to-int v11, v11

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordX:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3602(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    .line 1665
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget v11, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v11, v11

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordY:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3702(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    .line 1666
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget v11, v1, Landroid/graphics/RectF;->top:F

    float-to-int v11, v11

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordY:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3802(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1785
    .end local v0           #boundsOfPath:Landroid/graphics/RectF;
    .end local v1           #boundsOfSecondPath:Landroid/graphics/RectF;
    .end local v6           #cropImgSaveHandler:Landroid/os/Handler;
    :catch_0
    move-exception v8

    .line 1786
    .local v8, e:Ljava/lang/InterruptedException;
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$7700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1787
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1788
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Looper;->quit()V

    goto :goto_2

    .line 1714
    .end local v8           #e:Ljava/lang/InterruptedException;
    .restart local v0       #boundsOfPath:Landroid/graphics/RectF;
    .restart local v1       #boundsOfSecondPath:Landroid/graphics/RectF;
    .restart local v2       #canvasFinal:Landroid/graphics/Canvas;
    .restart local v4       #canvasForAnimationLine:Landroid/graphics/Canvas;
    .restart local v5       #canvasForCrop:Landroid/graphics/Canvas;
    .restart local v6       #cropImgSaveHandler:Landroid/os/Handler;
    .restart local v7       #dstRectForCrop:Landroid/graphics/Rect;
    .restart local v9       #srcRectForCrop:Landroid/graphics/Rect;
    :cond_a
    :try_start_1
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointX:I
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5600(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v10

    int-to-float v10, v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointY:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x4100

    iget-object v13, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;
    invoke-static {v13}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Paint;

    move-result-object v13

    invoke-virtual {v4, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1715
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointX:I
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5600(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v10

    int-to-float v10, v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointY:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x4080

    iget-object v13, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;
    invoke-static {v13}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Paint;

    move-result-object v13

    invoke-virtual {v4, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
