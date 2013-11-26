.class public Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLImageProgressBar.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar$OnImageSelectedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_COLOR:I = -0xff0100


# instance fields
.field private mBackImage:Lcom/sec/android/glview/TwGLImage;

.field private mBestPicIcon:Lcom/sec/android/glview/TwGLImage;

.field private mBestPicNum:I

.field mBitmap:Landroid/graphics/Bitmap;

.field private mGL:Lcom/sec/android/glview/TwGLContext;

.field private mHeight:F

.field private mHighlight:Z

.field private mHighlightRect:Lcom/sec/android/glview/TwGLRectangle;

.field private mIconHeight:F

.field private mIconWidth:F

.field private mIndex:I

.field private mMax:I

.field protected mOnImageSelectedListener:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar$OnImageSelectedListener;

.field private mOrientation:[I

.field private mProgress:I

.field private mProgressImage:[Lcom/sec/android/glview/TwGLImage;

.field private mSelectRect:Lcom/sec/android/glview/TwGLRectangle;

.field private mUriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mWidth:F


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFIIFFI)V
    .locals 9
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "redId_bg"
    .parameter "redId_icon"
    .parameter "icon_width"
    .parameter "icon_height"
    .parameter "Max"

    .prologue
    .line 72
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 41
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mMax:I

    .line 42
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgress:I

    .line 43
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mWidth:F

    .line 44
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mHeight:F

    .line 45
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mIconWidth:F

    .line 46
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mIconHeight:F

    .line 47
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mIndex:I

    .line 48
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mBestPicNum:I

    .line 55
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mHighlight:Z

    .line 56
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mBitmap:Landroid/graphics/Bitmap;

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mUriList:Ljava/util/ArrayList;

    .line 61
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mOnImageSelectedListener:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar$OnImageSelectedListener;

    .line 73
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mGL:Lcom/sec/android/glview/TwGLContext;

    .line 74
    iput p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mWidth:F

    .line 75
    iput p5, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mHeight:F

    .line 76
    move/from16 v0, p10

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mMax:I

    .line 77
    move/from16 v0, p8

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mIconWidth:F

    .line 78
    move/from16 v0, p9

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mIconHeight:F

    .line 79
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mWidth:F

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mHeight:F

    const/4 v7, 0x0

    move-object v2, p1

    move v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mBackImage:Lcom/sec/android/glview/TwGLImage;

    .line 80
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mMax:I

    new-array v1, v1, [Lcom/sec/android/glview/TwGLImage;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgressImage:[Lcom/sec/android/glview/TwGLImage;

    .line 81
    new-instance v1, Lcom/sec/android/glview/TwGLRectangle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mWidth:F

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mMax:I

    int-to-float v5, v5

    div-float/2addr v2, v5

    const/high16 v5, 0x40a0

    sub-float v5, v2, v5

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mHeight:F

    const/high16 v6, 0x40a0

    sub-float v6, v2, v6

    const v7, -0xff0100

    const/high16 v8, 0x40a0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mHighlightRect:Lcom/sec/android/glview/TwGLRectangle;

    .line 82
    new-instance v1, Lcom/sec/android/glview/TwGLRectangle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mWidth:F

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mMax:I

    int-to-float v5, v5

    div-float/2addr v2, v5

    const/high16 v5, 0x40a0

    sub-float v5, v2, v5

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mHeight:F

    const/high16 v6, 0x40a0

    sub-float v6, v2, v6

    const v7, -0xffff01

    const/high16 v8, 0x40a0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mSelectRect:Lcom/sec/android/glview/TwGLRectangle;

    .line 83
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mIconWidth:F

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mIconHeight:F

    const/4 v7, 0x0

    move-object v2, p1

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mBestPicIcon:Lcom/sec/android/glview/TwGLImage;

    .line 84
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mMax:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mOrientation:[I

    .line 87
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mBackImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 88
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mHighlightRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 89
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mBestPicIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 90
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mSelectRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 93
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mHighlightRect:Lcom/sec/android/glview/TwGLRectangle;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 94
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mSelectRect:Lcom/sec/android/glview/TwGLRectangle;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 95
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mBestPicIcon:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 96
    return-void
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mMax:I

    return v0
.end method

.method public getOrientation(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mOrientation:[I

    aget v0, v0, p1

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgress:I

    return v0
.end method

.method public getUri(I)Landroid/net/Uri;
    .locals 1
    .parameter "index"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 4
    .parameter "view"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mOnImageSelectedListener:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar$OnImageSelectedListener;

    if-eqz v0, :cond_0

    .line 152
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mOnImageSelectedListener:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar$OnImageSelectedListener;

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-interface {v1, v2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar$OnImageSelectedListener;->onImageSelected(ILandroid/net/Uri;)V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mSelectRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mWidth:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mMax:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mSelectRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->bringToFront()V

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mSelectRect:Lcom/sec/android/glview/TwGLRectangle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized resetProgressBar()V
    .locals 3

    .prologue
    .line 121
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgress:I

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mIndex:I

    :goto_0
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mIndex:I

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mMax:I

    if-ge v0, v1, :cond_1

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgressImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mIndex:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgressImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mIndex:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgressImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgressImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mIndex:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 123
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 131
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mBestPicNum:I

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mHighlightRect:Lcom/sec/android/glview/TwGLRectangle;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mSelectRect:Lcom/sec/android/glview/TwGLRectangle;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mBestPicIcon:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mHighlight:Z

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setCaptureProgressIncreased(Landroid/graphics/Bitmap;)V
    .locals 9
    .parameter "mData"

    .prologue
    .line 99
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 100
    :try_start_0
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgressImage:[Lcom/sec/android/glview/TwGLImage;

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgress:I

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mGL:Lcom/sec/android/glview/TwGLContext;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgress:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mWidth:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mMax:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mWidth:F

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mMax:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mHeight:F

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLandroid/graphics/Bitmap;)V

    aput-object v0, v7, v8

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgressImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgress:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgressImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgress:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 103
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgress:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :cond_0
    monitor-exit p0

    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCaptureProgressIncreased(Landroid/graphics/Bitmap;Landroid/net/Uri;I)V
    .locals 9
    .parameter "mData"
    .parameter "uri"
    .parameter "orientation"

    .prologue
    .line 108
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mWidth:F

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mMax:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mHeight:F

    float-to-int v1, v1

    invoke-static {p1, v0, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 111
    .local v6, croppedBitmap:Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgressImage:[Lcom/sec/android/glview/TwGLImage;

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgress:I

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mGL:Lcom/sec/android/glview/TwGLContext;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgress:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mWidth:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mMax:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mWidth:F

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mMax:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mHeight:F

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLandroid/graphics/Bitmap;)V

    aput-object v0, v7, v8

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgressImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgress:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgressImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgress:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgress:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgressImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgress:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mOrientation:[I

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgress:I

    aput p3, v0, v1

    .line 116
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgress:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    .end local v6           #croppedBitmap:Landroid/graphics/Bitmap;
    :cond_0
    monitor-exit p0

    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setHighlight(I)V
    .locals 4
    .parameter "BestpicNum"

    .prologue
    .line 140
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mBestPicNum:I

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mHighlightRect:Lcom/sec/android/glview/TwGLRectangle;

    int-to-float v1, p1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mWidth:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mMax:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mBestPicIcon:Lcom/sec/android/glview/TwGLImage;

    int-to-float v1, p1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mWidth:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mMax:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    const/high16 v2, 0x420c

    add-float/2addr v1, v2

    const/high16 v2, 0x4040

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 144
    return-void
.end method

.method public setOnImageSelectedListener(Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar$OnImageSelectedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mOnImageSelectedListener:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar$OnImageSelectedListener;

    .line 69
    return-void
.end method

.method public showHighlight()V
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->mHighlight:Z

    .line 148
    return-void
.end method
