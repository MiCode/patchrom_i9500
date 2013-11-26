.class public Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLTutorial4.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DUAL_BUTTON_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DUAL_MENU_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DUAL_PIP_FOCUS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DUAL_PIP_FOCUS_Y:I = 0x0

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

#the value of this static final field might be set in the static constructor
.field public static final ITEM_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final ITEM_WIDTH:I = 0x0

.field public static final LAST_STEP:I = 0x8

#the value of this static final field might be set in the static constructor
.field private static final SCREEN_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SCREEN_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SHUTTER_FOCUS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SHUTTER_FOCUS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SWITCHCAMERA_BUTTON_POS_X:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "TwGLTutorial"


# instance fields
.field public STEP_NUM:I

.field public blinkAnimation:Landroid/view/animation/Animation;

.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mHelpDraw1:Lcom/sec/android/glview/TwGLImage;

.field private mHelpDraw2:Lcom/sec/android/glview/TwGLImage;

.field private mHelpDraw3:Lcom/sec/android/glview/TwGLImage;

.field private mHelpDraw4:Lcom/sec/android/glview/TwGLImage;

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

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    .line 24
    const v0, 0x7f080315

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    .line 26
    const v0, 0x7f08020a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_MARGIN:F

    .line 27
    const v0, 0x7f08020b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT_MARGIN:F

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

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    .line 29
    const v0, 0x7f08020e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    .line 31
    new-array v0, v6, [F

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v1, v1, v3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    aput v1, v0, v3

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v1, v1, v4

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    aput v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    .line 32
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT_MARGIN:F

    mul-float/2addr v1, v5

    add-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    .line 34
    const v0, 0x7f080200

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

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

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    .line 39
    const v0, 0x7f090030

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    .line 40
    const/16 v0, 0xff

    invoke-static {v0, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_COLOR:I

    .line 42
    const v0, 0x7f08015c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->DUAL_MENU_HEIGHT:I

    .line 44
    const v0, 0x7f0801ff

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FOCUS_PADDING:I

    .line 45
    const v0, 0x7f0801f9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FOCUS_PADDING:I

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SHUTTER_FOCUS_X:I

    .line 46
    const v0, 0x7f08000f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    const v1, 0x7f0801fa

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    add-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FOCUS_PADDING:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SHUTTER_FOCUS_Y:I

    .line 48
    const v0, 0x7f08001a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SWITCHCAMERA_BUTTON_POS_X:I

    .line 49
    const v0, 0x7f08001c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->DUAL_BUTTON_POS_X:I

    .line 50
    const v0, 0x7f0801fd

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->DUAL_PIP_FOCUS_X:I

    .line 51
    const v0, 0x7f0801fe

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->DUAL_PIP_FOCUS_Y:I

    .line 53
    const v0, 0x7f080007

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->ITEM_WIDTH:I

    .line 54
    const v0, 0x7f080009

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->ITEM_HEIGHT:I

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
    .line 79
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 71
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 72
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

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    .line 73
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 81
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 83
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 85
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const v1, 0x7f0203d1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setNinePatchBackground(I)Z

    .line 88
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_MARGIN:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT_MARGIN:F

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    const-string v6, ""

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 91
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0203d8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    .line 92
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0203d6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    .line 94
    const v0, 0x7f050002

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->blinkAnimation:Landroid/view/animation/Animation;

    .line 95
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0203db

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->blinkAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAnimation:Landroid/view/animation/Animation;

    .line 107
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0203cb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw1:Lcom/sec/android/glview/TwGLImage;

    .line 108
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0203cc

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw2:Lcom/sec/android/glview/TwGLImage;

    .line 109
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0203c9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw3:Lcom/sec/android/glview/TwGLImage;

    .line 110
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0203ca

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw4:Lcom/sec/android/glview/TwGLImage;

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw1:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw2:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw3:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw4:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw1:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw3:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw4:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setBypassTouch(Z)V

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 132
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->Step1_s()V

    .line 133
    return-void
.end method


# virtual methods
.method public HideHelpTutorial()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 492
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 494
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_1

    .line 498
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 499
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 502
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_2

    .line 503
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    .line 504
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    .line 507
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_3

    .line 508
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 509
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    .line 512
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_4

    .line 513
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 514
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    .line 516
    :cond_4
    return-void
.end method

.method public Step1_s()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x4000

    .line 334
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    .line 335
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->DUAL_BUTTON_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->ITEM_WIDTH:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 336
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 337
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 338
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 339
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->setHelpText(I)V

    .line 340
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 342
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 343
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 344
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xcc

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 345
    return-void
.end method

.method public Step2_s()V
    .locals 5

    .prologue
    const/high16 v4, 0x4000

    .line 348
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    .line 349
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SWITCHCAMERA_BUTTON_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->ITEM_WIDTH:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 350
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 351
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->setHelpText(I)V

    .line 352
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 353
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 354
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 355
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 356
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xcc

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 357
    return-void
.end method

.method public Step3_s()V
    .locals 7

    .prologue
    const/high16 v6, 0x4000

    const/4 v5, 0x0

    .line 360
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    .line 361
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    const v1, 0x7f0203dc

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 362
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->DUAL_PIP_FOCUS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->DUAL_PIP_FOCUS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 363
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 364
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 365
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 366
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 367
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 368
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->setHelpText(I)V

    .line 369
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 370
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 371
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 372
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 373
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 374
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xcc

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 375
    return-void
.end method

.method public Step5_s(IIII)V
    .locals 3
    .parameter "right"
    .parameter "left"
    .parameter "top"
    .parameter "bottom"

    .prologue
    const/4 v1, 0x4

    .line 422
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    .line 423
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->drawResizeGuide(IIII)V

    .line 424
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 425
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 426
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 427
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 428
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 429
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 430
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xcc

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 431
    return-void
.end method

.method public Step6_s()V
    .locals 7

    .prologue
    const/high16 v6, 0x4000

    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 434
    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    .line 435
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw1:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 436
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 437
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw3:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 438
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw4:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 439
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    const v1, 0x7f0203db

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 440
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v6

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 441
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 442
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    const v1, 0x7f0203ce

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 443
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 444
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 445
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 446
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 447
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->setHelpText(I)V

    .line 448
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 449
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 450
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 451
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 452
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xcc

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 453
    return-void
.end method

.method public Step7_s()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 456
    const/4 v0, 0x7

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    .line 457
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 458
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    const v1, 0x7f0203ce

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 459
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->DUAL_MENU_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 460
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 461
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 462
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 463
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 464
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xcc

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 465
    return-void
.end method

.method public Step8_s()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 468
    const/16 v0, 0x8

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    .line 469
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SHUTTER_FOCUS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SHUTTER_FOCUS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 470
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 471
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    const v1, 0x7f0203d3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 472
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SHUTTER_FOCUS_Y:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 473
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 474
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 475
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 476
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->setHelpText(I)V

    .line 477
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 478
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 479
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 480
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 481
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xcc

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 482
    return-void
.end method

.method public declared-synchronized contains(FF)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 520
    monitor-enter p0

    const/4 v0, 0x1

    monitor-exit p0

    return v0
.end method

.method public drawResizeGuide(IIII)V
    .locals 11
    .parameter "right"
    .parameter "left"
    .parameter "top"
    .parameter "bottom"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x4

    .line 385
    add-int v3, p2, p3

    .line 386
    .local v3, dist_tl:I
    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    sub-int/2addr v7, p1

    add-int v4, v7, p3

    .line 387
    .local v4, dist_tr:I
    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    sub-int/2addr v7, p4

    add-int v1, p2, v7

    .line 388
    .local v1, dist_bl:I
    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    sub-int/2addr v7, p1

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    sub-int/2addr v8, p4

    add-int v2, v7, v8

    .line 390
    .local v2, dist_br:I
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 391
    .local v6, top_max:I
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 392
    .local v0, bottom_max:I
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 394
    .local v5, max:I
    if-ne v5, v3, :cond_1

    .line 395
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw1:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v10}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 396
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 397
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw3:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 398
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw4:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 399
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw1:Lcom/sec/android/glview/TwGLImage;

    int-to-float v8, p2

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw1:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v9

    sub-float/2addr v8, v9

    int-to-float v9, p3

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw1:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v10

    sub-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    if-ne v5, v4, :cond_2

    .line 401
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw1:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 402
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v10}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 403
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw3:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 404
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw4:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 405
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw2:Lcom/sec/android/glview/TwGLImage;

    add-int/lit8 v8, p1, 0x0

    int-to-float v8, v8

    int-to-float v9, p3

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw1:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v10

    sub-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto :goto_0

    .line 406
    :cond_2
    if-ne v5, v1, :cond_3

    .line 407
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw1:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 408
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 409
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw3:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v10}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 410
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw4:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 411
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw3:Lcom/sec/android/glview/TwGLImage;

    int-to-float v8, p2

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw1:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v9

    sub-float/2addr v8, v9

    add-int/lit8 v9, p4, 0x0

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto :goto_0

    .line 412
    :cond_3
    if-ne v5, v2, :cond_0

    .line 413
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw1:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 414
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 415
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw3:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 416
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw4:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v10}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 417
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw4:Lcom/sec/android/glview/TwGLImage;

    add-int/lit8 v8, p1, 0x0

    int-to-float v8, v8

    add-int/lit8 v9, p4, 0x0

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto :goto_0
.end method

.method public declared-synchronized findViewByCoordinate(FF)Lcom/sec/android/glview/TwGLView;
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 525
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public hideHelpView()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 485
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 486
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 487
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    .line 489
    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 571
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->setSizeForOrientation(I)V

    .line 572
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->onOrientationChanged(I)V

    .line 573
    return-void
.end method

.method public setHelpText(I)V
    .locals 13
    .parameter "step"

    .prologue
    const/4 v12, 0x3

    const/high16 v11, 0x4000

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, helptext:Ljava/lang/String;
    const/4 v1, 0x0

    .line 139
    .local v1, rows:I
    packed-switch p1, :pswitch_data_0

    .line 330
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v0}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 331
    return-void

    .line 141
    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0a0261

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 160
    :goto_1
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v8

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v1

    .line 161
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->DUAL_BUTTON_POS_X:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    aget v5, v5, v10

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v8, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 162
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->DUAL_BUTTON_POS_X:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    aget v4, v4, v8

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    aget v5, v5, v10

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v6, v1, -0x1

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v10, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 165
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v9

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v1

    .line 166
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    aget v6, v6, v8

    add-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v2, v9, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 168
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    sub-float/2addr v3, v4

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    aget v4, v4, v9

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    aget v6, v6, v8

    add-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v2, v12, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 171
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 172
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 173
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 174
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v9}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V

    goto/16 :goto_0

    .line 146
    :pswitch_2
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v8

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v1

    .line 147
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v3, v3, v8

    int-to-float v4, v1

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 148
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    aget v3, v3, v8

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_1

    .line 152
    :pswitch_3
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v9

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v1

    .line 153
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v3, v3, v9

    int-to-float v4, v1

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 154
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    aget v3, v3, v9

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_1

    .line 177
    :pswitch_4
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0a0262

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v2

    packed-switch v2, :pswitch_data_2

    .line 196
    :goto_2
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v8

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v1

    .line 197
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    aget v5, v5, v10

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v8, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 198
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    aget v4, v4, v8

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    aget v5, v5, v10

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v6, v1, -0x1

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v10, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 201
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v9

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v1

    .line 202
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    aget v6, v6, v8

    add-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v2, v9, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 204
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    sub-float/2addr v3, v4

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    aget v4, v4, v9

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    aget v6, v6, v8

    add-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v2, v12, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 207
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 208
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 209
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 210
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v9}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V

    goto/16 :goto_0

    .line 182
    :pswitch_5
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v8

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v1

    .line 183
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v3, v3, v8

    int-to-float v4, v1

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 184
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    aget v3, v3, v8

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_2

    .line 188
    :pswitch_6
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v9

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v1

    .line 189
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v3, v3, v9

    int-to-float v4, v1

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 190
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    aget v3, v3, v9

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_2

    .line 213
    :pswitch_7
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0a0263

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v2

    packed-switch v2, :pswitch_data_3

    .line 236
    :goto_3
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v8

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v1

    .line 237
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    aget v5, v5, v10

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v8, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 238
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    aget v4, v4, v8

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    aget v5, v5, v10

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v6, v1, -0x1

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v10, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 241
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v9

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v1

    .line 242
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    aget v4, v4, v10

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v4, v5

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    aget v5, v5, v9

    sub-float/2addr v4, v5

    div-float/2addr v4, v11

    invoke-virtual {v2, v9, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 244
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    aget v5, v5, v10

    add-float/2addr v4, v5

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    aget v6, v6, v9

    sub-float/2addr v5, v6

    div-float/2addr v5, v11

    sub-float/2addr v4, v5

    invoke-virtual {v2, v12, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 247
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 248
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 249
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 250
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 251
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v9}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V

    goto/16 :goto_0

    .line 218
    :pswitch_8
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v8

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v1

    .line 219
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v3, v3, v8

    int-to-float v4, v1

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 220
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    aget v3, v3, v8

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 221
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2, v8}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 222
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto/16 :goto_3

    .line 226
    :pswitch_9
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v9

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v1

    .line 227
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v3, v3, v9

    int-to-float v4, v1

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 228
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    aget v3, v3, v9

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 229
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 230
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2, v8}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto/16 :goto_3

    .line 254
    :pswitch_a
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0a0264

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v2

    packed-switch v2, :pswitch_data_4

    .line 273
    :goto_4
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v8

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v1

    .line 274
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    aget v4, v4, v8

    sub-float/2addr v3, v4

    div-float/2addr v3, v11

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v6, v1, -0x1

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    sub-float/2addr v4, v5

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    aget v5, v5, v10

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v8, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 276
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    aget v4, v4, v8

    sub-float/2addr v3, v4

    div-float/2addr v3, v11

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    aget v4, v4, v8

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v4

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    aget v5, v5, v10

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v10, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 279
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v9

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v1

    .line 280
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v11

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v4

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    aget v5, v5, v9

    sub-float/2addr v4, v5

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    aget v5, v5, v8

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v9, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 282
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v11

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v4

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    aget v5, v5, v8

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v12, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 285
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 286
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 287
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 288
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v9}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V

    goto/16 :goto_0

    .line 259
    :pswitch_b
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v8

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v1

    .line 260
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v3, v3, v8

    int-to-float v4, v1

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 261
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    aget v3, v3, v8

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_4

    .line 265
    :pswitch_c
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v9

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v1

    .line 266
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v3, v3, v9

    int-to-float v4, v1

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 267
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    aget v3, v3, v9

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_4

    .line 291
    :pswitch_d
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0a0265

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 293
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v2

    packed-switch v2, :pswitch_data_5

    .line 310
    :goto_5
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v8

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v1

    .line 311
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    aget v4, v4, v8

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v3, v4

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    aget v4, v4, v8

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v6, v1, -0x1

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    sub-float/2addr v5, v6

    div-float/2addr v5, v11

    sub-float/2addr v4, v5

    invoke-virtual {v2, v8, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 313
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v3, v4

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    aget v4, v4, v8

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v6, v1, -0x1

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    add-float/2addr v5, v6

    div-float/2addr v5, v11

    add-float/2addr v4, v5

    invoke-virtual {v2, v10, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 316
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v9

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v1

    .line 317
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v3, v4

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    aget v4, v4, v10

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    aget v5, v5, v9

    sub-float/2addr v4, v5

    div-float/2addr v4, v11

    invoke-virtual {v2, v9, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 318
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    sub-float/2addr v3, v4

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    aget v4, v4, v10

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    aget v6, v6, v9

    sub-float/2addr v5, v6

    div-float/2addr v5, v11

    sub-float/2addr v4, v5

    invoke-virtual {v2, v12, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 321
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 322
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 323
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 324
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v9}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V

    goto/16 :goto_0

    .line 296
    :pswitch_e
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v8

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v1

    .line 297
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v3, v3, v8

    int-to-float v4, v1

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 298
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    aget v3, v3, v8

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_5

    .line 302
    :pswitch_f
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v9

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v1

    .line 303
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v3, v3, v9

    int-to-float v4, v1

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 304
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    aget v3, v3, v9

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_5

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_d
    .end packed-switch

    .line 143
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 179
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 215
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 256
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 293
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_e
        :pswitch_f
        :pswitch_e
        :pswitch_f
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

    .line 529
    const/4 v0, 0x0

    .line 530
    .local v0, rows:I
    packed-switch p1, :pswitch_data_0

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 533
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v1, :cond_1

    .line 534
    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v1, v1, v6

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLText;->getText()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v0

    .line 535
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v6

    int-to-float v3, v0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 537
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v1, :cond_2

    .line 538
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    aget v2, v2, v6

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v4, v0, -0x1

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 539
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 541
    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    if-ne v1, v7, :cond_0

    .line 542
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_0

    .line 543
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v6}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 544
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v8}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto :goto_0

    .line 550
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v1, :cond_3

    .line 551
    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v1, v1, v5

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLText;->getText()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v0

    .line 552
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v5

    int-to-float v3, v0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 554
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v1, :cond_4

    .line 555
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    aget v2, v2, v5

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v4, v0, -0x1

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 556
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 558
    :cond_4
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    if-ne v1, v7, :cond_0

    .line 559
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_0

    .line 560
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v8}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 561
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v6}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto/16 :goto_0

    .line 530
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
