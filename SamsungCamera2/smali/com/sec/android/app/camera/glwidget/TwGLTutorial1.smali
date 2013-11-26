.class public Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLTutorial1.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final FOCUS_PADDING:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final FONT_COLOR:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final FONT_SIZE:I = 0x0

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
.field private static final SCREEN_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SCREEN_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SHUTTER_FOCUS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SHUTTER_FOCUS_Y:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "TwGLTutorial"

.field private static final TOUCH_FOCUS_X:I

.field private static final TOUCH_FOCUS_Y:I


# instance fields
.field public STEP_NUM:I

.field public blinkAnimation:Landroid/view/animation/Animation;

.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mHelpFocus:Lcom/sec/android/glview/TwGLImage;

.field private mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

.field private mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

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

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_WIDTH:I

    .line 24
    const v0, 0x7f080315

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_HEIGHT:I

    .line 26
    const v0, 0x7f08020a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH_MARGIN:F

    .line 27
    const v0, 0x7f08020b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT_MARGIN:F

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

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH:[F

    .line 29
    const v0, 0x7f08020e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    .line 31
    new-array v0, v6, [F

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH:[F

    aget v1, v1, v3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    aput v1, v0, v3

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH:[F

    aget v1, v1, v4

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    aput v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_WIDTH:[F

    .line 32
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT_MARGIN:F

    mul-float/2addr v1, v5

    add-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_HEIGHT:F

    .line 34
    const v0, 0x7f080200

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PICKER_PADDING:F

    .line 35
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

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING:[F

    .line 39
    const v0, 0x7f0801f9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SHUTTER_FOCUS_X:I

    .line 40
    const v0, 0x7f08000f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    const v1, 0x7f0801fa

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SHUTTER_FOCUS_Y:I

    .line 42
    const v0, 0x7f0801fb

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->TOUCH_FOCUS_X:I

    .line 43
    const v0, 0x7f0801fc

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->TOUCH_FOCUS_Y:I

    .line 44
    const v0, 0x7f0801ff

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->FOCUS_PADDING:I

    .line 46
    const v0, 0x7f090030

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->FONT_SIZE:I

    .line 47
    const/16 v0, 0xff

    invoke-static {v0, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->FONT_COLOR:I

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

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

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

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    .line 65
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 70
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 72
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 74
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH_MARGIN:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT_MARGIN:F

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    const-string v6, ""

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->FONT_SIZE:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->FONT_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpText:Lcom/sec/android/glview/TwGLText;

    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 77
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_HEIGHT:F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const v1, 0x7f0203d1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setNinePatchBackground(I)Z

    .line 80
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0203d3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    .line 81
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0203d6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    .line 83
    const v0, 0x7f050002

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->blinkAnimation:Landroid/view/animation/Animation;

    .line 84
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0203db

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->blinkAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 90
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mShowAnimation:Landroid/view/animation/Animation;

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setBypassTouch(Z)V

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 108
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->Step1_s()V

    .line 109
    return-void
.end method


# virtual methods
.method public HideHelpTutorial()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 114
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 119
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    .line 124
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpText:Lcom/sec/android/glview/TwGLText;

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_3

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 129
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_4

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 134
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    .line 136
    :cond_4
    return-void
.end method

.method public Step1_s()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 271
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->STEP_NUM:I

    .line 272
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SHUTTER_FOCUS_X:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->FOCUS_PADDING:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SHUTTER_FOCUS_Y:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->FOCUS_PADDING:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SHUTTER_FOCUS_Y:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->FOCUS_PADDING:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 274
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 276
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->STEP_NUM:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->setHelpText(I)V

    .line 277
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 279
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 280
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 281
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xc9

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->STEP_NUM:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 282
    return-void
.end method

.method public Step2_s()V
    .locals 3

    .prologue
    .line 285
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->STEP_NUM:I

    .line 286
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    const v1, 0x7f0203dc

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 287
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SHUTTER_FOCUS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SHUTTER_FOCUS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 288
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->STEP_NUM:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->setHelpText(I)V

    .line 289
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 291
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 292
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 293
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xc9

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->STEP_NUM:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 294
    return-void
.end method

.method public Step3_s()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 297
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->STEP_NUM:I

    .line 298
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    const v1, 0x7f0203dc

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 299
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->TOUCH_FOCUS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->TOUCH_FOCUS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 300
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    const v1, 0x7f0203d8

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 301
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 302
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 303
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 305
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->STEP_NUM:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->setHelpText(I)V

    .line 306
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 308
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 309
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 310
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 311
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xc9

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->STEP_NUM:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 312
    return-void
.end method

.method public Step_Hide()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 140
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->STEP_NUM:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 141
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->STEP_NUM:I

    .line 143
    :cond_0
    return-void
.end method

.method public declared-synchronized contains(FF)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 316
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized findViewByCoordinate(FF)Lcom/sec/android/glview/TwGLView;
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 321
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 367
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->setSizeForOrientation(I)V

    .line 368
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->onOrientationChanged(I)V

    .line 369
    return-void
.end method

.method public setHelpText(I)V
    .locals 13
    .parameter "step"

    .prologue
    const/4 v12, 0x3

    const/high16 v11, 0x4000

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, helptext:Ljava/lang/String;
    const/4 v1, 0x0

    .line 149
    .local v1, rows:I
    packed-switch p1, :pswitch_data_0

    .line 267
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v0}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 268
    return-void

    .line 151
    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0a0259

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 170
    :goto_1
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v9

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v1

    .line 171
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_WIDTH:[F

    aget v4, v4, v9

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v3, v4

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING:[F

    aget v4, v4, v9

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v6, v1, -0x1

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    sub-float/2addr v5, v6

    div-float/2addr v5, v11

    sub-float/2addr v4, v5

    invoke-virtual {v2, v9, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 173
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v3, v4

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING:[F

    aget v4, v4, v9

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v6, v1, -0x1

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    add-float/2addr v5, v6

    div-float/2addr v5, v11

    add-float/2addr v4, v5

    invoke-virtual {v2, v10, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 176
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v8

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v1

    .line 177
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v3, v4

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING:[F

    aget v4, v4, v10

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_WIDTH:[F

    aget v5, v5, v8

    sub-float/2addr v4, v5

    div-float/2addr v4, v11

    invoke-virtual {v2, v8, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 178
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    sub-float/2addr v3, v4

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING:[F

    aget v4, v4, v10

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_WIDTH:[F

    aget v6, v6, v8

    sub-float/2addr v5, v6

    div-float/2addr v5, v11

    sub-float/2addr v4, v5

    invoke-virtual {v2, v12, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 181
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 182
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 183
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 184
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v8}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V

    goto/16 :goto_0

    .line 156
    :pswitch_1
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v9

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v1

    .line 157
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH:[F

    aget v3, v3, v9

    int-to-float v4, v1

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 158
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_WIDTH:[F

    aget v3, v3, v9

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_1

    .line 162
    :pswitch_2
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v8

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v1

    .line 163
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH:[F

    aget v3, v3, v8

    int-to-float v4, v1

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 164
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_WIDTH:[F

    aget v3, v3, v8

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_1

    .line 187
    :pswitch_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0a025a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 189
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v2

    packed-switch v2, :pswitch_data_2

    .line 206
    :goto_2
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v9

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v1

    .line 207
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_WIDTH:[F

    aget v4, v4, v9

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v3, v4

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING:[F

    aget v4, v4, v9

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v6, v1, -0x1

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    sub-float/2addr v5, v6

    div-float/2addr v5, v11

    sub-float/2addr v4, v5

    invoke-virtual {v2, v9, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 209
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v3, v4

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING:[F

    aget v4, v4, v9

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v6, v1, -0x1

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    add-float/2addr v5, v6

    div-float/2addr v5, v11

    add-float/2addr v4, v5

    invoke-virtual {v2, v10, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 212
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v8

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v1

    .line 213
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v3, v4

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING:[F

    aget v4, v4, v10

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_WIDTH:[F

    aget v5, v5, v8

    sub-float/2addr v4, v5

    div-float/2addr v4, v11

    invoke-virtual {v2, v8, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 214
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    sub-float/2addr v3, v4

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING:[F

    aget v4, v4, v10

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_WIDTH:[F

    aget v6, v6, v8

    sub-float/2addr v5, v6

    div-float/2addr v5, v11

    sub-float/2addr v4, v5

    invoke-virtual {v2, v12, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 217
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 218
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 219
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 220
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v8}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V

    goto/16 :goto_0

    .line 192
    :pswitch_4
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v9

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v1

    .line 193
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH:[F

    aget v3, v3, v9

    int-to-float v4, v1

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 194
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_WIDTH:[F

    aget v3, v3, v9

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_2

    .line 198
    :pswitch_5
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v8

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v1

    .line 199
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH:[F

    aget v3, v3, v8

    int-to-float v4, v1

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 200
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_WIDTH:[F

    aget v3, v3, v8

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_2

    .line 223
    :pswitch_6
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0a025b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v2

    packed-switch v2, :pswitch_data_3

    .line 246
    :goto_3
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v9

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v1

    .line 247
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PICKER_PADDING:F

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING:[F

    aget v6, v6, v8

    add-float/2addr v5, v6

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING:[F

    aget v6, v6, v10

    add-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v2, v9, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 248
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_WIDTH:[F

    aget v4, v4, v9

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PICKER_PADDING:F

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING:[F

    aget v6, v6, v8

    add-float/2addr v5, v6

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING:[F

    aget v6, v6, v10

    add-float/2addr v5, v6

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v6, v1, -0x1

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v10, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 251
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v8

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v1

    .line 252
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PICKER_PADDING:F

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING:[F

    aget v5, v5, v10

    add-float/2addr v4, v5

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_WIDTH:[F

    aget v5, v5, v8

    sub-float/2addr v4, v5

    div-float/2addr v4, v11

    invoke-virtual {v2, v8, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 254
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PICKER_PADDING:F

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_PADDING:[F

    aget v5, v5, v10

    add-float/2addr v4, v5

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_WIDTH:[F

    aget v6, v6, v8

    sub-float/2addr v5, v6

    div-float/2addr v5, v11

    sub-float/2addr v4, v5

    invoke-virtual {v2, v12, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 257
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 258
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 259
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 260
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 261
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v8}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V

    goto/16 :goto_0

    .line 228
    :pswitch_7
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v9

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v1

    .line 229
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH:[F

    aget v3, v3, v9

    int-to-float v4, v1

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 230
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_WIDTH:[F

    aget v3, v3, v9

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 231
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2, v9}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 232
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto/16 :goto_3

    .line 236
    :pswitch_8
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v8

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v1

    .line 237
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH:[F

    aget v3, v3, v8

    int-to-float v4, v1

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 238
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_WIDTH:[F

    aget v3, v3, v8

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 239
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 240
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2, v9}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto/16 :goto_3

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_6
    .end packed-switch

    .line 153
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 189
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 225
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public setSizeForOrientation(I)V
    .locals 9
    .parameter "orientation"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 325
    const/4 v0, 0x0

    .line 326
    .local v0, rows:I
    packed-switch p1, :pswitch_data_0

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 329
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v1, :cond_1

    .line 330
    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH:[F

    aget v1, v1, v6

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLText;->getText()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v0

    .line 331
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v6

    int-to-float v3, v0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 333
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v1, :cond_2

    .line 334
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_WIDTH:[F

    aget v2, v2, v6

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v4, v0, -0x1

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 335
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 337
    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->STEP_NUM:I

    if-ne v1, v7, :cond_0

    .line 338
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_0

    .line 339
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v6}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 340
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v8}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto :goto_0

    .line 346
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v1, :cond_3

    .line 347
    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH:[F

    aget v1, v1, v5

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLText;->getText()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v0

    .line 348
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v5

    int-to-float v3, v0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 350
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v1, :cond_4

    .line 351
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_WIDTH:[F

    aget v2, v2, v5

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v4, v0, -0x1

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 352
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 354
    :cond_4
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->STEP_NUM:I

    if-ne v1, v7, :cond_0

    .line 355
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_0

    .line 356
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v8}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 357
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial1;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v6}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto/16 :goto_0

    .line 326
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
