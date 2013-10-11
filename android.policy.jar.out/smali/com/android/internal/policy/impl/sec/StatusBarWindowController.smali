.class public abstract Lcom/android/internal/policy/impl/sec/StatusBarWindowController;
.super Ljava/lang/Object;
.source "StatusBarWindowController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sec/StatusBarWindowController$SettingsObserver;,
        Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;,
        Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;
    }
.end annotation


# static fields
.field static final ACTION_COLLAPSE:Ljava/lang/String; = "com.android.systemui.statusbar.COLLAPSED"

.field static final ACTION_EXPAND:Ljava/lang/String; = "com.android.systemui.statusbar.EXPANDED"

.field static final ACTION_NOTIFICATION_ARRIVED:Ljava/lang/String; = "com.system.action.NOTIFICATION"

.field static final DELAY_ANIMATING_HIDE_IN_FULLSCREEN:I = 0x1f4

.field static final DELAY_HIDE_IN_FULLSCREEN:I = 0xbb8

.field static final DELAY_HIDE_IN_FULLSCREEN_BY_NOTIFICATION:I = 0x9c4

.field static final DELAY_SHOW_HOVERING_IN_FULLSCREEN:I = 0x1f4

.field static final DELAY_SHOW_IN_FULLSCREEN_BY_NOTIFICATION:I = 0x3e8

.field static final KEY_DISABLE_STATUS_BAR_OPEN:Ljava/lang/String; = "com.system.notification.DashNotificationManagerService.Disable"

.field static final NOTIFICATION_FIELD_TYPE:Ljava/lang/String; = "com.system.notification.DashNotificationManagerService.Type"

.field static final NOTIFICATION_TYPE_ADD:I = 0x1

.field static final TAG:Ljava/lang/String; = "StatusBarWindowController"


# instance fields
.field final DEBUG:Z

.field final SAFE_DEBUG:Z

.field mAnimatingHideOnFullScreen:Ljava/lang/Runnable;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mContext:Landroid/content/Context;

.field mDefaultHideOnFullScreen:Ljava/lang/Runnable;

.field mDefaultShowOnFullScreen:Ljava/lang/Runnable;

.field mDefaultShowOnFullScreenByNotification:Ljava/lang/Runnable;

.field mFlingGestureMaxXVelocityPx:F

.field mFlingGestureMinVelocityPy:F

.field mHandler:Landroid/os/Handler;

.field mHideNormalScreenGestureDetector:Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;

.field mHoveringInStatusBarArea:Z

.field mIsFingerAirViewEnabled:Z

.field mIsShowUpIndicatorEnabled:Z

.field mIsStatusBarExpandEnabled:Z

.field mIsStatusBarHideEnabled:Z

.field mIsStatusBarWindow:Z

.field mPreviousHiddenOnNormalScreen:Z

.field mPreviousShownOnFullScreen:Z

.field mReadyControlStatusBar:Z

.field final mServiceAquireLock:Ljava/lang/Object;

.field mShowFullScreenGestureDetector:Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;

.field mStatusBarExpanded:Z

.field mStatusBarHeight:I

.field mStatusBarHiddenOnNormalScreen:Z

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field mStatusBarShownOnFullScreen:Z

.field mTopIsFullScreen:Z

.field mUseStatusBarOpenByNotification:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->DEBUG:Z

    .line 39
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v3

    if-ne v3, v5, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->SAFE_DEBUG:Z

    .line 61
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mServiceAquireLock:Ljava/lang/Object;

    .line 67
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mTopIsFullScreen:Z

    .line 68
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mUseStatusBarOpenByNotification:Z

    .line 69
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsStatusBarWindow:Z

    .line 70
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsStatusBarExpandEnabled:Z

    .line 71
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarExpanded:Z

    .line 73
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mReadyControlStatusBar:Z

    .line 75
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarShownOnFullScreen:Z

    .line 76
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mPreviousShownOnFullScreen:Z

    .line 78
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarHiddenOnNormalScreen:Z

    .line 79
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mPreviousHiddenOnNormalScreen:Z

    .line 81
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsStatusBarHideEnabled:Z

    .line 82
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsFingerAirViewEnabled:Z

    .line 83
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsShowUpIndicatorEnabled:Z

    .line 85
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHoveringInStatusBarArea:Z

    .line 87
    new-instance v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$1;-><init>(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 318
    new-instance v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$2;-><init>(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultShowOnFullScreen:Ljava/lang/Runnable;

    .line 330
    new-instance v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$3;-><init>(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultShowOnFullScreenByNotification:Ljava/lang/Runnable;

    .line 344
    new-instance v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$4;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$4;-><init>(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultHideOnFullScreen:Ljava/lang/Runnable;

    .line 351
    new-instance v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$5;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$5;-><init>(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mAnimatingHideOnFullScreen:Ljava/lang/Runnable;

    .line 506
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mContext:Landroid/content/Context;

    .line 508
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 510
    .local v1, res:Landroid/content/res/Resources;
    const v3, 0x1050087

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mFlingGestureMaxXVelocityPx:F

    .line 512
    const v3, 0x1050088

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mFlingGestureMinVelocityPy:F

    .line 514
    const v3, 0x105000c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarHeight:I

    .line 517
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    .line 519
    new-instance v2, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$SettingsObserver;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$SettingsObserver;-><init>(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;)V

    .line 520
    .local v2, settingsObserver:Lcom/android/internal/policy/impl/sec/StatusBarWindowController$SettingsObserver;
    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$SettingsObserver;->observe()V

    .line 522
    new-instance v3, Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;-><init>(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;)V

    invoke-direct {v3, v5, v6}, Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper$SamsungPolicyOnGestureListener;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mShowFullScreenGestureDetector:Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;

    .line 524
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mShowFullScreenGestureDetector:Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;->setIsLongpressEnabled(Z)V

    .line 526
    new-instance v3, Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;-><init>(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;)V

    invoke-direct {v3, v5, v6}, Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper$SamsungPolicyOnGestureListener;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHideNormalScreenGestureDetector:Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;

    .line 528
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHideNormalScreenGestureDetector:Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;->setIsLongpressEnabled(Z)V

    .line 530
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 531
    .local v0, mReceiveFilter:Landroid/content/IntentFilter;
    const-string v3, "com.android.systemui.statusbar.COLLAPSED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 532
    const-string v3, "com.android.systemui.statusbar.EXPANDED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 533
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isJBPUpgradeModel(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 534
    const-string v3, "com.system.action.NOTIFICATION"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 536
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 537
    return-void

    .end local v0           #mReceiveFilter:Landroid/content/IntentFilter;
    .end local v1           #res:Landroid/content/res/Resources;
    .end local v2           #settingsObserver:Lcom/android/internal/policy/impl/sec/StatusBarWindowController$SettingsObserver;
    :cond_1
    move v3, v5

    .line 39
    goto/16 :goto_0
.end method


# virtual methods
.method getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    .prologue
    .line 638
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    .line 639
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 640
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v1

    return-object v0

    .line 644
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract onHideStatusBarOnNormalScreen(Z)V
.end method

.method public onInputPointerEvent(Landroid/view/MotionEvent;Z)V
    .locals 3
    .parameter "event"
    .parameter "isStatusBarWindow"

    .prologue
    .line 552
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsStatusBarWindow:Z

    .line 559
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 560
    .local v0, action:I
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    .line 562
    .local v1, type:I
    and-int/lit16 v2, v0, 0xff

    packed-switch v2, :pswitch_data_0

    .line 592
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 569
    :pswitch_1
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mTopIsFullScreen:Z

    if-eqz v2, :cond_1

    .line 570
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mShowFullScreenGestureDetector:Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;

    invoke-virtual {v2, p1}, Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 571
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsStatusBarHideEnabled:Z

    if-eqz v2, :cond_0

    .line 572
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHideNormalScreenGestureDetector:Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;

    invoke-virtual {v2, p1}, Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 578
    :pswitch_2
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mTopIsFullScreen:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 579
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsFingerAirViewEnabled:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsShowUpIndicatorEnabled:Z

    if-eqz v2, :cond_0

    .line 580
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->postHoverEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 583
    :cond_2
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mTopIsFullScreen:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 584
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isStatusBarHoverOpenEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 585
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->postHoverEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 562
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public abstract onShowStatusBarOnFullScreen(Z)V
.end method

.method public performHideStatusBarOnNormalScreen(Z)V
    .locals 1
    .parameter "hide"

    .prologue
    .line 484
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->performHideStatusBarOnNormalScreen(ZZ)V

    .line 485
    return-void
.end method

.method public performHideStatusBarOnNormalScreen(ZZ)V
    .locals 1
    .parameter "hide"
    .parameter "force"

    .prologue
    .line 493
    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mPreviousHiddenOnNormalScreen:Z

    if-eq p1, v0, :cond_1

    .line 494
    :cond_0
    if-eqz p1, :cond_2

    .line 495
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarHiddenOnNormalScreen:Z

    .line 499
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->onHideStatusBarOnNormalScreen(Z)V

    .line 501
    :cond_1
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mPreviousHiddenOnNormalScreen:Z

    .line 502
    return-void

    .line 497
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarHiddenOnNormalScreen:Z

    goto :goto_0
.end method

.method public performShowStatusBarOnFullScreen(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 229
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->performShowStatusBarOnFullScreen(ZZ)V

    .line 230
    return-void
.end method

.method public performShowStatusBarOnFullScreen(ZZ)V
    .locals 4
    .parameter "show"
    .parameter "force"

    .prologue
    .line 238
    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mPreviousShownOnFullScreen:Z

    if-eq p1, v0, :cond_1

    .line 239
    :cond_0
    if-eqz p1, :cond_2

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarShownOnFullScreen:Z

    .line 246
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->onShowStatusBarOnFullScreen(Z)V

    .line 248
    :cond_1
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mPreviousShownOnFullScreen:Z

    .line 249
    return-void

    .line 242
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mAnimatingHideOnFullScreen:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 243
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mAnimatingHideOnFullScreen:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public postHoverEvent(Landroid/view/MotionEvent;)V
    .locals 10
    .parameter "event"

    .prologue
    const-wide/16 v8, 0xbb8

    const-wide/16 v6, 0x1f4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 252
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 260
    .local v0, action:I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 261
    iget v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarHeight:I

    div-int/lit8 v1, v2, 0x2

    .line 276
    .local v1, hoverAllowHeight:I
    :goto_0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarExpanded:Z

    if-eqz v2, :cond_2

    .line 316
    :cond_0
    :goto_1
    return-void

    .line 263
    .end local v1           #hoverAllowHeight:I
    :cond_1
    iget v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarHeight:I

    mul-int/lit8 v1, v2, 0x2

    .restart local v1       #hoverAllowHeight:I
    goto :goto_0

    .line 277
    :cond_2
    and-int/lit16 v2, v0, 0xff

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 299
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    int-to-float v3, v1

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    .line 300
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultHideOnFullScreen:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 301
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHoveringInStatusBarArea:Z

    .line 303
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarShownOnFullScreen:Z

    if-nez v2, :cond_0

    .line 304
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultShowOnFullScreen:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 280
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    int-to-float v3, v1

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 281
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultHideOnFullScreen:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 282
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHoveringInStatusBarArea:Z

    .line 284
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarShownOnFullScreen:Z

    if-nez v2, :cond_0

    .line 285
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultShowOnFullScreen:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 289
    :cond_3
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHoveringInStatusBarArea:Z

    goto :goto_1

    .line 293
    :pswitch_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultShowOnFullScreen:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 294
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarShownOnFullScreen:Z

    if-eqz v2, :cond_0

    .line 295
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultHideOnFullScreen:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 308
    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultShowOnFullScreen:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 309
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHoveringInStatusBarArea:Z

    .line 310
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarShownOnFullScreen:Z

    if-eqz v2, :cond_0

    .line 311
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultHideOnFullScreen:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 277
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setProperties(ZZ)V
    .locals 2
    .parameter "topIsFullScreen"
    .parameter "openByNotification"

    .prologue
    .line 540
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mTopIsFullScreen:Z

    if-eq v0, p1, :cond_0

    .line 541
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mTopIsFullScreen:Z

    .line 542
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultShowOnFullScreenByNotification:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 544
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mUseStatusBarOpenByNotification:Z

    .line 549
    return-void

    .line 544
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateSetting()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 619
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 620
    .local v3, resolver:Landroid/content/ContentResolver;
    const-string v6, "finger_air_view"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_3

    move v0, v4

    .line 622
    .local v0, isFingerAirViewEnabled:Z
    :goto_0
    const-string v6, "finger_air_view_show_up_indicator"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_4

    move v1, v4

    .line 624
    .local v1, isShowUpIndicatorEnabled:Z
    :goto_1
    const-string v6, "use_status_bar_hide"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_5

    move v2, v4

    .line 626
    .local v2, isStatusBarHideEnabled:Z
    :goto_2
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsFingerAirViewEnabled:Z

    if-eq v4, v0, :cond_0

    .line 627
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsFingerAirViewEnabled:Z

    .line 629
    :cond_0
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsShowUpIndicatorEnabled:Z

    if-eq v4, v1, :cond_1

    .line 630
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsShowUpIndicatorEnabled:Z

    .line 632
    :cond_1
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsStatusBarHideEnabled:Z

    if-eq v4, v2, :cond_2

    .line 633
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsStatusBarHideEnabled:Z

    .line 635
    :cond_2
    return-void

    .end local v0           #isFingerAirViewEnabled:Z
    .end local v1           #isShowUpIndicatorEnabled:Z
    .end local v2           #isStatusBarHideEnabled:Z
    :cond_3
    move v0, v5

    .line 620
    goto :goto_0

    .restart local v0       #isFingerAirViewEnabled:Z
    :cond_4
    move v1, v5

    .line 622
    goto :goto_1

    .restart local v1       #isShowUpIndicatorEnabled:Z
    :cond_5
    move v2, v5

    .line 624
    goto :goto_2
.end method
