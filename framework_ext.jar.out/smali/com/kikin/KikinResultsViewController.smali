.class public Lcom/kikin/KikinResultsViewController;
.super Ljava/lang/Object;
.source "KikinResultsViewController.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Lcom/android/internal/view/menu/ActionMenuPresenter$OverFlowMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kikin/KikinResultsViewController$KikinResultsViewControllerVisibility;,
        Lcom/kikin/KikinResultsViewController$IncomingHandler;
    }
.end annotation


# static fields
.field public static final KIKIN_RESULTS_CONTAINER_HEIGHT:I = 0x104

.field public static final KIKIN_RESULTS_CONTAINER_PADDING:I = 0x1e

.field public static final KIKIN_RESULTS_CONTAINER_SHADOW_HEIGHT:I = 0x6

.field public static final MSG_ACTIVITY_RESTARTED:I = 0xb

.field public static final MSG_BRING_KIKIN_BAR_TO_FRONT:I = 0xc

.field public static final MSG_DO_SEARCH:I = 0x7

.field public static final MSG_GET_VISIBILITY:I = 0xe

.field public static final MSG_HIDE_ACTION_BAR:I = 0x1

.field public static final MSG_HIDE_KIKIN_BAR:I = 0x6

.field public static final MSG_KIKIN_BAR_HEIGHT_CHANGED:I = 0xd

.field public static final MSG_KIKIN_BAR_IS_HIDING:I = 0xa

.field public static final MSG_ON_ACTION_BAR_HEIGHT_CHANGE:I = 0x10

.field public static final MSG_ON_KIKIN_RESULTS_VIEW_ANIMATION_FINISHED:I = 0x11

.field public static final MSG_ON_QUERY_CHANGED:I = 0x3

.field public static final MSG_ON_QUERY_REWRITTEN:I = 0x2

.field public static final MSG_ON_VISIBILITY_RECEIVED:I = 0xf

.field public static final MSG_SAVE_KIKIN_BAR_STATE:I = 0x8

.field public static final MSG_SET_CHILD_MESSENGER:I = 0x4

.field public static final MSG_SET_TUTORIAL_MESSENGER:I = 0x9

.field public static final MSG_SHOW_KIKIN_BAR:I = 0x5

.field public static final SELECTION_TOP_PADDING:I = 0x14

.field private static final TAG:Ljava/lang/String; = "KikinResultsViewController"


# instance fields
.field private mActionBarContainer:Landroid/view/View;

.field private mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

.field private mActionBarContextViewTheme:Lcom/kikin/theme/ThemeDetector$KikinTheme;

.field private mActionBarHeight:I

.field private mActionMode:Landroid/view/ActionMode;

.field private mIsOverflowMenuItemClicked:Z

.field private mIsVisible:I

.field private mKikinPaddingViewHeight:I

.field private mKikinResultsContainerState:Landroid/os/Bundle;

.field private mKikinResultsViewControllerVisibility:Lcom/kikin/KikinResultsViewController$KikinResultsViewControllerVisibility;

.field private mKikinSearchActivityMessenger:Landroid/os/Messenger;

.field final mMessenger:Landroid/os/Messenger;

.field private mParentContentView:Landroid/widget/FrameLayout;

.field private mRequestSettings:Landroid/os/Bundle;

.field private mResultsViewCallbackHandler:Lcom/kikin/IKikinResultsViewCallbackHandler;

.field private mSelection:Landroid/os/Bundle;

.field private mSelectionCallbackHandler:Lcom/kikin/IKikinSelectionCallbackHandler;

.field private mSelectionPadding:I

.field private mSelectionTopPosition:I

.field private mShouldStoreResultsViewState:Z

.field private mSplitActionBarContainer:Landroid/view/View;

.field private mThemeDetector:Lcom/kikin/theme/ThemeDetector;

.field private mTutorialActivityMessenger:Landroid/os/Messenger;

.field private mView:Landroid/view/View;

.field private orientationListener:Landroid/view/OrientationEventListener;


# direct methods
.method public constructor <init>(Lcom/kikin/IKikinSelectionCallbackHandler;)V
    .locals 8
    .parameter "handler"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object v6, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    .line 124
    iput-object v6, p0, Lcom/kikin/KikinResultsViewController;->mSelectionCallbackHandler:Lcom/kikin/IKikinSelectionCallbackHandler;

    .line 127
    iput-object v6, p0, Lcom/kikin/KikinResultsViewController;->mResultsViewCallbackHandler:Lcom/kikin/IKikinResultsViewCallbackHandler;

    .line 130
    iput-object v6, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContainer:Landroid/view/View;

    .line 133
    iput-object v6, p0, Lcom/kikin/KikinResultsViewController;->mSplitActionBarContainer:Landroid/view/View;

    .line 136
    iput-object v6, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    .line 139
    iput-object v6, p0, Lcom/kikin/KikinResultsViewController;->mActionMode:Landroid/view/ActionMode;

    .line 142
    sget-object v4, Lcom/kikin/theme/ThemeDetector$KikinTheme;->DARK:Lcom/kikin/theme/ThemeDetector$KikinTheme;

    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextViewTheme:Lcom/kikin/theme/ThemeDetector$KikinTheme;

    .line 148
    iput-object v6, p0, Lcom/kikin/KikinResultsViewController;->mParentContentView:Landroid/widget/FrameLayout;

    .line 151
    iput v7, p0, Lcom/kikin/KikinResultsViewController;->mKikinPaddingViewHeight:I

    .line 154
    iput-object v6, p0, Lcom/kikin/KikinResultsViewController;->mKikinSearchActivityMessenger:Landroid/os/Messenger;

    .line 157
    new-instance v4, Landroid/os/Messenger;

    new-instance v5, Lcom/kikin/KikinResultsViewController$IncomingHandler;

    invoke-direct {v5, p0}, Lcom/kikin/KikinResultsViewController$IncomingHandler;-><init>(Lcom/kikin/KikinResultsViewController;)V

    invoke-direct {v4, v5}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mMessenger:Landroid/os/Messenger;

    .line 160
    iput-object v6, p0, Lcom/kikin/KikinResultsViewController;->mTutorialActivityMessenger:Landroid/os/Messenger;

    .line 163
    iput-object v6, p0, Lcom/kikin/KikinResultsViewController;->mRequestSettings:Landroid/os/Bundle;

    .line 166
    iput-object v6, p0, Lcom/kikin/KikinResultsViewController;->mSelection:Landroid/os/Bundle;

    .line 169
    iput v7, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:I

    .line 172
    iput-object v6, p0, Lcom/kikin/KikinResultsViewController;->mKikinResultsContainerState:Landroid/os/Bundle;

    .line 175
    iput-boolean v7, p0, Lcom/kikin/KikinResultsViewController;->mShouldStoreResultsViewState:Z

    .line 178
    iput v7, p0, Lcom/kikin/KikinResultsViewController;->mSelectionTopPosition:I

    .line 181
    iput v7, p0, Lcom/kikin/KikinResultsViewController;->mActionBarHeight:I

    .line 184
    iput v7, p0, Lcom/kikin/KikinResultsViewController;->mSelectionPadding:I

    .line 187
    new-instance v4, Lcom/kikin/theme/DefaultThemeDetector;

    invoke-direct {v4}, Lcom/kikin/theme/DefaultThemeDetector;-><init>()V

    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mThemeDetector:Lcom/kikin/theme/ThemeDetector;

    .line 647
    iput-boolean v7, p0, Lcom/kikin/KikinResultsViewController;->mIsOverflowMenuItemClicked:Z

    .line 204
    iput-object p1, p0, Lcom/kikin/KikinResultsViewController;->mSelectionCallbackHandler:Lcom/kikin/IKikinSelectionCallbackHandler;

    .line 206
    invoke-interface {p1}, Lcom/kikin/IKikinSelectionCallbackHandler;->getHandlerView()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    .line 209
    new-instance v4, Lcom/kikin/KikinResultsViewController$1;

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/kikin/KikinResultsViewController$1;-><init>(Lcom/kikin/KikinResultsViewController;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->orientationListener:Landroid/view/OrientationEventListener;

    .line 214
    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->orientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v4}, Landroid/view/OrientationEventListener;->enable()V

    .line 217
    new-instance v2, Lcom/kikin/requests/RequestSettings;

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/kikin/requests/RequestSettings;-><init>(Landroid/content/Context;)V

    .line 218
    .local v2, requestSettings:Lcom/kikin/requests/RequestSettings;
    invoke-virtual {v2}, Lcom/kikin/requests/RequestSettings;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mRequestSettings:Landroid/os/Bundle;

    .line 221
    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    .line 222
    .local v3, rootView:Landroid/view/View;
    const v4, 0x1020409

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContainer:Landroid/view/View;

    .line 225
    const v4, 0x102040c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mSplitActionBarContainer:Landroid/view/View;

    .line 228
    const v4, 0x1020002

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mParentContentView:Landroid/widget/FrameLayout;

    .line 231
    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContainer:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 233
    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContainer:Landroid/view/View;

    const v5, 0x102040b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/ActionBarContextView;

    iput-object v4, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    .line 238
    :cond_0
    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->findActivityCABTheme()V

    .line 247
    const/4 v1, 0x0

    .line 248
    .local v1, application:Landroid/app/Application;
    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getContext()Landroid/content/Context;

    move-result-object v4

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_3

    .line 249
    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 250
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 255
    .end local v0           #activity:Landroid/app/Activity;
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 256
    invoke-virtual {v1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 258
    :cond_2
    return-void

    .line 251
    :cond_3
    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getContext()Landroid/content/Context;

    move-result-object v4

    instance-of v4, v4, Landroid/app/Application;

    if-eqz v4, :cond_1

    .line 252
    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    .end local v1           #application:Landroid/app/Application;
    check-cast v1, Landroid/app/Application;

    .restart local v1       #application:Landroid/app/Application;
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/kikin/KikinResultsViewController;)Landroid/view/ActionMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$100(Lcom/kikin/KikinResultsViewController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/kikin/KikinResultsViewController;->onQueryWasRewritten(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/kikin/KikinResultsViewController;)Lcom/kikin/KikinResultsViewController$KikinResultsViewControllerVisibility;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mKikinResultsViewControllerVisibility:Lcom/kikin/KikinResultsViewController$KikinResultsViewControllerVisibility;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/kikin/KikinResultsViewController;)Lcom/kikin/IKikinResultsViewCallbackHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mResultsViewCallbackHandler:Lcom/kikin/IKikinResultsViewCallbackHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/kikin/KikinResultsViewController;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/kikin/KikinResultsViewController;->onQueryChanges(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/kikin/KikinResultsViewController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:I

    return v0
.end method

.method static synthetic access$400(Lcom/kikin/KikinResultsViewController;)Landroid/os/Messenger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mKikinSearchActivityMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$402(Lcom/kikin/KikinResultsViewController;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/kikin/KikinResultsViewController;->mKikinSearchActivityMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$500(Lcom/kikin/KikinResultsViewController;)Landroid/os/Messenger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mTutorialActivityMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$502(Lcom/kikin/KikinResultsViewController;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/kikin/KikinResultsViewController;->mTutorialActivityMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$600(Lcom/kikin/KikinResultsViewController;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$702(Lcom/kikin/KikinResultsViewController;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/kikin/KikinResultsViewController;->mKikinResultsContainerState:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$800(Lcom/kikin/KikinResultsViewController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/kikin/KikinResultsViewController;->mShouldStoreResultsViewState:Z

    return v0
.end method

.method static synthetic access$900(Lcom/kikin/KikinResultsViewController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->hideKikinPaddingView()V

    return-void
.end method

.method public static dpToPixels(FLandroid/content/Context;)I
    .locals 2
    .parameter "dip"
    .parameter "context"

    .prologue
    .line 112
    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private findActivityCABTheme()V
    .locals 2

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mThemeDetector:Lcom/kikin/theme/ThemeDetector;

    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/kikin/theme/ThemeDetector;->getActionBarTheme(Landroid/view/View;)Lcom/kikin/theme/ThemeDetector$KikinTheme;

    move-result-object v0

    iput-object v0, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextViewTheme:Lcom/kikin/theme/ThemeDetector$KikinTheme;

    .line 1044
    :cond_0
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 261
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 262
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 263
    .local v0, rootView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 269
    .end local v0           #rootView:Landroid/view/View;
    :goto_0
    return-object v1

    .line 266
    .restart local v0       #rootView:Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    .line 269
    .end local v0           #rootView:Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getIsFullscreen()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 973
    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 974
    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 975
    .local v0, context:Landroid/content/Context;
    instance-of v4, v0, Landroid/app/Activity;

    if-eqz v4, :cond_0

    .line 977
    check-cast v0, Landroid/app/Activity;

    .end local v0           #context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 978
    .local v2, window:Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 979
    .local v1, params:Landroid/view/WindowManager$LayoutParams;
    if-eqz v1, :cond_0

    .line 980
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 984
    .end local v1           #params:Landroid/view/WindowManager$LayoutParams;
    .end local v2           #window:Landroid/view/Window;
    :cond_0
    return v3
.end method

.method private getMaxKikinResContainerRect()Landroid/graphics/Rect;
    .locals 7

    .prologue
    .line 990
    invoke-virtual {p0}, Lcom/kikin/KikinResultsViewController;->getScreenSize()Landroid/graphics/Rect;

    move-result-object v1

    .line 992
    .local v1, rect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/kikin/KikinResultsViewController;->getActionBarHeight()I

    move-result v0

    .line 993
    .local v0, actionBarHeight:I
    invoke-virtual {p0}, Lcom/kikin/KikinResultsViewController;->getActionBarTop()I

    move-result v3

    .line 994
    .local v3, statusBarHeight:I
    invoke-virtual {p0}, Lcom/kikin/KikinResultsViewController;->getSplitActionBarHeight()I

    move-result v2

    .line 996
    .local v2, splitActionBarHeight:I
    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v2

    sub-int/2addr v6, v3

    invoke-virtual {v1, v4, v0, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 998
    return-object v1
.end method

.method private getScalingFactor()F
    .locals 2

    .prologue
    .line 1047
    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1048
    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    move-result v0

    .line 1052
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method private hideKikinPaddingView()V
    .locals 2

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mParentContentView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentOffsetY(I)V

    .line 1033
    return-void
.end method

.method private onQueryChanges(Ljava/lang/String;)V
    .locals 1
    .parameter "query"

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mSelectionCallbackHandler:Lcom/kikin/IKikinSelectionCallbackHandler;

    invoke-interface {v0, p1}, Lcom/kikin/IKikinSelectionCallbackHandler;->updateSelectionInCAB(Ljava/lang/String;)V

    .line 1025
    return-void
.end method

.method private onQueryWasRewritten(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "oldQuery"
    .parameter "newQuery"

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mSelectionCallbackHandler:Lcom/kikin/IKikinSelectionCallbackHandler;

    invoke-interface {v0, p1, p2}, Lcom/kikin/IKikinSelectionCallbackHandler;->updateSelection(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    return-void
.end method

.method private setResultsConatinerVisibility(Z)V
    .locals 1
    .parameter "isVisible"

    .prologue
    .line 1056
    if-eqz p1, :cond_1

    .line 1057
    iget v0, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:I

    .line 1064
    :cond_0
    :goto_0
    return-void

    .line 1059
    :cond_1
    iget v0, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:I

    .line 1060
    iget v0, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:I

    if-gez v0, :cond_0

    .line 1061
    const/4 v0, 0x0

    iput v0, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:I

    goto :goto_0
.end method

.method private show(Landroid/view/ActionMode;ZZ)Z
    .locals 11
    .parameter "mode"
    .parameter "restore"
    .parameter "shouldForceToCreate"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 884
    iget v6, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:I

    if-lez v6, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/kikin/KikinResultsViewController;->mSelection:Landroid/os/Bundle;

    if-eqz v6, :cond_1

    if-nez p1, :cond_2

    :cond_1
    move v6, v8

    .line 969
    :goto_0
    return v6

    .line 895
    :cond_2
    iget-object v6, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    if-nez v6, :cond_3

    .line 896
    iget-object v6, p0, Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    .line 897
    .local v5, rootView:Landroid/view/View;
    const v6, 0x1020405

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/ActionBarContextView;

    iput-object v6, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    .line 902
    .end local v5           #rootView:Landroid/view/View;
    :cond_3
    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->findActivityCABTheme()V

    .line 906
    iget v6, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:I

    if-lez v6, :cond_4

    .line 907
    invoke-virtual {p0, v7}, Lcom/kikin/KikinResultsViewController;->hide(Z)V

    .line 912
    :cond_4
    invoke-direct {p0, v7}, Lcom/kikin/KikinResultsViewController;->setResultsConatinerVisibility(Z)V

    .line 915
    iput-object p1, p0, Lcom/kikin/KikinResultsViewController;->mActionMode:Landroid/view/ActionMode;

    .line 922
    :try_start_0
    iget-object v6, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v6, :cond_5

    .line 923
    iget-object v6, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v6, p0}, Lcom/android/internal/widget/ActionBarContextView;->setOverFlowMenuListener(Lcom/android/internal/view/menu/ActionMenuPresenter$OverFlowMenuListener;)V

    .line 927
    :cond_5
    iget-object v6, p0, Lcom/kikin/KikinResultsViewController;->mRequestSettings:Landroid/os/Bundle;

    const-string v9, "fullscreen"

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getIsFullscreen()Z

    move-result v10

    invoke-virtual {v6, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 929
    iget-object v6, p0, Lcom/kikin/KikinResultsViewController;->mResultsViewCallbackHandler:Lcom/kikin/IKikinResultsViewCallbackHandler;

    if-eqz v6, :cond_6

    .line 930
    iget-object v6, p0, Lcom/kikin/KikinResultsViewController;->mResultsViewCallbackHandler:Lcom/kikin/IKikinResultsViewCallbackHandler;

    invoke-interface {v6}, Lcom/kikin/IKikinResultsViewCallbackHandler;->onKikinResultsViewContainerAnimationStarted()V

    .line 933
    :cond_6
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 934
    .local v4, intent:Landroid/content/Intent;
    const-string v6, "com.kikin"

    const-string v9, "com.kikin.KikinSearchActivity"

    invoke-virtual {v4, v6, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 935
    const/high16 v6, 0x81

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 936
    const-string v6, "com.kikin.maxKikinResultsContainerRect"

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getMaxKikinResContainerRect()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v4, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 937
    const-string v6, "com.kikin.messenger"

    iget-object v9, p0, Lcom/kikin/KikinResultsViewController;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v4, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 938
    const-string v6, "com.kikin.selection"

    iget-object v9, p0, Lcom/kikin/KikinResultsViewController;->mSelection:Landroid/os/Bundle;

    invoke-virtual {v4, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 939
    const-string v6, "com.kikin.requestSettings"

    iget-object v9, p0, Lcom/kikin/KikinResultsViewController;->mRequestSettings:Landroid/os/Bundle;

    invoke-virtual {v4, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 940
    const-string v6, "com.kikin.barState"

    iget-object v9, p0, Lcom/kikin/KikinResultsViewController;->mKikinResultsContainerState:Landroid/os/Bundle;

    invoke-virtual {v4, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 941
    const-string v6, "com.kikin.theme"

    iget-object v9, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextViewTheme:Lcom/kikin/theme/ThemeDetector$KikinTheme;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    invoke-virtual {v4, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 946
    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 947
    .local v3, context:Landroid/content/Context;
    instance-of v6, v3, Landroid/app/Activity;

    if-eqz v6, :cond_9

    .line 948
    move-object v0, v3

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    .line 949
    .local v1, activity:Landroid/app/Activity;
    invoke-virtual {v1, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 957
    .end local v1           #activity:Landroid/app/Activity;
    :cond_7
    :goto_1
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/kikin/KikinResultsViewController;->mShouldStoreResultsViewState:Z

    .line 960
    if-eqz p2, :cond_8

    .line 961
    iget v6, p0, Lcom/kikin/KikinResultsViewController;->mKikinPaddingViewHeight:I

    int-to-float v6, v6

    invoke-virtual {p0, v6}, Lcom/kikin/KikinResultsViewController;->makeSelectionVisible(F)V

    :cond_8
    move v6, v7

    .line 964
    goto/16 :goto_0

    .line 950
    :cond_9
    instance-of v6, v3, Landroid/app/Application;

    if-eqz v6, :cond_7

    .line 951
    const/high16 v6, 0x1000

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 952
    move-object v0, v3

    check-cast v0, Landroid/app/Application;

    move-object v2, v0

    .line 953
    .local v2, application:Landroid/app/Application;
    invoke-virtual {v2, v4}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 966
    .end local v2           #application:Landroid/app/Application;
    .end local v3           #context:Landroid/content/Context;
    .end local v4           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v6

    .line 968
    invoke-direct {p0, v8}, Lcom/kikin/KikinResultsViewController;->setResultsConatinerVisibility(Z)V

    move v6, v8

    .line 969
    goto/16 :goto_0
.end method


# virtual methods
.method public bringKikinBarToFront()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 620
    iget v3, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:I

    if-lez v3, :cond_2

    move v0, v1

    .line 623
    .local v0, shouldRestoreResults:Z
    :goto_0
    iget-object v3, p0, Lcom/kikin/KikinResultsViewController;->mKikinSearchActivityMessenger:Landroid/os/Messenger;

    if-eqz v3, :cond_0

    .line 624
    invoke-virtual {p0, v2}, Lcom/kikin/KikinResultsViewController;->hide(Z)V

    .line 628
    :cond_0
    if-eqz v0, :cond_1

    .line 629
    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mActionMode:Landroid/view/ActionMode;

    invoke-direct {p0, v2, v1, v1}, Lcom/kikin/KikinResultsViewController;->show(Landroid/view/ActionMode;ZZ)Z

    .line 631
    :cond_1
    return-void

    .end local v0           #shouldRestoreResults:Z
    :cond_2
    move v0, v2

    .line 620
    goto :goto_0
.end method

.method public doKikinSearch(Lcom/kikin/selection/Selection;)V
    .locals 4
    .parameter "selection"

    .prologue
    const/4 v2, 0x0

    .line 413
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/kikin/selection/Selection;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/kikin/KikinResultsViewController;->mSelection:Landroid/os/Bundle;

    .line 420
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mKikinSearchActivityMessenger:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    .line 425
    const/4 v1, 0x0

    const/4 v3, 0x7

    :try_start_0
    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 426
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mSelection:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 427
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mKikinSearchActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    :goto_1
    iget-boolean v1, p0, Lcom/kikin/KikinResultsViewController;->mShouldStoreResultsViewState:Z

    if-nez v1, :cond_1

    .line 437
    iput-object v2, p0, Lcom/kikin/KikinResultsViewController;->mKikinResultsContainerState:Landroid/os/Bundle;

    .line 439
    :cond_1
    return-void

    :cond_2
    move-object v1, v2

    .line 413
    goto :goto_0

    .line 428
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public enableDoneInActionBarContextView(Landroid/view/View;Z)Z
    .locals 7
    .parameter "view"
    .parameter "enabled"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 776
    if-nez p1, :cond_1

    .line 810
    :cond_0
    :goto_0
    return v4

    .line 782
    :cond_1
    const/4 v1, 0x0

    .line 785
    .local v1, actionBarContextView:Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    .line 788
    .local v3, rootView:Landroid/view/View;
    const v6, 0x1020409

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 793
    .local v0, actionBarContainer:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 795
    const v6, 0x102040b

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 802
    :goto_1
    if-eqz v1, :cond_0

    .line 803
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1           #actionBarContextView:Landroid/view/View;
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 804
    .local v2, doneView:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 805
    invoke-virtual {v2, p2}, Landroid/view/View;->setEnabled(Z)V

    move v4, v5

    .line 806
    goto :goto_0

    .line 797
    .end local v2           #doneView:Landroid/view/View;
    .restart local v1       #actionBarContextView:Landroid/view/View;
    :cond_2
    const v6, 0x1020405

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_1
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->setOverFlowMenuListener(Lcom/android/internal/view/menu/ActionMenuPresenter$OverFlowMenuListener;)V

    .line 300
    :cond_0
    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 301
    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 306
    return-void

    .line 304
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getActionBarContextView()Lcom/android/internal/widget/ActionBarContextView;
    .locals 1

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    return-object v0
.end method

.method public getActionBarHeight()I
    .locals 3

    .prologue
    .line 451
    const/high16 v1, 0x4260

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kikin/KikinResultsViewController;->dpToPixels(FLandroid/content/Context;)I

    move-result v0

    .line 455
    .local v0, actionBarHeight:I
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContainer:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 456
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 462
    :cond_0
    :goto_0
    int-to-float v1, v0

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getScalingFactor()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 464
    return v0

    .line 457
    :cond_1
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v1, :cond_0

    .line 458
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v1}, Lcom/android/internal/widget/AbsActionBarView;->getContentHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getActionBarTop()I
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 477
    const/high16 v4, 0x41c8

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/kikin/KikinResultsViewController;->dpToPixels(FLandroid/content/Context;)I

    move-result v0

    .line 479
    .local v0, actionBarTop:I
    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getContext()Landroid/content/Context;

    move-result-object v4

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_1

    .line 480
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 481
    .local v2, rect:Landroid/graphics/Rect;
    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 482
    .local v3, window:Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 483
    iget v0, v2, Landroid/graphics/Rect;->top:I

    .line 498
    .end local v2           #rect:Landroid/graphics/Rect;
    .end local v3           #window:Landroid/view/Window;
    :cond_0
    :goto_0
    int-to-float v4, v0

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getScalingFactor()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v0, v4

    .line 500
    return v0

    .line 487
    :cond_1
    const/4 v4, 0x2

    new-array v1, v4, [I

    .line 488
    .local v1, location:[I
    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContainer:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 489
    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContainer:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 490
    aget v0, v1, v6

    goto :goto_0

    .line 491
    :cond_2
    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v4, :cond_0

    .line 492
    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v4, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 493
    aget v0, v1, v6

    goto :goto_0
.end method

.method public getActionMode()Landroid/view/ActionMode;
    .locals 1

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method public getKikinSearchActivityMessenger()Landroid/os/Messenger;
    .locals 1

    .prologue
    .line 1244
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mKikinSearchActivityMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method public getScreenSize()Landroid/graphics/Rect;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 532
    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 533
    .local v3, wm:Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 535
    .local v0, display:Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 536
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 538
    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getScalingFactor()F

    move-result v2

    .line 540
    .local v2, scalingFactor:F
    new-instance v4, Landroid/graphics/Rect;

    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v6, v6

    mul-float/2addr v6, v2

    float-to-int v6, v6

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method

.method public getSplitActionBarHeight()I
    .locals 3

    .prologue
    .line 511
    const/4 v0, 0x0

    .line 515
    .local v0, splitActionBarHeight:I
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mSplitActionBarContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 516
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mSplitActionBarContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 520
    :cond_0
    int-to-float v1, v0

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getScalingFactor()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 522
    return v0
.end method

.method public hide(Z)V
    .locals 7
    .parameter "isFinished"

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 344
    invoke-direct {p0, v3}, Lcom/kikin/KikinResultsViewController;->setResultsConatinerVisibility(Z)V

    .line 353
    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mKikinSearchActivityMessenger:Landroid/os/Messenger;

    if-eqz v4, :cond_0

    .line 357
    if-nez p1, :cond_2

    move v4, v2

    :goto_0
    :try_start_0
    iput-boolean v4, p0, Lcom/kikin/KikinResultsViewController;->mShouldStoreResultsViewState:Z

    .line 358
    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 359
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 360
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "com.kikin.shouldRestore"

    if-nez p1, :cond_3

    :goto_1
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 361
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 362
    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mKikinSearchActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 363
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/kikin/KikinResultsViewController;->mKikinSearchActivityMessenger:Landroid/os/Messenger;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    :goto_2
    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->hideKikinPaddingView()V

    .line 373
    if-eqz p1, :cond_1

    .line 374
    iput-object v6, p0, Lcom/kikin/KikinResultsViewController;->mActionMode:Landroid/view/ActionMode;

    .line 375
    iput v3, p0, Lcom/kikin/KikinResultsViewController;->mKikinPaddingViewHeight:I

    .line 377
    :cond_1
    return-void

    :cond_2
    move v4, v3

    .line 357
    goto :goto_0

    .restart local v0       #bundle:Landroid/os/Bundle;
    .restart local v1       #msg:Landroid/os/Message;
    :cond_3
    move v2, v3

    .line 360
    goto :goto_1

    .line 364
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #msg:Landroid/os/Message;
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 400
    iget v0, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeSelectionVisible(F)V
    .locals 4
    .parameter "maxYPositionOfKikinBar"

    .prologue
    const/4 v2, 0x0

    .line 566
    iget v1, p0, Lcom/kikin/KikinResultsViewController;->mIsVisible:I

    if-gtz v1, :cond_1

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 590
    :cond_1
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mParentContentView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 593
    iget v1, p0, Lcom/kikin/KikinResultsViewController;->mSelectionTopPosition:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_2

    .line 594
    iget v1, p0, Lcom/kikin/KikinResultsViewController;->mSelectionTopPosition:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget v2, p0, Lcom/kikin/KikinResultsViewController;->mSelectionPadding:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 598
    .local v0, paddingViewHeight:I
    iget v1, p0, Lcom/kikin/KikinResultsViewController;->mKikinPaddingViewHeight:I

    if-eq v1, v0, :cond_0

    .line 599
    iput v0, p0, Lcom/kikin/KikinResultsViewController;->mKikinPaddingViewHeight:I

    .line 600
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mParentContentView:Landroid/widget/FrameLayout;

    iget v2, p0, Lcom/kikin/KikinResultsViewController;->mKikinPaddingViewHeight:I

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getScalingFactor()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setContentOffsetY(I)V

    goto :goto_0

    .line 602
    .end local v0           #paddingViewHeight:I
    :cond_2
    iget v1, p0, Lcom/kikin/KikinResultsViewController;->mKikinPaddingViewHeight:I

    if-eqz v1, :cond_0

    .line 603
    iput v2, p0, Lcom/kikin/KikinResultsViewController;->mKikinPaddingViewHeight:I

    .line 604
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mParentContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setContentOffsetY(I)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .parameter "activity"
    .parameter "savedInstanceState"

    .prologue
    .line 714
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 752
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 740
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 744
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .parameter "activity"
    .parameter "outState"

    .prologue
    .line 756
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 5
    .parameter "activity"

    .prologue
    .line 721
    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getContext()Landroid/content/Context;

    move-result-object v2

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mSelectionCallbackHandler:Lcom/kikin/IKikinSelectionCallbackHandler;

    invoke-interface {v2}, Lcom/kikin/IKikinSelectionCallbackHandler;->isSelectingText()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 723
    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mKikinSearchActivityMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_1

    .line 727
    const/4 v2, 0x0

    const/16 v3, 0xb

    :try_start_0
    iget-object v4, p0, Lcom/kikin/KikinResultsViewController;->mMessenger:Landroid/os/Messenger;

    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 728
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/kikin/KikinResultsViewController;->mKikinSearchActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 736
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 729
    :catch_0
    move-exception v0

    .line 730
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/kikin/KikinResultsViewController;->bringKikinBarToFront()V

    goto :goto_0

    .line 733
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    invoke-virtual {p0}, Lcom/kikin/KikinResultsViewController;->bringKikinBarToFront()V

    goto :goto_0
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 748
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 5
    .parameter "orientation"

    .prologue
    .line 278
    :try_start_0
    iget-object v3, p0, Lcom/kikin/KikinResultsViewController;->mKikinSearchActivityMessenger:Landroid/os/Messenger;

    if-eqz v3, :cond_0

    .line 280
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 281
    .local v0, data:Landroid/os/Bundle;
    const-string v3, "rect"

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getMaxKikinResContainerRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 284
    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 285
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 286
    iget-object v3, p0, Lcom/kikin/KikinResultsViewController;->mKikinSearchActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .end local v0           #data:Landroid/os/Bundle;
    .end local v2           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 288
    :catch_0
    move-exception v1

    .line 289
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "KikinResultsViewController"

    const-string v4, "failed to transmit the orientation change to the bar"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onOverFlowMenuClosed()V
    .locals 2

    .prologue
    .line 680
    iget-boolean v0, p0, Lcom/kikin/KikinResultsViewController;->mIsOverflowMenuItemClicked:Z

    if-nez v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mActionMode:Landroid/view/ActionMode;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/kikin/KikinResultsViewController;->show(Landroid/view/ActionMode;Z)Z

    .line 684
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kikin/KikinResultsViewController;->mIsOverflowMenuItemClicked:Z

    .line 692
    return-void
.end method

.method public onOverFlowMenuCreated()V
    .locals 1

    .prologue
    .line 654
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kikin/KikinResultsViewController;->hide(Z)V

    .line 661
    return-void
.end method

.method public onOverFlowMenuItemClciked()V
    .locals 1

    .prologue
    .line 700
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kikin/KikinResultsViewController;->mIsOverflowMenuItemClicked:Z

    .line 701
    return-void
.end method

.method public resetSelection()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 385
    iput-object v0, p0, Lcom/kikin/KikinResultsViewController;->mSelection:Landroid/os/Bundle;

    .line 386
    iput-boolean v1, p0, Lcom/kikin/KikinResultsViewController;->mShouldStoreResultsViewState:Z

    .line 387
    iput-object v0, p0, Lcom/kikin/KikinResultsViewController;->mKikinResultsContainerState:Landroid/os/Bundle;

    .line 388
    iput-object v0, p0, Lcom/kikin/KikinResultsViewController;->mActionMode:Landroid/view/ActionMode;

    .line 389
    iput v1, p0, Lcom/kikin/KikinResultsViewController;->mKikinPaddingViewHeight:I

    .line 390
    return-void
.end method

.method public sendMessage(I)V
    .locals 3
    .parameter "message"

    .prologue
    .line 1230
    :try_start_0
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mKikinSearchActivityMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 1231
    iget-object v0, p0, Lcom/kikin/KikinResultsViewController;->mKikinSearchActivityMessenger:Landroid/os/Messenger;

    const/4 v1, 0x0

    const/16 v2, 0xe

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1234
    :cond_0
    :goto_0
    return-void

    .line 1233
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setKikinResultsViewCallbackHandler(Lcom/kikin/IKikinResultsViewCallbackHandler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 634
    iput-object p1, p0, Lcom/kikin/KikinResultsViewController;->mResultsViewCallbackHandler:Lcom/kikin/IKikinResultsViewCallbackHandler;

    .line 635
    return-void
.end method

.method public setKikinResultsViewControllerVisibility(Lcom/kikin/KikinResultsViewController$KikinResultsViewControllerVisibility;)V
    .locals 0
    .parameter "instance"

    .prologue
    .line 1218
    iput-object p1, p0, Lcom/kikin/KikinResultsViewController;->mKikinResultsViewControllerVisibility:Lcom/kikin/KikinResultsViewController$KikinResultsViewControllerVisibility;

    .line 1219
    return-void
.end method

.method public setResultsViewState(Ljava/io/Serializable;)V
    .locals 3
    .parameter "resultsViewState"

    .prologue
    .line 848
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.kikin.view.bar.ResultsViewState"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 849
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 850
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "com.kikin.barViewState"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 851
    iput-object v0, p0, Lcom/kikin/KikinResultsViewController;->mKikinResultsContainerState:Landroid/os/Bundle;

    .line 852
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kikin/KikinResultsViewController;->mShouldStoreResultsViewState:Z

    .line 854
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public setSelectionTopPosition(I)V
    .locals 2
    .parameter "minYPosition"

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/kikin/KikinResultsViewController;->getActionBarHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/kikin/KikinResultsViewController;->getActionBarTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/kikin/KikinResultsViewController;->mActionBarHeight:I

    .line 553
    int-to-float v0, p1

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getScalingFactor()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/kikin/KikinResultsViewController;->mSelectionTopPosition:I

    .line 554
    const/high16 v0, 0x41a0

    invoke-direct {p0}, Lcom/kikin/KikinResultsViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kikin/KikinResultsViewController;->dpToPixels(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/kikin/KikinResultsViewController;->mSelectionPadding:I

    .line 556
    return-void
.end method

.method public setTutorialMessenger(Landroid/os/Messenger;)Z
    .locals 3
    .parameter "messenger"

    .prologue
    .line 826
    :try_start_0
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mKikinSearchActivityMessenger:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    .line 827
    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 828
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/kikin/KikinResultsViewController;->mKikinSearchActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 832
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    const/4 v1, 0x1

    .line 835
    :goto_1
    return v1

    .line 830
    :cond_0
    iput-object p1, p0, Lcom/kikin/KikinResultsViewController;->mTutorialActivityMessenger:Landroid/os/Messenger;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 833
    :catch_0
    move-exception v1

    .line 835
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public show(Landroid/view/ActionMode;Z)Z
    .locals 1
    .parameter "mode"
    .parameter "restore"

    .prologue
    .line 321
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kikin/KikinResultsViewController;->show(Landroid/view/ActionMode;ZZ)Z

    move-result v0

    return v0
.end method
