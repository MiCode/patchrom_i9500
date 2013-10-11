.class public Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;
.super Ljava/lang/Object;
.source "KeyguardViewStateManager.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/ChallengeLayout$OnBouncerStateChangedListener;
.implements Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;


# static fields
.field private static final SCREEN_ON_HINT_DURATION:I = 0x4b0

.field private static final SCREEN_ON_RING_HINT_DELAY:I = 0x12c

.field static final TRANSPORT_GONE:I = 0x0

.field static final TRANSPORT_INVISIBLE:I = 0x1

.field static final TRANSPORT_VISIBLE:I = 0x2


# instance fields
.field private mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

.field mChallengeTop:I

.field private mCurrentPage:I

.field private mExpandChallengeView:Landroid/widget/ImageButton;

.field private mHideHintsRunnable:Ljava/lang/Runnable;

.field private mKeyguardHostView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

.field private mKeyguardSecurityContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

.field private mKeyguardWidgetNavigation:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;

.field private mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

.field mLastScrollState:I

.field mMainQueue:Landroid/os/Handler;

.field private mPageIndexOnPageBeginMoving:I

.field private mPageListeningToSlider:I

.field private mTmpLoc:[I

.field private mTmpPoint:[I

.field private mTransportState:I


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V
    .locals 4
    .parameter "hostView"

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mTmpPoint:[I

    .line 40
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mTmpLoc:[I

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mMainQueue:Landroid/os/Handler;

    .line 52
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mTransportState:I

    .line 54
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mLastScrollState:I

    .line 57
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    .line 58
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mCurrentPage:I

    .line 59
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mPageIndexOnPageBeginMoving:I

    .line 61
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeTop:I

    .line 328
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mHideHintsRunnable:Ljava/lang/Runnable;

    .line 66
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardSecurityContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    return-object v0
.end method

.method private getChallengeTopRelativeToFrame(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;I)I
    .locals 3
    .parameter "frame"
    .parameter "top"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 216
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mTmpPoint:[I

    aput v1, v0, v1

    .line 217
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mTmpPoint:[I

    aput p2, v0, v2

    .line 218
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mTmpPoint:[I

    invoke-direct {p0, v0, p1, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mapPoint(Landroid/view/View;Landroid/view/View;[I)V

    .line 219
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mTmpPoint:[I

    aget v0, v0, v2

    return v0
.end method

.method private mapPoint(Landroid/view/View;Landroid/view/View;[I)V
    .locals 8
    .parameter "fromView"
    .parameter "toView"
    .parameter "pt"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 231
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mTmpLoc:[I

    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 233
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mTmpLoc:[I

    aget v2, v4, v6

    .line 234
    .local v2, x:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mTmpLoc:[I

    aget v3, v4, v7

    .line 236
    .local v3, y:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mTmpLoc:[I

    invoke-virtual {p2, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 237
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mTmpLoc:[I

    aget v0, v4, v6

    .line 238
    .local v0, vX:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mTmpLoc:[I

    aget v1, v4, v7

    .line 240
    .local v1, vY:I
    aget v4, p3, v6

    sub-int v5, v2, v0

    add-int/2addr v4, v5

    aput v4, p3, v6

    .line 241
    aget v4, p3, v7

    sub-int v5, v3, v1

    add-int/2addr v4, v5

    aput v4, p3, v7

    .line 242
    return-void
.end method

.method private updateEdgeSwiping()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;->isChallengeOverlapping()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->setOnlyAllowEdgeSwipes(Z)V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->setOnlyAllowEdgeSwipes(Z)V

    goto :goto_0
.end method

.method private userActivity()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->onUserActivityTimeoutChanged()V

    .line 247
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->userActivity()V

    .line 249
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelHideHintRunnable()V
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mHideHintsRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mMainQueue:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mHideHintsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 355
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mHideHintsRunnable:Ljava/lang/Runnable;

    .line 357
    :cond_0
    return-void
.end method

.method public fadeInSecurity(I)V
    .locals 3
    .parameter "duration"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardSecurityContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 129
    return-void
.end method

.method public fadeOutSecurity(I)V
    .locals 3
    .parameter "duration"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardSecurityContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 125
    return-void
.end method

.method public getTransportState()I
    .locals 1

    .prologue
    .line 364
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mTransportState:I

    return v0
.end method

.method public isBouncing()Z
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;->isBouncing()Z

    move-result v0

    return v0
.end method

.method public isChallengeOverlapping()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;->isChallengeOverlapping()Z

    move-result v0

    .line 100
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChallengeShowing()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;->isChallengeShowing()Z

    move-result v0

    .line 93
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAddView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetNavigation:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetNavigation:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;->updateWidgetNavigation()V

    .line 388
    :cond_0
    return-void
.end method

.method public onBouncerStateChanged(Z)V
    .locals 2
    .parameter "bouncerActive"

    .prologue
    .line 370
    if-eqz p1, :cond_1

    .line 371
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->zoomOutToBouncer()V

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->zoomInFromBouncer()V

    .line 374
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->setOnDismissAction(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;)V

    goto :goto_0
.end method

.method public onPageBeginMoving()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 132
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;->isChallengeOverlapping()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    instance-of v1, v1, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    if-eqz v1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    .line 135
    .local v0, scl:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->fadeOutChallenge()V

    .line 136
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getCurrentPage()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mPageIndexOnPageBeginMoving:I

    .line 140
    .end local v0           #scl:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    if-eqz v1, :cond_1

    .line 141
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->clearAppWidgetToShow()V

    .line 142
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->setOnDismissAction(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;)V

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mHideHintsRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 145
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mMainQueue:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mHideHintsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 146
    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mHideHintsRunnable:Ljava/lang/Runnable;

    .line 148
    :cond_2
    return-void
.end method

.method public onPageEndMoving()V
    .locals 1

    .prologue
    .line 151
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mPageIndexOnPageBeginMoving:I

    .line 152
    return-void
.end method

.method public onPageSwitched(Landroid/view/View;I)V
    .locals 7
    .parameter "newPage"
    .parameter "newPageIndex"

    .prologue
    .line 177
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mCurrentPage:I

    if-ne v5, p2, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    if-eqz v5, :cond_3

    .line 180
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mCurrentPage:I

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v4

    .line 181
    .local v4, prevPage:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    if-eqz v4, :cond_2

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mCurrentPage:I

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    if-eq v5, v6, :cond_2

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mCurrentPage:I

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetToResetOnPageFadeOut()I

    move-result v6

    if-eq v5, v6, :cond_2

    .line 183
    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->resetSize()V

    .line 186
    :cond_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v5, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v3

    .line 187
    .local v3, newCurPage:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    invoke-interface {v5}, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;->isChallengeOverlapping()Z

    move-result v0

    .line 188
    .local v0, challengeOverlapping:Z
    if-eqz v0, :cond_3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->isSmall()Z

    move-result v5

    if-nez v5, :cond_3

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    if-eq v5, p2, :cond_3

    instance-of v5, p1, Lcom/android/internal/policy/impl/keyguard/sec/ShortCutWidgetFrame;

    if-nez v5, :cond_3

    .line 190
    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->shrinkWidget()V

    .line 194
    .end local v0           #challengeOverlapping:Z
    .end local v3           #newCurPage:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    .end local v4           #prevPage:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    :cond_3
    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mCurrentPage:I

    .line 195
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetNavigation:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;

    if-eqz v5, :cond_4

    .line 196
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetNavigation:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;->updateWidgetNavigation()V

    .line 199
    :cond_4
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mExpandChallengeView:Landroid/widget/ImageButton;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    instance-of v5, v5, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    invoke-interface {v5}, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;->isChallengeOverlapping()Z

    move-result v5

    if-nez v5, :cond_0

    .line 202
    instance-of v2, p1, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    .line 203
    .local v2, isCameraPage:Z
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mExpandChallengeView:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 205
    .local v1, handleAnim:Landroid/graphics/drawable/AnimationDrawable;
    if-nez v2, :cond_0

    .line 209
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/graphics/drawable/AnimationDrawable;->setVisible(ZZ)Z

    .line 210
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0
.end method

.method public onPageSwitching(Landroid/view/View;I)V
    .locals 5
    .parameter "newPage"
    .parameter "newPageIndex"

    .prologue
    const/4 v4, -0x1

    .line 155
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    instance-of v2, v2, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    if-eqz v2, :cond_0

    .line 156
    instance-of v0, p1, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    .line 157
    .local v0, isCameraPage:Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    check-cast v2, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    if-nez v0, :cond_2

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setChallengeInteractive(Z)V

    .line 162
    .end local v0           #isCameraPage:Z
    :cond_0
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mPageIndexOnPageBeginMoving:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getNextPage()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    instance-of v2, v2, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    if-eqz v2, :cond_1

    .line 164
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    .line 165
    .local v1, scl:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->fadeInChallenge()V

    .line 166
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setWidgetToResetOnPageFadeOut(I)V

    .line 168
    .end local v1           #scl:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
    :cond_1
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mPageIndexOnPageBeginMoving:I

    .line 169
    return-void

    .line 157
    .restart local v0       #isCameraPage:Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onRemoveView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetNavigation:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetNavigation:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;->updateWidgetNavigation()V

    .line 394
    :cond_0
    return-void
.end method

.method public onScrollPositionChanged(FI)V
    .locals 3
    .parameter "scrollPosition"
    .parameter "challengeTop"

    .prologue
    .line 321
    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeTop:I

    .line 322
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v0

    .line 323
    .local v0, frame:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mLastScrollState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 324
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeTop:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->getChallengeTopRelativeToFrame(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->adjustFrame(I)V

    .line 326
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 5
    .parameter "scrollState"

    .prologue
    const/4 v4, 0x3

    .line 253
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    if-nez v2, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;->isChallengeOverlapping()Z

    move-result v0

    .line 257
    .local v0, challengeOverlapping:Z
    if-nez p1, :cond_8

    .line 258
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v1

    .line 259
    .local v1, frame:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    if-eqz v1, :cond_0

    .line 261
    if-nez v0, :cond_2

    .line 262
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->isPageMoving()Z

    move-result v2

    if-nez v2, :cond_6

    .line 263
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->resetSize()V

    .line 264
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->userActivity()V

    .line 269
    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->isSmall()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 272
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getSmallFrameHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setFrameHeight(I)V

    .line 274
    :cond_3
    if-eq p1, v4, :cond_4

    .line 275
    invoke-virtual {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->hideFrame(Ljava/lang/Object;)V

    .line 277
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->updateEdgeSwiping()V

    .line 279
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;->isChallengeShowing()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 280
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardSecurityContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->onResume(I)V

    .line 284
    :goto_2
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    .line 316
    .end local v1           #frame:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    :cond_5
    :goto_3
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mLastScrollState:I

    goto :goto_0

    .line 266
    .restart local v1       #frame:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    :cond_6
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setWidgetToResetOnPageFadeOut(I)V

    goto :goto_1

    .line 282
    :cond_7
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardSecurityContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->onPause()V

    goto :goto_2

    .line 285
    .end local v1           #frame:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    :cond_8
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mLastScrollState:I

    if-nez v2, :cond_5

    .line 289
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getNextPage()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    .line 290
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v1

    .line 291
    .restart local v1       #frame:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    if-eqz v1, :cond_0

    .line 294
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;->isBouncing()Z

    move-result v2

    if-nez v2, :cond_b

    .line 295
    if-eq p1, v4, :cond_9

    .line 296
    invoke-virtual {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->showFrame(Ljava/lang/Object;)V

    .line 301
    :cond_9
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->isSmall()Z

    move-result v2

    if-nez v2, :cond_a

    .line 303
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getNextPage()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    .line 304
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->shrinkWidget(Z)V

    .line 314
    :cond_a
    :goto_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardSecurityContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->onPause()V

    goto :goto_3

    .line 307
    :cond_b
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->isSmall()Z

    move-result v2

    if-nez v2, :cond_a

    .line 309
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getNextPage()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    goto :goto_4
.end method

.method public setChallengeLayout(Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;)V
    .locals 0
    .parameter "layout"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    .line 76
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->updateEdgeSwiping()V

    .line 77
    return-void
.end method

.method public setExpandChallengeView(Landroid/widget/ImageButton;)V
    .locals 0
    .parameter "expandChallengeView"

    .prologue
    .line 397
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mExpandChallengeView:Landroid/widget/ImageButton;

    .line 398
    return-void
.end method

.method public setKeyguardWidgetNavigation(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;)V
    .locals 0
    .parameter "keyguardWidgetNavigation"

    .prologue
    .line 381
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetNavigation:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;

    .line 382
    return-void
.end method

.method public setPagedView(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;)V
    .locals 0
    .parameter "pagedView"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    .line 71
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->updateEdgeSwiping()V

    .line 72
    return-void
.end method

.method public setSecurityViewContainer(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardSecurityContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    .line 105
    return-void
.end method

.method public setTransportState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 360
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mTransportState:I

    .line 361
    return-void
.end method

.method public showBouncer(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->isPageMoving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 112
    :cond_0
    if-eqz p1, :cond_1

    .line 113
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;->showBouncer()V

    goto :goto_0

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;->hideBouncer()V

    goto :goto_0
.end method

.method public showUsabilityHints()V
    .locals 4

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mMainQueue:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 346
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->showInitialPageHints()V

    .line 347
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mHideHintsRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mMainQueue:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mHideHintsRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 350
    :cond_0
    return-void
.end method
