.class public Lcom/android/server/wm/WindowAnimator;
.super Ljava/lang/Object;
.source "WindowAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;,
        Lcom/android/server/wm/WindowAnimator$AnimatorToLayoutParams;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowAnimator"

.field static final WALLPAPER_ACTION_PENDING:I = 0x1


# instance fields
.field mAboveUniverseLayer:I

.field mAdjResult:I

.field final mAnimToLayout:Lcom/android/server/wm/WindowAnimator$AnimatorToLayoutParams;

.field private mAnimTransactionSequence:I

.field mAnimating:Z

.field final mAnimationRunnable:Ljava/lang/Runnable;

.field mAppAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowAnimator;",
            ">;"
        }
    .end annotation
.end field

.field mBulkUpdateParams:I

.field final mContext:Landroid/content/Context;

.field mCurrentFocus:Lcom/android/server/wm/WindowState;

.field mCurrentTime:J

.field mDh:I

.field mDisplayContentsAnimators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;",
            ">;"
        }
    .end annotation
.end field

.field mDw:I

.field mForceHiding:Z

.field mInitialized:Z

.field mInnerDh:I

.field mInnerDw:I

.field mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

.field mPendingActions:I

.field mPendingLayoutChanges:Landroid/util/SparseIntArray;

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

.field mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

.field mWallpaperTarget:Lcom/android/server/wm/WindowState;

.field mWallpaperTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

.field mWpAppAnimator:Lcom/android/server/wm/AppWindowAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 3
    .parameter "service"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Landroid/util/SparseIntArray;

    .line 74
    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 76
    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    .line 77
    iput v2, p0, Lcom/android/server/wm/WindowAnimator;->mAboveUniverseLayer:I

    .line 79
    iput v2, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 81
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    .line 87
    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 88
    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mWpAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 89
    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 90
    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mAppAnimators:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Lcom/android/server/wm/WindowAnimator$AnimatorToLayoutParams;

    invoke-direct {v0}, Lcom/android/server/wm/WindowAnimator$AnimatorToLayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimToLayout:Lcom/android/server/wm/WindowAnimator$AnimatorToLayoutParams;

    .line 106
    iput-boolean v2, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    .line 128
    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 129
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mContext:Landroid/content/Context;

    .line 130
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 132
    new-instance v0, Lcom/android/server/wm/WindowAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowAnimator$1;-><init>(Lcom/android/server/wm/WindowAnimator;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationRunnable:Ljava/lang/Runnable;

    .line 145
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/WindowAnimator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/server/wm/WindowAnimator;->copyLayoutToAnimParamsLocked()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/WindowAnimator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/server/wm/WindowAnimator;->animateLocked()V

    return-void
.end method

.method private animateLocked()V
    .locals 20

    .prologue
    .line 686
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    if-nez v15, :cond_1

    .line 792
    :cond_0
    :goto_0
    return-void

    .line 690
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Landroid/util/SparseIntArray;

    invoke-virtual {v15}, Landroid/util/SparseIntArray;->clear()V

    .line 691
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    .line 692
    const/16 v15, 0x8

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 693
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 694
    .local v13, wasAnimating:Z
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 701
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 702
    invoke-static {}, Landroid/view/Surface;->setAnimationTransaction()V

    .line 704
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowAnimator;->updateAppWindowsLocked()V

    .line 706
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v11

    .line 707
    .local v11, numDisplays:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-ge v9, v11, :cond_6

    .line 708
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v15, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 709
    .local v7, displayId:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v15, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 711
    .local v6, displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v12, v6, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 713
    .local v12, screenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 714
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide v0, v15

    invoke-virtual {v12, v0, v1}, Lcom/android/server/wm/ScreenRotationAnimation;->stepAnimationLocked(J)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 715
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 725
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/wm/WindowAnimator;->performAnimationsLocked(I)V

    .line 727
    iget-object v14, v6, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWinAnimators:Lcom/android/server/wm/WinAnimatorList;

    .line 728
    .local v14, winAnimatorList:Lcom/android/server/wm/WinAnimatorList;
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 729
    .local v3, N:I
    const/4 v10, 0x0

    .local v10, j:I
    :goto_3
    if-ge v10, v3, :cond_5

    .line 730
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/wm/WindowStateAnimator;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/wm/WindowStateAnimator;->prepareSurfaceLocked(Z)V

    .line 729
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 717
    .end local v3           #N:I
    .end local v10           #j:I
    .end local v14           #winAnimatorList:Lcom/android/server/wm/WinAnimatorList;
    :cond_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 718
    invoke-virtual {v12}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 719
    const/4 v15, 0x0

    iput-object v15, v6, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 760
    .end local v6           #displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v7           #displayId:I
    .end local v9           #i:I
    .end local v11           #numDisplays:I
    .end local v12           #screenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;
    :catch_0
    move-exception v8

    .line 761
    .local v8, e:Ljava/lang/RuntimeException;
    :try_start_1
    const-string v15, "WindowAnimator"

    const-string v16, "Unhandled exception in Window Manager"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 763
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 768
    .end local v8           #e:Ljava/lang/RuntimeException;
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Landroid/util/SparseIntArray;

    invoke-virtual {v15}, Landroid/util/SparseIntArray;->size()I

    move-result v15

    add-int/lit8 v9, v15, -0x1

    .restart local v9       #i:I
    :goto_5
    if-ltz v9, :cond_d

    .line 769
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Landroid/util/SparseIntArray;

    invoke-virtual {v15, v9}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v15

    and-int/lit8 v15, v15, 0x4

    if-eqz v15, :cond_4

    .line 771
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/WindowAnimator;->mPendingActions:I

    or-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/wm/WindowAnimator;->mPendingActions:I

    .line 768
    :cond_4
    add-int/lit8 v9, v9, -0x1

    goto :goto_5

    .line 707
    .restart local v3       #N:I
    .restart local v6       #displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .restart local v7       #displayId:I
    .restart local v10       #j:I
    .restart local v11       #numDisplays:I
    .restart local v12       #screenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;
    .restart local v14       #winAnimatorList:Lcom/android/server/wm/WinAnimatorList;
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 734
    .end local v3           #N:I
    .end local v6           #displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v7           #displayId:I
    .end local v10           #j:I
    .end local v12           #screenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;
    .end local v14           #winAnimatorList:Lcom/android/server/wm/WinAnimatorList;
    :cond_6
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowAnimator;->testTokenMayBeDrawnLocked()V

    .line 736
    const/4 v9, 0x0

    :goto_6
    if-ge v9, v11, :cond_b

    .line 737
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v15, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 738
    .restart local v7       #displayId:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v15, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 740
    .restart local v6       #displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v12, v6, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 742
    .restart local v12       #screenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v12, :cond_7

    .line 743
    invoke-virtual {v12}, Lcom/android/server/wm/ScreenRotationAnimation;->updateSurfacesInTransaction()V

    .line 746
    :cond_7
    iget-object v5, v6, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    .line 747
    .local v5, dimParams:Lcom/android/server/wm/DimAnimator$Parameters;
    iget-object v4, v6, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    .line 748
    .local v4, dimAnimator:Lcom/android/server/wm/DimAnimator;
    if-eqz v4, :cond_8

    if-eqz v5, :cond_8

    .line 749
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v4, v15, v5, v0, v1}, Lcom/android/server/wm/DimAnimator;->updateParameters(Landroid/content/res/Resources;Lcom/android/server/wm/DimAnimator$Parameters;J)V

    .line 751
    :cond_8
    if-eqz v4, :cond_9

    iget-boolean v15, v4, Lcom/android/server/wm/DimAnimator;->mDimShown:Z

    if-eqz v15, :cond_9

    .line 752
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/server/wm/WindowAnimator;->isDimmingLocked(I)Z

    move-result v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v15

    if-nez v15, :cond_a

    const/4 v15, 0x1

    :goto_7
    move/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v4, v0, v1, v2, v15}, Lcom/android/server/wm/DimAnimator;->updateSurface(ZJZ)Z

    move-result v15

    or-int v15, v15, v16

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 736
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 752
    :cond_a
    const/4 v15, 0x0

    goto :goto_7

    .line 757
    .end local v4           #dimAnimator:Lcom/android/server/wm/DimAnimator;
    .end local v5           #dimParams:Lcom/android/server/wm/DimAnimator$Parameters;
    .end local v6           #displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v7           #displayId:I
    .end local v12           #screenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    if-eqz v15, :cond_c

    .line 758
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    invoke-virtual {v15}, Lcom/android/server/wm/Watermark;->drawIfNeeded()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 763
    :cond_c
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    goto/16 :goto_4

    .end local v9           #i:I
    .end local v11           #numDisplays:I
    :catchall_0
    move-exception v15

    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    throw v15

    .line 775
    .restart local v9       #i:I
    :cond_d
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    if-nez v15, :cond_e

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Landroid/util/SparseIntArray;

    invoke-virtual {v15}, Landroid/util/SparseIntArray;->size()I

    move-result v15

    if-lez v15, :cond_f

    .line 776
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowAnimator;->updateAnimToLayoutLocked()V

    .line 779
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    if-eqz v15, :cond_10

    .line 780
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v15, Lcom/android/server/wm/WindowManagerService;->mLayoutToAnim:Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 781
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 782
    monitor-exit v16

    goto/16 :goto_0

    :catchall_1
    move-exception v15

    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v15

    .line 783
    :cond_10
    if-eqz v13, :cond_0

    .line 784
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V

    goto/16 :goto_0
.end method

.method static bulkUpdateParamsToString(I)Ljava/lang/String;
    .locals 2
    .parameter "bulkUpdateParams"

    .prologue
    .line 818
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 819
    .local v0, builder:Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    .line 820
    const-string v1, " UPDATE_ROTATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    .line 823
    const-string v1, " WALLPAPER_MAY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    .line 826
    const-string v1, " FORCE_HIDING_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    .line 829
    const-string v1, " ORIENTATION_CHANGE_COMPLETE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    :cond_3
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_4

    .line 832
    const-string v1, " TURN_ON_SCREEN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private copyLayoutToAnimParamsLocked()V
    .locals 17

    .prologue
    .line 192
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v13, Lcom/android/server/wm/WindowManagerService;->mLayoutToAnim:Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;

    .line 193
    .local v8, layoutToAnim:Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;
    monitor-enter v8

    .line 194
    const/4 v13, 0x0

    :try_start_0
    iput-boolean v13, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mAnimationScheduled:Z

    .line 196
    iget-boolean v13, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mParamsModified:Z

    if-nez v13, :cond_0

    .line 197
    monitor-exit v8

    .line 264
    :goto_0
    return-void

    .line 199
    :cond_0
    const/4 v13, 0x0

    iput-boolean v13, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mParamsModified:Z

    .line 201
    iget-wide v13, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mChanges:J

    const-wide/16 v15, 0x1

    and-long/2addr v13, v15

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-eqz v13, :cond_1

    .line 202
    iget-wide v13, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mChanges:J

    const-wide/16 v15, -0x2

    and-long/2addr v13, v15

    iput-wide v13, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mChanges:J

    .line 203
    new-instance v13, Ljava/util/ArrayList;

    iget-object v14, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 215
    :cond_1
    iget-object v13, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 216
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v13, :cond_4

    const/4 v13, 0x0

    :goto_1
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mWpAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 219
    iget-object v13, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 220
    iget-object v13, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 223
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 224
    .local v10, numDisplays:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    if-ge v7, v10, :cond_9

    .line 225
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v13, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 226
    .local v5, displayId:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v13, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 228
    .local v4, displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v13, v4, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWinAnimators:Lcom/android/server/wm/WinAnimatorList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 229
    iget-object v13, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mWinAnimatorLists:Landroid/util/SparseArray;

    invoke-virtual {v13, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/WinAnimatorList;

    .line 230
    .local v12, winAnimators:Lcom/android/server/wm/WinAnimatorList;
    if-eqz v12, :cond_2

    .line 231
    iget-object v13, v4, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWinAnimators:Lcom/android/server/wm/WinAnimatorList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 234
    :cond_2
    iget-object v13, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mDimParams:Landroid/util/SparseArray;

    invoke-virtual {v13, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DimAnimator$Parameters;

    .line 235
    .local v3, dimParams:Lcom/android/server/wm/DimAnimator$Parameters;
    if-nez v3, :cond_6

    .line 236
    const/4 v13, 0x0

    iput-object v13, v4, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    .line 224
    :cond_3
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 216
    .end local v3           #dimParams:Lcom/android/server/wm/DimAnimator$Parameters;
    .end local v4           #displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v5           #displayId:I
    .end local v7           #i:I
    .end local v10           #numDisplays:I
    .end local v12           #winAnimators:Lcom/android/server/wm/WinAnimatorList;
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v13, v13, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v13, :cond_5

    const/4 v13, 0x0

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v13, v13, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v13, v13, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    goto :goto_1

    .line 238
    .restart local v3       #dimParams:Lcom/android/server/wm/DimAnimator$Parameters;
    .restart local v4       #displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .restart local v5       #displayId:I
    .restart local v7       #i:I
    .restart local v10       #numDisplays:I
    .restart local v12       #winAnimators:Lcom/android/server/wm/WinAnimatorList;
    :cond_6
    iget-object v9, v3, Lcom/android/server/wm/DimAnimator$Parameters;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 241
    .local v9, newWinAnimator:Lcom/android/server/wm/WindowStateAnimator;
    iget-object v13, v4, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    if-nez v13, :cond_8

    const/4 v6, 0x0

    .line 246
    .local v6, existingDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :goto_4
    iget-boolean v13, v9, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v13, :cond_3

    if-eqz v6, :cond_7

    iget-boolean v13, v6, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v13, :cond_7

    iget v13, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget v14, v9, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v13, v14, :cond_3

    .line 249
    :cond_7
    new-instance v13, Lcom/android/server/wm/DimAnimator$Parameters;

    invoke-direct {v13, v3}, Lcom/android/server/wm/DimAnimator$Parameters;-><init>(Lcom/android/server/wm/DimAnimator$Parameters;)V

    iput-object v13, v4, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    goto :goto_3

    .line 263
    .end local v3           #dimParams:Lcom/android/server/wm/DimAnimator$Parameters;
    .end local v4           #displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v5           #displayId:I
    .end local v6           #existingDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;
    .end local v7           #i:I
    .end local v9           #newWinAnimator:Lcom/android/server/wm/WindowStateAnimator;
    .end local v10           #numDisplays:I
    .end local v12           #winAnimators:Lcom/android/server/wm/WinAnimatorList;
    :catchall_0
    move-exception v13

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    .line 241
    .restart local v3       #dimParams:Lcom/android/server/wm/DimAnimator$Parameters;
    .restart local v4       #displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .restart local v5       #displayId:I
    .restart local v7       #i:I
    .restart local v9       #newWinAnimator:Lcom/android/server/wm/WindowStateAnimator;
    .restart local v10       #numDisplays:I
    .restart local v12       #winAnimators:Lcom/android/server/wm/WinAnimatorList;
    :cond_8
    :try_start_1
    iget-object v13, v4, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    iget-object v6, v13, Lcom/android/server/wm/DimAnimator$Parameters;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    goto :goto_4

    .line 254
    .end local v3           #dimParams:Lcom/android/server/wm/DimAnimator$Parameters;
    .end local v4           #displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v5           #displayId:I
    .end local v9           #newWinAnimator:Lcom/android/server/wm/WindowStateAnimator;
    .end local v12           #winAnimators:Lcom/android/server/wm/WinAnimatorList;
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mAppAnimators:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 255
    iget-object v13, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mAppWindowAnimParams:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 256
    .local v1, N:I
    const/4 v7, 0x0

    :goto_5
    if-ge v7, v1, :cond_a

    .line 257
    iget-object v13, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mAppWindowAnimParams:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/WindowManagerService$AppWindowAnimParams;

    .line 258
    .local v11, params:Lcom/android/server/wm/WindowManagerService$AppWindowAnimParams;
    iget-object v2, v11, Lcom/android/server/wm/WindowManagerService$AppWindowAnimParams;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 259
    .local v2, appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    iget-object v13, v2, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 260
    iget-object v13, v2, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    iget-object v14, v11, Lcom/android/server/wm/WindowManagerService$AppWindowAnimParams;->mWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 261
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mAppAnimators:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 263
    .end local v2           #appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    .end local v11           #params:Lcom/android/server/wm/WindowManagerService$AppWindowAnimParams;
    :cond_a
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .locals 2
    .parameter "displayId"

    .prologue
    .line 986
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 987
    .local v0, displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    if-nez v0, :cond_0

    .line 988
    new-instance v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .end local v0           #displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;-><init>(Lcom/android/server/wm/WindowAnimator;I)V

    .line 989
    .restart local v0       #displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 991
    :cond_0
    return-object v0
.end method

.method private performAnimationsLocked(I)V
    .locals 1
    .parameter "displayId"

    .prologue
    .line 678
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:Z

    .line 679
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->updateWindowsLocked(I)V

    .line 680
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->updateWallpaperLocked(I)V

    .line 681
    return-void
.end method

.method private testTokenMayBeDrawnLocked()V
    .locals 8

    .prologue
    .line 641
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mAppAnimators:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 642
    .local v0, NT:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 643
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mAppAnimators:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowAnimator;

    .line 644
    .local v2, appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    iget-object v4, v2, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 645
    .local v4, wtoken:Lcom/android/server/wm/AppWindowToken;
    iget-boolean v1, v4, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 646
    .local v1, allDrawn:Z
    iget-boolean v5, v2, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    if-eq v1, v5, :cond_0

    .line 647
    iput-boolean v1, v2, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    .line 648
    if-eqz v1, :cond_0

    .line 651
    iget-boolean v5, v2, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    if-eqz v5, :cond_1

    .line 652
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    .line 653
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v4, v6, v7}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    .line 659
    const/4 v5, 0x4

    const-string v6, "testTokenMayBeDrawnLocked: freezingScreen"

    invoke-virtual {p0, v2, v5, v6}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V

    .line 642
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 663
    :cond_1
    const/16 v5, 0x8

    const-string v6, "testTokenMayBeDrawnLocked"

    invoke-virtual {p0, v2, v5, v6}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V

    .line 668
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 669
    iget-boolean v5, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    move-result v6

    or-int/2addr v5, v6

    iput-boolean v5, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    goto :goto_1

    .line 675
    .end local v1           #allDrawn:Z
    .end local v2           #appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    .end local v4           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_2
    return-void
.end method

.method private updateAppWindowsLocked()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 312
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mAppAnimators:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 313
    .local v0, NAT:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 314
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mAppAnimators:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowAnimator;

    .line 315
    .local v2, appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    iget-object v5, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v5, :cond_1

    iget-object v5, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    sget-object v8, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    if-eq v5, v8, :cond_1

    move v4, v6

    .line 317
    .local v4, wasAnimating:Z
    :goto_1
    iget-wide v8, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    iget v5, p0, Lcom/android/server/wm/WindowAnimator;->mInnerDw:I

    iget v10, p0, Lcom/android/server/wm/WindowAnimator;->mInnerDh:I

    invoke-virtual {v2, v8, v9, v5, v10}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimationLocked(JII)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 318
    iput-boolean v6, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 313
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v4           #wasAnimating:Z
    :cond_1
    move v4, v7

    .line 315
    goto :goto_1

    .line 319
    .restart local v4       #wasAnimating:Z
    :cond_2
    if-eqz v4, :cond_0

    .line 321
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "appToken "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, v2, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " done"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2, v11, v5}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V

    goto :goto_2

    .line 328
    .end local v2           #appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    .end local v4           #wasAnimating:Z
    :cond_3
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 329
    .local v1, NEAT:I
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v1, :cond_7

    .line 330
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v5, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 331
    .restart local v2       #appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    iget-object v5, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v5, :cond_5

    iget-object v5, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    sget-object v8, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    if-eq v5, v8, :cond_5

    move v4, v6

    .line 333
    .restart local v4       #wasAnimating:Z
    :goto_4
    iget-wide v8, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    iget v5, p0, Lcom/android/server/wm/WindowAnimator;->mInnerDw:I

    iget v10, p0, Lcom/android/server/wm/WindowAnimator;->mInnerDh:I

    invoke-virtual {v2, v8, v9, v5, v10}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimationLocked(JII)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 334
    iput-boolean v6, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 329
    :cond_4
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v4           #wasAnimating:Z
    :cond_5
    move v4, v7

    .line 331
    goto :goto_4

    .line 335
    .restart local v4       #wasAnimating:Z
    :cond_6
    if-eqz v4, :cond_4

    .line 337
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exiting appToken "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, v2, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " done"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2, v11, v5}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V

    goto :goto_5

    .line 343
    .end local v2           #appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    .end local v4           #wasAnimating:Z
    :cond_7
    return-void
.end method

.method private updateWallpaperLocked(I)V
    .locals 22
    .parameter "displayId"

    .prologue
    .line 531
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v10

    .line 533
    .local v10, displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v15, v10, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWinAnimators:Lcom/android/server/wm/WinAnimatorList;

    .line 534
    .local v15, winAnimatorList:Lcom/android/server/wm/WinAnimatorList;
    const/16 v16, 0x0

    .line 535
    .local v16, windowAnimationBackground:Lcom/android/server/wm/WindowStateAnimator;
    const/16 v17, 0x0

    .line 536
    .local v17, windowAnimationBackgroundColor:I
    const/4 v9, 0x0

    .line 537
    .local v9, detachedWallpaper:Lcom/android/server/wm/WindowState;
    iget-object v0, v10, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    move-object/from16 v18, v0

    .line 540
    .local v18, windowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v12, v19, -0x1

    .local v12, i:I
    :goto_0
    if-ltz v12, :cond_8

    .line 541
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/WindowStateAnimator;

    .line 542
    .local v14, winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    iget-object v0, v14, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    .line 540
    :cond_0
    :goto_1
    add-int/lit8 v12, v12, -0x1

    goto :goto_0

    .line 546
    :cond_1
    iget v11, v14, Lcom/android/server/wm/WindowStateAnimator;->mAttrFlags:I

    .line 547
    .local v11, flags:I
    iget-object v13, v14, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 552
    .local v13, win:Lcom/android/server/wm/WindowState;
    iget-boolean v0, v14, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 553
    iget-object v0, v14, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    .line 554
    const/high16 v19, 0x10

    and-int v19, v19, v11

    if-eqz v19, :cond_2

    iget-object v0, v14, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 556
    move-object v9, v13

    .line 558
    :cond_2
    iget-object v0, v14, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v8

    .line 559
    .local v8, backgroundColor:I
    if-eqz v8, :cond_4

    .line 560
    if-eqz v16, :cond_3

    iget v0, v14, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_4

    .line 562
    :cond_3
    move-object/from16 v16, v14

    .line 563
    move/from16 v17, v8

    .line 567
    .end local v8           #backgroundColor:I
    :cond_4
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 573
    :cond_5
    iget-object v7, v14, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 574
    .local v7, appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    if-eqz v7, :cond_0

    iget-object v0, v7, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    iget-boolean v0, v7, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 576
    const/high16 v19, 0x10

    and-int v19, v19, v11

    if-eqz v19, :cond_6

    iget-object v0, v7, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 578
    move-object v9, v13

    .line 581
    :cond_6
    iget-object v0, v7, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v8

    .line 582
    .restart local v8       #backgroundColor:I
    if-eqz v8, :cond_0

    .line 583
    if-eqz v16, :cond_7

    iget v0, v14, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    .line 585
    :cond_7
    move-object/from16 v16, v14

    .line 586
    move/from16 v17, v8

    goto/16 :goto_1

    .line 592
    .end local v7           #appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    .end local v8           #backgroundColor:I
    .end local v11           #flags:I
    .end local v13           #win:Lcom/android/server/wm/WindowState;
    .end local v14           #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-eq v0, v9, :cond_9

    .line 596
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 597
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 600
    :cond_9
    if-eqz v17, :cond_10

    .line 604
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 605
    .local v6, animLayer:I
    move-object/from16 v0, v16

    iget-object v13, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 606
    .restart local v13       #win:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-eq v0, v13, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-eq v0, v13, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-ne v0, v13, :cond_b

    .line 608
    :cond_a
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 609
    .local v5, N:I
    const/4 v12, 0x0

    :goto_2
    if-ge v12, v5, :cond_b

    .line 610
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/WindowStateAnimator;

    .line 611
    .restart local v14       #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    iget-boolean v0, v14, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    move/from16 v19, v0

    if-eqz v19, :cond_d

    .line 612
    iget v6, v14, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 619
    .end local v5           #N:I
    .end local v14           #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mIsMultiWindowEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_f

    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v19, v0

    if-nez v19, :cond_e

    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->getWindowModeLw()I

    move-result v19

    :goto_3
    invoke-static/range {v19 .. v19}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v19

    const/high16 v20, 0x200

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    .line 636
    .end local v6           #animLayer:I
    .end local v13           #win:Lcom/android/server/wm/WindowState;
    :cond_c
    :goto_4
    return-void

    .line 609
    .restart local v5       #N:I
    .restart local v6       #animLayer:I
    .restart local v13       #win:Lcom/android/server/wm/WindowState;
    .restart local v14       #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_d
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 619
    .end local v5           #N:I
    .end local v14           #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_e
    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowState;->getWindowModeLw()I

    move-result v19

    goto :goto_3

    .line 626
    :cond_f
    if-eqz v18, :cond_c

    .line 627
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mDw:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mDh:I

    move/from16 v20, v0

    add-int/lit8 v21, v6, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/DimSurface;->show(IIII)V

    goto :goto_4

    .line 632
    .end local v6           #animLayer:I
    .end local v13           #win:Lcom/android/server/wm/WindowState;
    :cond_10
    if-eqz v18, :cond_c

    .line 633
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/DimSurface;->hide()V

    goto :goto_4
.end method

.method private updateWindowsLocked(I)V
    .locals 26
    .parameter "displayId"

    .prologue
    .line 346
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    .line 348
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v2

    iget-object v0, v2, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWinAnimators:Lcom/android/server/wm/WinAnimatorList;

    move-object/from16 v25, v0

    .line 350
    .local v25, winAnimatorList:Lcom/android/server/wm/WinAnimatorList;
    const/16 v21, 0x0

    .line 351
    .local v21, unForceHiding:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    const/16 v22, 0x0

    .line 353
    .local v22, wallpaperInUnForceHiding:Z
    const/16 v18, 0x0

    .line 355
    .local v18, keyguard:Lcom/android/server/wm/WindowState;
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v16, v2, -0x1

    .local v16, i:I
    :goto_0
    if-ltz v16, :cond_15

    .line 356
    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/wm/WindowStateAnimator;

    .line 357
    .local v24, winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 358
    .local v3, win:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v24

    iget v14, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttrFlags:I

    .line 360
    .local v14, flags:I
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    if-eqz v2, :cond_2

    .line 361
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWasAnimating:Z

    move/from16 v23, v0

    .line 362
    .local v23, wasAnimating:Z
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Lcom/android/server/wm/WindowStateAnimator;->stepAnimationLocked(J)Z

    move-result v19

    .line 369
    .local v19, nowAnimating:Z
    if-eqz v23, :cond_0

    move-object/from16 v0, v24

    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne v2, v3, :cond_0

    .line 370
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 371
    const/4 v2, 0x0

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 374
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v4, "updateWindowsAndWallpaperLocked 2"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Landroid/util/SparseIntArray;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 379
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManagerPolicy;->doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 380
    move-object/from16 v18, v3

    .line 381
    if-nez v23, :cond_1

    if-eqz v19, :cond_1

    .line 385
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v2, v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 386
    const/4 v2, 0x4

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 389
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v4, "updateWindowsAndWallpaperLocked 3"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Landroid/util/SparseIntArray;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 392
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 394
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, v24

    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isAllDrawnLw()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 395
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:Z

    .line 479
    .end local v19           #nowAnimating:Z
    .end local v23           #wasAnimating:Z
    :cond_2
    :goto_1
    iget-object v11, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 480
    .local v11, atoken:Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v24

    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_4

    .line 481
    if-eqz v11, :cond_3

    iget-boolean v2, v11, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v2, :cond_4

    .line 482
    :cond_3
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Landroid/util/SparseIntArray;

    const/16 v4, 0x8

    move/from16 v0, p1

    invoke-virtual {v2, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 486
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v4, "updateWindowsAndWallpaperLocked 5"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Landroid/util/SparseIntArray;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 492
    :cond_4
    move-object/from16 v0, v24

    iget-object v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 493
    .local v10, appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    if-eqz v10, :cond_6

    iget-object v2, v10, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/Surface;

    if-eqz v2, :cond_6

    .line 494
    iget v2, v10, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransactionSeq:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    if-eq v2, v4, :cond_5

    .line 495
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    iput v2, v10, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransactionSeq:I

    .line 496
    const/4 v2, 0x0

    iput v2, v10, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    .line 498
    :cond_5
    iget v2, v10, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v2, v4, :cond_6

    .line 499
    move-object/from16 v0, v24

    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iput v2, v10, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    .line 355
    :cond_6
    add-int/lit8 v16, v16, -0x1

    goto/16 :goto_0

    .line 417
    .end local v10           #appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    .end local v11           #atoken:Lcom/android/server/wm/AppWindowToken;
    .restart local v19       #nowAnimating:Z
    .restart local v23       #wasAnimating:Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 418
    move-object/from16 v0, v24

    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttrFlags:I

    const/high16 v4, 0x8

    and-int/2addr v2, v4

    if-nez v2, :cond_b

    const/4 v15, 0x1

    .line 424
    .local v15, hideWhenLocked:Z
    :goto_2
    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_c

    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d4

    if-ne v2, v4, :cond_c

    const/16 v17, 0x1

    .line 426
    .local v17, isAttachedWindowToKeyguard:Z
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:Z

    if-eqz v2, :cond_8

    if-nez v17, :cond_8

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, v24

    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttrFlags:I

    const/high16 v4, 0x8

    and-int/2addr v2, v4

    if-eqz v2, :cond_9

    :cond_8
    if-eqz v17, :cond_d

    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-nez v2, :cond_d

    .line 428
    :cond_9
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v12

    .line 467
    .local v12, changed:Z
    :cond_a
    :goto_4
    if-eqz v12, :cond_2

    const/high16 v2, 0x10

    and-int/2addr v2, v14

    if-eqz v2, :cond_2

    .line 468
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 469
    const/4 v2, 0x0

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 472
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v4, "updateWindowsAndWallpaperLocked 4"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Landroid/util/SparseIntArray;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 418
    .end local v12           #changed:Z
    .end local v15           #hideWhenLocked:Z
    .end local v17           #isAttachedWindowToKeyguard:Z
    :cond_b
    const/4 v15, 0x0

    goto :goto_2

    .line 424
    .restart local v15       #hideWhenLocked:Z
    :cond_c
    const/16 v17, 0x0

    goto :goto_3

    .line 433
    .restart local v17       #isAttachedWindowToKeyguard:Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_f

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    :goto_5
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getWindowModeLw()I

    move-result v6

    iget-object v7, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v7, :cond_10

    iget-object v7, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getWindowModeLw()I

    move-result v7

    :goto_6
    invoke-interface/range {v2 .. v7}, Landroid/view/WindowManagerPolicy;->mustBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 434
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v12

    .line 435
    .restart local v12       #changed:Z
    if-eqz v12, :cond_e

    const-string v2, "WindowAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Now policy mustBeForceHidden hideLw: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_e
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getWindowModeLw()I

    move-result v2

    invoke-static {v2}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v20

    .line 437
    .local v20, option:I
    if-eqz v12, :cond_a

    const/high16 v2, 0x80

    and-int v2, v2, v20

    if-eqz v2, :cond_a

    .line 438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    goto/16 :goto_4

    .line 433
    .end local v12           #changed:Z
    .end local v20           #option:I
    :cond_f
    const/4 v5, 0x0

    goto :goto_5

    :cond_10
    const/4 v7, 0x0

    goto :goto_6

    .line 442
    :cond_11
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    move-result v12

    .line 445
    .restart local v12       #changed:Z
    if-eqz v12, :cond_a

    .line 446
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_13

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 448
    if-nez v21, :cond_12

    .line 449
    new-instance v21, Ljava/util/ArrayList;

    .end local v21           #unForceHiding:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 451
    .restart local v21       #unForceHiding:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    :cond_12
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    const/high16 v2, 0x10

    and-int/2addr v2, v14

    if-eqz v2, :cond_13

    .line 453
    const/16 v22, 0x1

    .line 456
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget v2, v2, Lcom/android/server/wm/WindowState;->mLayer:I

    iget v4, v3, Lcom/android/server/wm/WindowState;->mLayer:I

    if-ge v2, v4, :cond_a

    .line 460
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    goto/16 :goto_4

    .line 504
    .end local v3           #win:Lcom/android/server/wm/WindowState;
    .end local v12           #changed:Z
    .end local v14           #flags:I
    .end local v15           #hideWhenLocked:Z
    .end local v17           #isAttachedWindowToKeyguard:Z
    .end local v19           #nowAnimating:Z
    .end local v23           #wasAnimating:Z
    .end local v24           #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_15
    if-eqz v18, :cond_18

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 506
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowState;->isAllDrawnLw()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 507
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v2, :cond_16

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    .line 508
    :cond_16
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 509
    .local v8, NC:I
    const/16 v16, 0x0

    :goto_7
    move/from16 v0, v16

    if-ge v0, v8, :cond_18

    .line 510
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v13, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 511
    .local v13, childWinAnimator:Lcom/android/server/wm/WindowStateAnimator;
    if-eqz v13, :cond_17

    invoke-virtual {v13}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    .line 509
    :cond_17
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    .line 518
    .end local v8           #NC:I
    .end local v13           #childWinAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_18
    if-eqz v21, :cond_1a

    .line 519
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v16, v2, -0x1

    :goto_8
    if-ltz v16, :cond_1a

    .line 520
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move/from16 v0, v22

    invoke-interface {v2, v0}, Landroid/view/WindowManagerPolicy;->createForceHideEnterAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v9

    .line 521
    .local v9, a:Landroid/view/animation/Animation;
    if-eqz v9, :cond_19

    .line 522
    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/wm/WindowStateAnimator;

    .line 523
    .restart local v24       #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    .line 524
    const/4 v2, 0x1

    move-object/from16 v0, v24

    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    .line 519
    .end local v24           #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_19
    add-int/lit8 v16, v16, -0x1

    goto :goto_8

    .line 528
    .end local v9           #a:Landroid/view/animation/Animation;
    :cond_1a
    return-void
.end method


# virtual methods
.method addDisplayLocked(I)V
    .locals 1
    .parameter "displayId"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 150
    if-nez p1, :cond_0

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    .line 153
    :cond_0
    return-void
.end method

.method clearPendingActions()V
    .locals 1

    .prologue
    .line 959
    monitor-enter p0

    .line 960
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/android/server/wm/WindowAnimator;->mPendingActions:I

    .line 961
    monitor-exit p0

    .line 962
    return-void

    .line 961
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 11
    .parameter "pw"
    .parameter "prefix"
    .parameter "dumpAll"

    .prologue
    .line 838
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 839
    .local v5, subPrefix:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 841
    .local v6, subSubPrefix:Ljava/lang/String;
    const/4 v4, 0x0

    .line 842
    .local v4, needSep:Z
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mAppAnimators:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_1

    .line 843
    const/4 v4, 0x1

    .line 844
    const-string v9, "  App Animators:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 845
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mAppAnimators:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 846
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mAppAnimators:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppWindowAnimator;

    .line 847
    .local v0, anim:Lcom/android/server/wm/AppWindowAnimator;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "App Animator #"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 848
    const/16 v9, 0x20

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 849
    if-eqz p3, :cond_0

    .line 850
    const/16 v9, 0x3a

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(C)V

    .line 851
    invoke-virtual {v0, p1, v5, p3}, Lcom/android/server/wm/AppWindowAnimator;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 845
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 853
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_1

    .line 857
    .end local v0           #anim:Lcom/android/server/wm/AppWindowAnimator;
    .end local v2           #i:I
    :cond_1
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_4

    .line 858
    if-eqz v4, :cond_2

    .line 859
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 861
    :cond_2
    const/4 v4, 0x1

    .line 862
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "Wallpaper tokens:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 863
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .restart local v2       #i:I
    :goto_2
    if-ltz v2, :cond_4

    .line 864
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowToken;

    .line 865
    .local v7, token:Lcom/android/server/wm/WindowToken;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "Wallpaper #"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 866
    const/16 v9, 0x20

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 867
    if-eqz p3, :cond_3

    .line 868
    const/16 v9, 0x3a

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(C)V

    .line 869
    invoke-virtual {v7, p1, v5}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 863
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 871
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_3

    .line 876
    .end local v2           #i:I
    .end local v7           #token:Lcom/android/server/wm/WindowToken;
    :cond_4
    if-eqz v4, :cond_5

    .line 877
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 879
    :cond_5
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v2, v9, :cond_10

    .line 880
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "DisplayContentsAnimator #"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 881
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 882
    const-string v9, ":"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 883
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 884
    .local v1, displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    const/4 v3, 0x0

    .local v3, j:I
    :goto_5
    iget-object v9, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWinAnimators:Lcom/android/server/wm/WinAnimatorList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_6

    .line 885
    iget-object v9, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWinAnimators:Lcom/android/server/wm/WinAnimatorList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowStateAnimator;

    .line 886
    .local v8, wanim:Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "Window #"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 887
    const-string v9, ": "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 884
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 889
    .end local v8           #wanim:Lcom/android/server/wm/WindowStateAnimator;
    :cond_6
    iget-object v9, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    if-eqz v9, :cond_8

    .line 890
    if-nez p3, :cond_7

    iget-object v9, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    iget-boolean v9, v9, Lcom/android/server/wm/DimSurface;->mDimShown:Z

    if-eqz v9, :cond_8

    .line 891
    :cond_7
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mWindowAnimationBackgroundSurface:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 892
    iget-object v9, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    invoke-virtual {v9, v6, p1}, Lcom/android/server/wm/DimSurface;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 895
    :cond_8
    iget-object v9, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    if-eqz v9, :cond_d

    .line 896
    if-nez p3, :cond_9

    iget-object v9, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    iget-boolean v9, v9, Lcom/android/server/wm/DimAnimator;->mDimShown:Z

    if-eqz v9, :cond_a

    .line 897
    :cond_9
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mDimAnimator:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 898
    iget-object v9, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    invoke-virtual {v9, v6, p1}, Lcom/android/server/wm/DimAnimator;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 903
    :cond_a
    :goto_6
    iget-object v9, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    if-eqz v9, :cond_e

    .line 904
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mDimParams:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 905
    iget-object v9, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    invoke-virtual {v9, v6, p1}, Lcom/android/server/wm/DimAnimator$Parameters;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 909
    :cond_b
    :goto_7
    iget-object v9, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v9, :cond_f

    .line 910
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mScreenRotationAnimation:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 911
    iget-object v9, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v9, v6, p1}, Lcom/android/server/wm/ScreenRotationAnimation;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 879
    :cond_c
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    .line 900
    :cond_d
    if-eqz p3, :cond_a

    .line 901
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "no DimAnimator "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 906
    :cond_e
    if-eqz p3, :cond_b

    .line 907
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "no DimParams "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 912
    :cond_f
    if-eqz p3, :cond_c

    .line 913
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "no ScreenRotationAnimation "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    .line 917
    .end local v1           #displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v3           #j:I
    :cond_10
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 919
    if-eqz p3, :cond_11

    .line 920
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mAnimTransactionSequence="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 921
    iget v9, p0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 922
    const-string v9, " mForceHiding="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 924
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mCurrentTime="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 925
    iget-wide v9, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-static {v9, v10}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 926
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mDw="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 927
    iget v9, p0, Lcom/android/server/wm/WindowAnimator;->mDw:I

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(I)V

    const-string v9, " mDh="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, p0, Lcom/android/server/wm/WindowAnimator;->mDh:I

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 928
    const-string v9, " mInnerDw="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, p0, Lcom/android/server/wm/WindowAnimator;->mInnerDw:I

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 929
    const-string v9, " mInnerDh="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, p0, Lcom/android/server/wm/WindowAnimator;->mInnerDh:I

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(I)V

    .line 931
    :cond_11
    iget v9, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    if-eqz v9, :cond_12

    .line 932
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mBulkUpdateParams=0x"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 933
    iget v9, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 934
    iget v9, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    invoke-static {v9}, Lcom/android/server/wm/WindowAnimator;->bulkUpdateParamsToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 936
    :cond_12
    iget v9, p0, Lcom/android/server/wm/WindowAnimator;->mPendingActions:I

    if-eqz v9, :cond_13

    .line 937
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mPendingActions=0x"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 938
    iget v9, p0, Lcom/android/server/wm/WindowAnimator;->mPendingActions:I

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 940
    :cond_13
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v9, :cond_14

    .line 941
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mWindowDetachedWallpaper="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 942
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 944
    :cond_14
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mWallpaperTarget="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 945
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mWpAppAnimator="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mWpAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 946
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v9, :cond_15

    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v9, :cond_16

    .line 947
    :cond_15
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mLowerWallpaperTarget="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 948
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 949
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mUpperWallpaperTarget="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 950
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 952
    :cond_16
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v9, :cond_17

    .line 953
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mUniverseBackground="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 954
    const-string v9, " mAboveUniverseLayer="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, p0, Lcom/android/server/wm/WindowAnimator;->mAboveUniverseLayer:I

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(I)V

    .line 956
    :cond_17
    return-void
.end method

.method getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;
    .locals 1
    .parameter "displayId"

    .prologue
    .line 999
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    return-object v0
.end method

.method hideWallpapersLocked(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Ljava/util/ArrayList;)V
    .locals 9
    .parameter "w"
    .parameter "wallpaperTarget"
    .parameter "lowerWallpaperTarget"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowState;",
            "Lcom/android/server/wm/WindowState;",
            "Lcom/android/server/wm/WindowState;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowToken;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, wallpaperTokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowToken;>;"
    const/4 v8, 0x0

    .line 286
    if-ne p2, p1, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    if-nez p2, :cond_4

    .line 287
    :cond_1
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 288
    .local v2, numTokens:I
    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_4

    .line 289
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowToken;

    .line 290
    .local v4, token:Lcom/android/server/wm/WindowToken;
    iget-object v7, v4, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 291
    .local v3, numWindows:I
    add-int/lit8 v1, v3, -0x1

    .local v1, j:I
    :goto_1
    if-ltz v1, :cond_3

    .line 292
    iget-object v7, v4, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 293
    .local v5, wallpaper:Lcom/android/server/wm/WindowState;
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 294
    .local v6, winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    iget-boolean v7, v6, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-nez v7, :cond_2

    .line 295
    invoke-virtual {v6}, Lcom/android/server/wm/WindowStateAnimator;->hide()V

    .line 296
    iget-object v7, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7, v5, v8}, Lcom/android/server/wm/WindowManagerService;->dispatchWallpaperVisibility(Lcom/android/server/wm/WindowState;Z)V

    .line 297
    const/4 v7, 0x4

    invoke-virtual {p0, v8, v7}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 291
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 305
    .end local v5           #wallpaper:Lcom/android/server/wm/WindowState;
    .end local v6           #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_3
    const/4 v7, 0x1

    iput-boolean v7, v4, Lcom/android/server/wm/WindowToken;->hidden:Z

    .line 288
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 308
    .end local v0           #i:I
    .end local v1           #j:I
    .end local v2           #numTokens:I
    .end local v3           #numWindows:I
    .end local v4           #token:Lcom/android/server/wm/WindowToken;
    :cond_4
    return-void
.end method

.method hideWallpapersLocked(Lcom/android/server/wm/WindowState;Z)V
    .locals 3
    .parameter "w"
    .parameter "fromAnimator"

    .prologue
    .line 276
    if-eqz p2, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->hideWallpapersLocked(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Ljava/util/ArrayList;)V

    .line 282
    :goto_0
    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->hideWallpapersLocked(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method isDimmingLocked(I)Z
    .locals 1
    .parameter "displayId"

    .prologue
    .line 808
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDimmingLocked(Lcom/android/server/wm/WindowStateAnimator;)Z
    .locals 2
    .parameter "winAnimator"

    .prologue
    .line 812
    iget-object v1, p1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v1

    iget-object v0, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    .line 814
    .local v0, dimParams:Lcom/android/server/wm/DimAnimator$Parameters;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/DimAnimator$Parameters;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method removeDisplayLocked(I)V
    .locals 3
    .parameter "displayId"

    .prologue
    const/4 v2, 0x0

    .line 156
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 157
    .local v0, displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    if-eqz v0, :cond_2

    .line 158
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    invoke-virtual {v1}, Lcom/android/server/wm/DimSurface;->kill()V

    .line 160
    iput-object v2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    .line 162
    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v1, :cond_1

    .line 163
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 164
    iput-object v2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 166
    :cond_1
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    if-eqz v1, :cond_2

    .line 167
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/DimAnimator;->kill()V

    .line 168
    iput-object v2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    .line 172
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 173
    return-void
.end method

.method setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V
    .locals 6
    .parameter "appAnimator"
    .parameter "changes"
    .parameter "s"

    .prologue
    .line 970
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 971
    .local v1, displays:Landroid/util/SparseIntArray;
    iget-object v4, p1, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 972
    iget-object v4, p1, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowStateAnimator;

    .line 973
    .local v3, winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    iget-object v4, v3, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    .line 974
    .local v0, displayId:I
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-gez v4, :cond_0

    .line 975
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 977
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {v4, p3, v5}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 980
    invoke-virtual {v1, v0, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 971
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 983
    .end local v0           #displayId:I
    .end local v3           #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_1
    return-void
.end method

.method setCurrentFocus(Lcom/android/server/wm/WindowState;)V
    .locals 0
    .parameter "currentFocus"

    .prologue
    .line 796
    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 797
    return-void
.end method

.method setDisplayDimensions(IIII)V
    .locals 0
    .parameter "curWidth"
    .parameter "curHeight"
    .parameter "appWidth"
    .parameter "appHeight"

    .prologue
    .line 801
    iput p1, p0, Lcom/android/server/wm/WindowAnimator;->mDw:I

    .line 802
    iput p2, p0, Lcom/android/server/wm/WindowAnimator;->mDh:I

    .line 803
    iput p3, p0, Lcom/android/server/wm/WindowAnimator;->mInnerDw:I

    .line 804
    iput p4, p0, Lcom/android/server/wm/WindowAnimator;->mInnerDh:I

    .line 805
    return-void
.end method

.method setPendingLayoutChanges(II)V
    .locals 2
    .parameter "displayId"
    .parameter "changes"

    .prologue
    .line 965
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    or-int/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 966
    return-void
.end method

.method setScreenRotationAnimationLocked(ILcom/android/server/wm/ScreenRotationAnimation;)V
    .locals 1
    .parameter "displayId"
    .parameter "animation"

    .prologue
    .line 995
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iput-object p2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 996
    return-void
.end method

.method updateAnimToLayoutLocked()V
    .locals 4

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimToLayout:Lcom/android/server/wm/WindowAnimator$AnimatorToLayoutParams;

    .line 178
    .local v0, animToLayout:Lcom/android/server/wm/WindowAnimator$AnimatorToLayoutParams;
    monitor-enter v0

    .line 179
    :try_start_0
    iget v1, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    iput v1, v0, Lcom/android/server/wm/WindowAnimator$AnimatorToLayoutParams;->mBulkUpdateParams:I

    .line 180
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/WindowAnimator$AnimatorToLayoutParams;->mPendingLayoutChanges:Landroid/util/SparseIntArray;

    .line 181
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    iput-object v1, v0, Lcom/android/server/wm/WindowAnimator$AnimatorToLayoutParams;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 183
    iget-boolean v1, v0, Lcom/android/server/wm/WindowAnimator$AnimatorToLayoutParams;->mUpdateQueued:Z

    if-nez v1, :cond_0

    .line 184
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowAnimator$AnimatorToLayoutParams;->mUpdateQueued:Z

    .line 185
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0x19

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 187
    :cond_0
    monitor-exit v0

    .line 188
    return-void

    .line 187
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
