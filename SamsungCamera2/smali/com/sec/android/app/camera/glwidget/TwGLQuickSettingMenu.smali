.class public Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLQuickSettingMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;
.implements Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;
.implements Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;
.implements Lcom/sec/android/glview/TwGLView$OnDragListener;


# static fields
#the value of this static final field might be set in the static constructor
.field public static final ANCHOR_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final ANCHOR_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final ANCHOR_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final ANCHOR_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final NUM_OF_QUICKSETTING_MENU:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final NUM_OF_QUICKSETTING_SHORTCUT_MENU:I = 0x0

.field public static final QUICKSETTING_ANIMATION_DURATION:I = 0x12c

#the value of this static final field might be set in the static constructor
.field public static final QUICKSETTING_ITEM_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final QUICKSETTING_ITEM_INTERVAL:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final QUICKSETTING_ITEM_SIDE_MARGIN:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final QUICKSETTING_ITEM_START_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final QUICKSETTING_ITEM_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final QUICKSETTING_MENU_GROUP_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final QUICKSETTING_MENU_GROUP_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final QUICKSETTING_MENU_GROUP_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final QUICKSETTING_MENU_GROUP_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final QUICKSETTING_SUBMENU_GAP:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final QUICKSETTING_SUBMENU_ITEM_INTERVAL:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final QUICKSETTING_SUBMENU_ITEM_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final QUICKSETTING_SUBMENU_POS_X:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TwGLQuickSettingMenu"


# instance fields
.field private mAnchor:Lcom/sec/android/glview/TwGLImage;

.field private mCloseButton:Lcom/sec/android/glview/TwGLButton;

.field private mDelCommand:[I

.field private mEditDropBoxList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;",
            ">;"
        }
    .end annotation
.end field

.field private mEditItemButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mEditItemButtonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/glview/TwGLButton;",
            ">;"
        }
    .end annotation
.end field

.field private mEditableResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

.field private mIsRecordingModeSubMenuOpen:Z

.field private mIsShareModeSubMenuOpen:Z

.field private mMovedShareModeItem:Lcom/sec/android/app/camera/glwidget/TwGLItem;

.field private mQuickSettingAnchorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/glview/TwGLImage;",
            ">;"
        }
    .end annotation
.end field

.field private mQuickSettingMenu:Lcom/sec/android/glview/TwGLViewGroup;

.field private mQuickSettingMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mQuickSettingMenuList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/glwidget/TwGLItem;",
            ">;"
        }
    .end annotation
.end field

.field private mRecordingModeItem:Lcom/sec/android/app/camera/glwidget/TwGLItem;

.field private mRecordingModeSubMenuGroup:Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingSubMenu;

.field private mRecordingModeSubMenuList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/glwidget/TwGLItem;",
            ">;"
        }
    .end annotation
.end field

.field private mRecordingModeSubMenuResource:Lcom/sec/android/app/camera/resourcedata/RecordingModeSubMenuResourceData;

.field private mSelectedMenuId:I

.field private mSettingMenuItem:Lcom/sec/android/app/camera/glwidget/TwGLItem;

.field private mShareModeItem:Lcom/sec/android/app/camera/glwidget/TwGLItem;

.field private mShareModeSubMenuGroup:Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingSubMenu;

.field private mShareModeSubMenuList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/glwidget/TwGLItem;",
            ">;"
        }
    .end annotation
.end field

.field private mShareModeSubMenuResource:Lcom/sec/android/app/camera/resourcedata/ShareModeSubMenuResourceData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const v0, 0x7f08016a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_MENU_GROUP_WIDTH:I

    .line 38
    const v0, 0x7f08016b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_MENU_GROUP_HEIGHT:I

    .line 39
    const v0, 0x7f080168

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_MENU_GROUP_POS_X:I

    .line 40
    const v0, 0x7f080169

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_MENU_GROUP_POS_Y:I

    .line 41
    const v0, 0x7f080176

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_SUBMENU_POS_X:I

    .line 42
    const v0, 0x7f080175

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_SUBMENU_ITEM_POS_X:I

    .line 43
    const v0, 0x7f080177

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_SUBMENU_ITEM_INTERVAL:I

    .line 45
    const v0, 0x7f080170

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_ITEM_INTERVAL:I

    .line 46
    const v0, 0x7f08016c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_ITEM_SIDE_MARGIN:I

    .line 47
    const v0, 0x7f08016d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_ITEM_WIDTH:I

    .line 48
    const v0, 0x7f08016e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_ITEM_HEIGHT:I

    .line 49
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_ITEM_INTERVAL:I

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_ITEM_START_POS_X:I

    .line 51
    const v0, 0x7f09001a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->NUM_OF_QUICKSETTING_MENU:I

    .line 52
    const v0, 0x7f09001c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->NUM_OF_QUICKSETTING_SHORTCUT_MENU:I

    .line 56
    const v0, 0x7f080027

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->ANCHOR_WIDTH:I

    .line 57
    const v0, 0x7f080028

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->ANCHOR_HEIGHT:I

    .line 58
    const v0, 0x7f080029

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->ANCHOR_POS_X:I

    .line 59
    const v0, 0x7f08002a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->ANCHOR_POS_Y:I

    .line 61
    const v0, 0x7f080020

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_SUBMENU_GAP:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;II)V
    .locals 77
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "menuResourceDepot"
    .parameter "zOrder"
    .parameter "slideDirection"

    .prologue
    .line 95
    const/4 v8, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 79
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mQuickSettingMenuList:Ljava/util/ArrayList;

    .line 80
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mShareModeSubMenuList:Ljava/util/ArrayList;

    .line 81
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mRecordingModeSubMenuList:Ljava/util/ArrayList;

    .line 82
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mQuickSettingAnchorList:Ljava/util/ArrayList;

    .line 83
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mEditItemButtonList:Ljava/util/ArrayList;

    .line 85
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mIsShareModeSubMenuOpen:Z

    .line 86
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mIsRecordingModeSubMenuOpen:Z

    .line 88
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mEditDropBoxList:Ljava/util/ArrayList;

    .line 90
    const/4 v3, 0x2

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mDelCommand:[I

    .line 91
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mSelectedMenuId:I

    .line 97
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/MenuBase;->setCaptureEnabled(Z)V

    .line 99
    new-instance v3, Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_MENU_GROUP_POS_X:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_MENU_GROUP_POS_Y:I

    int-to-float v6, v6

    invoke-direct {v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mQuickSettingMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 100
    new-instance v2, Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_MENU_GROUP_WIDTH:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_MENU_GROUP_HEIGHT:I

    int-to-float v7, v7

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mQuickSettingMenu:Lcom/sec/android/glview/TwGLViewGroup;

    .line 101
    new-instance v2, Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_MENU_GROUP_WIDTH:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_MENU_GROUP_HEIGHT:I

    int-to-float v7, v7

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mEditItemButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 103
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v3

    const/16 v4, 0x42

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mEditableResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    .line 104
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v3

    const/16 v4, 0x170c

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/resourcedata/ShareModeSubMenuResourceData;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mShareModeSubMenuResource:Lcom/sec/android/app/camera/resourcedata/ShareModeSubMenuResourceData;

    .line 105
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v3

    const/16 v4, 0x170d

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/resourcedata/RecordingModeSubMenuResourceData;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mRecordingModeSubMenuResource:Lcom/sec/android/app/camera/resourcedata/RecordingModeSubMenuResourceData;

    .line 107
    const/16 v70, 0x0

    .line 108
    .local v70, mShareModeSubMenuPosX:I
    const/16 v69, 0x0

    .line 111
    .local v69, mRecordingModeSubMenuPosX:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    const/16 v4, 0x1b

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v74

    .line 112
    .local v74, resIDsSettingMode:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    new-instance v8, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v3, 0x5

    new-array v3, v3, [I

    const/4 v4, 0x0

    move-object/from16 v0, v74

    iget v5, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, v74

    iget v5, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v5, v3, v4

    const/4 v4, 0x2

    move-object/from16 v0, v74

    iget v5, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v5, v3, v4

    const/4 v4, 0x3

    move-object/from16 v0, v74

    iget v5, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v5, v3, v4

    const/4 v4, 0x4

    const/16 v5, 0x1b

    aput v5, v3, v4

    invoke-direct {v8, v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    .line 113
    .local v8, bundleSettingMode:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    const/16 v3, 0x1b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v3, v4, v5, v6, v7}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v9

    .line 114
    .local v9, cmdSettingMode:Lcom/sec/android/app/camera/command/MenuCommand;
    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_ITEM_WIDTH:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_ITEM_WIDTH:I

    int-to-float v7, v7

    const/4 v10, 0x2

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/Camera;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mSettingMenuItem:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 115
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mSettingMenuItem:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    .line 117
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mQuickSettingMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mSettingMenuItem:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 118
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mQuickSettingMenuList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mSettingMenuItem:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    const/4 v11, 0x0

    .line 127
    .local v11, item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    const/16 v68, 0x0

    .local v68, i:I
    move-object/from16 v41, v11

    .end local v11           #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    .local v41, item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    :goto_0
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->NUM_OF_QUICKSETTING_SHORTCUT_MENU:I

    move/from16 v0, v68

    if-ge v0, v3, :cond_1

    .line 128
    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_ITEM_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_ITEM_INTERVAL:I

    add-int/2addr v4, v5

    add-int/lit8 v5, v68, 0x1

    mul-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, 0x0

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_ITEM_WIDTH:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_ITEM_WIDTH:I

    int-to-float v7, v7

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;-><init>(Lcom/sec/android/app/camera/Camera;FFFF)V

    .line 129
    .local v2, b:Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;
    new-instance v10, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v11

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_ITEM_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_ITEM_INTERVAL:I

    add-int/2addr v3, v4

    add-int/lit8 v4, v68, 0x1

    mul-int/2addr v3, v4

    int-to-float v12, v3

    const/4 v13, 0x0

    const v14, 0x7f02008e

    const v15, 0x7f02008f

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v10 .. v17}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    .line 130
    .local v10, editItemButton:Lcom/sec/android/glview/TwGLButton;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0266

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    .line 131
    const/16 v3, 0x28

    invoke-virtual {v10, v3}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    .line 132
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 133
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Lcom/sec/android/glview/TwGLView;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    .line 135
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mEditableResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    move/from16 v0, v68

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v15

    .line 136
    .local v15, bundle:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    invoke-virtual {v15}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v3, v4, v5, v6, v7}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v16

    .line 137
    .local v16, command:Lcom/sec/android/app/camera/command/MenuCommand;
    new-instance v11, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_ITEM_WIDTH:I

    int-to-float v13, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_ITEM_WIDTH:I

    int-to-float v14, v3

    const/16 v17, 0x2

    invoke-direct/range {v11 .. v17}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/Camera;FFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v41           #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    .restart local v11       #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    :try_start_1
    invoke-virtual {v15}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    const/16 v4, 0x63

    if-eq v3, v4, :cond_0

    .line 139
    const/4 v3, 0x4

    invoke-virtual {v10, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 141
    :cond_0
    invoke-virtual {v2, v11}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 142
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mQuickSettingMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 143
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mEditDropBoxList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mQuickSettingMenuList:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mEditItemButtonList:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mEditItemButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3, v10}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_5

    .line 150
    .end local v15           #bundle:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v16           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    .line 151
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setOnDropListener(Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;)V

    .line 127
    add-int/lit8 v68, v68, 0x1

    move-object/from16 v41, v11

    .end local v11           #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    .restart local v41       #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    goto/16 :goto_0

    .line 147
    :catch_0
    move-exception v67

    move-object/from16 v11, v41

    .line 148
    .end local v41           #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    .restart local v11       #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    .local v67, ex:Ljava/lang/IndexOutOfBoundsException;
    :goto_2
    const-string v3, "TwGLQuickSettingMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QuickSetting IndexOut for index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v68

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 154
    .end local v2           #b:Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;
    .end local v10           #editItemButton:Lcom/sec/android/glview/TwGLButton;
    .end local v11           #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    .end local v67           #ex:Ljava/lang/IndexOutOfBoundsException;
    .restart local v41       #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    :cond_1
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_ITEM_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_ITEM_INTERVAL:I

    add-int/2addr v3, v4

    add-int/lit8 v68, v68, 0x1

    mul-int v69, v3, v68

    .line 155
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    const/16 v4, 0xbb8

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v72

    .line 156
    .local v72, resIDsRecordingMode:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    new-instance v23, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v3, 0x5

    new-array v3, v3, [I

    const/4 v4, 0x0

    move-object/from16 v0, v72

    iget v5, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, v72

    iget v5, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v5, v3, v4

    const/4 v4, 0x2

    move-object/from16 v0, v72

    iget v5, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v5, v3, v4

    const/4 v4, 0x3

    move-object/from16 v0, v72

    iget v5, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v5, v3, v4

    const/4 v4, 0x4

    const/16 v5, 0xbb8

    aput v5, v3, v4

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    .line 157
    .local v23, bundleRecordingMode:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    const/16 v3, 0xbb8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v3, v4, v5, v6, v7}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v24

    .line 158
    .local v24, cmdRecordingMode:Lcom/sec/android/app/camera/command/MenuCommand;
    new-instance v11, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v18, v0

    move/from16 v0, v69

    int-to-float v0, v0

    move/from16 v19, v0

    const/16 v20, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_ITEM_WIDTH:I

    int-to-float v0, v3

    move/from16 v21, v0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_ITEM_WIDTH:I

    int-to-float v0, v3

    move/from16 v22, v0

    const/16 v25, 0x2

    move-object/from16 v17, v11

    invoke-direct/range {v17 .. v25}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/Camera;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    .line 159
    .end local v41           #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    .restart local v11       #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Lcom/sec/android/glview/TwGLViewGroup;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mQuickSettingMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3, v11}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 161
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mQuickSettingMenuList:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_ITEM_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_ITEM_INTERVAL:I

    add-int/2addr v3, v4

    add-int/lit8 v68, v68, 0x1

    mul-int v70, v3, v68

    .line 164
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    const/16 v4, 0x35

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v75

    .line 165
    .local v75, resIDsShareMode:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    new-instance v31, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v3, 0x5

    new-array v3, v3, [I

    const/4 v4, 0x0

    move-object/from16 v0, v75

    iget v5, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, v75

    iget v5, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v5, v3, v4

    const/4 v4, 0x2

    move-object/from16 v0, v75

    iget v5, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v5, v3, v4

    const/4 v4, 0x3

    move-object/from16 v0, v75

    iget v5, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v5, v3, v4

    const/4 v4, 0x4

    const/16 v5, 0x35

    aput v5, v3, v4

    move-object/from16 v0, v31

    invoke-direct {v0, v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    .line 166
    .local v31, bundleShareMode:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    const/16 v3, 0x35

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v3, v4, v5, v6, v7}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v32

    .line 167
    .local v32, cmdShareMode:Lcom/sec/android/app/camera/command/MenuCommand;
    new-instance v11, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .end local v11           #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v26, v0

    move/from16 v0, v70

    int-to-float v0, v0

    move/from16 v27, v0

    const/16 v28, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_ITEM_WIDTH:I

    int-to-float v0, v3

    move/from16 v29, v0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_ITEM_WIDTH:I

    int-to-float v0, v3

    move/from16 v30, v0

    const/16 v33, 0x2

    move-object/from16 v25, v11

    invoke-direct/range {v25 .. v33}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/Camera;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    .line 168
    .restart local v11       #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Lcom/sec/android/glview/TwGLViewGroup;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    .line 169
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mQuickSettingMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3, v11}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 170
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mQuickSettingMenuList:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v33, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mQuickSettingMenuList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mQuickSettingMenuList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_ITEM_WIDTH:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_ITEM_SIDE_MARGIN:I

    int-to-float v4, v4

    add-float v35, v3, v4

    const/16 v36, 0x0

    const v37, 0x7f020225

    const v38, 0x7f020226

    const/16 v39, 0x0

    const/16 v40, 0x0

    invoke-direct/range {v33 .. v40}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    .line 173
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a001d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a013c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    .line 174
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 178
    const/16 v68, 0x0

    :goto_3
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->NUM_OF_QUICKSETTING_MENU:I

    move/from16 v0, v68

    if-gt v0, v3, :cond_2

    .line 179
    new-instance v3, Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_ITEM_WIDTH:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_ITEM_INTERVAL:I

    add-int/2addr v5, v6

    mul-int v5, v5, v68

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->ANCHOR_WIDTH:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->ANCHOR_POS_Y:I

    int-to-float v6, v6

    const v7, 0x7f0201d3

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    .line 180
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 181
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mQuickSettingAnchorList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mQuickSettingMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 178
    add-int/lit8 v68, v68, 0x1

    goto :goto_3

    .line 186
    :cond_2
    new-instance v3, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingSubMenu;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    move/from16 v0, v70

    int-to-float v5, v0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingSubMenu;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mShareModeSubMenuGroup:Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingSubMenu;

    .line 187
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mShareModeSubMenuGroup:Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingSubMenu;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 190
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    const/16 v4, 0x35

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v76

    .line 191
    .local v76, resIDsShareModeSubMenu:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    new-instance v39, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v3, 0x5

    new-array v3, v3, [I

    const/4 v4, 0x0

    move-object/from16 v0, v76

    iget v5, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, v76

    iget v5, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v5, v3, v4

    const/4 v4, 0x2

    move-object/from16 v0, v76

    iget v5, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v5, v3, v4

    const/4 v4, 0x3

    move-object/from16 v0, v76

    iget v5, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v5, v3, v4

    const/4 v4, 0x4

    const/16 v5, 0x35

    aput v5, v3, v4

    move-object/from16 v0, v39

    invoke-direct {v0, v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    .line 192
    .local v39, bundleShareModeSubMenu:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    const/16 v3, 0x35

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v3, v4, v5, v6, v7}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v40

    .line 193
    .local v40, cmdShareModeSubMenu:Lcom/sec/android/app/camera/command/MenuCommand;
    new-instance v33, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v34, v0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_SUBMENU_ITEM_POS_X:I

    add-int v3, v3, v70

    int-to-float v0, v3

    move/from16 v35, v0

    const/16 v36, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_ITEM_WIDTH:I

    int-to-float v0, v3

    move/from16 v37, v0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_ITEM_WIDTH:I

    int-to-float v0, v3

    move/from16 v38, v0

    const/16 v41, 0x2

    invoke-direct/range {v33 .. v41}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/Camera;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mShareModeItem:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 194
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mShareModeItem:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 195
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mShareModeSubMenuGroup:Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingSubMenu;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mShareModeItem:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 197
    new-instance v3, Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_SUBMENU_ITEM_POS_X:I

    add-int v5, v5, v70

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->ANCHOR_WIDTH:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->ANCHOR_POS_Y:I

    int-to-float v6, v6

    const v7, 0x7f0201d3

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    .line 198
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 199
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mShareModeItem:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mShareModeSubMenuGroup:Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingSubMenu;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 202
    const/16 v68, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mShareModeSubMenuResource:Lcom/sec/android/app/camera/resourcedata/ShareModeSubMenuResourceData;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v3

    move/from16 v0, v68

    if-ge v0, v3, :cond_3

    .line 204
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mShareModeSubMenuResource:Lcom/sec/android/app/camera/resourcedata/ShareModeSubMenuResourceData;

    move/from16 v0, v68

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v15

    .line 205
    .restart local v15       #bundle:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    invoke-virtual {v15}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v3, v4, v5, v6, v7}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v16

    .line 206
    .restart local v16       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    new-instance v41, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v42, v0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_SUBMENU_POS_X:I

    add-int v3, v3, v70

    int-to-float v0, v3

    move/from16 v43, v0

    const/16 v44, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_ITEM_WIDTH:I

    int-to-float v0, v3

    move/from16 v45, v0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_ITEM_WIDTH:I

    int-to-float v0, v3

    move/from16 v46, v0

    const/16 v49, 0x2

    move-object/from16 v47, v15

    move-object/from16 v48, v16

    invoke-direct/range {v41 .. v49}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/Camera;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3

    .line 207
    .end local v11           #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    .restart local v41       #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    const/4 v3, 0x4

    :try_start_3
    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 208
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mShareModeSubMenuGroup:Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingSubMenu;

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_4

    move-object/from16 v11, v41

    .line 212
    .end local v15           #bundle:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v16           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    .end local v41           #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    .restart local v11       #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mShareModeSubMenuList:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    new-instance v3, Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_SUBMENU_POS_X:I

    add-int v5, v5, v70

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->ANCHOR_WIDTH:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->ANCHOR_POS_Y:I

    int-to-float v6, v6

    const v7, 0x7f0201d3

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    .line 214
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 215
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v11, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mShareModeSubMenuGroup:Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingSubMenu;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 202
    add-int/lit8 v68, v68, 0x1

    goto/16 :goto_4

    .line 220
    :cond_3
    new-instance v3, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingSubMenu;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    move/from16 v0, v69

    int-to-float v5, v0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingSubMenu;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mRecordingModeSubMenuGroup:Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingSubMenu;

    .line 221
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mRecordingModeSubMenuGroup:Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingSubMenu;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 224
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    const/16 v4, 0xbb8

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v73

    .line 225
    .local v73, resIDsRecordingModeSubMenu:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    new-instance v48, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v3, 0x5

    new-array v3, v3, [I

    const/4 v4, 0x0

    move-object/from16 v0, v73

    iget v5, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, v73

    iget v5, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v5, v3, v4

    const/4 v4, 0x2

    move-object/from16 v0, v73

    iget v5, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v5, v3, v4

    const/4 v4, 0x3

    move-object/from16 v0, v73

    iget v5, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v5, v3, v4

    const/4 v4, 0x4

    const/16 v5, 0xbb8

    aput v5, v3, v4

    move-object/from16 v0, v48

    invoke-direct {v0, v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    .line 226
    .local v48, bundleRecordingModeSubMenu:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    const/16 v3, 0xbb8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v3, v4, v5, v6, v7}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v49

    .line 227
    .local v49, cmdRecordingModeSubMenu:Lcom/sec/android/app/camera/command/MenuCommand;
    new-instance v42, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v43, v0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_SUBMENU_ITEM_POS_X:I

    add-int v3, v3, v69

    int-to-float v0, v3

    move/from16 v44, v0

    const/16 v45, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_ITEM_WIDTH:I

    int-to-float v0, v3

    move/from16 v46, v0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_ITEM_WIDTH:I

    int-to-float v0, v3

    move/from16 v47, v0

    const/16 v50, 0x2

    invoke-direct/range {v42 .. v50}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/Camera;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mRecordingModeItem:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 228
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mRecordingModeItem:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 229
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mRecordingModeSubMenuGroup:Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingSubMenu;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mRecordingModeItem:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 231
    new-instance v3, Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_SUBMENU_ITEM_POS_X:I

    add-int v5, v5, v69

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->ANCHOR_WIDTH:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->ANCHOR_POS_Y:I

    int-to-float v6, v6

    const v7, 0x7f0201d3

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    .line 232
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 233
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mRecordingModeItem:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mRecordingModeSubMenuGroup:Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingSubMenu;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 237
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    const/16 v4, 0x35

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v71

    .line 238
    .local v71, resIDsMovedShareMode:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    new-instance v56, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v3, 0x5

    new-array v3, v3, [I

    const/4 v4, 0x0

    move-object/from16 v0, v71

    iget v5, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, v71

    iget v5, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v5, v3, v4

    const/4 v4, 0x2

    move-object/from16 v0, v71

    iget v5, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v5, v3, v4

    const/4 v4, 0x3

    move-object/from16 v0, v71

    iget v5, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v5, v3, v4

    const/4 v4, 0x4

    const/16 v5, 0x35

    aput v5, v3, v4

    move-object/from16 v0, v56

    invoke-direct {v0, v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    .line 239
    .local v56, bundleMovedShareMode:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    const/16 v3, 0x35

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v3, v4, v5, v6, v7}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v57

    .line 240
    .local v57, cmdMovedShareMode:Lcom/sec/android/app/camera/command/MenuCommand;
    new-instance v50, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v51, v0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_SUBMENU_ITEM_INTERVAL:I

    add-int v3, v3, v70

    int-to-float v0, v3

    move/from16 v52, v0

    const/16 v53, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_ITEM_WIDTH:I

    int-to-float v0, v3

    move/from16 v54, v0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_ITEM_WIDTH:I

    int-to-float v0, v3

    move/from16 v55, v0

    const/16 v58, 0x2

    invoke-direct/range {v50 .. v58}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/Camera;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mMovedShareModeItem:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 241
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mMovedShareModeItem:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 242
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mRecordingModeSubMenuGroup:Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingSubMenu;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mMovedShareModeItem:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 244
    new-instance v3, Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_SUBMENU_ITEM_INTERVAL:I

    add-int v5, v5, v70

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->ANCHOR_WIDTH:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->ANCHOR_POS_Y:I

    int-to-float v6, v6

    const v7, 0x7f0201d3

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    .line 245
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 246
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mMovedShareModeItem:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mRecordingModeSubMenuGroup:Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingSubMenu;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 249
    const/16 v68, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mRecordingModeSubMenuResource:Lcom/sec/android/app/camera/resourcedata/RecordingModeSubMenuResourceData;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v3

    move/from16 v0, v68

    if-ge v0, v3, :cond_4

    .line 251
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mRecordingModeSubMenuResource:Lcom/sec/android/app/camera/resourcedata/RecordingModeSubMenuResourceData;

    move/from16 v0, v68

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v15

    .line 252
    .restart local v15       #bundle:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    invoke-virtual {v15}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v3, v4, v5, v6, v7}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v16

    .line 253
    .restart local v16       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    new-instance v41, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v59, v0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_SUBMENU_POS_X:I

    add-int v3, v3, v69

    int-to-float v0, v3

    move/from16 v60, v0

    const/16 v61, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_ITEM_WIDTH:I

    int-to-float v0, v3

    move/from16 v62, v0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_ITEM_WIDTH:I

    int-to-float v0, v3

    move/from16 v63, v0

    const/16 v66, 0x2

    move-object/from16 v58, v41

    move-object/from16 v64, v15

    move-object/from16 v65, v16

    invoke-direct/range {v58 .. v66}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/Camera;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1

    .line 254
    .end local v11           #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    .restart local v41       #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    const/4 v3, 0x0

    :try_start_5
    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 255
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mRecordingModeSubMenuGroup:Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingSubMenu;

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_2

    move-object/from16 v11, v41

    .line 259
    .end local v15           #bundle:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v16           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    .end local v41           #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    .restart local v11       #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mRecordingModeSubMenuList:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    new-instance v3, Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_SUBMENU_POS_X:I

    add-int v5, v5, v69

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->ANCHOR_WIDTH:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->ANCHOR_POS_Y:I

    int-to-float v6, v6

    const v7, 0x7f0201d3

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    .line 261
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 262
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v11, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mRecordingModeSubMenuGroup:Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingSubMenu;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 249
    add-int/lit8 v68, v68, 0x1

    goto/16 :goto_6

    .line 266
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->refreshAnchors()V

    .line 268
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mQuickSettingMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mQuickSettingMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mQuickSettingMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mShareModeSubMenuGroup:Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingSubMenu;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 270
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mQuickSettingMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mRecordingModeSubMenuGroup:Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingSubMenu;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mQuickSettingMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mQuickSettingMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mEditItemButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 273
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mQuickSettingMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    .line 275
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mQuickSettingMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v4, 0x1

    move/from16 v0, p6

    invoke-static {v3, v0, v4}, Lcom/sec/android/glview/TwGLUtil;->getSlideInAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/MenuBase;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 276
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mQuickSettingMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v4, 0x1

    move/from16 v0, p6

    invoke-static {v3, v0, v4}, Lcom/sec/android/glview/TwGLUtil;->getSlideOutAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/MenuBase;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mQuickSettingMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/sec/android/glview/TwGLView;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mQuickSettingMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 282
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 283
    return-void

    .line 256
    :catch_1
    move-exception v3

    goto/16 :goto_7

    .end local v11           #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    .restart local v15       #bundle:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .restart local v16       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    .restart local v41       #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    :catch_2
    move-exception v3

    move-object/from16 v11, v41

    .end local v41           #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    .restart local v11       #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    goto/16 :goto_7

    .line 209
    .end local v15           #bundle:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v16           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    .end local v48           #bundleRecordingModeSubMenu:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v49           #cmdRecordingModeSubMenu:Lcom/sec/android/app/camera/command/MenuCommand;
    .end local v56           #bundleMovedShareMode:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v57           #cmdMovedShareMode:Lcom/sec/android/app/camera/command/MenuCommand;
    .end local v71           #resIDsMovedShareMode:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    .end local v73           #resIDsRecordingModeSubMenu:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :catch_3
    move-exception v3

    goto/16 :goto_5

    .end local v11           #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    .restart local v15       #bundle:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .restart local v16       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    .restart local v41       #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    :catch_4
    move-exception v3

    move-object/from16 v11, v41

    .end local v41           #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    .restart local v11       #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    goto/16 :goto_5

    .line 147
    .end local v23           #bundleRecordingMode:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v24           #cmdRecordingMode:Lcom/sec/android/app/camera/command/MenuCommand;
    .end local v31           #bundleShareMode:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v32           #cmdShareMode:Lcom/sec/android/app/camera/command/MenuCommand;
    .end local v39           #bundleShareModeSubMenu:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v40           #cmdShareModeSubMenu:Lcom/sec/android/app/camera/command/MenuCommand;
    .end local v72           #resIDsRecordingMode:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    .end local v75           #resIDsShareMode:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    .end local v76           #resIDsShareModeSubMenu:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    .restart local v2       #b:Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;
    .restart local v10       #editItemButton:Lcom/sec/android/glview/TwGLButton;
    :catch_5
    move-exception v67

    goto/16 :goto_2
.end method

.method private findLastSelectedView()Lcom/sec/android/glview/TwGLView;
    .locals 6

    .prologue
    .line 399
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mQuickSettingMenuList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 400
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 401
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mQuickSettingMenuList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 402
    .local v1, item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v4

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mSelectedMenuId:I

    if-ne v4, v5, :cond_0

    .line 413
    .end local v1           #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    :goto_1
    return-object v1

    .line 400
    .restart local v1       #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 406
    .end local v1           #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mEditDropBoxList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 407
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_3

    .line 408
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mEditDropBoxList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->getView()Lcom/sec/android/glview/TwGLView;

    move-result-object v3

    .local v3, view:Lcom/sec/android/glview/TwGLView;
    move-object v4, v3

    .line 409
    check-cast v4, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v4

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mSelectedMenuId:I

    if-ne v4, v5, :cond_2

    move-object v1, v3

    .line 410
    goto :goto_1

    .line 407
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 413
    .end local v3           #view:Lcom/sec/android/glview/TwGLView;
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mSettingMenuItem:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->unregisterCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mQuickSettingMenuList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 309
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mShareModeSubMenuList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 310
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mRecordingModeSubMenuList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 311
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mQuickSettingAnchorList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 312
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mEditDropBoxList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 313
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mEditItemButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 314
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 315
    return-void
.end method

.method public hideAddItemButtons()V
    .locals 4

    .prologue
    .line 286
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mEditItemButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 287
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mEditItemButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    .line 288
    .local v1, view:Lcom/sec/android/glview/TwGLView;
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(IZ)V

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 290
    .end local v1           #view:Lcom/sec/android/glview/TwGLView;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 291
    return-void
.end method

.method public hideRecordingModeSubMenuItem()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 558
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mQuickSettingMenuList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 559
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mQuickSettingMenuList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 560
    .local v1, item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v2

    const/16 v3, 0xbb8

    if-ne v2, v3, :cond_1

    .line 561
    invoke-virtual {v1, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 558
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 562
    :cond_1
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v2

    const/16 v3, 0x35

    if-ne v2, v3, :cond_0

    .line 563
    invoke-virtual {v1, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto :goto_1

    .line 567
    .end local v1           #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mRecordingModeSubMenuGroup:Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingSubMenu;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 568
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mRecordingModeItem:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 569
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mMovedShareModeItem:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 570
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mRecordingModeSubMenuResource:Lcom/sec/android/app/camera/resourcedata/RecordingModeSubMenuResourceData;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 571
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mRecordingModeSubMenuList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 570
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 573
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 574
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_SUBMENU_GAP:I

    neg-int v3, v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->moveLayout(FF)V

    .line 575
    return-void
.end method

.method public hideShareModeSubMenuItem()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 518
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mQuickSettingMenuList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 519
    .local v2, item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v3

    const/16 v4, 0x35

    if-ne v3, v4, :cond_0

    .line 520
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto :goto_0

    .line 524
    .end local v2           #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mShareModeSubMenuGroup:Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingSubMenu;

    invoke-virtual {v3, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 525
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mShareModeItem:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v3, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 526
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mShareModeSubMenuResource:Lcom/sec/android/app/camera/resourcedata/ShareModeSubMenuResourceData;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 527
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mShareModeSubMenuList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v3, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 526
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 529
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 530
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_SUBMENU_GAP:I

    neg-int v4, v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLView;->moveLayout(FF)V

    .line 531
    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 451
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 452
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 454
    :cond_0
    return v1
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)Z
    .locals 2
    .parameter "animation"

    .prologue
    const/4 v1, 0x1

    .line 661
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_0

    .line 669
    :goto_0
    return v1

    .line 664
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 665
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mSettingMenuItem:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->requestFocus()Z

    goto :goto_0

    .line 667
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenuForQuickMenu()V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)Z
    .locals 1
    .parameter "animation"

    .prologue
    .line 657
    const/4 v0, 0x1

    return v0
.end method

.method public onCameraSettingsChanged(II)V
    .locals 3
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    .line 642
    const-string v0, "TwGLQuickSettingMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraSettingsChanged menuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " modeid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    sparse-switch p1, :sswitch_data_0

    .line 654
    :goto_0
    return-void

    .line 646
    :sswitch_0
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->setRecordingModeButtonMenu(I)V

    goto :goto_0

    .line 649
    :sswitch_1
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->setShareModeButtonMenu(I)V

    goto :goto_0

    .line 644
    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_1
        0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 9
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/16 v8, 0x28

    const/4 v4, 0x0

    .line 458
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 459
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v6, Lcom/sec/android/app/camera/Camera;->SUB_MENU_SOUND:I

    invoke-virtual {v5, v6, v4}, Lcom/sec/android/app/camera/Camera;->playSound(II)V

    .line 460
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v4, :cond_0

    .line 461
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 479
    :cond_0
    :goto_0
    return v3

    .line 464
    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v5

    if-ne v5, v8, :cond_3

    .line 465
    const/4 v2, 0x0

    .line 467
    .local v2, menu:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v5

    iget-object v5, v5, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v6, 0x28

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #menu:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;
    check-cast v2, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    .restart local v2       #menu:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;
    if-eqz v2, :cond_2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v5

    if-nez v5, :cond_3

    .line 472
    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v6, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getEditableShortcutMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-static {v8, v5, v6, v7}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    .line 473
    .local v0, cmd:Lcom/sec/android/app/camera/command/MenuCommand;
    if-eqz v0, :cond_3

    .line 474
    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    goto :goto_0

    .line 468
    .end local v0           #cmd:Lcom/sec/android/app/camera/command/MenuCommand;
    .end local v2           #menu:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;
    :catch_0
    move-exception v1

    .local v1, ex:Ljava/lang/NullPointerException;
    move v3, v4

    .line 469
    goto :goto_0

    .end local v1           #ex:Ljava/lang/NullPointerException;
    :cond_3
    move v3, v4

    .line 479
    goto :goto_0
.end method

.method public onDrag(Lcom/sec/android/glview/TwGLView;FFFF)V
    .locals 5
    .parameter "view"
    .parameter "x"
    .parameter "y"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 368
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mQuickSettingMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    float-to-int v3, p2

    float-to-int v4, p3

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mQuickSettingMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    float-to-int v3, p2

    float-to-int v4, p3

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 370
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v3, 0x28

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    .line 371
    .local v1, menu:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;
    if-eqz v1, :cond_1

    .line 372
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->resetOrder(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    .end local v1           #menu:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;
    :cond_1
    :goto_0
    return-void

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public onDragEnd(Lcom/sec/android/glview/TwGLView;FF)V
    .locals 4
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 384
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->resetOrder()V

    .line 385
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v3, 0x28

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    .line 386
    .local v1, menu:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;
    if-eqz v1, :cond_0

    .line 387
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->resetOrder(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    .end local v1           #menu:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;
    :cond_0
    :goto_0
    return-void

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public onDragStart(Lcom/sec/android/glview/TwGLView;FF)V
    .locals 8
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v7, 0x28

    .line 352
    const/4 v3, 0x0

    .line 354
    .local v3, menu:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v5, 0x28

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    if-eqz v3, :cond_0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v4

    if-nez v4, :cond_1

    .line 359
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v5, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getEditableShortcutMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-static {v7, v4, v5, v6}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v1

    .line 360
    .local v1, cmd:Lcom/sec/android/app/camera/command/MenuCommand;
    if-eqz v1, :cond_1

    .line 361
    invoke-virtual {v1}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    .line 363
    .end local v1           #cmd:Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_1
    :goto_0
    return-void

    .line 355
    :catch_0
    move-exception v2

    .line 356
    .local v2, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public onDrop(Lcom/sec/android/glview/TwGLView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->resetOrder()V

    .line 348
    return-void
.end method

.method protected onHide()V
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 444
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mSelectedMenuId:I

    .line 445
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 447
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 428
    :cond_0
    return-void
.end method

.method protected onShow()V
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->setShareModeButtonMenu(I)V

    .line 433
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->setRecordingModeButtonMenu(I)V

    .line 434
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideBaseMenuForQuickMenu()V

    .line 435
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->requestLastViewFocus()V

    .line 436
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 437
    return-void
.end method

.method public refreshAnchors()V
    .locals 4

    .prologue
    .line 318
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mQuickSettingMenuList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 319
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mQuickSettingMenuList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 320
    .local v1, item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 318
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 323
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mQuickSettingAnchorList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    goto :goto_1

    .line 325
    .end local v1           #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    :cond_1
    return-void
.end method

.method public refreshEditableMenu()V
    .locals 13

    .prologue
    .line 331
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mEditableResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getQuickSettingMenuOrder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->resetOrder(Ljava/lang/String;)V

    .line 333
    const/4 v8, 0x0

    .line 334
    .local v8, i:I
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mEditDropBoxList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;

    .line 335
    .local v7, b:Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;
    invoke-virtual {v7}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->removeView()Lcom/sec/android/glview/TwGLView;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 336
    .local v11, v:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    invoke-virtual {v11}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->clear()V

    .line 337
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/sec/android/app/camera/MenuDimController;->removeButton(Lcom/sec/android/glview/TwGLView;)V

    .line 338
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mEditableResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    add-int/lit8 v9, v8, 0x1

    .end local v8           #i:I
    .local v9, i:I
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v4

    .line 339
    .local v4, bundle:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v3

    iget-object v6, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-static {v1, v2, v3, v6, v12}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v5

    .line 340
    .local v5, command:Lcom/sec/android/app/camera/command/MenuCommand;
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_ITEM_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_ITEM_HEIGHT:I

    int-to-float v3, v3

    const/4 v6, 0x2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/Camera;FFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    .line 341
    .local v0, item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    invoke-virtual {v7, v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    move v8, v9

    .line 342
    .end local v9           #i:I
    .restart local v8       #i:I
    goto :goto_0

    .line 343
    .end local v0           #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    .end local v4           #bundle:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v5           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    .end local v7           #b:Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;
    .end local v11           #v:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    :cond_0
    return-void
.end method

.method public requestLastViewFocus()V
    .locals 1

    .prologue
    .line 417
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->findLastSelectedView()Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    .line 418
    .local v0, lastSelectedView:Lcom/sec/android/glview/TwGLView;
    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->requestFocus()Z

    .line 421
    :cond_0
    return-void
.end method

.method public resetOrder()V
    .locals 11

    .prologue
    const/16 v10, 0x63

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 484
    .local v1, builder:Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mEditDropBoxList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->NUM_OF_QUICKSETTING_SHORTCUT_MENU:I

    if-ge v6, v7, :cond_3

    .line 485
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mEditDropBoxList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;

    .line 486
    .local v0, b:Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->getView()Lcom/sec/android/glview/TwGLView;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 487
    .local v5, v:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mDelCommand:[I

    aget v7, v7, v8

    if-ne v6, v7, :cond_1

    .line 488
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mDelCommand:[I

    aput v10, v6, v8

    .line 490
    :cond_1
    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mDelCommand:[I

    aget v7, v7, v9

    if-ne v6, v7, :cond_0

    .line 491
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mDelCommand:[I

    aput v10, v6, v9

    goto :goto_0

    .line 494
    .end local v0           #b:Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;
    .end local v5           #v:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mDelCommand:[I

    aget v6, v6, v8

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 495
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mDelCommand:[I

    aget v6, v6, v9

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 497
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mEditDropBoxList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;

    .line 501
    .restart local v0       #b:Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->getView()Lcom/sec/android/glview/TwGLView;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 502
    .restart local v5       #v:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 503
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 505
    .end local v0           #b:Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;
    .end local v5           #v:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mEditableResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->resetOrder(Ljava/lang/String;)V

    .line 507
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mEditDropBoxList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_6

    .line 508
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mEditDropBoxList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->getView()Lcom/sec/android/glview/TwGLView;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 509
    .local v4, item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v6

    const/4 v7, 0x7

    if-ne v6, v7, :cond_5

    .line 507
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 512
    :cond_5
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mQuickSettingAnchorList:Ljava/util/ArrayList;

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4, v6}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    goto :goto_3

    .line 514
    .end local v4           #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    :cond_6
    return-void
.end method

.method public setQuickSettingsDimmed(Z)V
    .locals 5
    .parameter "visible"

    .prologue
    const/4 v4, 0x0

    .line 673
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mSettingMenuItem:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setDim(Z)V

    .line 675
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mEditDropBoxList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;

    .line 676
    .local v0, b:Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;
    if-eqz p1, :cond_0

    .line 677
    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->setNormalBGVisibility(I)V

    goto :goto_0

    .line 679
    :cond_0
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->setNormalBGVisibility(I)V

    goto :goto_0

    .line 683
    .end local v0           #b:Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;
    :cond_1
    if-eqz p1, :cond_6

    .line 684
    iget-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mIsShareModeSubMenuOpen:Z

    if-eqz v3, :cond_2

    .line 685
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->hideShareModeSubMenuItem()V

    .line 686
    iput-boolean v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mIsShareModeSubMenuOpen:Z

    .line 688
    :cond_2
    iget-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mIsRecordingModeSubMenuOpen:Z

    if-eqz v3, :cond_3

    .line 689
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->hideRecordingModeSubMenuItem()V

    .line 690
    iput-boolean v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mIsRecordingModeSubMenuOpen:Z

    .line 693
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->setDualEffectInvisible()V

    .line 694
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->hideBaseMenuForEditQuickSettings()V

    .line 696
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mQuickSettingMenuList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 697
    .local v2, item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v3

    const/16 v4, 0xbb8

    if-eq v3, v4, :cond_5

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v3

    const/16 v4, 0x35

    if-ne v3, v4, :cond_4

    .line 698
    :cond_5
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setDim(Z)V

    goto :goto_1

    .line 702
    .end local v2           #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->setShareModeButtonMenu(I)V

    .line 703
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->setRecordingModeButtonMenu(I)V

    .line 705
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->setDualEffectVisible()V

    .line 706
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->showBaseMenuForEditQuickSettings()V

    .line 707
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 709
    :cond_7
    return-void
.end method

.method public setRecordingModeButtonMenu(I)V
    .locals 1
    .parameter "modeid"

    .prologue
    .line 625
    packed-switch p1, :pswitch_data_0

    .line 633
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mIsRecordingModeSubMenuOpen:Z

    if-eqz v0, :cond_0

    .line 634
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->hideRecordingModeSubMenuItem()V

    .line 635
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mIsRecordingModeSubMenuOpen:Z

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 627
    :pswitch_0
    const/16 v0, 0x170e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->showRecordingModeSubMenuItem(I)V

    goto :goto_0

    .line 630
    :pswitch_1
    const/16 v0, 0x170f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->showRecordingModeSubMenuItem(I)V

    goto :goto_0

    .line 625
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setSelectedMenuId(I)V
    .locals 0
    .parameter "commandId"

    .prologue
    .line 395
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mSelectedMenuId:I

    .line 396
    return-void
.end method

.method public setShareModeButtonMenu(I)V
    .locals 1
    .parameter "modeid"

    .prologue
    .line 605
    packed-switch p1, :pswitch_data_0

    .line 616
    :pswitch_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mIsShareModeSubMenuOpen:Z

    if-eqz v0, :cond_0

    .line 617
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->hideShareModeSubMenuItem()V

    .line 618
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mIsShareModeSubMenuOpen:Z

    .line 622
    :cond_0
    :goto_0
    return-void

    .line 607
    :pswitch_1
    const/16 v0, 0x55

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->showShareModeSubMenuItem(I)V

    goto :goto_0

    .line 610
    :pswitch_2
    const/16 v0, 0x53

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->showShareModeSubMenuItem(I)V

    goto :goto_0

    .line 613
    :pswitch_3
    const/16 v0, 0x54

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->showShareModeSubMenuItem(I)V

    goto :goto_0

    .line 605
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public showAddItemButtons()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 294
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mEditDropBoxList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 295
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mEditDropBoxList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;

    .line 296
    .local v0, box:Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 297
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mEditItemButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2, v3, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(IZ)V

    .line 294
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 300
    .end local v0           #box:Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 301
    return-void
.end method

.method public showRecordingModeSubMenuItem(I)V
    .locals 7
    .parameter "commandId"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 578
    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mIsRecordingModeSubMenuOpen:Z

    if-nez v2, :cond_3

    .line 579
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mQuickSettingMenuList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 580
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mQuickSettingMenuList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 581
    .local v1, item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v2

    const/16 v3, 0xbb8

    if-ne v2, v3, :cond_1

    .line 582
    invoke-virtual {v1, v6}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 579
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 583
    :cond_1
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v2

    const/16 v3, 0x35

    if-ne v2, v3, :cond_0

    .line 584
    invoke-virtual {v1, v6}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto :goto_1

    .line 587
    .end local v1           #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mIsRecordingModeSubMenuOpen:Z

    .line 588
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 589
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_SUBMENU_GAP:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->moveLayout(FF)V

    .line 592
    .end local v0           #i:I
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mRecordingModeSubMenuGroup:Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingSubMenu;

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 593
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mRecordingModeItem:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 594
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mMovedShareModeItem:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 595
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mRecordingModeSubMenuResource:Lcom/sec/android/app/camera/resourcedata/RecordingModeSubMenuResourceData;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 596
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mRecordingModeSubMenuList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v2

    if-ne v2, p1, :cond_4

    .line 597
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mRecordingModeSubMenuList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 595
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 599
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mRecordingModeSubMenuList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v2, v6}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto :goto_3

    .line 602
    :cond_5
    return-void
.end method

.method public showShareModeSubMenuItem(I)V
    .locals 8
    .parameter "commandId"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 534
    iget-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mIsShareModeSubMenuOpen:Z

    if-nez v3, :cond_2

    .line 536
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mQuickSettingMenuList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 537
    .local v2, item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v3

    const/16 v4, 0x35

    if-ne v3, v4, :cond_0

    .line 538
    invoke-virtual {v2, v7}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto :goto_0

    .line 541
    .end local v2           #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mIsShareModeSubMenuOpen:Z

    .line 542
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 543
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->QUICKSETTING_SUBMENU_GAP:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLView;->moveLayout(FF)V

    .line 546
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mShareModeSubMenuGroup:Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingSubMenu;

    invoke-virtual {v3, v6}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 547
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mShareModeItem:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v3, v6}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 548
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mShareModeSubMenuResource:Lcom/sec/android/app/camera/resourcedata/ShareModeSubMenuResourceData;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 549
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mShareModeSubMenuList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v3

    if-ne v3, p1, :cond_3

    .line 550
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mShareModeSubMenuList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v3, v6}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 548
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 552
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingMenu;->mShareModeSubMenuList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v3, v7}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto :goto_2

    .line 555
    :cond_4
    return-void
.end method
