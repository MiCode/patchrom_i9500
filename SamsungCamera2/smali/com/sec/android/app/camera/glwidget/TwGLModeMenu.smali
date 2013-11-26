.class public Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLModeMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/glwidget/TwGLModeItem$OnSelectListener;
.implements Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnCenterItemChangeListener;
.implements Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final AUTO_MODE_BUTTON_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final AUTO_MODE_BUTTON_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final GRID_MENU_COLUMNS:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final GRID_MENU_ROWS:I = 0x0

.field private static final GRID_MENU_SCALE_RATIO:F = 0.56f

#the value of this static final field might be set in the static constructor
.field private static final HELP_GROUP_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ITEM_COLUMN_1_OF_4_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ITEM_COLUMN_1_OF_5_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ITEM_COLUMN_OFFSET:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ITEM_COLUMN_OFFSET_5COLUMNS:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ITEM_ROW_1_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ITEM_ROW_OFFSET:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LIST_TYPE_BUTTON_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LIST_TYPE_BUTTON_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final MODE_MENU_ITEM_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final MODE_MENU_ITEM_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final TUTORIAL_HELP_GROUP_WIDTH:I = 0x0

.field private static final TYPE_GRID:I = 0x1

.field private static final TYPE_WHEEL:I


# instance fields
.field private mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

.field private mAutoModeButton:Lcom/sec/android/glview/TwGLButton;

.field private mCenterItemIndex:I

.field private mColumn1PosX:I

.field private mColumnOffset:I

.field private mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

.field private mItemList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/camera/glwidget/TwGLModeItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLastOrientation:I

.field private mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

.field private mMenuType:I

.field private mModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;

.field protected mOrientationListener:Landroid/view/OrientationEventListener;

.field private mPreviousSelectedItem:I

.field private mTutorialModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

.field private mTypeButton:Lcom/sec/android/glview/TwGLButton;

.field private mWheelMenu:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    const v0, 0x7f080037

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->AUTO_MODE_BUTTON_POS_X:I

    .line 33
    const v0, 0x7f080038

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->AUTO_MODE_BUTTON_POS_Y:I

    .line 34
    const v0, 0x7f080039

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->LIST_TYPE_BUTTON_POS_X:I

    .line 35
    const v0, 0x7f08003a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->LIST_TYPE_BUTTON_POS_Y:I

    .line 36
    const v0, 0x7f08003b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->MODE_MENU_ITEM_WIDTH:I

    .line 37
    const v0, 0x7f08003c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->MODE_MENU_ITEM_HEIGHT:I

    .line 39
    const v0, 0x7f08003d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->MODE_MENU_ITEM_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->ITEM_COLUMN_1_OF_4_POS_X:I

    .line 40
    const v0, 0x7f08003e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->MODE_MENU_ITEM_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->ITEM_COLUMN_1_OF_5_POS_X:I

    .line 41
    const v0, 0x7f08003f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->ITEM_COLUMN_OFFSET:I

    .line 42
    const v0, 0x7f080040

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->ITEM_COLUMN_OFFSET_5COLUMNS:I

    .line 43
    const v0, 0x7f080041

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->ITEM_ROW_1_POS_Y:I

    .line 44
    const v0, 0x7f080042

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->ITEM_ROW_OFFSET:I

    .line 46
    const v0, 0x7f08005c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->HELP_GROUP_WIDTH:I

    .line 47
    const v0, 0x7f080215

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->TUTORIAL_HELP_GROUP_WIDTH:I

    .line 49
    const v0, 0x7f090001

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_ROWS:I

    .line 50
    const/high16 v0, 0x7f09

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_COLUMNS:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 8
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "resourceData"
    .parameter "menuResourceDepot"

    .prologue
    .line 82
    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 65
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuType:I

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mCenterItemIndex:I

    .line 69
    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mPreviousSelectedItem:I

    .line 71
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->ITEM_COLUMN_1_OF_4_POS_X:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mColumn1PosX:I

    .line 72
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->ITEM_COLUMN_OFFSET:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mColumnOffset:I

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mLastOrientation:I

    .line 77
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    .line 79
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mItemList:Landroid/util/SparseArray;

    .line 84
    iput-object p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 85
    iput-object p5, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 86
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p2}, Lcom/sec/android/glview/TwGLViewGroup;->setTag(I)V

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 90
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_COLUMNS:I

    packed-switch v0, :pswitch_data_0

    .line 97
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->ITEM_COLUMN_1_OF_4_POS_X:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mColumn1PosX:I

    .line 98
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->ITEM_COLUMN_OFFSET:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mColumnOffset:I

    .line 102
    :goto_0
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->AUTO_MODE_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->AUTO_MODE_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f0200f9

    const v5, 0x7f0200fb

    const v6, 0x7f0200fa

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAutoModeButton:Lcom/sec/android/glview/TwGLButton;

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAutoModeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAutoModeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAutoModeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAutoModeButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0060

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAutoModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 109
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->LIST_TYPE_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->LIST_TYPE_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f020113

    const v5, 0x7f020115

    const v6, 0x7f020114

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 116
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p3}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v4

    invoke-virtual {p3}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 119
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p3}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v4

    invoke-virtual {p3}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mWheelMenu:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mWheelMenu:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;)V

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mWheelMenu:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mWheelMenu:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->setOnCenterItemChangeListener(Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnCenterItemChangeListener;)V

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mWheelMenu:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->setOnScrollListener(Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnScrollListener;)V

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mWheelMenu:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAutoModeButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setNextFocusDownView(Lcom/sec/android/glview/TwGLView;)Z

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAutoModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setNextFocusUpView(Lcom/sec/android/glview/TwGLView;)Z

    .line 129
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->HELP_GROUP_WIDTH:I

    int-to-float v4, v1

    invoke-virtual {p3}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;-><init>(Lcom/sec/android/app/camera/Camera;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xcb

    if-ne v0, v1, :cond_0

    .line 134
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->TUTORIAL_HELP_GROUP_WIDTH:I

    int-to-float v4, v1

    invoke-virtual {p3}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;-><init>(Lcom/sec/android/app/camera/Camera;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTutorialModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTutorialModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTutorialModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAutoModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getLastOrientation()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLUtil;->getGLOrientationBySystemOrientation(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mLastOrientation:I

    .line 144
    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mLastOrientation:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->initGridMode(ZI)V

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mWheelMenu:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mLastOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->refreshList(I)V

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getModeMenuType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->setType(I)V

    .line 148
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->setOrientationListener()V

    .line 149
    return-void

    .line 92
    :pswitch_0
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->ITEM_COLUMN_1_OF_5_POS_X:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mColumn1PosX:I

    .line 93
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->ITEM_COLUMN_OFFSET_5COLUMNS:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mColumnOffset:I

    goto/16 :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mLastOrientation:I

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mLastOrientation:I

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuType:I

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->initGridMode(ZI)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)Lcom/sec/android/app/camera/glwidget/TwGLWheelList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mWheelMenu:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mItemList:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)Lcom/sec/android/app/camera/MenuResourceDepot;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 29
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->MODE_MENU_ITEM_WIDTH:I

    return v0
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 29
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->MODE_MENU_ITEM_HEIGHT:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method private initGridMode(ZI)V
    .locals 11
    .parameter "refreshOnly"
    .parameter "orientation"

    .prologue
    const/high16 v10, 0x3f80

    const/4 v9, 0x0

    const/4 v8, 0x0

    const v7, 0x3f0f5c29

    const/4 v6, 0x1

    .line 187
    if-nez p2, :cond_4

    .line 188
    const/4 v2, 0x0

    .local v2, row:I
    :goto_0
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_ROWS:I

    if-ge v2, v3, :cond_0

    .line 189
    const/4 v0, 0x0

    .local v0, column:I
    :goto_1
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_COLUMNS:I

    if-ge v0, v3, :cond_3

    .line 190
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_COLUMNS:I

    mul-int/2addr v3, v2

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v4}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 282
    .end local v0           #column:I
    .end local v2           #row:I
    :cond_0
    return-void

    .line 193
    .restart local v0       #column:I
    .restart local v2       #row:I
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_COLUMNS:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v0

    invoke-interface {v3, v4, v8}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    .line 194
    .local v1, item:Lcom/sec/android/glview/TwGLView;
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mColumn1PosX:I

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mColumnOffset:I

    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->ITEM_ROW_1_POS_Y:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->ITEM_ROW_OFFSET:I

    mul-int/2addr v5, v2

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 195
    invoke-virtual {v1, v9}, Lcom/sec/android/glview/TwGLView;->moveBaseDepthLayout(F)V

    .line 196
    invoke-virtual {v1, v10}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 197
    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->resetScale()V

    .line 198
    invoke-virtual {v1, v7, v7}, Lcom/sec/android/glview/TwGLView;->scale(FF)V

    .line 199
    invoke-virtual {v1, v6}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 200
    invoke-virtual {v1, v6}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    .line 201
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iput-object v3, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    move-object v3, v1

    .line 202
    check-cast v3, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->moveTitleToBottom()V

    .line 203
    invoke-virtual {v1, v8}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 204
    if-nez p1, :cond_2

    .line 205
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 189
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 188
    .end local v1           #item:Lcom/sec/android/glview/TwGLView;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 209
    .end local v0           #column:I
    .end local v2           #row:I
    :cond_4
    if-ne p2, v6, :cond_7

    .line 210
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_COLUMNS:I

    add-int/lit8 v0, v3, -0x1

    .restart local v0       #column:I
    :goto_2
    if-ltz v0, :cond_0

    .line 211
    const/4 v2, 0x0

    .restart local v2       #row:I
    :goto_3
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_ROWS:I

    if-ge v2, v3, :cond_6

    .line 212
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_COLUMNS:I

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_ROWS:I

    mul-int/2addr v3, v4

    add-int/2addr v3, v2

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v4}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 215
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_COLUMNS:I

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_ROWS:I

    mul-int/2addr v4, v5

    add-int/2addr v4, v2

    invoke-interface {v3, v4, v8}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    .line 216
    .restart local v1       #item:Lcom/sec/android/glview/TwGLView;
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mColumn1PosX:I

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mColumnOffset:I

    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->ITEM_ROW_1_POS_Y:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->ITEM_ROW_OFFSET:I

    mul-int/2addr v5, v2

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 217
    invoke-virtual {v1, v9}, Lcom/sec/android/glview/TwGLView;->moveBaseDepthLayout(F)V

    .line 218
    invoke-virtual {v1, v10}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 219
    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->resetScale()V

    .line 220
    invoke-virtual {v1, v7, v7}, Lcom/sec/android/glview/TwGLView;->scale(FF)V

    .line 221
    invoke-virtual {v1, v6}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 222
    invoke-virtual {v1, v6}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    .line 223
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iput-object v3, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    move-object v3, v1

    .line 224
    check-cast v3, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->moveTitleToBottom()V

    .line 225
    invoke-virtual {v1, v8}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 226
    if-nez p1, :cond_5

    .line 227
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 211
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 210
    .end local v1           #item:Lcom/sec/android/glview/TwGLView;
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 231
    .end local v0           #column:I
    .end local v2           #row:I
    :cond_7
    const/4 v3, 0x2

    if-ne p2, v3, :cond_a

    .line 232
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_ROWS:I

    add-int/lit8 v2, v3, -0x1

    .restart local v2       #row:I
    :goto_4
    if-ltz v2, :cond_0

    .line 233
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_COLUMNS:I

    add-int/lit8 v0, v3, -0x1

    .restart local v0       #column:I
    :goto_5
    if-ltz v0, :cond_9

    .line 234
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_ROWS:I

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v2

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_COLUMNS:I

    mul-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_COLUMNS:I

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v0

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v4}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 237
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_ROWS:I

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v2

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_COLUMNS:I

    mul-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_COLUMNS:I

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v0

    add-int/2addr v4, v5

    invoke-interface {v3, v4, v8}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    .line 238
    .restart local v1       #item:Lcom/sec/android/glview/TwGLView;
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mColumn1PosX:I

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mColumnOffset:I

    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->ITEM_ROW_1_POS_Y:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->ITEM_ROW_OFFSET:I

    mul-int/2addr v5, v2

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 239
    invoke-virtual {v1, v9}, Lcom/sec/android/glview/TwGLView;->moveBaseDepthLayout(F)V

    .line 240
    invoke-virtual {v1, v10}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 241
    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->resetScale()V

    .line 242
    invoke-virtual {v1, v7, v7}, Lcom/sec/android/glview/TwGLView;->scale(FF)V

    .line 243
    invoke-virtual {v1, v6}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 244
    invoke-virtual {v1, v6}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    .line 245
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iput-object v3, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    move-object v3, v1

    .line 246
    check-cast v3, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->moveTitleToBottom()V

    .line 247
    invoke-virtual {v1, v8}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 248
    if-nez p1, :cond_8

    .line 249
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 233
    :cond_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 232
    .end local v1           #item:Lcom/sec/android/glview/TwGLView;
    :cond_9
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 253
    .end local v0           #column:I
    .end local v2           #row:I
    :cond_a
    const/4 v3, 0x3

    if-ne p2, v3, :cond_0

    .line 254
    const/4 v0, 0x0

    .restart local v0       #column:I
    :goto_6
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_COLUMNS:I

    if-ge v0, v3, :cond_0

    .line 255
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_ROWS:I

    add-int/lit8 v2, v3, -0x1

    .restart local v2       #row:I
    :goto_7
    if-ltz v2, :cond_c

    .line 256
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_ROWS:I

    mul-int/2addr v3, v0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_ROWS:I

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v2

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v4}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 259
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_ROWS:I

    mul-int/2addr v4, v0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_ROWS:I

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v2

    add-int/2addr v4, v5

    invoke-interface {v3, v4, v8}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    .line 260
    .restart local v1       #item:Lcom/sec/android/glview/TwGLView;
    if-eqz v1, :cond_b

    .line 262
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mColumn1PosX:I

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mColumnOffset:I

    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->ITEM_ROW_1_POS_Y:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->ITEM_ROW_OFFSET:I

    mul-int/2addr v5, v2

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 263
    invoke-virtual {v1, v9}, Lcom/sec/android/glview/TwGLView;->moveBaseDepthLayout(F)V

    .line 264
    invoke-virtual {v1, v10}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 265
    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->resetScale()V

    .line 266
    invoke-virtual {v1, v7, v7}, Lcom/sec/android/glview/TwGLView;->scale(FF)V

    .line 267
    invoke-virtual {v1, v6}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 268
    invoke-virtual {v1, v6}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    .line 269
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iput-object v3, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    move-object v3, v1

    .line 270
    check-cast v3, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->moveTitleToBottom()V

    .line 271
    invoke-virtual {v1, v8}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 272
    if-nez p1, :cond_b

    .line 273
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 255
    :cond_b
    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    .line 254
    .end local v1           #item:Lcom/sec/android/glview/TwGLView;
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method private setType(I)V
    .locals 7
    .parameter "type"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 285
    if-ne p1, v5, :cond_2

    .line 286
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuType:I

    .line 287
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    const v1, 0x7f0201bd

    const v2, 0x7f0201bf

    const v3, 0x7f0201be

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    .line 288
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0217

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v4, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(IZ)V

    .line 290
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mWheelMenu:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    invoke-virtual {v0, v6, v4}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->setVisibility(IZ)V

    .line 291
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;

    invoke-virtual {v0, v6, v4}, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->setVisibility(IZ)V

    .line 292
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mLastOrientation:I

    invoke-direct {p0, v5, v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->initGridMode(ZI)V

    .line 305
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xcb

    if-ne v0, v1, :cond_1

    .line 306
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 307
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAutoModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 310
    return-void

    .line 293
    :cond_2
    if-nez p1, :cond_0

    .line 294
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuType:I

    .line 295
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    const v1, 0x7f020113

    const v2, 0x7f020115

    const v3, 0x7f020114

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    .line 296
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0216

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v6, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(IZ)V

    .line 298
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mWheelMenu:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    invoke-virtual {v0, v4, v4}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->setVisibility(IZ)V

    .line 299
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mWheelMenu:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->refreshList(Z)V

    .line 300
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mWheelMenu:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mLastOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->refreshList(I)V

    .line 301
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mWheelMenu:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->getCurrentSelectedItem()Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->requestFocus()Z

    .line 302
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mCenterItemIndex:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->setDescription(Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;)V

    .line 303
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;

    invoke-virtual {v0, v4, v4}, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->setVisibility(IZ)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mItemList:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mItemList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 384
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 385
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 386
    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 442
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xcb

    if-ne v0, v1, :cond_0

    .line 443
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTutorialModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->setVisibility(IZ)V

    .line 445
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(IZ)V

    .line 448
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 449
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 450
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x25

    if-ne v0, v1, :cond_1

    .line 451
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->show3DPanoramaMode()V

    .line 454
    :cond_1
    return v3
.end method

.method public onCenterItemChanged(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 390
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mCenterItemIndex:I

    .line 391
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mCenterItemIndex:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->setDescription(Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;)V

    .line 392
    return-void
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 6
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 314
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 315
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuType:I

    if-ne v3, v1, :cond_1

    .line 316
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->setType(I)V

    .line 317
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/android/app/camera/CameraSettings;->setModeMenuType(I)V

    .line 330
    :cond_0
    :goto_0
    return v1

    .line 319
    :cond_1
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuType:I

    if-nez v3, :cond_3

    .line 320
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->setType(I)V

    .line 321
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/app/camera/CameraSettings;->setModeMenuType(I)V

    goto :goto_0

    .line 324
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAutoModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 325
    const/16 v2, 0x12c

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    .line 326
    .local v0, menuCommand:Lcom/sec/android/app/camera/command/MenuCommand;
    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    goto :goto_0

    .end local v0           #menuCommand:Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_3
    move v1, v2

    .line 330
    goto :goto_0
.end method

.method protected onHide()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 351
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->setVisibility(IZ)V

    .line 355
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mWheelMenu:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->setVisibility(I)V

    .line 356
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 357
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 358
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 418
    if-ne p1, v4, :cond_2

    .line 419
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v3, 0x25

    if-ne v2, v3, :cond_0

    .line 420
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 421
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->show3DPanoramaMode()V

    .line 437
    :goto_0
    return v0

    .line 425
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v2

    const/16 v3, 0xcb

    if-ne v2, v3, :cond_2

    .line 426
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTutorialModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 427
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTutorialModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    invoke-virtual {v2, v4, v1}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->setVisibility(IZ)V

    .line 428
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v1, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(IZ)V

    goto :goto_0

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mTutorial3:Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->STEP_NUM:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 432
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mTutorial3:Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->Step_Hide()V

    .line 433
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->finish()V

    :cond_2
    move v0, v1

    .line 437
    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xcb

    if-ne v0, v1, :cond_1

    .line 365
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 367
    :cond_1
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onPause()V

    .line 368
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 374
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onResume()V

    .line 375
    return-void
.end method

.method public onScrollEnd()V
    .locals 0

    .prologue
    .line 401
    return-void
.end method

.method public onScrollStart()V
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->hideDescription()V

    .line 397
    return-void
.end method

.method public onSelect(Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;)V
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 405
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xcb

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mTutorial3:Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->STEP_NUM:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 406
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mTutorial3:Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->setStep3()V

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTutorialModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->setDescription(Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;)V

    .line 409
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTutorialModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    invoke-virtual {v0, v2, v2}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->setVisibility(IZ)V

    .line 410
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v3, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(IZ)V

    .line 411
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mItemList:Landroid/util/SparseArray;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mPreviousSelectedItem:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->setHighlightImage(I)V

    .line 412
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mItemList:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->setHighlightImage(I)V

    .line 413
    invoke-virtual {p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mPreviousSelectedItem:I

    .line 414
    return-void
.end method

.method protected onShow()V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 337
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideBaseMenu()V

    .line 339
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getModeMenuType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->setType(I)V

    .line 346
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 347
    return-void

    .line 342
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->setType(I)V

    .line 343
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    goto :goto_0
.end method

.method protected setOrientationListener()V
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    .line 459
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$1;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 477
    return-void
.end method
