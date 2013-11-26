.class public Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLTutorialModeDescription.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription$1;,
        Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription$OnOrientationChangedListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final CONTENT_HEIGHT:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final CONTENT_POS_X:F = 0.0f

.field private static final CONTENT_WIDTH:[F = null

#the value of this static final field might be set in the static constructor
.field private static final DESCRIPTION_FONT_COLOR:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DESCRIPTION_FONT_SIZE:I = 0x0

.field private static final DESCRIPTION_GROUP_PADDING_HEIGHT:[F = null

.field private static final DESCRIPTION_GROUP_PORTRAIT_POS_X:[F = null

.field private static final DESCRIPTION_GROUP_WIDTH:[F = null

#the value of this static final field might be set in the static constructor
.field private static final DESCRIPTION_IMAGE_X:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final DESCRIPTION_LINE_HEIGHT:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final DESCRIPTION_OFFSET_Y:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final TITLE_DESCRIPTION_PADDING:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final TITLE_FONT_SIZE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final TITLE_HEIGHT:F = 0.0f

.field private static final TITLE_POS_Y:[F = null

.field private static final TUTORIAL_MODE_SCALE_RATIO:F = 0.73f


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

.field private mDescription:Lcom/sec/android/glview/TwGLText;

.field private mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mImage:Lcom/sec/android/glview/TwGLImage;

.field private mTitle:Lcom/sec/android/glview/TwGLText;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-array v0, v6, [F

    const v1, 0x7f080069

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f08006a

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f08006b

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    const v1, 0x7f08006c

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_POS_Y:[F

    .line 21
    const v0, 0x7f080073

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_HEIGHT:F

    .line 22
    const v0, 0x7f080074

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_DESCRIPTION_PADDING:F

    .line 23
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_HEIGHT:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_DESCRIPTION_PADDING:F

    add-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_OFFSET_Y:F

    .line 24
    const v0, 0x7f080075

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    .line 25
    const v0, 0x7f080210

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_POS_X:F

    .line 26
    new-array v0, v6, [F

    const v1, 0x7f080211

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f080213

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f080211

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    const v1, 0x7f080213

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_WIDTH:[F

    .line 28
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_HEIGHT:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_DESCRIPTION_PADDING:F

    add-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    add-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_HEIGHT:F

    .line 29
    new-array v0, v4, [F

    const v1, 0x7f080212

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f080214

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_WIDTH:[F

    .line 30
    new-array v0, v6, [F

    const v1, 0x7f080076

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f080077

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f080076

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    const v1, 0x7f080077

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_PADDING_HEIGHT:[F

    .line 32
    const v0, 0x7f080218

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_IMAGE_X:F

    .line 33
    new-array v0, v4, [F

    const v1, 0x7f080216

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f080217

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_PORTRAIT_POS_X:[F

    .line 35
    const v0, 0x7f09001f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_FONT_SIZE:I

    .line 36
    const v0, 0x7f090020

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_FONT_SIZE:I

    .line 37
    const/16 v0, 0xff

    const/16 v1, 0xe0

    const/16 v2, 0xe0

    const/16 v3, 0xe0

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_FONT_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFFF)V
    .locals 9
    .parameter "activityContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 49
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 51
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 52
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_POS_X:F

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_POS_Y:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_HEIGHT:F

    const-string v6, ""

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_FONT_SIZE:I

    int-to-float v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    .line 53
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_POS_X:F

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_POS_Y:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_OFFSET_Y:F

    add-float/2addr v3, v4

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    const-string v6, ""

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_FONT_SIZE:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_FONT_COLOR:I

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    .line 54
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const v2, 0x7f080314

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_WIDTH:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    sub-float/2addr v2, v3

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_PADDING_HEIGHT:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_HEIGHT:F

    add-float/2addr v3, v4

    sub-float v3, p5, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_HEIGHT:F

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_PADDING_HEIGHT:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    add-float/2addr v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 56
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_PORTRAIT_POS_X:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    const v3, 0x7f080315

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_WIDTH:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    sub-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 58
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    const v2, 0x7f080314

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_WIDTH:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_PADDING_HEIGHT:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_HEIGHT:F

    add-float/2addr v3, v4

    add-float/2addr v3, p5

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 59
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_PORTRAIT_POS_X:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    const v3, 0x7f080315

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_WIDTH:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    add-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 60
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription$OnOrientationChangedListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription$OnOrientationChangedListener;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 61
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const v1, 0x7f0200c3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setNinePatchBackground(I)Z

    .line 63
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f020443

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mImage:Lcom/sec/android/glview/TwGLImage;

    .line 64
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mImage:Lcom/sec/android/glview/TwGLImage;

    const v1, 0x3f3ae148

    const v2, 0x3f3ae148

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->scale(FF)V

    .line 65
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 67
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 68
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 70
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    return-object v0
.end method


# virtual methods
.method public setDescription(Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getOrientation()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->setDescription(Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;I)V

    .line 74
    return-void
.end method

.method public setDescription(Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;I)V
    .locals 11
    .parameter "bundle"
    .parameter "orientation"

    .prologue
    const/high16 v10, 0x4000

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, description:Ljava/lang/String;
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    .line 79
    const/4 v1, 0x0

    .line 80
    .local v1, rows:I
    invoke-virtual {p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 136
    :goto_0
    :pswitch_0
    packed-switch p2, :pswitch_data_1

    .line 188
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1, v7}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 189
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p1, v9}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 190
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v0}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->showDescription()V

    .line 192
    return-void

    .line 82
    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0a004c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 83
    goto :goto_0

    .line 85
    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0a004e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 86
    goto :goto_0

    .line 88
    :pswitch_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0a004d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 89
    goto :goto_0

    .line 91
    :pswitch_4
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0a004b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 92
    goto :goto_0

    .line 94
    :pswitch_5
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0a0051

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 95
    goto :goto_0

    .line 97
    :pswitch_6
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0a0053

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 98
    goto :goto_0

    .line 101
    :pswitch_7
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0a0056

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 102
    goto :goto_0

    .line 104
    :pswitch_8
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0a004f

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 105
    goto :goto_0

    .line 107
    :pswitch_9
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0a0059

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 108
    goto/16 :goto_0

    .line 110
    :pswitch_a
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0a0050

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 111
    goto/16 :goto_0

    .line 113
    :pswitch_b
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0a0054

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 114
    goto/16 :goto_0

    .line 116
    :pswitch_c
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0a0052

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 117
    goto/16 :goto_0

    .line 119
    :pswitch_d
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v2

    if-eq v2, v6, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/MenuDimController;->getSavedUserSettingValues(I)I

    move-result v2

    if-ne v2, v6, :cond_2

    .line 121
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0a0049

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 123
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0a004a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 125
    goto/16 :goto_0

    .line 127
    :pswitch_e
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0a0055

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    goto/16 :goto_0

    .line 130
    :pswitch_f
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0a0057

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 131
    goto/16 :goto_0

    .line 133
    :pswitch_10
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0a005b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 138
    :pswitch_11
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_WIDTH:[F

    aget v2, v2, v7

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v1

    .line 139
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_WIDTH:[F

    aget v3, v3, v7

    int-to-float v4, v1

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 140
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_WIDTH:[F

    aget v3, v3, v7

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_HEIGHT:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 142
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    .line 143
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    .line 145
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_WIDTH:[F

    aget v3, v3, v7

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_PADDING_HEIGHT:[F

    aget v4, v4, v7

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_HEIGHT:F

    add-float/2addr v4, v5

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 146
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    add-int/lit8 v3, v1, -0x1

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v3, v4

    neg-float v3, v3

    div-float/2addr v3, v10

    invoke-virtual {v2, v8, v3}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 147
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const v3, 0x7f0200c3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setNinePatchBackground(I)Z

    .line 148
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mImage:Lcom/sec/android/glview/TwGLImage;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_IMAGE_X:F

    const/high16 v4, 0x4248

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    const/high16 v6, 0x42c8

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    sub-float/2addr v5, v6

    div-float/2addr v5, v10

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_1

    .line 151
    :pswitch_12
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_WIDTH:[F

    aget v2, v2, v6

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v1

    .line 152
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_WIDTH:[F

    aget v3, v3, v6

    int-to-float v4, v1

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 153
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_WIDTH:[F

    aget v3, v3, v6

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_HEIGHT:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 155
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_POS_Y:[F

    aget v3, v3, v6

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_POS_Y:[F

    aget v4, v4, v7

    sub-float/2addr v3, v4

    invoke-virtual {v2, v8, v3}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 156
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_POS_Y:[F

    aget v3, v3, v6

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_POS_Y:[F

    aget v4, v4, v7

    sub-float/2addr v3, v4

    invoke-virtual {v2, v8, v3}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 158
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_WIDTH:[F

    aget v3, v3, v6

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_PADDING_HEIGHT:[F

    aget v4, v4, v6

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_HEIGHT:F

    add-float/2addr v4, v5

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 159
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v8, v8}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 160
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const v3, 0x7f0200c3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setNinePatchBackground(I)Z

    goto/16 :goto_1

    .line 163
    :pswitch_13
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_WIDTH:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v1

    .line 164
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_WIDTH:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    int-to-float v4, v1

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 165
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_WIDTH:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_HEIGHT:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 167
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    .line 168
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    .line 170
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_WIDTH:[F

    aget v3, v3, v7

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_PADDING_HEIGHT:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_HEIGHT:F

    add-float/2addr v4, v5

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 171
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    add-int/lit8 v3, v1, -0x1

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v10

    invoke-virtual {v2, v8, v3}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 172
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const v3, 0x7f0200c3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setNinePatchBackground(I)Z

    .line 173
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mImage:Lcom/sec/android/glview/TwGLImage;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_IMAGE_X:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v10

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->setResourceOffset(FF)Z

    goto/16 :goto_1

    .line 176
    :pswitch_14
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_WIDTH:[F

    aget v2, v2, v9

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v1

    .line 177
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_WIDTH:[F

    aget v3, v3, v9

    int-to-float v4, v1

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 178
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_WIDTH:[F

    aget v3, v3, v9

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_HEIGHT:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 180
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_POS_Y:[F

    aget v3, v3, v9

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_POS_Y:[F

    aget v4, v4, v7

    sub-float/2addr v3, v4

    invoke-virtual {v2, v8, v3}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 181
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_POS_Y:[F

    aget v3, v3, v9

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_POS_Y:[F

    aget v4, v4, v7

    sub-float/2addr v3, v4

    invoke-virtual {v2, v8, v3}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 183
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_WIDTH:[F

    aget v3, v3, v6

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_PADDING_HEIGHT:[F

    aget v4, v4, v9

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_HEIGHT:F

    add-float/2addr v4, v5

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 184
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    add-int/lit8 v3, v1, -0x1

    neg-int v3, v3

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3, v8}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 185
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const v3, 0x7f0200c3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setNinePatchBackground(I)Z

    goto/16 :goto_1

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_d
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_e
        :pswitch_7
        :pswitch_f
        :pswitch_10
    .end packed-switch

    .line 136
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method public showDescription()V
    .locals 3

    .prologue
    .line 195
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 196
    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 197
    .local v0, showAnimation:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 199
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 200
    return-void
.end method
