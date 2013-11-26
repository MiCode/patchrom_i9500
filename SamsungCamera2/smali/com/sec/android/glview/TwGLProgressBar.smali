.class public Lcom/sec/android/glview/TwGLProgressBar;
.super Lcom/sec/android/glview/TwGLView;
.source "TwGLProgressBar.java"


# instance fields
.field private DEFAULT_PADDING:I

.field private DEFAULT_TEXT_COLOR:I

.field private mAlpha:I

.field private mFontsize:F

.field private mGL:Lcom/sec/android/glview/TwGLContext;

.field private mHeight:F

.field private mMax:I

.field private mProgress:I

.field private mProgressBarBg:Lcom/sec/android/glview/TwGLNinePatch;

.field private mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatch;

.field private mProgressBarHeight:F

.field private mProgressBarText:Lcom/sec/android/glview/TwGLText;

.field private mTextinterval:I

.field private mWidth:F


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFFIIIF)V
    .locals 11
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "progressHeight"
    .parameter "redId_bg"
    .parameter "redId_bar"
    .parameter "Textinterval"
    .parameter "font_size"

    .prologue
    .line 71
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 27
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mMax:I

    .line 28
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgress:I

    .line 29
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mTextinterval:I

    .line 30
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    .line 31
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mHeight:F

    .line 32
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarHeight:F

    .line 33
    const/high16 v1, 0x41a0

    iput v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mFontsize:F

    .line 36
    const/16 v1, 0xa

    iput v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->DEFAULT_PADDING:I

    .line 37
    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->DEFAULT_TEXT_COLOR:I

    .line 39
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarBg:Lcom/sec/android/glview/TwGLNinePatch;

    .line 40
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatch;

    .line 41
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    .line 72
    iput-object p1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mGL:Lcom/sec/android/glview/TwGLContext;

    .line 73
    iput p4, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    .line 74
    move/from16 v0, p5

    iput v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mHeight:F

    .line 75
    move/from16 v0, p6

    iput v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarHeight:F

    .line 76
    move/from16 v0, p9

    iput v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mTextinterval:I

    .line 77
    move/from16 v0, p10

    iput v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mFontsize:F

    .line 79
    new-instance v1, Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v3, 0x0

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mHeight:F

    iget v4, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarHeight:F

    sub-float/2addr v2, v4

    const/high16 v4, 0x4000

    div-float v4, v2, v4

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    iget v5, p0, Lcom/sec/android/glview/TwGLProgressBar;->mTextinterval:I

    int-to-float v5, v5

    sub-float v5, v2, v5

    iget v6, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarHeight:F

    move-object v2, p1

    move/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarBg:Lcom/sec/android/glview/TwGLNinePatch;

    .line 80
    new-instance v1, Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v3, 0x0

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mHeight:F

    iget v4, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarHeight:F

    sub-float/2addr v2, v4

    const/high16 v4, 0x4000

    div-float v4, v2, v4

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    iget v5, p0, Lcom/sec/android/glview/TwGLProgressBar;->mTextinterval:I

    int-to-float v5, v5

    sub-float v5, v2, v5

    iget v6, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarHeight:F

    move-object v2, p1

    move/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatch;

    .line 81
    iget-object v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 82
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    iget v3, p0, Lcom/sec/android/glview/TwGLProgressBar;->mTextinterval:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/glview/TwGLProgressBar;->DEFAULT_PADDING:I

    int-to-float v3, v3

    add-float/2addr v3, v2

    const/4 v4, 0x0

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mTextinterval:I

    iget v5, p0, Lcom/sec/android/glview/TwGLProgressBar;->DEFAULT_PADDING:I

    sub-int/2addr v2, v5

    int-to-float v5, v2

    iget v6, p0, Lcom/sec/android/glview/TwGLProgressBar;->mHeight:F

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgress:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " / "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v7, p0, Lcom/sec/android/glview/TwGLProgressBar;->mMax:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/glview/TwGLProgressBar;->mFontsize:F

    iget v9, p0, Lcom/sec/android/glview/TwGLProgressBar;->DEFAULT_TEXT_COLOR:I

    const/4 v10, 0x1

    move-object v2, p1

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    .line 83
    iget-object v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 85
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLProgressBar;->init()V

    .line 86
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFFIIIIF)V
    .locals 11
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "progressHeight"
    .parameter "redId_bg"
    .parameter "redId_bar"
    .parameter "Alpha"
    .parameter "Textinterval"
    .parameter "font_size"

    .prologue
    .line 89
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 27
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mMax:I

    .line 28
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgress:I

    .line 29
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mTextinterval:I

    .line 30
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    .line 31
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mHeight:F

    .line 32
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarHeight:F

    .line 33
    const/high16 v1, 0x41a0

    iput v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mFontsize:F

    .line 36
    const/16 v1, 0xa

    iput v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->DEFAULT_PADDING:I

    .line 37
    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->DEFAULT_TEXT_COLOR:I

    .line 39
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarBg:Lcom/sec/android/glview/TwGLNinePatch;

    .line 40
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatch;

    .line 41
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    .line 90
    iput-object p1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mGL:Lcom/sec/android/glview/TwGLContext;

    .line 91
    iput p4, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    .line 92
    move/from16 v0, p5

    iput v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mHeight:F

    .line 93
    move/from16 v0, p6

    iput v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarHeight:F

    .line 94
    move/from16 v0, p10

    iput v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mTextinterval:I

    .line 95
    move/from16 v0, p11

    iput v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mFontsize:F

    .line 96
    move/from16 v0, p9

    iput v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mAlpha:I

    .line 98
    new-instance v1, Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v3, 0x0

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mHeight:F

    iget v4, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarHeight:F

    sub-float/2addr v2, v4

    const/high16 v4, 0x4000

    div-float v4, v2, v4

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    iget v5, p0, Lcom/sec/android/glview/TwGLProgressBar;->mTextinterval:I

    int-to-float v5, v5

    sub-float v5, v2, v5

    iget v6, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarHeight:F

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mAlpha:I

    int-to-float v8, v2

    move-object v2, p1

    move/from16 v7, p7

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIF)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarBg:Lcom/sec/android/glview/TwGLNinePatch;

    .line 99
    new-instance v1, Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v3, 0x0

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mHeight:F

    iget v4, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarHeight:F

    sub-float/2addr v2, v4

    const/high16 v4, 0x4000

    div-float v4, v2, v4

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    iget v5, p0, Lcom/sec/android/glview/TwGLProgressBar;->mTextinterval:I

    int-to-float v5, v5

    sub-float v5, v2, v5

    iget v6, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarHeight:F

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mAlpha:I

    int-to-float v8, v2

    move-object v2, p1

    move/from16 v7, p8

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIF)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatch;

    .line 100
    iget-object v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 101
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    iget v3, p0, Lcom/sec/android/glview/TwGLProgressBar;->mTextinterval:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/glview/TwGLProgressBar;->DEFAULT_PADDING:I

    int-to-float v3, v3

    add-float/2addr v3, v2

    const/4 v4, 0x0

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mTextinterval:I

    iget v5, p0, Lcom/sec/android/glview/TwGLProgressBar;->DEFAULT_PADDING:I

    sub-int/2addr v2, v5

    int-to-float v5, v2

    iget v6, p0, Lcom/sec/android/glview/TwGLProgressBar;->mHeight:F

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgress:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " / "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v7, p0, Lcom/sec/android/glview/TwGLProgressBar;->mMax:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/glview/TwGLProgressBar;->mFontsize:F

    iget v9, p0, Lcom/sec/android/glview/TwGLProgressBar;->DEFAULT_TEXT_COLOR:I

    const/4 v10, 0x1

    move-object v2, p1

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    .line 102
    iget-object v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 104
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLProgressBar;->init()V

    .line 105
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V
    .locals 7
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "redId_bg"
    .parameter "redId_bar"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    const/16 v1, 0xff

    const/4 v2, 0x0

    .line 44
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 27
    iput v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mMax:I

    .line 28
    iput v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgress:I

    .line 29
    iput v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mTextinterval:I

    .line 30
    iput v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    .line 31
    iput v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mHeight:F

    .line 32
    iput v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarHeight:F

    .line 33
    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mFontsize:F

    .line 36
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->DEFAULT_PADDING:I

    .line 37
    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->DEFAULT_TEXT_COLOR:I

    .line 39
    iput-object v3, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarBg:Lcom/sec/android/glview/TwGLNinePatch;

    .line 40
    iput-object v3, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatch;

    .line 41
    iput-object v3, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    .line 45
    iput-object p1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mGL:Lcom/sec/android/glview/TwGLContext;

    .line 46
    iput p4, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    .line 47
    iput p5, p0, Lcom/sec/android/glview/TwGLProgressBar;->mHeight:F

    .line 49
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    iget v4, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    iget v5, p0, Lcom/sec/android/glview/TwGLProgressBar;->mHeight:F

    move-object v1, p1

    move v3, v2

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarBg:Lcom/sec/android/glview/TwGLNinePatch;

    .line 50
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    iget v4, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    iget v5, p0, Lcom/sec/android/glview/TwGLProgressBar;->mHeight:F

    move-object v1, p1

    move v3, v2

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatch;

    .line 51
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 53
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLProgressBar;->init()V

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFIII)V
    .locals 9
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "redId_bg"
    .parameter "redId_bar"
    .parameter "Alpha"

    .prologue
    .line 57
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 27
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mMax:I

    .line 28
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgress:I

    .line 29
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mTextinterval:I

    .line 30
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    .line 31
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mHeight:F

    .line 32
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarHeight:F

    .line 33
    const/high16 v1, 0x41a0

    iput v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mFontsize:F

    .line 36
    const/16 v1, 0xa

    iput v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->DEFAULT_PADDING:I

    .line 37
    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->DEFAULT_TEXT_COLOR:I

    .line 39
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarBg:Lcom/sec/android/glview/TwGLNinePatch;

    .line 40
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatch;

    .line 41
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    .line 58
    iput-object p1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mGL:Lcom/sec/android/glview/TwGLContext;

    .line 59
    iput p4, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    .line 60
    iput p5, p0, Lcom/sec/android/glview/TwGLProgressBar;->mHeight:F

    .line 61
    move/from16 v0, p8

    iput v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mAlpha:I

    .line 63
    new-instance v1, Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    iget v6, p0, Lcom/sec/android/glview/TwGLProgressBar;->mHeight:F

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mAlpha:I

    int-to-float v8, v2

    move-object v2, p1

    move v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIF)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarBg:Lcom/sec/android/glview/TwGLNinePatch;

    .line 64
    new-instance v1, Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    iget v6, p0, Lcom/sec/android/glview/TwGLProgressBar;->mHeight:F

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mAlpha:I

    int-to-float v8, v2

    move-object v2, p1

    move/from16 v7, p7

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIF)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatch;

    .line 65
    iget-object v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 67
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLProgressBar;->init()V

    .line 68
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatch;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarBg:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarBg:Lcom/sec/android/glview/TwGLNinePatch;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_2

    .line 113
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 114
    :cond_2
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->clear()V

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarBg:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_2

    .line 167
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarBg:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->clear()V

    .line 168
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mGL:Lcom/sec/android/glview/TwGLContext;

    .line 169
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->clear()V

    .line 170
    return-void
.end method

.method public getMax()I
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mMax:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgress:I

    return v0
.end method

.method public initSize()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public onAlphaUpdated()V
    .locals 1

    .prologue
    .line 185
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->onAlphaUpdated()V

    .line 186
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->onAlphaUpdated()V

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->onAlphaUpdated()V

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarBg:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_2

    .line 191
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarBg:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->onAlphaUpdated()V

    .line 192
    :cond_2
    return-void
.end method

.method protected onDraw()V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarBg:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarBg:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V

    .line 149
    :cond_2
    return-void
.end method

.method public onLayoutUpdated()V
    .locals 1

    .prologue
    .line 174
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->onLayoutUpdated()V

    .line 175
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->onLayoutUpdated()V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->onLayoutUpdated()V

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarBg:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarBg:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->onLayoutUpdated()V

    .line 181
    :cond_2
    return-void
.end method

.method protected onLoad()Z
    .locals 2

    .prologue
    .line 124
    const/4 v0, 0x1

    .line 126
    .local v0, loaded:Z
    iget-object v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->load()Z

    move-result v1

    and-int/2addr v0, v1

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarBg:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v1, :cond_1

    .line 130
    iget-object v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarBg:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->load()Z

    move-result v1

    and-int/2addr v0, v1

    .line 132
    :cond_1
    iget-object v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v1, :cond_2

    .line 133
    iget-object v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->load()Z

    move-result v1

    and-int/2addr v0, v1

    .line 135
    :cond_2
    return v0
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->reset()V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->reset()V

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarBg:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_2

    .line 158
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarBg:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->reset()V

    .line 159
    :cond_2
    return-void
.end method

.method public setCaptureProgressIncreased()V
    .locals 3

    .prologue
    .line 270
    iget v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgress:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgress:I

    .line 271
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatch;

    iget v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgress:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mMax:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mTextinterval:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 273
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgress:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mMax:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 276
    :cond_0
    return-void
.end method

.method public declared-synchronized setHeight(F)V
    .locals 0
    .parameter "height"

    .prologue
    .line 227
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public setMax(I)V
    .locals 3
    .parameter "max"

    .prologue
    .line 230
    iput p1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mMax:I

    .line 231
    iget v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    iget v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgress:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mMax:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 232
    iget v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mTextinterval:I

    if-eqz v0, :cond_2

    .line 233
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatch;

    iget v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mTextinterval:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgress:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mMax:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 238
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgress:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mMax:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 241
    :cond_1
    return-void

    .line 235
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatch;

    iget v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mTextinterval:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgress:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mMax:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 3
    .parameter "progress"

    .prologue
    .line 244
    iput p1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgress:I

    .line 245
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 246
    iget v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    iget v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgress:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mMax:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 247
    iget v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mTextinterval:I

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatch;

    iget v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mTextinterval:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgress:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mMax:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 256
    :goto_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgress:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mMax:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 259
    :cond_0
    return-void

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatch;

    iget v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mTextinterval:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgress:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mMax:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    goto :goto_0

    .line 253
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSize(FF)V
    .locals 10
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 195
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 197
    iput p1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    .line 198
    iput p2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mHeight:F

    .line 199
    iget v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mTextinterval:I

    if-eqz v0, :cond_2

    .line 200
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarBg:Lcom/sec/android/glview/TwGLNinePatch;

    iget v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mTextinterval:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 201
    iget v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    iget v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgress:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mMax:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatch;

    iget v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mTextinterval:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgress:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mMax:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 207
    :goto_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 208
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mGL:Lcom/sec/android/glview/TwGLContext;

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    iget v4, p0, Lcom/sec/android/glview/TwGLProgressBar;->mTextinterval:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    iget v4, p0, Lcom/sec/android/glview/TwGLProgressBar;->DEFAULT_PADDING:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    iget v4, p0, Lcom/sec/android/glview/TwGLProgressBar;->mTextinterval:I

    iget v5, p0, Lcom/sec/android/glview/TwGLProgressBar;->DEFAULT_PADDING:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/glview/TwGLProgressBar;->mHeight:F

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgress:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/glview/TwGLProgressBar;->mMax:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/glview/TwGLProgressBar;->mFontsize:F

    iget v8, p0, Lcom/sec/android/glview/TwGLProgressBar;->DEFAULT_TEXT_COLOR:I

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    .line 209
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    invoke-virtual {v0, v9, v1}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 210
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarText:Lcom/sec/android/glview/TwGLText;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 217
    :cond_0
    :goto_1
    return-void

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatch;

    iget v1, p0, Lcom/sec/android/glview/TwGLProgressBar;->mWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mTextinterval:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    goto :goto_0

    .line 213
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarGauge:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 214
    iget-object v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgressBarBg:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 215
    iget v0, p0, Lcom/sec/android/glview/TwGLProgressBar;->mProgress:I

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    goto :goto_1
.end method

.method public declared-synchronized setWidth(F)V
    .locals 0
    .parameter "width"

    .prologue
    .line 222
    monitor-enter p0

    monitor-exit p0

    return-void
.end method
