.class public Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLEasyCameraBaseMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final BASEMENU_LEFT_MARGIN:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final BASEMENU_TOP_MARGIN:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final FLASH_BUTTON_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final FLASH_BUTTON_POS_Y:I = 0x0

.field private static final GROUP_PLAY_BUTTON:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final ITEM_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final ITEM_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final MODE_BUTTON_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final MODE_BUTTON_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final RECORDING_BUTTON_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final RECORDING_BUTTON_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final RIGHT_SIDE_BUTTON_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final RIGHT_SIDE_BUTTON_MARGIN:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final RIGHT_SIDE_BUTTON_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SCREEN_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SCREEN_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SHUTTER_BUTTON_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SHUTTER_BUTTON_ICON_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SHUTTER_BUTTON_ICON_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SHUTTER_BUTTON_ICON_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SHUTTER_BUTTON_ICON_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SHUTTER_BUTTON_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SHUTTER_BUTTON_POS_Y:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "TwGLEasyCameraBaseMenu"

.field private static final THUMBNAIL_BUTTON_POS_X:I

.field private static final THUMBNAIL_BUTTON_POS_Y:I


# instance fields
.field private mCameraModeButton:Lcom/sec/android/glview/TwGLButton;

.field private mFlashModeButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

.field private mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mModeButton:Lcom/sec/android/glview/TwGLButton;

.field private mModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mModeTextDimImageResId:I

.field private mModeTextImage:Lcom/sec/android/glview/TwGLButton;

.field private mModeTextImageResId:I

.field private mRecordingButton:Lcom/sec/android/glview/TwGLButton;

.field private mReturnGroupPlayButton:Lcom/sec/android/glview/TwGLButton;

.field private mShutterButton:Lcom/sec/android/glview/TwGLButton;

.field private mShutterGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mShutterIcon:Lcom/sec/android/glview/TwGLButton;

.field private mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    const v0, 0x7f080314

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->SCREEN_WIDTH:I

    .line 49
    const v0, 0x7f080315

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->SCREEN_HEIGHT:I

    .line 51
    const v0, 0x7f0801a0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->RIGHT_SIDE_BUTTON_WIDTH:I

    .line 52
    const v0, 0x7f0801a1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->RIGHT_SIDE_BUTTON_HEIGHT:I

    .line 53
    const v0, 0x7f0801a6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->RIGHT_SIDE_BUTTON_MARGIN:I

    .line 54
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->SCREEN_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->RIGHT_SIDE_BUTTON_WIDTH:I

    sub-int/2addr v0, v1

    const v1, 0x7f0801a7

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->RECORDING_BUTTON_POS_X:I

    .line 55
    const v0, 0x7f0801a5

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->RECORDING_BUTTON_POS_Y:I

    .line 57
    const v0, 0x7f0801a4

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->SHUTTER_BUTTON_HEIGHT:I

    .line 58
    const v0, 0x7f0801a2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->SHUTTER_BUTTON_ICON_WIDTH:I

    .line 59
    const v0, 0x7f0801a3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->SHUTTER_BUTTON_ICON_HEIGHT:I

    .line 60
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->RECORDING_BUTTON_POS_X:I

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->SHUTTER_BUTTON_POS_X:I

    .line 61
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->RECORDING_BUTTON_POS_Y:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->RIGHT_SIDE_BUTTON_HEIGHT:I

    add-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->RIGHT_SIDE_BUTTON_MARGIN:I

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->SHUTTER_BUTTON_POS_Y:I

    .line 62
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->SHUTTER_BUTTON_POS_X:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->RIGHT_SIDE_BUTTON_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->SHUTTER_BUTTON_ICON_WIDTH:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->SHUTTER_BUTTON_ICON_POS_X:I

    .line 63
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->SHUTTER_BUTTON_POS_Y:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->SHUTTER_BUTTON_HEIGHT:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->SHUTTER_BUTTON_ICON_HEIGHT:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->SHUTTER_BUTTON_ICON_POS_Y:I

    .line 65
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->RECORDING_BUTTON_POS_X:I

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->MODE_BUTTON_POS_X:I

    .line 66
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->SHUTTER_BUTTON_POS_Y:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->SHUTTER_BUTTON_HEIGHT:I

    add-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->RIGHT_SIDE_BUTTON_MARGIN:I

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->MODE_BUTTON_POS_Y:I

    .line 68
    const v0, 0x7f0801b2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->BASEMENU_LEFT_MARGIN:I

    .line 69
    const v0, 0x7f0801b1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->BASEMENU_TOP_MARGIN:I

    .line 70
    const v0, 0x7f0801b3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->FLASH_BUTTON_POS_X:I

    .line 71
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->BASEMENU_TOP_MARGIN:I

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->FLASH_BUTTON_POS_Y:I

    .line 73
    const v0, 0x7f08019e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->ITEM_WIDTH:I

    .line 74
    const v0, 0x7f08019f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->ITEM_HEIGHT:I

    .line 76
    const v0, 0x7f0801b5

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->THUMBNAIL_BUTTON_POS_X:I

    .line 77
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->SCREEN_HEIGHT:I

    const v1, 0x7f0801d0

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    const v1, 0x7f0801b4

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->THUMBNAIL_BUTTON_POS_Y:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 7
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "menuResourceDepot"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 100
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 95
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 96
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    .line 103
    iput-boolean v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mVisibility:Z

    .line 105
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->setCaptureEnabled(Z)V

    .line 106
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->setTouchHandled(Z)V

    .line 107
    invoke-direct {p0, p3, p2}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->init(Lcom/sec/android/glview/TwGLViewGroup;I)V

    .line 108
    return-void
.end method

.method private init(Lcom/sec/android/glview/TwGLViewGroup;I)V
    .locals 18
    .parameter "parent"
    .parameter "viewId"

    .prologue
    .line 111
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v1, :cond_0

    .line 112
    const-string v1, "TwGLEasyCameraBaseMenu"

    const-string v2, "mActivityContext is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :goto_0
    return-void

    .line 115
    :cond_0
    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 116
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->SHUTTER_BUTTON_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->SHUTTER_BUTTON_POS_Y:I

    int-to-float v4, v4

    const v5, 0x7f0202fc

    const v6, 0x7f0202fe

    const v7, 0x7f0202fd

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    .line 118
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 119
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 120
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 121
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 122
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a01ad

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 124
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    .line 125
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    .line 126
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setDraggable(Z)V

    .line 128
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->SHUTTER_BUTTON_ICON_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->SHUTTER_BUTTON_ICON_POS_Y:I

    int-to-float v4, v4

    const v5, 0x7f0202ff

    const/4 v6, 0x0

    const v7, 0x7f020300

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterIcon:Lcom/sec/android/glview/TwGLButton;

    .line 130
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterIcon:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 131
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterIcon:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    .line 132
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterIcon:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    .line 133
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterIcon:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setBypassTouch(Z)V

    .line 134
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterIcon:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setFocusable(Z)V

    .line 135
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterIcon:Lcom/sec/android/glview/TwGLButton;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 137
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 138
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterIcon:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 139
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setTag(I)V

    .line 140
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->addButton(Lcom/sec/android/glview/TwGLView;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterIcon:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->addButton(Lcom/sec/android/glview/TwGLView;)V

    .line 143
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->RECORDING_BUTTON_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->RECORDING_BUTTON_POS_Y:I

    int-to-float v4, v4

    const v5, 0x7f0202f8

    const v6, 0x7f0202fa

    const v7, 0x7f0202f9

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    .line 144
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 147
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 148
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    .line 149
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    .line 150
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v2, 0x41

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 151
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a01ae

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setDraggable(Z)V

    .line 153
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->addButton(Lcom/sec/android/glview/TwGLView;)V

    .line 155
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f020303

    const v6, 0x7f020305

    const v7, 0x7f020304

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    .line 156
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 158
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 159
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    .line 160
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    .line 161
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 162
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0048

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 163
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->addButton(Lcom/sec/android/glview/TwGLView;)V

    .line 165
    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->MODE_BUTTON_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->MODE_BUTTON_POS_Y:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLButton;->getWidth()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->getCurrentLocaleModeText()V

    .line 168
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImage:Lcom/sec/android/glview/TwGLButton;

    .line 169
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImage:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setBypassTouch(Z)V

    .line 170
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImage:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 171
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImage:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    .line 172
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImage:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    .line 173
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImage:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setFocusable(Z)V

    .line 174
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImage:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLButton;->getWidth()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImage:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLButton;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImage:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLButton;->moveBaseLayoutAbsolute(FFZ)V

    .line 175
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImage:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 177
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImage:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setTag(I)V

    .line 180
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->addButton(Lcom/sec/android/glview/TwGLView;)V

    .line 181
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImage:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->addButton(Lcom/sec/android/glview/TwGLView;)V

    .line 183
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->BASEMENU_LEFT_MARGIN:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->BASEMENU_TOP_MARGIN:I

    int-to-float v4, v4

    const v5, 0x7f020371

    const v6, 0x7f020373

    const v7, 0x7f020372

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mCameraModeButton:Lcom/sec/android/glview/TwGLButton;

    .line 184
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mCameraModeButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mCameraModeButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mCameraModeButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a012b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 187
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 188
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mCameraModeButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00fa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setSubTitle(Ljava/lang/String;)V

    .line 192
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mCameraModeButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 193
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mCameraModeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 194
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mCameraModeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    .line 195
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mCameraModeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    .line 198
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    const/16 v2, 0xbc4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v17

    .line 199
    .local v17, resIDsFlash:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    new-instance v7, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v1, 0x5

    new-array v1, v1, [I

    const/4 v2, 0x0

    move-object/from16 v0, v17

    iget v3, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v3, v1, v2

    const/4 v2, 0x1

    move-object/from16 v0, v17

    iget v3, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v3, v1, v2

    const/4 v2, 0x2

    move-object/from16 v0, v17

    iget v3, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v3, v1, v2

    const/4 v2, 0x3

    move-object/from16 v0, v17

    iget v3, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v3, v1, v2

    const/4 v2, 0x4

    const/16 v3, 0xbc4

    aput v3, v1, v2

    invoke-direct {v7, v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    .line 200
    .local v7, bundleFlash:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    const/16 v1, 0xbc4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->getZorder()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v8

    .line 201
    .local v8, cmdFlash:Lcom/sec/android/app/camera/command/MenuCommand;
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->FLASH_BUTTON_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->FLASH_BUTTON_POS_Y:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->ITEM_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->ITEM_HEIGHT:I

    int-to-float v6, v6

    const/4 v9, 0x5

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/Camera;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mFlashModeButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 203
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 204
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->THUMBNAIL_BUTTON_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->THUMBNAIL_BUTTON_POS_Y:I

    int-to-float v4, v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;-><init>(Lcom/sec/android/app/camera/Camera;FFZZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;

    .line 208
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;

    const/16 v2, 0x1d

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->setTag(I)V

    .line 209
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->setClipping(Z)V

    .line 210
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->setVisibility(I)V

    .line 213
    new-instance v9, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v10

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->THUMBNAIL_BUTTON_POS_X:I

    int-to-float v11, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->THUMBNAIL_BUTTON_POS_Y:I

    int-to-float v12, v1

    const v13, 0x7f020374

    const v14, 0x7f020374

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v9 .. v16}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mReturnGroupPlayButton:Lcom/sec/android/glview/TwGLButton;

    .line 215
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mReturnGroupPlayButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 216
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mReturnGroupPlayButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 217
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mReturnGroupPlayButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0137

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mReturnGroupPlayButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 219
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mReturnGroupPlayButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 220
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mReturnGroupPlayButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    .line 221
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mReturnGroupPlayButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    .line 223
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isFromGroupPlay()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 224
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mReturnGroupPlayButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 225
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->setVisibility(I)V

    .line 231
    :goto_3
    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 232
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mCameraModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mFlashModeButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 236
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 237
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mReturnGroupPlayButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 243
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCameraMode()Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCamcorderMode()Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getSecureMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 246
    :cond_1
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->setThumbnailButtonDimmed(Z)V

    .line 247
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->setAlpha(F)V

    .line 249
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    goto/16 :goto_0

    .line 190
    .end local v7           #bundleFlash:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v8           #cmdFlash:Lcom/sec/android/app/camera/command/MenuCommand;
    .end local v17           #resIDsFlash:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mCameraModeButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00fb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setSubTitle(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 206
    .restart local v7       #bundleFlash:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .restart local v8       #cmdFlash:Lcom/sec/android/app/camera/command/MenuCommand;
    .restart local v17       #resIDsFlash:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_4
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->THUMBNAIL_BUTTON_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->THUMBNAIL_BUTTON_POS_Y:I

    int-to-float v4, v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;-><init>(Lcom/sec/android/app/camera/Camera;FFZZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;

    goto/16 :goto_2

    .line 227
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mReturnGroupPlayButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 228
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->setVisibility(I)V

    goto/16 :goto_3
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 259
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 260
    return-void
.end method

.method public getCurrentLocaleModeText()V
    .locals 6

    .prologue
    const v5, 0x7f020362

    const v4, 0x7f020361

    const v3, 0x7f020329

    const v2, 0x7f020328

    .line 371
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, currentLanguage:Ljava/lang/String;
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 374
    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    .line 376
    const-string v1, "as"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "bn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 377
    :cond_0
    const v1, 0x7f020318

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 378
    const v1, 0x7f020319

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    .line 570
    :cond_1
    :goto_0
    return-void

    .line 380
    :cond_2
    const-string v1, "az"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "sq"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "uz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 381
    :cond_3
    const v1, 0x7f02031a

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 382
    const v1, 0x7f02031b

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto :goto_0

    .line 384
    :cond_4
    const-string v1, "bg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "ru"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 385
    :cond_5
    const v1, 0x7f02031e

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 386
    const v1, 0x7f02031f

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto :goto_0

    .line 388
    :cond_6
    const-string v1, "cs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "sr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "sk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 389
    :cond_7
    const v1, 0x7f020322

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 390
    const v1, 0x7f020323

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto :goto_0

    .line 392
    :cond_8
    const-string v1, "da"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 393
    const v1, 0x7f020324

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 394
    const v1, 0x7f020325

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto :goto_0

    .line 396
    :cond_9
    const-string v1, "de"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "no"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 397
    :cond_a
    const v1, 0x7f020334

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 398
    const v1, 0x7f020335

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 400
    :cond_b
    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 401
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 402
    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 404
    :cond_c
    const-string v1, "et"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 405
    const v1, 0x7f02032a

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 406
    const v1, 0x7f02032b

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 408
    :cond_d
    const-string v1, "eu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 409
    const v1, 0x7f02031c

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 410
    const v1, 0x7f02031d

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 412
    :cond_e
    const-string v1, "fa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 413
    const v1, 0x7f02032c

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 414
    const v1, 0x7f02032d

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 416
    :cond_f
    const-string v1, "fi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 417
    const v1, 0x7f02032e

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 418
    const v1, 0x7f02032f

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 420
    :cond_10
    const-string v1, "ga"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 421
    const v1, 0x7f020346

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 422
    const v1, 0x7f020347

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 424
    :cond_11
    const-string v1, "gl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "pt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "it"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 425
    :cond_12
    const v1, 0x7f020330

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 426
    const v1, 0x7f020331

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 428
    :cond_13
    const-string v1, "gu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 429
    const v1, 0x7f020338

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 430
    const v1, 0x7f020339

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 432
    :cond_14
    const-string v1, "he"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 433
    const v1, 0x7f02033c

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 434
    const v1, 0x7f02033d

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 436
    :cond_15
    const-string v1, "hi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "mr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "ne"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 437
    :cond_16
    const v1, 0x7f02033e

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 438
    const v1, 0x7f02033f

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 440
    :cond_17
    const-string v1, "hr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 441
    iput v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 442
    iput v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 444
    :cond_18
    const-string v1, "hy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 445
    const v1, 0x7f020316

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 446
    const v1, 0x7f020317

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 448
    :cond_19
    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 449
    const v1, 0x7f020348

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 450
    const v1, 0x7f020349

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 452
    :cond_1a
    const-string v1, "ka"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 453
    const v1, 0x7f020332

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 454
    const v1, 0x7f020333

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 456
    :cond_1b
    const-string v1, "kn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 457
    const v1, 0x7f02034a

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 458
    const v1, 0x7f02034b

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 460
    :cond_1c
    const-string v1, "ko"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 461
    const v1, 0x7f02034e

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 462
    const v1, 0x7f02034f

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 464
    :cond_1d
    const-string v1, "lt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 465
    const v1, 0x7f020351

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 466
    const v1, 0x7f020352

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 468
    :cond_1e
    const-string v1, "lv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 469
    const v1, 0x7f020350

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    goto/16 :goto_0

    .line 472
    :cond_1f
    const-string v1, "mk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 473
    const v1, 0x7f020353

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 474
    const v1, 0x7f020354

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 476
    :cond_20
    const-string v1, "ml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 477
    const v1, 0x7f020357

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 478
    const v1, 0x7f020358

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 480
    :cond_21
    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string v1, "tr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string v1, "ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 481
    :cond_22
    const v1, 0x7f020355

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 482
    const v1, 0x7f020356

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 484
    :cond_23
    const-string v1, "nl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 485
    const v1, 0x7f020326

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 486
    const v1, 0x7f020327

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 488
    :cond_24
    const-string v1, "or"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 489
    const v1, 0x7f020359

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 490
    const v1, 0x7f02035a

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 492
    :cond_25
    const-string v1, "pa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 493
    const v1, 0x7f02035d

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 494
    const v1, 0x7f02035e

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 496
    :cond_26
    const-string v1, "pl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 497
    const v1, 0x7f02035b

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 498
    const v1, 0x7f02035c

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 500
    :cond_27
    const-string v1, "sl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 501
    iput v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 502
    iput v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 506
    :cond_28
    const-string v1, "ta"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 507
    const v1, 0x7f020365

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 508
    const v1, 0x7f020366

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 510
    :cond_29
    const-string v1, "te"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 511
    const v1, 0x7f020367

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 512
    const v1, 0x7f020368

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 514
    :cond_2a
    const-string v1, "th"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 515
    const v1, 0x7f020369

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 516
    const v1, 0x7f02036a

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 518
    :cond_2b
    const-string v1, "vi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 519
    const v1, 0x7f02036d

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 520
    const v1, 0x7f02036e

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 522
    :cond_2c
    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 523
    const v1, 0x7f020320

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 524
    const v1, 0x7f020321

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 526
    :cond_2d
    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    const-string v1, "ur"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 527
    :cond_2e
    const v1, 0x7f020314

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 528
    const v1, 0x7f020315

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 530
    :cond_2f
    const-string v1, "el"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 531
    const v1, 0x7f020336

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 532
    const v1, 0x7f020337

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 534
    :cond_30
    const-string v1, "ha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 535
    const v1, 0x7f02033a

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 536
    const v1, 0x7f02033b

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 538
    :cond_31
    const-string v1, "hu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 539
    const v1, 0x7f020340

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 540
    const v1, 0x7f020341

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 542
    :cond_32
    const-string v1, "is"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 543
    const v1, 0x7f020342

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 544
    const v1, 0x7f020343

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 546
    :cond_33
    const-string v1, "ig"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 547
    const v1, 0x7f020344

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 548
    const v1, 0x7f020345

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 550
    :cond_34
    const-string v1, "kk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 551
    const v1, 0x7f02034c

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 552
    const v1, 0x7f02034d

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 554
    :cond_35
    const-string v1, "si"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 555
    const v1, 0x7f02035f

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 556
    const v1, 0x7f020360

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 558
    :cond_36
    const-string v1, "sw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 559
    const v1, 0x7f020363

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 560
    const v1, 0x7f020364

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 562
    :cond_37
    const-string v1, "uk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 563
    const v1, 0x7f02036b

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 564
    const v1, 0x7f02036c

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 566
    :cond_38
    const-string v1, "yo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 567
    const v1, 0x7f02036f

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 568
    const v1, 0x7f020370

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0
.end method

.method public hideBaseMenu()V
    .locals 2

    .prologue
    .line 671
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 674
    :cond_0
    return-void
.end method

.method public hideRecordingButton()V
    .locals 2

    .prologue
    .line 681
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 682
    return-void
.end method

.method public hideShootingModeButton()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 690
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 691
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterIcon:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 692
    return-void
.end method

.method public hideShutterButton()V
    .locals 2

    .prologue
    .line 699
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 700
    return-void
.end method

.method public hideThumbnailButton()V
    .locals 2

    .prologue
    .line 707
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->setVisibility(I)V

    .line 708
    return-void
.end method

.method public isShutterPressed()Z
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->isPressed()Z

    move-result v0

    return v0
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->finish()V

    .line 653
    return-void
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 7
    .parameter "view"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 573
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v4, :cond_0

    .line 574
    const-string v3, "TwGLEasyCameraBaseMenu"

    const-string v4, "mActivityContext is null"

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :goto_0
    return v2

    .line 578
    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v4

    const/16 v5, 0x41

    if-eq v4, v5, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v4

    const/16 v5, 0x1d

    if-eq v4, v5, :cond_1

    .line 579
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 582
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->isCapturing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 583
    const-string v3, "TwGLEasyCameraBaseMenu"

    const-string v4, "return isCapturing.."

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 587
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->isPreviewStarted()Z

    move-result v4

    if-nez v4, :cond_3

    .line 588
    const-string v3, "TwGLEasyCameraBaseMenu"

    const-string v4, "return isStartPreview.."

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 592
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 593
    const-string v3, "TwGLEasyCameraBaseMenu"

    const-string v4, "return getIsLaunchGallery.."

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 597
    :cond_4
    const-string v4, "TwGLEasyCameraBaseMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onClick: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    const/4 v1, 0x0

    .line 600
    .local v1, menuCommand:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    .line 602
    :sswitch_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isFromGroupPlay()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 603
    const-string v2, "TwGLEasyCameraBaseMenu"

    const-string v4, "Attach = group-play"

    invoke-static {v2, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 605
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "filepathlist"

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getFileListForGroupPlay()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 606
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v4, -0x1

    invoke-virtual {v2, v4, v0}, Lcom/sec/android/app/camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 607
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->finish()V

    .end local v0           #intent:Landroid/content/Intent;
    :cond_5
    move v2, v3

    .line 609
    goto/16 :goto_0

    .line 611
    :sswitch_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->onCameraModeChangeSelected()V

    .line 612
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraMode()I

    move-result v2

    if-ne v2, v3, :cond_6

    .line 613
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mCameraModeButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00fb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLButton;->setSubTitle(Ljava/lang/String;)V

    :goto_1
    move v2, v3

    .line 617
    goto/16 :goto_0

    .line 615
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mCameraModeButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00fa

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLButton;->setSubTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 619
    :sswitch_2
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->noImage()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 620
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->isMediaScannerScanning()Z

    move-result v4

    if-nez v4, :cond_8

    .line 621
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v5, 0x7f0a0165

    invoke-static {v4, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 627
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v2

    if-nez v2, :cond_7

    .line 628
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->processBack()V

    :cond_7
    move v2, v3

    .line 630
    goto/16 :goto_0

    .line 623
    :cond_8
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v5, 0x7f0a0166

    invoke-static {v4, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 625
    :cond_9
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v4, "quickview"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/app/camera/Camera;->onLaunchGalleryForImage(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_2

    .line 632
    :sswitch_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v2

    if-nez v2, :cond_a

    .line 633
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 635
    :cond_a
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(I)I

    move-result v2

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v6

    invoke-static {v2, v4, v5, v6}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v1

    .line 639
    if-eqz v1, :cond_b

    .line 640
    invoke-virtual {v1}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    :cond_b
    move v2, v3

    .line 641
    goto/16 :goto_0

    .line 600
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_3
        0x1d -> :sswitch_2
        0x24 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->removeUptateMessage()V

    .line 657
    return-void
.end method

.method protected onShow()V
    .locals 0

    .prologue
    .line 648
    return-void
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "arg1"

    .prologue
    const/16 v6, 0x82

    const/16 v5, 0x1b

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 293
    instance-of v2, p1, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v2, :cond_1

    .line 366
    :cond_0
    :goto_0
    return v0

    .line 297
    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 298
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLButton;->isDim()Z

    move-result v2

    if-nez v2, :cond_0

    .line 300
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2, p2}, Lcom/sec/android/glview/TwGLButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 303
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    move v0, v1

    .line 335
    goto :goto_0

    .line 305
    :pswitch_1
    const-string v0, "TwGLEasyCameraBaseMenu"

    const-string v2, "onTouch MotionEvent.ACTION_DOWN"

    invoke-static {v0, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v5, v4}, Lcom/sec/android/app/camera/Camera;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_1

    .line 309
    :pswitch_2
    const-string v0, "TwGLEasyCameraBaseMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouch MotionEvent.ACTION_UP : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isTimerCounting()Z

    move-result v0

    if-nez v0, :cond_3

    .line 311
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 312
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_2

    :cond_2
    move v0, v1

    .line 314
    goto :goto_0

    .line 316
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v5, v4}, Lcom/sec/android/app/camera/Camera;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_1

    .line 319
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-nez v0, :cond_5

    .line 320
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 321
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isBurstCapturing()Z

    move-result v0

    if-nez v0, :cond_5

    .line 322
    const-string v0, "TwGLEasyCameraBaseMenu"

    const-string v2, "return isCapturing.."

    invoke-static {v0, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 323
    goto/16 :goto_0

    .line 326
    :cond_4
    const-string v0, "TwGLEasyCameraBaseMenu"

    const-string v2, "return isCapturing.."

    invoke-static {v0, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 327
    goto/16 :goto_0

    .line 330
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->shutterButtonCancelAction()V

    goto/16 :goto_1

    .line 336
    :cond_6
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v2

    const/16 v3, 0x41

    if-ne v2, v3, :cond_0

    .line 337
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLButton;->isDim()Z

    move-result v2

    if-nez v2, :cond_0

    .line 339
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2, p2}, Lcom/sec/android/glview/TwGLButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 342
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :goto_3
    :pswitch_4
    move v0, v1

    .line 364
    goto/16 :goto_0

    .line 344
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v6, v4}, Lcom/sec/android/app/camera/Camera;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_3

    .line 347
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 348
    const-string v0, "TwGLEasyCameraBaseMenu"

    const-string v2, "return isRecording.."

    invoke-static {v0, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 349
    goto/16 :goto_0

    .line 351
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isTimerCounting()Z

    move-result v0

    if-nez v0, :cond_9

    .line 352
    :goto_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 353
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_4

    :cond_8
    move v0, v1

    .line 355
    goto/16 :goto_0

    .line 357
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v6, v4}, Lcom/sec/android/app/camera/Camera;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_3

    .line 303
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 342
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public setThumbnailButtonDimmed(Z)V
    .locals 1
    .parameter "dim"

    .prologue
    .line 711
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->lockButton(Z)V

    .line 712
    return-void
.end method

.method public showBaseMenu()V
    .locals 2

    .prologue
    .line 666
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 669
    :cond_0
    return-void
.end method

.method public showRecordingButton()V
    .locals 2

    .prologue
    .line 677
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 678
    return-void
.end method

.method public showShootingModeButton()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 685
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 686
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterIcon:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 687
    return-void
.end method

.method public showShutterButton()V
    .locals 2

    .prologue
    .line 695
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 696
    return-void
.end method

.method public showThumbnailButton()V
    .locals 2

    .prologue
    .line 703
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->setVisibility(I)V

    .line 704
    return-void
.end method

.method public updateEmptyButton()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->updateEmptyButton()V

    .line 278
    :cond_0
    return-void
.end method

.method public updateThumbnailButton()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isActivityDestoying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->update()V

    goto :goto_0
.end method

.method public updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V
    .locals 1
    .parameter "data"
    .parameter "orientation"
    .parameter "bAnimation"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->update(Landroid/graphics/Bitmap;IZ)V

    .line 284
    :cond_0
    return-void
.end method

.method public updateThumbnailButton(Ljava/lang/String;)V
    .locals 2
    .parameter "filePath"

    .prologue
    .line 660
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->update(Ljava/lang/String;Z)V

    .line 663
    :cond_0
    return-void
.end method

.method public updateThumbnailButton(Ljava/lang/String;Z)V
    .locals 1
    .parameter "filename"
    .parameter "bAnimation"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->update(Ljava/lang/String;Z)V

    .line 290
    :cond_0
    return-void
.end method
