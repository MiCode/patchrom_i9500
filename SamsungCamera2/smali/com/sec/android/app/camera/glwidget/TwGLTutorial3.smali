.class public Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLTutorial3.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final FOCUS_PADDING:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final FONT_COLOR:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final FONT_SIZE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final HELP_MODE_POPUP_LANDSCAPE_X:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final HELP_MODE_POPUP_LANDSCAPE_Y:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final HELP_MODE_POPUP_PORTRAIT_X:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final HELP_MODE_POPUP_PORTRAIT_Y:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final HELP_POPUP_HEIGHT:F = 0.0f

.field private static final HELP_POPUP_PADDING:[F = null

#the value of this static final field might be set in the static constructor
.field private static final HELP_POPUP_PICKER_PADDING:F = 0.0f

.field private static final HELP_POPUP_WIDTH:[F = null

#the value of this static final field might be set in the static constructor
.field private static final HELP_TEXT_HEIGHT:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final HELP_TEXT_HEIGHT_MARGIN:F = 0.0f

.field private static final HELP_TEXT_WIDTH:[F = null

#the value of this static final field might be set in the static constructor
.field private static final HELP_TEXT_WIDTH_MARGIN:F = 0.0f

.field public static final LAST_STEP:I = 0x3

#the value of this static final field might be set in the static constructor
.field private static final MODE_FOCUS_X:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final MODE_FOCUS_Y:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final SCREEN_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SCREEN_WIDTH:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "TwGLTutorial"


# instance fields
.field public STEP_NUM:I

.field public blinkAnimation:Landroid/view/animation/Animation;

.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mHelpFocus:Lcom/sec/android/glview/TwGLImage;

.field private mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

.field private mHelpText:Lcom/sec/android/glview/TwGLText;

.field private mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private final mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private final mShowAnimationSet:Landroid/view/animation/AnimationSet;

.field private final mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/high16 v5, 0x4000

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    const v0, 0x7f080314

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->SCREEN_WIDTH:I

    .line 24
    const v0, 0x7f080315

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->SCREEN_HEIGHT:I

    .line 26
    const v0, 0x7f08020a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_WIDTH_MARGIN:F

    .line 27
    const v0, 0x7f08020b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_HEIGHT_MARGIN:F

    .line 28
    new-array v0, v6, [F

    const v1, 0x7f08020c

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f08020d

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_WIDTH:[F

    .line 29
    const v0, 0x7f08020e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_HEIGHT:F

    .line 31
    const v0, 0x7f080206

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_MODE_POPUP_LANDSCAPE_X:F

    .line 32
    const v0, 0x7f080207

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_MODE_POPUP_LANDSCAPE_Y:F

    .line 33
    const v0, 0x7f080208

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_MODE_POPUP_PORTRAIT_X:F

    .line 34
    const v0, 0x7f080209

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_MODE_POPUP_PORTRAIT_Y:F

    .line 35
    new-array v0, v6, [F

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_WIDTH:[F

    aget v1, v1, v3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    aput v1, v0, v3

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_WIDTH:[F

    aget v1, v1, v4

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    aput v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_WIDTH:[F

    .line 36
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_HEIGHT:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_HEIGHT_MARGIN:F

    mul-float/2addr v1, v5

    add-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_HEIGHT:F

    .line 38
    const v0, 0x7f080200

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_PICKER_PADDING:F

    .line 39
    const/4 v0, 0x3

    new-array v0, v0, [F

    const v1, 0x7f080201

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f080202

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    const v1, 0x7f080203

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v6

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_PADDING:[F

    .line 43
    const v0, 0x7f0801ff

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->FOCUS_PADDING:F

    .line 44
    const v0, 0x7f0801f9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->FOCUS_PADDING:F

    add-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->MODE_FOCUS_X:F

    .line 45
    const v0, 0x7f080013

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->FOCUS_PADDING:F

    add-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->MODE_FOCUS_Y:F

    .line 47
    const v0, 0x7f090030

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->FONT_SIZE:I

    .line 48
    const/16 v0, 0xff

    invoke-static {v0, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->FONT_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFFF)V
    .locals 10
    .parameter "activityContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 68
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 63
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 64
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f666666

    const/high16 v2, 0x3f80

    const v3, 0x3f666666

    const/high16 v4, 0x3f80

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    .line 65
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 70
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 72
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->SCREEN_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 74
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_WIDTH_MARGIN:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_HEIGHT_MARGIN:F

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_HEIGHT:F

    const-string v6, ""

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->FONT_SIZE:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->FONT_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpText:Lcom/sec/android/glview/TwGLText;

    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 77
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_HEIGHT:F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const v1, 0x7f0203d1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setNinePatchBackground(I)Z

    .line 80
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0203d3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    .line 82
    const v0, 0x7f050002

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->blinkAnimation:Landroid/view/animation/Animation;

    .line 83
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0203db

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->blinkAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 90
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mShowAnimation:Landroid/view/animation/Animation;

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setBypassTouch(Z)V

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 107
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->Step1_s()V

    .line 108
    return-void
.end method


# virtual methods
.method public HideHelpTutorial()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 113
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 118
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    .line 123
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpText:Lcom/sec/android/glview/TwGLText;

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_3

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 128
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    .line 131
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_4

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 133
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    .line 135
    :cond_4
    return-void
.end method

.method public Step1_s()V
    .locals 5

    .prologue
    .line 225
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->STEP_NUM:I

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->MODE_FOCUS_X:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->MODE_FOCUS_Y:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 227
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->MODE_FOCUS_Y:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 228
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->STEP_NUM:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->setHelpText(I)V

    .line 229
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 231
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 232
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xcb

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->STEP_NUM:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 234
    return-void
.end method

.method public Step2_s()V
    .locals 3

    .prologue
    const/4 v1, 0x4

    .line 237
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->STEP_NUM:I

    .line 238
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 240
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->STEP_NUM:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->setHelpText(I)V

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xcb

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->STEP_NUM:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 244
    return-void
.end method

.method public Step_Hide()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 139
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->STEP_NUM:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->STEP_NUM:I

    .line 142
    :cond_0
    return-void
.end method

.method public declared-synchronized contains(FF)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 253
    monitor-enter p0

    const/4 v0, 0x1

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized findViewByCoordinate(FF)Lcom/sec/android/glview/TwGLView;
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 258
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 292
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->setSizeForOrientation(I)V

    .line 293
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->onOrientationChanged(I)V

    .line 294
    return-void
.end method

.method public setHelpText(I)V
    .locals 13
    .parameter "step"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/high16 v10, 0x4000

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, helptext:Ljava/lang/String;
    const/4 v1, 0x0

    .line 148
    .local v1, rows:I
    packed-switch p1, :pswitch_data_0

    .line 221
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v0}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 222
    return-void

    .line 150
    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0a025f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 169
    :goto_1
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v9

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v1

    .line 170
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_WIDTH:[F

    aget v4, v4, v9

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v3, v4

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_PADDING:[F

    aget v4, v4, v9

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v6, v1, -0x1

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    sub-float/2addr v5, v6

    div-float/2addr v5, v10

    sub-float/2addr v4, v5

    invoke-virtual {v2, v9, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 172
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v3, v4

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_PADDING:[F

    aget v4, v4, v9

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v6, v1, -0x1

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    add-float/2addr v5, v6

    div-float/2addr v5, v10

    add-float/2addr v4, v5

    invoke-virtual {v2, v11, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 175
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v8

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v1

    .line 176
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v3, v4

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_PADDING:[F

    aget v4, v4, v11

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_WIDTH:[F

    aget v5, v5, v8

    sub-float/2addr v4, v5

    div-float/2addr v4, v10

    invoke-virtual {v2, v8, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 177
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    sub-float/2addr v3, v4

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_PADDING:[F

    aget v4, v4, v11

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_WIDTH:[F

    aget v6, v6, v8

    sub-float/2addr v5, v6

    div-float/2addr v5, v10

    sub-float/2addr v4, v5

    invoke-virtual {v2, v12, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 180
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 181
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 182
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 183
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v8}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V

    goto/16 :goto_0

    .line 155
    :pswitch_1
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v9

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v1

    .line 156
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_WIDTH:[F

    aget v3, v3, v9

    int-to-float v4, v1

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 157
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_WIDTH:[F

    aget v3, v3, v9

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_1

    .line 161
    :pswitch_2
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v8

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v1

    .line 162
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_WIDTH:[F

    aget v3, v3, v8

    int-to-float v4, v1

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 163
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_WIDTH:[F

    aget v3, v3, v8

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_1

    .line 186
    :pswitch_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0a0260

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v2

    packed-switch v2, :pswitch_data_2

    .line 205
    :goto_2
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v9

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v1

    .line 206
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_MODE_POPUP_LANDSCAPE_X:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_MODE_POPUP_LANDSCAPE_Y:F

    invoke-virtual {v2, v9, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 207
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_MODE_POPUP_LANDSCAPE_X:F

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_WIDTH:[F

    aget v4, v4, v9

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_MODE_POPUP_LANDSCAPE_Y:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v11, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 209
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v8

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v1

    .line 210
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->SCREEN_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_MODE_POPUP_PORTRAIT_X:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_WIDTH:[F

    aget v5, v5, v8

    sub-float/2addr v4, v5

    div-float/2addr v4, v10

    invoke-virtual {v2, v8, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 211
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_MODE_POPUP_PORTRAIT_X:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_WIDTH:[F

    aget v6, v6, v8

    sub-float/2addr v5, v6

    div-float/2addr v5, v10

    sub-float/2addr v4, v5

    invoke-virtual {v2, v12, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 213
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 214
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 215
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v8}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V

    goto/16 :goto_0

    .line 191
    :pswitch_4
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v9

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v1

    .line 192
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_WIDTH:[F

    aget v3, v3, v9

    int-to-float v4, v1

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 193
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_WIDTH:[F

    aget v3, v3, v9

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_2

    .line 197
    :pswitch_5
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v8

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v1

    .line 198
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_WIDTH:[F

    aget v3, v3, v8

    int-to-float v4, v1

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 199
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_WIDTH:[F

    aget v3, v3, v8

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_2

    .line 148
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 152
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 188
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setSizeForOrientation(I)V
    .locals 7
    .parameter "orientation"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 262
    const/4 v0, 0x0

    .line 263
    .local v0, rows:I
    packed-switch p1, :pswitch_data_0

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 266
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v1, :cond_1

    .line 267
    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_WIDTH:[F

    aget v1, v1, v5

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLText;->getText()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v0

    .line 268
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v5

    int-to-float v3, v0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 270
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_WIDTH:[F

    aget v2, v2, v5

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v4, v0, -0x1

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 272
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    goto :goto_0

    .line 277
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v1, :cond_2

    .line 278
    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_WIDTH:[F

    aget v1, v1, v6

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLText;->getText()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v0

    .line 279
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v6

    int-to-float v3, v0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 281
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_WIDTH:[F

    aget v2, v2, v6

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v4, v0, -0x1

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 283
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    goto :goto_0

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setStep3()V
    .locals 2

    .prologue
    .line 247
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->STEP_NUM:I

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 249
    return-void
.end method
