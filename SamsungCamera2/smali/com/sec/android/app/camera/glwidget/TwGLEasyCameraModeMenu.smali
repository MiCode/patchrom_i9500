.class public Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLEasyCameraModeMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$TwGLMenuAdapter;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final GRID_MENU_COLUMNS:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final GRID_MENU_ROWS:I = 0x0

.field private static final GRID_MENU_SCALE_RATIO:F = 0.7f

.field private static final ITEM_COLUMN_1_POS_X:I

.field private static final ITEM_COLUMN_OFFSET:I

.field private static final ITEM_ROW_1_POS_Y:I

.field private static final ITEM_ROW_OFFSET:I

.field private static final MODE_MENU_ITEM_HEIGHT:I

.field private static final MODE_MENU_ITEM_WIDTH:I


# instance fields
.field private mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

.field private mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

.field private mItemList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLastOrientation:I

.field private mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

.field protected mOrientationListener:Landroid/view/OrientationEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    const v0, 0x7f0801d5

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->MODE_MENU_ITEM_WIDTH:I

    .line 22
    const v0, 0x7f0801d6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->MODE_MENU_ITEM_HEIGHT:I

    .line 24
    const v0, 0x7f0801d7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->MODE_MENU_ITEM_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->ITEM_COLUMN_1_POS_X:I

    .line 25
    const v0, 0x7f0801d8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->ITEM_COLUMN_OFFSET:I

    .line 26
    const v0, 0x7f0801d9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->ITEM_ROW_1_POS_Y:I

    .line 27
    const v0, 0x7f0801da

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->ITEM_ROW_OFFSET:I

    .line 29
    const v0, 0x7f090003

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->GRID_MENU_ROWS:I

    .line 30
    const v0, 0x7f090002

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->GRID_MENU_COLUMNS:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 9
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "resourceData"
    .parameter "menuResourceDepot"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 45
    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 39
    iput-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 40
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mLastOrientation:I

    .line 41
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$TwGLMenuAdapter;

    invoke-direct {v0, p0, v8}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$TwGLMenuAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    .line 42
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mItemList:Landroid/util/SparseArray;

    .line 47
    iput-object p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 48
    iput-object p5, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 49
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p2}, Lcom/sec/android/glview/TwGLViewGroup;->setTag(I)V

    .line 51
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 53
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {p3}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v4

    invoke-virtual {p3}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v5

    move v2, v7

    move v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    .line 54
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 55
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getLastOrientation()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLUtil;->getGLOrientationBySystemOrientation(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mLastOrientation:I

    .line 58
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mLastOrientation:I

    invoke-direct {p0, v6, v0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->init(ZI)V

    .line 59
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->setOrientationListener()V

    .line 60
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->init(ZI)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mItemList:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;)Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;)Lcom/sec/android/app/camera/MenuResourceDepot;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 20
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->MODE_MENU_ITEM_WIDTH:I

    return v0
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 20
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->MODE_MENU_ITEM_HEIGHT:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mLastOrientation:I

    return v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mLastOrientation:I

    return p1
.end method

.method private init(ZI)V
    .locals 11
    .parameter "refreshOnly"
    .parameter "orientation"

    .prologue
    const/high16 v10, 0x3f80

    const/4 v9, 0x0

    const/4 v8, 0x0

    const v7, 0x3f333333

    const/4 v6, 0x1

    .line 90
    if-nez p2, :cond_4

    .line 91
    const/4 v2, 0x0

    .local v2, row:I
    :goto_0
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->GRID_MENU_ROWS:I

    if-ge v2, v3, :cond_0

    .line 92
    const/4 v0, 0x0

    .local v0, column:I
    :goto_1
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->GRID_MENU_COLUMNS:I

    if-ge v0, v3, :cond_3

    .line 93
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->GRID_MENU_COLUMNS:I

    mul-int/2addr v3, v2

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v4}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 173
    .end local v0           #column:I
    .end local v2           #row:I
    :cond_0
    return-void

    .line 96
    .restart local v0       #column:I
    .restart local v2       #row:I
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->GRID_MENU_COLUMNS:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v0

    invoke-interface {v3, v4, v8}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    .line 97
    .local v1, item:Lcom/sec/android/glview/TwGLView;
    if-eqz v1, :cond_2

    .line 98
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->ITEM_COLUMN_1_POS_X:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->ITEM_COLUMN_OFFSET:I

    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->ITEM_ROW_1_POS_Y:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->ITEM_ROW_OFFSET:I

    mul-int/2addr v5, v2

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 99
    invoke-virtual {v1, v9}, Lcom/sec/android/glview/TwGLView;->moveBaseDepthLayout(F)V

    .line 100
    invoke-virtual {v1, v10}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 101
    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->resetScale()V

    .line 102
    invoke-virtual {v1, v7, v7}, Lcom/sec/android/glview/TwGLView;->scale(FF)V

    .line 103
    invoke-virtual {v1, v6}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 104
    invoke-virtual {v1, v6}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    .line 105
    invoke-virtual {v1, v8}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 106
    if-nez p1, :cond_2

    .line 107
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 92
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 91
    .end local v1           #item:Lcom/sec/android/glview/TwGLView;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 112
    .end local v0           #column:I
    .end local v2           #row:I
    :cond_4
    if-ne p2, v6, :cond_7

    .line 113
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->GRID_MENU_COLUMNS:I

    add-int/lit8 v0, v3, -0x1

    .restart local v0       #column:I
    :goto_2
    if-ltz v0, :cond_0

    .line 114
    const/4 v2, 0x0

    .restart local v2       #row:I
    :goto_3
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->GRID_MENU_ROWS:I

    if-ge v2, v3, :cond_6

    .line 115
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->GRID_MENU_COLUMNS:I

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->GRID_MENU_ROWS:I

    mul-int/2addr v3, v4

    add-int/2addr v3, v2

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v4}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 118
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->GRID_MENU_COLUMNS:I

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->GRID_MENU_ROWS:I

    mul-int/2addr v4, v5

    add-int/2addr v4, v2

    invoke-interface {v3, v4, v8}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    .line 119
    .restart local v1       #item:Lcom/sec/android/glview/TwGLView;
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->ITEM_COLUMN_1_POS_X:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->ITEM_COLUMN_OFFSET:I

    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->ITEM_ROW_1_POS_Y:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->ITEM_ROW_OFFSET:I

    mul-int/2addr v5, v2

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 120
    invoke-virtual {v1, v9}, Lcom/sec/android/glview/TwGLView;->moveBaseDepthLayout(F)V

    .line 121
    invoke-virtual {v1, v10}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 122
    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->resetScale()V

    .line 123
    invoke-virtual {v1, v7, v7}, Lcom/sec/android/glview/TwGLView;->scale(FF)V

    .line 124
    invoke-virtual {v1, v6}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 125
    invoke-virtual {v1, v6}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    .line 126
    invoke-virtual {v1, v8}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 127
    if-nez p1, :cond_5

    .line 128
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 114
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 113
    .end local v1           #item:Lcom/sec/android/glview/TwGLView;
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 132
    .end local v0           #column:I
    .end local v2           #row:I
    :cond_7
    const/4 v3, 0x2

    if-ne p2, v3, :cond_a

    .line 133
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->GRID_MENU_ROWS:I

    add-int/lit8 v2, v3, -0x1

    .restart local v2       #row:I
    :goto_4
    if-ltz v2, :cond_0

    .line 134
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->GRID_MENU_COLUMNS:I

    add-int/lit8 v0, v3, -0x1

    .restart local v0       #column:I
    :goto_5
    if-ltz v0, :cond_9

    .line 135
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->GRID_MENU_ROWS:I

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v2

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->GRID_MENU_COLUMNS:I

    mul-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->GRID_MENU_COLUMNS:I

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v0

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v4}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 138
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->GRID_MENU_ROWS:I

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v2

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->GRID_MENU_COLUMNS:I

    mul-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->GRID_MENU_COLUMNS:I

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v0

    add-int/2addr v4, v5

    invoke-interface {v3, v4, v8}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    .line 139
    .restart local v1       #item:Lcom/sec/android/glview/TwGLView;
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->ITEM_COLUMN_1_POS_X:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->ITEM_COLUMN_OFFSET:I

    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->ITEM_ROW_1_POS_Y:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->ITEM_ROW_OFFSET:I

    mul-int/2addr v5, v2

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 140
    invoke-virtual {v1, v9}, Lcom/sec/android/glview/TwGLView;->moveBaseDepthLayout(F)V

    .line 141
    invoke-virtual {v1, v10}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 142
    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->resetScale()V

    .line 143
    invoke-virtual {v1, v7, v7}, Lcom/sec/android/glview/TwGLView;->scale(FF)V

    .line 144
    invoke-virtual {v1, v6}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 145
    invoke-virtual {v1, v6}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    .line 146
    invoke-virtual {v1, v8}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 147
    if-nez p1, :cond_8

    .line 148
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 134
    :cond_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 133
    .end local v1           #item:Lcom/sec/android/glview/TwGLView;
    :cond_9
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 152
    .end local v0           #column:I
    .end local v2           #row:I
    :cond_a
    const/4 v3, 0x3

    if-ne p2, v3, :cond_0

    .line 153
    const/4 v0, 0x0

    .restart local v0       #column:I
    :goto_6
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->GRID_MENU_COLUMNS:I

    if-ge v0, v3, :cond_0

    .line 154
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->GRID_MENU_ROWS:I

    add-int/lit8 v2, v3, -0x1

    .restart local v2       #row:I
    :goto_7
    if-ltz v2, :cond_c

    .line 155
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->GRID_MENU_ROWS:I

    mul-int/2addr v3, v0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->GRID_MENU_ROWS:I

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v2

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v4}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 158
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->GRID_MENU_ROWS:I

    mul-int/2addr v4, v0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->GRID_MENU_ROWS:I

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v2

    add-int/2addr v4, v5

    invoke-interface {v3, v4, v8}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    .line 159
    .restart local v1       #item:Lcom/sec/android/glview/TwGLView;
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->ITEM_COLUMN_1_POS_X:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->ITEM_COLUMN_OFFSET:I

    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->ITEM_ROW_1_POS_Y:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->ITEM_ROW_OFFSET:I

    mul-int/2addr v5, v2

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 160
    invoke-virtual {v1, v9}, Lcom/sec/android/glview/TwGLView;->moveBaseDepthLayout(F)V

    .line 161
    invoke-virtual {v1, v10}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 162
    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->resetScale()V

    .line 163
    invoke-virtual {v1, v7, v7}, Lcom/sec/android/glview/TwGLView;->scale(FF)V

    .line 164
    invoke-virtual {v1, v6}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 165
    invoke-virtual {v1, v6}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    .line 166
    invoke-virtual {v1, v8}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 167
    if-nez p1, :cond_b

    .line 168
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 154
    :cond_b
    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    .line 153
    .end local v1           #item:Lcom/sec/android/glview/TwGLView;
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mItemList:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mItemList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 221
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 222
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 223
    return-void
.end method

.method protected onHide()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 192
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 193
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 200
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onPause()V

    .line 201
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideBaseMenu()V

    .line 211
    :cond_1
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onResume()V

    .line 212
    return-void
.end method

.method protected onShow()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideBaseMenu()V

    .line 183
    :cond_1
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 184
    return-void
.end method

.method protected setOrientationListener()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$1;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 241
    return-void
.end method
