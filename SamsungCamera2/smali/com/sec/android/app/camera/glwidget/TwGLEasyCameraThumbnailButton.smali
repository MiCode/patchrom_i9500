.class public Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLEasyCameraThumbnailButton.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnClickListener;


# static fields
.field protected static final TAG:Ljava/lang/String; = "TwGLEasyCameraThumbnailButton"

.field private static final THUMBNAIL_HEIGHT:I

.field private static final THUMBNAIL_IMAGE_HEIGHT:I

.field private static final THUMBNAIL_IMAGE_POS_X:I

.field private static final THUMBNAIL_IMAGE_POS_Y:I

.field private static final THUMBNAIL_IMAGE_WIDTH:I

.field private static final THUMBNAIL_POS_X:I

.field private static final THUMBNAIL_POS_Y:I

.field private static final THUMBNAIL_WIDTH:I


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mButtonLocked:Z

.field private mFrameButton:Lcom/sec/android/glview/TwGLButton;

.field private mIdxNewThumbnail:I

.field private mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

.field private mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

.field private mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

.field private mUpdateCallback:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const v0, 0x7f0801cd

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_POS_X:I

    .line 40
    const v0, 0x7f0801ce

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_POS_Y:I

    .line 41
    const v0, 0x7f0801cf

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_WIDTH:I

    .line 42
    const v0, 0x7f0801d0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_HEIGHT:I

    .line 43
    const v0, 0x7f0801d1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_IMAGE_POS_X:I

    .line 44
    const v0, 0x7f0801d2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_IMAGE_POS_Y:I

    .line 45
    const v0, 0x7f0801d3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_IMAGE_WIDTH:I

    .line 46
    const v0, 0x7f0801d4

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_IMAGE_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFZZ)V
    .locals 7
    .parameter "activityContext"
    .parameter "left"
    .parameter "top"
    .parameter "camera"
    .parameter "attachMode"

    .prologue
    const/4 v6, 0x0

    .line 65
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_WIDTH:I

    int-to-float v4, v0

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_HEIGHT:I

    int-to-float v5, v0

    move-object v0, p0

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/glview/TwGLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    .line 55
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    .line 56
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mButtonLocked:Z

    .line 58
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mUpdateCallback:Ljava/lang/Runnable;

    .line 67
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 69
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->updateEmpty()V

    .line 70
    if-nez p5, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isMediaScannerScanning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mUpdateCallback:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73
    :cond_0
    return-void
.end method

.method private update(Landroid/graphics/Bitmap;IZZ)V
    .locals 10
    .parameter "data"
    .parameter "orientation"
    .parameter "bSetOrientation"
    .parameter "bAnimation"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 222
    :cond_1
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_IMAGE_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_IMAGE_HEIGHT:I

    invoke-static {p1, v0, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 223
    .local v6, croppedBitmap:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_2

    .line 224
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_IMAGE_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_IMAGE_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_IMAGE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_IMAGE_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLandroid/graphics/Bitmap;)V

    aput-object v0, v8, v9

    .line 226
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    if-nez v0, :cond_3

    .line 254
    :goto_0
    return-void

    .line 229
    :cond_3
    const/4 v0, 0x1

    if-ne p3, v0, :cond_4

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Lcom/sec/android/glview/TwGLView;->setDefaultOrientation(I)V

    .line 232
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    .line 234
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotateAnimation(Z)V

    .line 236
    const/4 v0, 0x1

    if-ne p4, v0, :cond_5

    .line 237
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_IMAGE_WIDTH:I

    int-to-float v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 238
    .local v7, transNewAnimation:Landroid/view/animation/TranslateAnimation;
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_IMAGE_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_IMAGE_HEIGHT:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_IMAGE_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_IMAGE_HEIGHT:I

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    .line 239
    const-wide/16 v0, 0x96

    invoke-virtual {v7, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 241
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 242
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 246
    .end local v7           #transNewAnimation:Landroid/view/animation/TranslateAnimation;
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_6

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 249
    :cond_6
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    .line 251
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    const v1, 0x7f020312

    const/4 v2, 0x0

    const v3, 0x7f020311

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    .line 252
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/imageviewer/MediaList;->clear()V

    .line 79
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mUpdateCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 83
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 87
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    .line 90
    :cond_2
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 91
    return-void
.end method

.method public lockButton(Z)V
    .locals 1
    .parameter "lock"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mButtonLocked:Z

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 96
    return-void
.end method

.method public noImage()Z
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 2
    .parameter "view"

    .prologue
    const/4 v0, 0x0

    .line 257
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mButtonLocked:Z

    if-eqz v1, :cond_1

    .line 263
    :cond_0
    :goto_0
    return v0

    .line 260
    :cond_1
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    if-eqz v1, :cond_0

    .line 261
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    invoke-interface {v0, p0}, Lcom/sec/android/glview/TwGLView$OnClickListener;->onClick(Lcom/sec/android/glview/TwGLView;)Z

    move-result v0

    goto :goto_0
.end method

.method public removeUptateMessage()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mUpdateCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 269
    :cond_0
    return-void
.end method

.method public declared-synchronized update()V
    .locals 13

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 203
    :goto_0
    monitor-exit p0

    return-void

    .line 138
    :cond_0
    const/4 v10, 0x1

    .line 140
    .local v10, noThumbnail:Z
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 149
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 152
    :cond_2
    new-instance v0, Lcom/sec/android/app/camera/imageviewer/MediaList;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->initialize(Z)V

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getLastContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->setLastContentUri(Landroid/net/Uri;)V

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getImagePath(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getType(I)I

    move-result v0

    if-nez v0, :cond_6

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getId(I)J

    move-result-wide v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 162
    .local v8, bitmap:Landroid/graphics/Bitmap;
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_HEIGHT:I

    invoke-static {v8, v0, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 169
    .local v6, croppedBitmap:Landroid/graphics/Bitmap;
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_3

    .line 170
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v12, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_IMAGE_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_IMAGE_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_IMAGE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_IMAGE_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLandroid/graphics/Bitmap;)V

    aput-object v0, v11, v12

    .line 172
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getType(I)I

    move-result v0

    if-nez v0, :cond_4

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getOrientation(I)I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0xa

    div-int/lit8 v9, v0, 0x5a

    .line 174
    .local v9, defaultOrientation:I
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v9}, Lcom/sec/android/glview/TwGLView;->setDefaultOrientation(I)V

    .line 178
    .end local v6           #croppedBitmap:Landroid/graphics/Bitmap;
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .end local v9           #defaultOrientation:I
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_5

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    .line 181
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotateAnimation(Z)V

    .line 183
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const v0, 0x3e99999a

    const/high16 v1, 0x3f80

    invoke-direct {v7, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 184
    .local v7, alphaAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v3

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 185
    const-wide/16 v0, 0x64

    invoke-virtual {v7, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 186
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 190
    const/4 v10, 0x0

    .line 191
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    .line 194
    .end local v7           #alphaAnimation:Landroid/view/animation/AlphaAnimation;
    :cond_5
    if-eqz v10, :cond_7

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    const v1, 0x7f020313

    const/4 v2, 0x0

    const v3, 0x7f020311

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    .line 201
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/imageviewer/MediaList;->clear()V

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 135
    .end local v10           #noThumbnail:Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 165
    .restart local v10       #noThumbnail:Z
    :cond_6
    :try_start_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getVideoThumbnail(I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 166
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_HEIGHT:I

    invoke-static {v8, v0, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .restart local v6       #croppedBitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_1

    .line 197
    .end local v6           #croppedBitmap:Landroid/graphics/Bitmap;
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    const v1, 0x7f020312

    const/4 v2, 0x0

    const v3, 0x7f020311

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public update(Landroid/graphics/Bitmap;IZ)V
    .locals 2
    .parameter "data"
    .parameter "orientation"
    .parameter "bAnimation"

    .prologue
    .line 206
    div-int/lit8 v1, p2, 0xa

    mul-int/lit8 v1, v1, 0xa

    div-int/lit8 v0, v1, 0x5a

    .line 207
    .local v0, defaultOrientation:I
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->update(Landroid/graphics/Bitmap;IZZ)V

    .line 208
    return-void
.end method

.method public update(Ljava/lang/String;Z)V
    .locals 4
    .parameter "filename"
    .parameter "bAnimation"

    .prologue
    const/4 v3, 0x0

    .line 211
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getVideoThumbnail(Ljava/lang/String;Ljava/io/FileDescriptor;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 212
    .local v0, data:Landroid/graphics/Bitmap;
    invoke-direct {p0, v0, v3, v3, p2}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->update(Landroid/graphics/Bitmap;IZZ)V

    .line 213
    return-void
.end method

.method public updateEmpty()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 101
    :cond_0
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 104
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    .line 106
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const v4, 0x7f020313

    const v6, 0x7f020311

    move v2, v7

    move v3, v7

    move v5, v9

    move v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0a0195

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLView;->setRotateAnimation(Z)V

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    goto :goto_0
.end method

.method public updateEmptyButton()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    aput-object v4, v0, v2

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v3

    if-eqz v0, :cond_3

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    aput-object v4, v0, v3

    .line 131
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->updateEmpty()V

    .line 132
    return-void
.end method
