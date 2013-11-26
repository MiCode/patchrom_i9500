.class public Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLModeDescription.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLModeDescription$OnOrientationChangedListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final CONTENT_HEIGHT:F = 0.0f

.field private static final CONTENT_POS_X:[F = null

.field private static final CONTENT_WIDTH:[F = null

#the value of this static final field might be set in the static constructor
.field private static final DESCRIPTION_FONT_COLOR:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DESCRIPTION_FONT_SIZE:I = 0x0

.field private static final DESCRIPTION_GROUP_PADDING_HEIGHT:[F = null

.field private static final DESCRIPTION_GROUP_POS_X:[F = null

.field private static final DESCRIPTION_GROUP_POS_Y:[F = null

.field private static final DESCRIPTION_GROUP_WIDTH:[F = null

#the value of this static final field might be set in the static constructor
.field private static final DESCRIPTION_LINE_HEIGHT:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final DESCRIPTION_OFFSET_Y:F = 0.0f

.field private static final DESCRIPTION_TIMEOUT:I = 0x1b58

.field private static final TITLE_DESCRIPTION_PADDING:F

.field private static final TITLE_FONT_SIZE:I

.field private static final TITLE_HEIGHT:F

.field private static final TITLE_POS_Y:[F


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

.field private mDescription:Lcom/sec/android/glview/TwGLText;

.field private mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mHideDescription:Ljava/lang/Runnable;

.field private mIsDescriptionHidedByTimeOut:Z

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

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_POS_Y:[F

    .line 21
    const v0, 0x7f080073

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_HEIGHT:F

    .line 22
    const v0, 0x7f080074

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_DESCRIPTION_PADDING:F

    .line 23
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_HEIGHT:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_DESCRIPTION_PADDING:F

    add-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_OFFSET_Y:F

    .line 24
    const v0, 0x7f080075

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    .line 25
    new-array v0, v6, [F

    const v1, 0x7f08006f

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f080070

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f08006f

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    const v1, 0x7f080070

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_POS_X:[F

    .line 27
    new-array v0, v6, [F

    const v1, 0x7f080071

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f080072

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f080071

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    const v1, 0x7f080072

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_WIDTH:[F

    .line 29
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_HEIGHT:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_DESCRIPTION_PADDING:F

    add-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    add-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_HEIGHT:F

    .line 30
    new-array v0, v6, [F

    const v1, 0x7f080061

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f080062

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f080063

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    const v1, 0x7f080064

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_POS_X:[F

    .line 32
    new-array v0, v6, [F

    const v1, 0x7f080065

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f080066

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f080067

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    const v1, 0x7f080068

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_POS_Y:[F

    .line 34
    new-array v0, v6, [F

    const v1, 0x7f08006d

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f08006e

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f08006d

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    const v1, 0x7f08006e

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_WIDTH:[F

    .line 36
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

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_PADDING_HEIGHT:[F

    .line 38
    const v0, 0x7f09001f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_FONT_SIZE:I

    .line 39
    const v0, 0x7f090020

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_FONT_SIZE:I

    .line 40
    const/16 v0, 0xff

    const/16 v1, 0xe0

    const/16 v2, 0xe0

    const/16 v3, 0xe0

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_FONT_COLOR:I

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
    .line 59
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mIsDescriptionHidedByTimeOut:Z

    .line 51
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mHideDescription:Ljava/lang/Runnable;

    .line 61
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 62
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_POS_X:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_POS_Y:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_HEIGHT:F

    const-string v6, ""

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_FONT_SIZE:I

    int-to-float v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    .line 63
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_POS_X:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_POS_Y:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_OFFSET_Y:F

    add-float/2addr v3, v4

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    const-string v6, ""

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_FONT_SIZE:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_FONT_COLOR:I

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    .line 64
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_POS_X:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_PADDING_HEIGHT:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_HEIGHT:F

    add-float/2addr v3, v4

    sub-float v3, p5, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_HEIGHT:F

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_PADDING_HEIGHT:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    add-float/2addr v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 67
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_POS_X:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_POS_Y:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 68
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_POS_X:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_PADDING_HEIGHT:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_HEIGHT:F

    add-float/2addr v3, v4

    add-float/2addr v3, p5

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 69
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_POS_X:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_POS_Y:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription$OnOrientationChangedListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription$OnOrientationChangedListener;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;Lcom/sec/android/app/camera/glwidget/TwGLModeDescription$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 71
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const v1, 0x7f0202f0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setNinePatchBackground(I)Z

    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 79
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 81
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mIsDescriptionHidedByTimeOut:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    return-object v0
.end method


# virtual methods
.method public hideDescription()V
    .locals 2

    .prologue
    .line 221
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mIsDescriptionHidedByTimeOut:Z

    if-eqz v1, :cond_0

    .line 229
    :goto_0
    return-void

    .line 224
    :cond_0
    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOffAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 225
    .local v0, hideAnimation:Landroid/view/animation/Animation;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 227
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 228
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    goto :goto_0
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 242
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->onShootingModeMenuSelect(I)V

    .line 248
    :cond_0
    return v3
.end method

.method public setDescription(Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getOrientation()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->setDescription(Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;I)V

    .line 85
    return-void
.end method

.method public setDescription(Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;I)V
    .locals 11
    .parameter "bundle"
    .parameter "orientation"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, description:Ljava/lang/String;
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    .line 90
    const/4 v1, 0x0

    .line 91
    .local v1, rows:I
    invoke-virtual {p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 153
    :goto_0
    :pswitch_0
    packed-switch p2, :pswitch_data_1

    .line 203
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p1, v9}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 204
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v0}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->showDescription()V

    .line 207
    return-void

    .line 93
    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0a004c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    goto :goto_0

    .line 96
    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0a004e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 97
    goto :goto_0

    .line 99
    :pswitch_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0a004d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 100
    goto :goto_0

    .line 102
    :pswitch_4
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0a004b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    goto :goto_0

    .line 105
    :pswitch_5
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0a0051

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    goto :goto_0

    .line 108
    :pswitch_6
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0a0053

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 109
    goto :goto_0

    .line 112
    :pswitch_7
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0a0056

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    goto :goto_0

    .line 115
    :pswitch_8
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0a0058

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    goto :goto_0

    .line 118
    :pswitch_9
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0a004f

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 119
    goto :goto_0

    .line 121
    :pswitch_a
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0a0059

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 122
    goto/16 :goto_0

    .line 124
    :pswitch_b
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0a005a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 125
    goto/16 :goto_0

    .line 127
    :pswitch_c
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0a0050

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    goto/16 :goto_0

    .line 130
    :pswitch_d
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0a0054

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 131
    goto/16 :goto_0

    .line 133
    :pswitch_e
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0a0052

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 134
    goto/16 :goto_0

    .line 136
    :pswitch_f
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v2

    if-eq v2, v7, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/MenuDimController;->getSavedUserSettingValues(I)I

    move-result v2

    if-ne v2, v7, :cond_2

    .line 138
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0a0049

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 140
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0a004a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 142
    goto/16 :goto_0

    .line 144
    :pswitch_10
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0a0055

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 145
    goto/16 :goto_0

    .line 147
    :pswitch_11
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0a0057

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 148
    goto/16 :goto_0

    .line 150
    :pswitch_12
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0a005b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 155
    :pswitch_13
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_WIDTH:[F

    aget v2, v2, v6

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v1

    .line 156
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_WIDTH:[F

    aget v3, v3, v6

    int-to-float v4, v1

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 157
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_WIDTH:[F

    aget v3, v3, v6

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_HEIGHT:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 159
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    .line 160
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    .line 162
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_WIDTH:[F

    aget v3, v3, v6

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_PADDING_HEIGHT:[F

    aget v4, v4, v6

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_HEIGHT:F

    add-float/2addr v4, v5

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 163
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    add-int/lit8 v3, v1, -0x1

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v3, v4

    neg-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    invoke-virtual {v2, v8, v3}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 164
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const v3, 0x7f0202f0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setNinePatchBackground(I)Z

    goto/16 :goto_1

    .line 167
    :pswitch_14
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_WIDTH:[F

    aget v2, v2, v7

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v1

    .line 168
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_WIDTH:[F

    aget v3, v3, v7

    int-to-float v4, v1

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 169
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_WIDTH:[F

    aget v3, v3, v7

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_HEIGHT:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 171
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_POS_Y:[F

    aget v3, v3, v7

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_POS_Y:[F

    aget v4, v4, v6

    sub-float/2addr v3, v4

    invoke-virtual {v2, v8, v3}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 172
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_POS_Y:[F

    aget v3, v3, v7

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_POS_Y:[F

    aget v4, v4, v6

    sub-float/2addr v3, v4

    invoke-virtual {v2, v8, v3}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 174
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_WIDTH:[F

    aget v3, v3, v7

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_PADDING_HEIGHT:[F

    aget v4, v4, v7

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_HEIGHT:F

    add-float/2addr v4, v5

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 175
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v8, v8}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 176
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const v3, 0x7f0202ef

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setNinePatchBackground(I)Z

    goto/16 :goto_1

    .line 179
    :pswitch_15
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_WIDTH:[F

    aget v2, v2, v10

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v1

    .line 180
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_WIDTH:[F

    aget v3, v3, v10

    int-to-float v4, v1

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 181
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_WIDTH:[F

    aget v3, v3, v10

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_HEIGHT:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 183
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    .line 184
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    .line 186
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_WIDTH:[F

    aget v3, v3, v10

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_PADDING_HEIGHT:[F

    aget v4, v4, v10

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_HEIGHT:F

    add-float/2addr v4, v5

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 187
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    add-int/lit8 v3, v1, -0x1

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    invoke-virtual {v2, v8, v3}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 188
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const v3, 0x7f0202f1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setNinePatchBackground(I)Z

    goto/16 :goto_1

    .line 191
    :pswitch_16
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_WIDTH:[F

    aget v2, v2, v9

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v1

    .line 192
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_WIDTH:[F

    aget v3, v3, v9

    int-to-float v4, v1

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 193
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_WIDTH:[F

    aget v3, v3, v9

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_HEIGHT:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 195
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_POS_Y:[F

    aget v3, v3, v9

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_POS_Y:[F

    aget v4, v4, v6

    sub-float/2addr v3, v4

    invoke-virtual {v2, v8, v3}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 196
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_POS_Y:[F

    aget v3, v3, v9

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_POS_Y:[F

    aget v4, v4, v6

    sub-float/2addr v3, v4

    invoke-virtual {v2, v8, v3}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 198
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_WIDTH:[F

    aget v3, v3, v9

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_PADDING_HEIGHT:[F

    aget v4, v4, v9

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_HEIGHT:F

    add-float/2addr v4, v5

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 199
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    add-int/lit8 v3, v1, -0x1

    neg-int v3, v3

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3, v8}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 200
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const v3, 0x7f0202ee

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setNinePatchBackground(I)Z

    goto/16 :goto_1

    .line 91
    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_f
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
        :pswitch_b
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_10
        :pswitch_7
        :pswitch_11
        :pswitch_12
    .end packed-switch

    .line 153
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method public showDescription()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 210
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mIsDescriptionHidedByTimeOut:Z

    .line 211
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 212
    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 213
    .local v0, showAnimation:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 215
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 216
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mHideDescription:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 217
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mHideDescription:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1b58

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 218
    return-void
.end method
