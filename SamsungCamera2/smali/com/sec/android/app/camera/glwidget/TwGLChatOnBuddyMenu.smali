.class public Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLChatOnBuddyMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;
.implements Lcom/sec/android/glview/TwGLView$OnClickListener;
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu$1;,
        Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu$TwGLChatOnBuddyMenuAdapter;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final BUTTON_EDIT_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final BUTTON_EDIT_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final BUTTON_GAP:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final BUTTON_GROUP_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final BUTTON_GROUP_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final BUTTON_GROUP_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final BUTTON_HEIGHT:I = 0x0

.field private static final BUTTON_ID_EDIT:I = -0xb

.field private static final BUTTON_ID_OK:I = -0xa

.field private static final BUTTON_OK_POS_X:I

.field private static final BUTTON_OK_POS_Y:I

.field private static final BUTTON_WIDTH:I

.field private static final LIST_ITEM_HEIGHT:I

.field private static final LIST_ITEM_WIDTH:I

.field private static final LIST_MAX_HEIGHT:I

.field public static final MENU_LANDSCAPE_BOTTOM_PADDING:I

.field private static final MENU_MAX_OFFSET:I

.field private static final MENU_OFFSET_FROM_ANCHOR:I

.field public static final MENU_PORTRAIT_SIDE_PADDING:I

.field private static final MENU_POS_X:I

.field private static final MENU_POS_Y:I

.field public static final MENU_WIDTH:I

.field public static final TITLE_HEIGHT:I

.field private static final TITLE_LEFT_PADDING:I

.field private static final TITLE_TEXT_COLOR:I

.field private static final TITLE_TEXT_SIZE:F


# instance fields
.field public mBuddyUsr:[Ljava/lang/StringBuffer;

.field private mButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mChatOnShot:Lcom/sec/android/app/camera/ChatOnShot;

.field private mChatonBuddyAdapter:Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu$TwGLChatOnBuddyMenuAdapter;

.field private mEditButton:Lcom/sec/android/glview/TwGLButton;

.field private mHideAnimation:Landroid/view/animation/Animation;

.field private mItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;",
            ">;"
        }
    .end annotation
.end field

.field private mList:Lcom/sec/android/glview/TwGLList;

.field private mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

.field private mOKButton:Lcom/sec/android/glview/TwGLButton;

.field private mPosition:I

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private mTitle:Lcom/sec/android/glview/TwGLText;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xc8

    .line 45
    const v0, 0x7f0800f0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_POS_X:I

    .line 46
    const v0, 0x7f0800f1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_POS_Y:I

    .line 47
    const v0, 0x7f0800f8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_WIDTH:I

    .line 48
    const v0, 0x7f0800f2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_OFFSET_FROM_ANCHOR:I

    .line 49
    const v0, 0x7f0800f3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_MAX_OFFSET:I

    .line 51
    const v0, 0x7f080101

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->TITLE_HEIGHT:I

    .line 52
    const v0, 0x7f080102

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->TITLE_LEFT_PADDING:I

    .line 53
    const v0, 0x7f090028

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->TITLE_TEXT_SIZE:F

    .line 54
    const/16 v0, 0xff

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->TITLE_TEXT_COLOR:I

    .line 56
    const v0, 0x7f0801e5

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_GROUP_POS_Y:I

    .line 57
    const v0, 0x7f0801e6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_GROUP_WIDTH:I

    .line 58
    const v0, 0x7f0801e7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_GROUP_HEIGHT:I

    .line 60
    const v0, 0x7f0801ec

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_WIDTH:I

    .line 61
    const v0, 0x7f0801ed

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_HEIGHT:I

    .line 62
    const v0, 0x7f0801ea

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_GAP:I

    .line 64
    const v0, 0x7f0801e8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_OK_POS_X:I

    .line 65
    const v0, 0x7f0801e9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_OK_POS_Y:I

    .line 66
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_OK_POS_X:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_WIDTH:I

    add-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_GAP:I

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_EDIT_POS_X:I

    .line 67
    const v0, 0x7f0801eb

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_EDIT_POS_Y:I

    .line 69
    const v0, 0x7f0800fb

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->LIST_ITEM_WIDTH:I

    .line 70
    const v0, 0x7f0800fc

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->LIST_ITEM_HEIGHT:I

    .line 71
    const v0, 0x7f0801e4

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->LIST_MAX_HEIGHT:I

    .line 73
    const v0, 0x7f08010a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_PORTRAIT_SIDE_PADDING:I

    .line 74
    const v0, 0x7f08010b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_LANDSCAPE_BOTTOM_PADDING:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;II)V
    .locals 10
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "menuResourceDepot"
    .parameter "resourceData"
    .parameter "zOrder"
    .parameter "slideDirection"

    .prologue
    .line 99
    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p6

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 87
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mShowAnimation:Landroid/view/animation/Animation;

    .line 88
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mHideAnimation:Landroid/view/animation/Animation;

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mItemList:Ljava/util/ArrayList;

    .line 94
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/StringBuffer;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mBuddyUsr:[Ljava/lang/StringBuffer;

    .line 197
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mPosition:I

    .line 101
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getChatOnShot()Lcom/sec/android/app/camera/ChatOnShot;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mChatOnShot:Lcom/sec/android/app/camera/ChatOnShot;

    .line 104
    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_POS_Y:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->TITLE_HEIGHT:I

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->LIST_ITEM_HEIGHT:I

    add-int/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_GROUP_HEIGHT:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    .line 105
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, p2}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    .line 106
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 107
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 108
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 109
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    const v2, 0x7f0200eb

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setNinePatchBackground(I)Z

    .line 112
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->TITLE_LEFT_PADDING:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_WIDTH:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->TITLE_LEFT_PADDING:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->TITLE_HEIGHT:I

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0193

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->TITLE_TEXT_SIZE:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->TITLE_TEXT_COLOR:I

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mTitle:Lcom/sec/android/glview/TwGLText;

    .line 114
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mTitle:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 115
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 117
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu$TwGLChatOnBuddyMenuAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu$TwGLChatOnBuddyMenuAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu$1;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mChatonBuddyAdapter:Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu$TwGLChatOnBuddyMenuAdapter;

    .line 118
    new-instance v1, Lcom/sec/android/glview/TwGLList;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->TITLE_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->LIST_ITEM_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->LIST_ITEM_HEIGHT:I

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLList;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mList:Lcom/sec/android/glview/TwGLList;

    .line 119
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mList:Lcom/sec/android/glview/TwGLList;

    const v2, 0x7f0204e9

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLList;->setScrollBarResource(I)V

    .line 120
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mList:Lcom/sec/android/glview/TwGLList;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mChatonBuddyAdapter:Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu$TwGLChatOnBuddyMenuAdapter;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLList;->setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;)V

    .line 121
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mList:Lcom/sec/android/glview/TwGLList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setInternalFocus(Z)V

    .line 122
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 125
    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_GROUP_POS_Y:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_GROUP_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_GROUP_HEIGHT:I

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 126
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const v2, 0x7f0202f2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setNinePatchBackground(I)Z

    .line 128
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_OK_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_OK_POS_Y:I

    int-to-float v4, v4

    const v5, 0x7f0204d9

    const v6, 0x7f0204dd

    const/4 v7, 0x0

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_WIDTH:I

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_HEIGHT:I

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIIII)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mOKButton:Lcom/sec/android/glview/TwGLButton;

    .line 130
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mOKButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->TITLE_TEXT_SIZE:F

    const/16 v4, 0xf7

    const/16 v5, 0xf7

    const/16 v6, 0xf7

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;FIZ)V

    .line 131
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mOKButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v2, -0xa

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    .line 132
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mOKButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 133
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mOKButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 135
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_EDIT_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_EDIT_POS_Y:I

    int-to-float v4, v4

    const v5, 0x7f0204d9

    const v6, 0x7f0204dd

    const/4 v7, 0x0

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_WIDTH:I

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_HEIGHT:I

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIIII)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mEditButton:Lcom/sec/android/glview/TwGLButton;

    .line 137
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mEditButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0210

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->TITLE_TEXT_SIZE:F

    const/16 v4, 0xf7

    const/16 v5, 0xf7

    const/16 v6, 0xf7

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;FIZ)V

    .line 138
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mEditButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v2, -0xb

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    .line 139
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mEditButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 140
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mEditButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 142
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mOKButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 143
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mEditButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 144
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 146
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 148
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->refreshMenuSize()V

    .line 149
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->setLeftTop()V

    .line 151
    const/4 v1, 0x3

    move/from16 v0, p6

    if-ne v0, v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->getFadeAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mShowAnimation:Landroid/view/animation/Animation;

    .line 153
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->getFadeAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mHideAnimation:Landroid/view/animation/Animation;

    .line 159
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/MenuBase;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 160
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/MenuBase;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 162
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLView;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 163
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLView;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 164
    return-void

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    move/from16 v0, p7

    invoke-static {v1, v0, v2}, Lcom/sec/android/glview/TwGLUtil;->getSlideInAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mShowAnimation:Landroid/view/animation/Animation;

    .line 156
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    move/from16 v0, p7

    invoke-static {v1, v0, v2}, Lcom/sec/android/glview/TwGLUtil;->getSlideOutAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mHideAnimation:Landroid/view/animation/Animation;

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;)Lcom/sec/android/app/camera/ChatOnShot;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mChatOnShot:Lcom/sec/android/app/camera/ChatOnShot;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mPosition:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->LIST_ITEM_WIDTH:I

    return v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->LIST_ITEM_HEIGHT:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;)Lcom/sec/android/glview/TwGLList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mList:Lcom/sec/android/glview/TwGLList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mItemList:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->clear()V

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mList:Lcom/sec/android/glview/TwGLList;

    .line 194
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 195
    return-void
.end method

.method public getCheckPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->getChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mPosition:I

    .line 225
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 267
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 268
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 270
    :cond_0
    return v1
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)Z
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    .line 253
    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mList:Lcom/sec/android/glview/TwGLList;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->showScrollBar()V

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 262
    :cond_1
    return v2
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)Z
    .locals 1
    .parameter "animation"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideWaitingAnimation()V

    .line 247
    const/4 v0, 0x1

    .line 249
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 3
    .parameter "view"

    .prologue
    .line 280
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 295
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 282
    :pswitch_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 283
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->isChecked()Z

    move-result v1

    .line 284
    .local v1, selected:Z
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mChatOnShot:Lcom/sec/android/app/camera/ChatOnShot;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ChatOnShot;->getChatOnBuddyList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;->setSelect(Z)V

    .line 282
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 286
    .end local v1           #selected:Z
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_0

    .line 289
    .end local v0           #i:I
    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mChatOnShot:Lcom/sec/android/app/camera/ChatOnShot;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ChatOnShot;->pickChatOnBuddyList()V

    .line 290
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_0

    .line 280
    nop

    :pswitch_data_0
    .packed-switch -0xb
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onHide()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 241
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 242
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->refreshMenuPosition()V

    .line 300
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 276
    return-void
.end method

.method public onShow()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showWaitingAnimation()V

    .line 231
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->refreshMenuPosition()V

    .line 233
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 234
    return-void
.end method

.method public refreshMenuPosition()V
    .locals 9

    .prologue
    const/high16 v8, 0x4040

    const/4 v7, 0x0

    .line 303
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-nez v5, :cond_0

    .line 336
    :goto_0
    return-void

    .line 307
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_OFFSET_FROM_ANCHOR:I

    int-to-float v6, v6

    sub-float v3, v5, v6

    .line 308
    .local v3, move:F
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_POS_Y:I

    int-to-float v4, v5

    .line 309
    .local v4, top:F
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mChatOnShot:Lcom/sec/android/app/camera/ChatOnShot;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/ChatOnShot;->getChatOnBuddyListCount()I

    move-result v5

    int-to-float v2, v5

    .line 312
    .local v2, itemCount:F
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getOrientation()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 335
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v5, v3, v7}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto :goto_0

    .line 315
    :pswitch_0
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v1

    .line 316
    .local v1, height:F
    add-float v0, v4, v1

    .line 317
    .local v0, bottom:F
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_MAX_OFFSET:I

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-lez v5, :cond_2

    .line 318
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_MAX_OFFSET:I

    int-to-float v3, v5

    .line 321
    :cond_2
    cmpl-float v5, v2, v7

    if-lez v5, :cond_3

    cmpg-float v5, v2, v8

    if-gez v5, :cond_3

    .line 322
    const/high16 v5, 0x4000

    div-float v5, v0, v5

    sub-float/2addr v3, v5

    goto :goto_1

    .line 323
    :cond_3
    cmpl-float v5, v2, v8

    if-ltz v5, :cond_1

    .line 324
    sub-float/2addr v3, v1

    goto :goto_1

    .line 329
    .end local v0           #bottom:F
    .end local v1           #height:F
    :pswitch_1
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_MAX_OFFSET:I

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-lez v5, :cond_1

    .line 330
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_MAX_OFFSET:I

    int-to-float v3, v5

    goto :goto_1

    .line 312
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public refreshMenuSize()V
    .locals 6

    .prologue
    const/4 v2, 0x4

    const/4 v5, 0x0

    .line 173
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mChatOnShot:Lcom/sec/android/app/camera/ChatOnShot;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ChatOnShot;->getChatOnBuddyListCount()I

    move-result v0

    .line 175
    .local v0, itemCount:I
    if-nez v0, :cond_0

    .line 176
    const/4 v0, 0x1

    .line 179
    :cond_0
    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    if-ge v0, v2, :cond_2

    .line 180
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->TITLE_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->LIST_ITEM_HEIGHT:I

    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_GROUP_HEIGHT:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 181
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mList:Lcom/sec/android/glview/TwGLList;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->LIST_ITEM_HEIGHT:I

    mul-int/2addr v3, v0

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLList;->setSize(FF)V

    .line 182
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->LIST_ITEM_HEIGHT:I

    mul-int/2addr v2, v0

    int-to-float v2, v2

    invoke-virtual {v1, v5, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 188
    :cond_1
    :goto_0
    return-void

    .line 183
    :cond_2
    if-lt v0, v2, :cond_1

    .line 184
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->TITLE_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->LIST_MAX_HEIGHT:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_GROUP_HEIGHT:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 185
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mList:Lcom/sec/android/glview/TwGLList;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->LIST_MAX_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLList;->setSize(FF)V

    .line 186
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->LIST_MAX_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v1, v5, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto :goto_0
.end method

.method public setLeftTop()V
    .locals 5

    .prologue
    .line 167
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_POS_X:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    const/high16 v4, 0x4000

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_PORTRAIT_SIDE_PADDING:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_POS_X:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_POS_Y:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_LANDSCAPE_BOTTOM_PADDING:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_POS_X:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_POS_Y:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_PORTRAIT_SIDE_PADDING:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 170
    return-void
.end method

.method public updateBuddyList()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 339
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mChatonBuddyAdapter:Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu$TwGLChatOnBuddyMenuAdapter;

    if-nez v0, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mList:Lcom/sec/android/glview/TwGLList;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mChatonBuddyAdapter:Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu$TwGLChatOnBuddyMenuAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu$TwGLChatOnBuddyMenuAdapter;->reset()V

    .line 346
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mChatonBuddyAdapter:Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu$TwGLChatOnBuddyMenuAdapter;

    .line 347
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu$TwGLChatOnBuddyMenuAdapter;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu$TwGLChatOnBuddyMenuAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mChatonBuddyAdapter:Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu$TwGLChatOnBuddyMenuAdapter;

    .line 349
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->invalidate()V

    .line 350
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mList:Lcom/sec/android/glview/TwGLList;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mChatonBuddyAdapter:Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu$TwGLChatOnBuddyMenuAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLList;->setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;)V

    .line 351
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->refreshMenuSize()V

    goto :goto_0
.end method
