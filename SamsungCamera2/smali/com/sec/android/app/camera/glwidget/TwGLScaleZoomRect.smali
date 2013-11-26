.class public Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLScaleZoomRect.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final CENTER_POS_X:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final CENTER_POS_Y:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final DEFAULT_COLOR:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DEFAULT_COLOR_IN:I = 0x0

.field private static final DEFAULT_THICKNESS:I = 0x8

.field private static final DEFAULT_THICKNESS_IN:I = 0x2

#the value of this static final field might be set in the static constructor
.field public static final MAX_ZOOM_LEVEL:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final MAX_ZOOM_RATIO:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final MIN_ZOOM_RATIO:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "TwGLScaleZoomRect"

.field private static final TEXT_SIZE:I

.field private static final ZOOM_RECT_SIZE:I

.field public static final ZOOM_STEP:F

.field private static final ZOOM_TEXT_HEIGHT:F

.field private static final ZOOM_TEXT_MARGIN:F


# instance fields
.field private mZoomRectIn:Lcom/sec/android/glview/TwGLRectangle;

.field private mZoomRectOut:Lcom/sec/android/glview/TwGLRectangle;

.field private mZoomText:Lcom/sec/android/glview/TwGLText;

.field private mZoomTextGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private zoomValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/high16 v4, 0x4000

    const/16 v3, 0x64

    const/16 v2, 0xff

    .line 36
    const v0, 0x7f090014

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->MAX_ZOOM_RATIO:I

    .line 37
    const v0, 0x7f090015

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->MIN_ZOOM_RATIO:I

    .line 38
    const v0, 0x7f090013

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->MAX_ZOOM_LEVEL:I

    .line 39
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->MAX_ZOOM_RATIO:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->MIN_ZOOM_RATIO:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->MAX_ZOOM_LEVEL:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_STEP:F

    .line 41
    const v0, 0x7f08021b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_RECT_SIZE:I

    .line 42
    const v0, 0x7f080219

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_MARGIN:F

    .line 43
    const v0, 0x7f08021a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_HEIGHT:F

    .line 45
    const v0, 0x7f080314

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    div-float/2addr v0, v4

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->CENTER_POS_X:F

    .line 46
    const v0, 0x7f080315

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    div-float/2addr v0, v4

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->CENTER_POS_Y:F

    .line 47
    const v0, 0x7f090024

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->TEXT_SIZE:I

    .line 48
    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->DEFAULT_COLOR:I

    .line 49
    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->DEFAULT_COLOR_IN:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;Ljava/lang/String;)V
    .locals 13
    .parameter "glContext"
    .parameter "zoomValueText"

    .prologue
    const/4 v12, 0x2

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/16 v10, 0xff

    const/4 v2, 0x0

    .line 60
    invoke-direct {p0, p1, v2, v2}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 52
    iput v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->zoomValue:I

    .line 62
    new-instance v0, Lcom/sec/android/glview/TwGLRectangle;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_RECT_SIZE:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_RECT_SIZE:I

    int-to-float v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->DEFAULT_COLOR:I

    const/high16 v7, 0x4100

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectOut:Lcom/sec/android/glview/TwGLRectangle;

    .line 63
    new-instance v0, Lcom/sec/android/glview/TwGLRectangle;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_RECT_SIZE:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_RECT_SIZE:I

    int-to-float v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->DEFAULT_COLOR_IN:I

    const/high16 v7, 0x4000

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectIn:Lcom/sec/android/glview/TwGLRectangle;

    .line 64
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectOut:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 65
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectIn:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 67
    new-instance v3, Lcom/sec/android/glview/TwGLViewGroup;

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->CENTER_POS_X:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_RECT_SIZE:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v5, v0, v1

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->CENTER_POS_Y:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_MARGIN:F

    sub-float v6, v0, v1

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_RECT_SIZE:I

    int-to-float v7, v0

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_HEIGHT:F

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomTextGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 68
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomTextGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v9}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 69
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomTextGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v11}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomTextGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->CENTER_POS_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_HEIGHT:F

    add-float/2addr v1, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->CENTER_POS_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_RECT_SIZE:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v0, v9, v1, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 71
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomTextGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->CENTER_POS_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_RECT_SIZE:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v1, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->CENTER_POS_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_MARGIN:F

    add-float/2addr v3, v4

    invoke-virtual {v0, v12, v1, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomTextGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->CENTER_POS_X:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_HEIGHT:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->CENTER_POS_Y:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_RECT_SIZE:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 74
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_RECT_SIZE:I

    int-to-float v4, v1

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_HEIGHT:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->TEXT_SIZE:I

    int-to-float v7, v1

    invoke-static {v10, v10, v10, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    move-object v1, p1

    move v3, v2

    move-object v6, p2

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomText:Lcom/sec/android/glview/TwGLText;

    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v12, v12}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomTextGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 77
    invoke-virtual {p0, v11}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomTextGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 79
    return-void
.end method


# virtual methods
.method public setZoomValue(I)V
    .locals 11
    .parameter "currentZoomValue"

    .prologue
    const/4 v8, 0x0

    const/high16 v10, 0x3f80

    .line 82
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->zoomValue:I

    .line 83
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_RECT_SIZE:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v3, v5

    .line 84
    .local v3, tempWidth:F
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->CENTER_POS_X:F

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->zoomValue:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_STEP:F

    div-float/2addr v6, v7

    add-float/2addr v6, v10

    mul-float/2addr v6, v3

    sub-float v1, v5, v6

    .line 85
    .local v1, left:F
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->CENTER_POS_Y:F

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->zoomValue:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_STEP:F

    div-float/2addr v6, v7

    add-float/2addr v6, v10

    mul-float/2addr v6, v3

    sub-float v4, v5, v6

    .line 86
    .local v4, top:F
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->CENTER_POS_X:F

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->zoomValue:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_STEP:F

    div-float/2addr v6, v7

    add-float/2addr v6, v10

    mul-float/2addr v6, v3

    add-float v2, v5, v6

    .line 87
    .local v2, right:F
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->CENTER_POS_Y:F

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->zoomValue:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_STEP:F

    div-float/2addr v6, v7

    add-float/2addr v6, v10

    mul-float/2addr v6, v3

    add-float v0, v5, v6

    .line 89
    .local v0, bottom:F
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectOut:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 90
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectOut:Lcom/sec/android/glview/TwGLRectangle;

    sub-float v6, v2, v1

    sub-float v7, v0, v4

    invoke-virtual {v5, v1, v4, v6, v7}, Lcom/sec/android/glview/TwGLRectangle;->setRect(FFFF)V

    .line 91
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectIn:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 92
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectIn:Lcom/sec/android/glview/TwGLRectangle;

    sub-float v6, v2, v1

    sub-float v7, v0, v4

    invoke-virtual {v5, v1, v4, v6, v7}, Lcom/sec/android/glview/TwGLRectangle;->setRect(FFFF)V

    .line 94
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 95
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomText:Lcom/sec/android/glview/TwGLText;

    const/4 v6, 0x0

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_HEIGHT:F

    neg-float v7, v7

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->zoomValue:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_STEP:F

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    add-float/2addr v7, v10

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 96
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomText:Lcom/sec/android/glview/TwGLText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->zoomValue:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_STEP:F

    div-float/2addr v7, v8

    add-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 97
    return-void
.end method
