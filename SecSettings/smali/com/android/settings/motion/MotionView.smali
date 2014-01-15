.class public Lcom/android/settings_ex/motion/MotionView;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "MotionView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field public static final AIR_CALL_ACCEPT:I = 0x773

.field public static final AIR_CLIP:I = 0x772

.field public static final AIR_GANLANCE_VIEW:I = 0x76d

.field public static final AIR_ITEM_MOVE:I = 0x771

.field public static final AIR_NOTE_SWAP:I = 0x76f

.field public static final AIR_SCROLL:I = 0x770

.field public static final AIR_WEB_NAVIGATE:I = 0x76e

.field private static final ANIMATION_DEALY:I = 0x1f4

.field private static final CHANGE_ANIMATION:I = 0x66

.field private static final EXTRA_SENSITIVITY:Ljava/lang/String; = "sensitivity"

.field private static final EXTRA_TITLE:Ljava/lang/String; = "title"

.field private static final KEY_SENSITIVITY:Ljava/lang/String; = "sensitivity"

.field private static final KEY_SENSITIVITY_CATEGORY:Ljava/lang/String; = "sensitivity_category"

.field private static final KEY_TUTORIAL:Ljava/lang/String; = "tutorial"

.field private static final LAST_ANIMATION_DEALY:I = 0x7d0

.field private static final LAST_ANIMATION_INDEX:I = 0x0

.field public static final MOTION_DOUBLE_TAP_TO_GO_TOP:I = 0x579

.field public static final MOTION_PAN_TO_BROWSE_IMAGE:I = 0x4b2

.field public static final MOTION_PAN_TO_MOVE_ICON:I = 0x4b1

.field public static final MOTION_PICK_UP_TO_BE_NOTIFIED:I = 0x5dd

.field public static final MOTION_PICK_UP_TO_CALL_OUT:I = 0x5de

.field public static final MOTION_SHAKE_TO_UPDATE:I = 0x515

.field public static final MOTION_TILT_TO_SCROLL_LIST:I = 0x44e

.field public static final MOTION_TILT_TO_ZOOM:I = 0x44d

.field public static final MOTION_TURN_OVER_TO_MUTE:I = 0x641

.field public static final MOTION_UNLOCK_CAMERA_SHORT_CUT:I = 0x6a5

.field private static final QUICK_ANIMATION_DEALY:I = 0x7d

.field private static final RESULT_BACK:I = 0x65

.field private static final RESULT_INFORMATION:I = 0x64

.field public static final SENSITIVITY_TEST:I = 0xc

.field public static final SURFACE_PALM_SWIPE:I = 0x709

.field public static final SURFACE_PALM_TOUCH:I = 0x70a

.field public static final SURFACE_TAP_AND_TWIST:I = 0x70b

.field private static final TAG:Ljava/lang/String; = "MotionView"

.field private static final TUTORIAL:I = 0xa


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mAirCallAcceptAnimationImage:[I

.field private mAirClipAnimationImage:[I

.field private mAirGlanceViewAnimationImage:[I

.field private mAirItemMoveAnimationImage:[I

.field private mAirMotionScrollAnimationImage:[I

.field private mAirNoteSwapAnimationImage:[I

.field private mAirWebNavigateAnimationImage:[I

.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationImage:[I

.field private mAnimationIndex:I

.field private mAnimationView:Landroid/widget/ImageView;

.field private mCameraShortCutDialog:Landroid/app/AlertDialog;

.field private mCurrentDB:Ljava/lang/String;

.field private mCurrentMotion:I

.field private mCurrentText:Ljava/lang/String;

.field private mDoubleTapToGoTopAnimationImage:[I

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mMotionDialog:Landroid/app/AlertDialog;

.field private mPanToBrowseImageAnimationImage:[I

.field private mPanToMoveIconAnimationImage:[I

.field private mPickUpToBeNotifiedAnimationImage:[I

.field private mPickUpToCallOutAnimationImage:[I

.field private mSensitivity:Lcom/android/settings_ex/motion/SensitivityPreference;

.field private mShakeToUpdateAnimationImage:[I

.field private mSurfacePalmSwipeAnimationImage:[I

.field private mSurfacePalmTouchAnimationImage:[I

.field private mSurfaceTapAndTwistAnimationImage:[I

.field private mTabletPanToBrowseImageAnimationImage:[I

.field private mTabletPanToMoveIconAnimationImage:[I

.field private mTiltToScrollListAnimationImage:[I

.field private mTiltToZoomAnimationImage:[I

.field private mTitle:Ljava/lang/String;

.field private mTurnOverToMuteAnimationImage:[I

.field private mTutorial:Landroid/preference/Preference;

.field private mUnlockCameraShortCut:[I

.field private mUseRingDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x3

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 98
    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 102
    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mMotionDialog:Landroid/app/AlertDialog;

    .line 103
    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mGuideDialog:Landroid/app/AlertDialog;

    .line 104
    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mCameraShortCutDialog:Landroid/app/AlertDialog;

    .line 107
    iput v2, p0, Lcom/android/settings_ex/motion/MotionView;->mAnimationIndex:I

    .line 108
    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mAnimationView:Landroid/widget/ImageView;

    .line 111
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mTiltToZoomAnimationImage:[I

    .line 112
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mTiltToScrollListAnimationImage:[I

    .line 113
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mPanToMoveIconAnimationImage:[I

    .line 114
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mPanToBrowseImageAnimationImage:[I

    .line 115
    new-array v0, v4, [I

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mShakeToUpdateAnimationImage:[I

    .line 116
    new-array v0, v4, [I

    fill-array-data v0, :array_5

    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mDoubleTapToGoTopAnimationImage:[I

    .line 117
    new-array v0, v1, [I

    fill-array-data v0, :array_6

    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mPickUpToBeNotifiedAnimationImage:[I

    .line 118
    new-array v0, v1, [I

    fill-array-data v0, :array_7

    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mTurnOverToMuteAnimationImage:[I

    .line 119
    new-array v0, v1, [I

    fill-array-data v0, :array_8

    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mPickUpToCallOutAnimationImage:[I

    .line 120
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_9

    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mUnlockCameraShortCut:[I

    .line 121
    new-array v0, v4, [I

    fill-array-data v0, :array_a

    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mTabletPanToMoveIconAnimationImage:[I

    .line 122
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_b

    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mTabletPanToBrowseImageAnimationImage:[I

    .line 125
    new-array v0, v3, [I

    const v1, 0x7f02052c

    aput v1, v0, v2

    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mSurfacePalmSwipeAnimationImage:[I

    .line 126
    new-array v0, v3, [I

    const v1, 0x7f02052c

    aput v1, v0, v2

    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mSurfacePalmTouchAnimationImage:[I

    .line 127
    new-array v0, v3, [I

    const v1, 0x7f02052c

    aput v1, v0, v2

    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mSurfaceTapAndTwistAnimationImage:[I

    .line 130
    new-array v0, v3, [I

    const v1, 0x7f0200c1

    aput v1, v0, v2

    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mAirGlanceViewAnimationImage:[I

    .line 131
    new-array v0, v3, [I

    const v1, 0x7f02002a

    aput v1, v0, v2

    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mAirWebNavigateAnimationImage:[I

    .line 132
    new-array v0, v3, [I

    const v1, 0x7f02002a

    aput v1, v0, v2

    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mAirNoteSwapAnimationImage:[I

    .line 133
    new-array v0, v3, [I

    const v1, 0x7f020029

    aput v1, v0, v2

    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mAirMotionScrollAnimationImage:[I

    .line 134
    new-array v0, v3, [I

    const v1, 0x7f02002a

    aput v1, v0, v2

    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mAirItemMoveAnimationImage:[I

    .line 135
    new-array v0, v3, [I

    const v1, 0x7f020020

    aput v1, v0, v2

    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mAirClipAnimationImage:[I

    .line 136
    new-array v0, v3, [I

    const v1, 0x7f02001f

    aput v1, v0, v2

    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mAirCallAcceptAnimationImage:[I

    .line 142
    new-instance v0, Lcom/android/settings_ex/motion/MotionView$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/motion/MotionView$1;-><init>(Lcom/android/settings_ex/motion/MotionView;)V

    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mAnimationHandler:Landroid/os/Handler;

    return-void

    .line 111
    nop

    :array_0
    .array-data 0x4
        0xaft 0x2t 0x2t 0x7ft
        0xb0t 0x2t 0x2t 0x7ft
        0xb1t 0x2t 0x2t 0x7ft
    .end array-data

    .line 112
    :array_1
    .array-data 0x4
        0xcbt 0x2t 0x2t 0x7ft
        0xcct 0x2t 0x2t 0x7ft
        0xcdt 0x2t 0x2t 0x7ft
        0xcet 0x2t 0x2t 0x7ft
        0xcft 0x2t 0x2t 0x7ft
    .end array-data

    .line 113
    :array_2
    .array-data 0x4
        0xabt 0x2t 0x2t 0x7ft
        0xact 0x2t 0x2t 0x7ft
        0xadt 0x2t 0x2t 0x7ft
        0xaet 0x2t 0x2t 0x7ft
    .end array-data

    .line 114
    :array_3
    .array-data 0x4
        0x9bt 0x2t 0x2t 0x7ft
        0x9ct 0x2t 0x2t 0x7ft
        0x9dt 0x2t 0x2t 0x7ft
        0x9et 0x2t 0x2t 0x7ft
        0x9ft 0x2t 0x2t 0x7ft
        0xa0t 0x2t 0x2t 0x7ft
        0xa1t 0x2t 0x2t 0x7ft
    .end array-data

    .line 115
    :array_4
    .array-data 0x4
        0xbat 0x2t 0x2t 0x7ft
        0xbbt 0x2t 0x2t 0x7ft
        0xbat 0x2t 0x2t 0x7ft
        0xbbt 0x2t 0x2t 0x7ft
    .end array-data

    .line 116
    :array_5
    .array-data 0x4
        0xa4t 0x2t 0x2t 0x7ft
        0xa5t 0x2t 0x2t 0x7ft
        0xa4t 0x2t 0x2t 0x7ft
        0xa5t 0x2t 0x2t 0x7ft
    .end array-data

    .line 117
    :array_6
    .array-data 0x4
        0xb5t 0x2t 0x2t 0x7ft
        0xb6t 0x2t 0x2t 0x7ft
        0xb7t 0x2t 0x2t 0x7ft
    .end array-data

    .line 118
    :array_7
    .array-data 0x4
        0xd4t 0x2t 0x2t 0x7ft
        0xd5t 0x2t 0x2t 0x7ft
        0xd6t 0x2t 0x2t 0x7ft
    .end array-data

    .line 119
    :array_8
    .array-data 0x4
        0xa8t 0x2t 0x2t 0x7ft
        0xa9t 0x2t 0x2t 0x7ft
        0xaat 0x2t 0x2t 0x7ft
    .end array-data

    .line 120
    :array_9
    .array-data 0x4
        0xb8t 0x2t 0x2t 0x7ft
        0xb9t 0x2t 0x2t 0x7ft
    .end array-data

    .line 121
    :array_a
    .array-data 0x4
        0xc6t 0x2t 0x2t 0x7ft
        0xc7t 0x2t 0x2t 0x7ft
        0xc8t 0x2t 0x2t 0x7ft
        0xc9t 0x2t 0x2t 0x7ft
    .end array-data

    .line 122
    :array_b
    .array-data 0x4
        0xbet 0x2t 0x2t 0x7ft
        0xbft 0x2t 0x2t 0x7ft
        0xc0t 0x2t 0x2t 0x7ft
        0xc1t 0x2t 0x2t 0x7ft
        0xc2t 0x2t 0x2t 0x7ft
        0xc3t 0x2t 0x2t 0x7ft
        0xc4t 0x2t 0x2t 0x7ft
        0xc5t 0x2t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings_ex/motion/MotionView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings_ex/motion/MotionView;->updateAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/motion/MotionView;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/motion/MotionView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings_ex/motion/MotionView;->showMotionDialog()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/motion/MotionView;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/motion/MotionView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings_ex/motion/MotionView;->stopAnimation()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/motion/MotionView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings_ex/motion/MotionView;->startTryActually(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/motion/MotionView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/motion/MotionView;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/motion/MotionView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings_ex/motion/MotionView;->updateCheckedUI()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings_ex/motion/MotionView;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/motion/MotionView;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/motion/MotionView;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/motion/MotionView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings_ex/motion/MotionView;->startTryActually()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings_ex/motion/MotionView;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private setArguments()V
    .locals 13

    .prologue
    const v12, 0x7f090bfb

    const v11, 0x7f090bfa

    const/16 v9, 0x10

    const/4 v10, -0x2

    const/4 v8, 0x0

    .line 514
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 515
    .local v0, arguments:Landroid/os/Bundle;
    const-string v6, "title"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mTitle:Ljava/lang/String;

    .line 516
    const-string v6, "sensitivity"

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 517
    .local v1, bSensitivity:Z
    new-instance v6, Landroid/widget/Switch;

    iget-object v7, p0, Lcom/android/settings_ex/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-direct {v6, v7}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mActionBarSwitch:Landroid/widget/Switch;

    .line 523
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mActivity:Landroid/app/Activity;

    instance-of v6, v6, Landroid/preference/PreferenceActivity;

    if-eqz v6, :cond_0

    .line 525
    iget-object v5, p0, Lcom/android/settings_ex/motion/MotionView;->mActivity:Landroid/app/Activity;

    check-cast v5, Landroid/preference/PreferenceActivity;

    .line 527
    .local v5, preferenceActivity:Landroid/preference/PreferenceActivity;
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f0008

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 529
    .local v4, padding:I
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v8, v8, v4, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 530
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 532
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/motion/MotionView;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v8, Landroid/app/ActionBar$LayoutParams;

    const/16 v9, 0x15

    invoke-direct {v8, v10, v10, v9}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v6, v7, v8}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 537
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mActionBarLayout:Landroid/view/View;

    .line 541
    .end local v4           #padding:I
    .end local v5           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_0
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 542
    const-string v6, "MotionView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "title: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/motion/MotionView;->mTitle:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mTitle:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 544
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings_ex/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090be1

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 545
    const/16 v6, 0x44d

    iput v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentMotion:I

    .line 546
    const-string v6, "motion_zooming"

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 547
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mTiltToZoomAnimationImage:[I

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mAnimationImage:[I

    .line 548
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090c01

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 549
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    invoke-virtual {v6, v11}, Landroid/preference/Preference;->setTitle(I)V

    .line 687
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 688
    const-string v6, "sensitivity_category"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 689
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "sensitivity_category"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 693
    :cond_2
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mSensitivity:Lcom/android/settings_ex/motion/SensitivityPreference;

    iget v7, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentMotion:I

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/motion/SensitivityPreference;->setMotion(I)V

    .line 696
    :cond_3
    return-void

    .line 550
    :cond_4
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings_ex/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090be2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 551
    const/16 v6, 0x44e

    iput v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentMotion:I

    .line 552
    const-string v6, "motion_tilt_to_list_scrolling"

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 553
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mTiltToScrollListAnimationImage:[I

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mAnimationImage:[I

    .line 554
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090c02

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 555
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    invoke-virtual {v6, v11}, Landroid/preference/Preference;->setTitle(I)V

    goto :goto_0

    .line 556
    :cond_5
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings_ex/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090be4

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 557
    const/16 v6, 0x4b2

    iput v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentMotion:I

    .line 558
    const-string v6, "motion_pan_to_browse_image"

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 559
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mPanToBrowseImageAnimationImage:[I

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mAnimationImage:[I

    .line 560
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 561
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mTabletPanToBrowseImageAnimationImage:[I

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mAnimationImage:[I

    .line 563
    :cond_6
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090c04

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 564
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    invoke-virtual {v6, v12}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    .line 565
    :cond_7
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings_ex/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090be3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 566
    const/16 v6, 0x4b1

    iput v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentMotion:I

    .line 567
    const-string v6, "motion_panning"

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 568
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mPanToMoveIconAnimationImage:[I

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mAnimationImage:[I

    .line 569
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 570
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mTabletPanToMoveIconAnimationImage:[I

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mAnimationImage:[I

    .line 572
    :cond_8
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090c03

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 573
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    invoke-virtual {v6, v12}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    .line 574
    :cond_9
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings_ex/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090be5

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 575
    const/16 v6, 0x515

    iput v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentMotion:I

    .line 576
    const-string v6, "motion_shake"

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 577
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mShakeToUpdateAnimationImage:[I

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mAnimationImage:[I

    .line 579
    const/4 v3, 0x1

    .line 581
    .local v3, isKiesAirInstalled:Z
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.samsung.swift.app.kiesair"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    :goto_1
    if-eqz v3, :cond_a

    .line 586
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090c05

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 589
    :goto_2
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v7, 0x7f090bfc

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    .line 582
    :catch_0
    move-exception v2

    .line 583
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    goto :goto_1

    .line 588
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_a
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090c06

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentText:Ljava/lang/String;

    goto :goto_2

    .line 590
    .end local v3           #isKiesAirInstalled:Z
    :cond_b
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings_ex/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090be6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 591
    const/16 v6, 0x579

    iput v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentMotion:I

    .line 592
    const-string v6, "motion_double_tap"

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 593
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mDoubleTapToGoTopAnimationImage:[I

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mAnimationImage:[I

    .line 594
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090c09

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 595
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v7, 0x7f090bfd

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    .line 596
    :cond_c
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings_ex/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090be7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 597
    const/16 v6, 0x5dd

    iput v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentMotion:I

    .line 598
    const-string v6, "motion_pick_up"

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 599
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mPickUpToBeNotifiedAnimationImage:[I

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mAnimationImage:[I

    .line 601
    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticModel()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 602
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090c0b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 606
    :goto_3
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v7, 0x7f090bfe

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    .line 605
    :cond_d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/settings_ex/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090c0b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090c0c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentText:Ljava/lang/String;

    goto :goto_3

    .line 607
    :cond_e
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings_ex/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090be8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 608
    const/16 v6, 0x641

    iput v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentMotion:I

    .line 609
    const-string v6, "motion_overturn"

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 610
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mTurnOverToMuteAnimationImage:[I

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mAnimationImage:[I

    .line 611
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090c0d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 612
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v7, 0x7f090c00

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    .line 613
    :cond_f
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings_ex/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090c1a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 614
    const/16 v6, 0x5de

    iput v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentMotion:I

    .line 615
    const-string v6, "motion_pick_up_to_call_out"

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 616
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mPickUpToCallOutAnimationImage:[I

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mAnimationImage:[I

    .line 617
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090c1c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 618
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v7, 0x7f090bff

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    .line 619
    :cond_10
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings_ex/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090c35

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 620
    const/16 v6, 0x6a5

    iput v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentMotion:I

    .line 621
    const-string v6, "motion_unlock_camera_short_cut"

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 622
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mUnlockCameraShortCut:[I

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mAnimationImage:[I

    .line 623
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090c39

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 624
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v7, 0x7f090c38

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    .line 625
    :cond_11
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings_ex/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090c22

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 626
    const/16 v6, 0x709

    iput v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentMotion:I

    .line 627
    const-string v6, "surface_palm_swipe"

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 628
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mSurfacePalmSwipeAnimationImage:[I

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mAnimationImage:[I

    .line 629
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090c29

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 630
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v7, 0x7f090c28

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    .line 631
    :cond_12
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings_ex/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090c24

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 632
    const/16 v6, 0x70a

    iput v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentMotion:I

    .line 633
    const-string v6, "surface_palm_touch"

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 634
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mSurfacePalmTouchAnimationImage:[I

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mAnimationImage:[I

    .line 635
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090c2b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 636
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v7, 0x7f090c2a

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    .line 637
    :cond_13
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings_ex/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090c26

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 638
    const/16 v6, 0x70b

    iput v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentMotion:I

    .line 639
    const-string v6, "surface_tap_and_twist"

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 640
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mSurfaceTapAndTwistAnimationImage:[I

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mAnimationImage:[I

    .line 641
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090c2d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 642
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v7, 0x7f090c2c

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    .line 643
    :cond_14
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings_ex/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090c4f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 644
    const/16 v6, 0x76d

    iput v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentMotion:I

    .line 645
    const-string v6, "air_motion_glance_view"

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 646
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mAirGlanceViewAnimationImage:[I

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mAnimationImage:[I

    .line 647
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090c50

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 648
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v7, 0x7f090c6a

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    .line 649
    :cond_15
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings_ex/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090c51

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 650
    const/16 v6, 0x76e

    iput v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentMotion:I

    .line 651
    const-string v6, "air_motion_web_navigate"

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 652
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mAirWebNavigateAnimationImage:[I

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mAnimationImage:[I

    .line 653
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090c52

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 654
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v7, 0x7f090c6c

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    .line 655
    :cond_16
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings_ex/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090c53

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 656
    const/16 v6, 0x76f

    iput v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentMotion:I

    .line 657
    const-string v6, "air_motion_note_swap"

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 658
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mAirNoteSwapAnimationImage:[I

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mAnimationImage:[I

    .line 659
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090c54

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 660
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v7, 0x7f090c6d

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    .line 661
    :cond_17
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings_ex/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090c55

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 662
    const/16 v6, 0x770

    iput v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentMotion:I

    .line 663
    const-string v6, "air_motion_scroll"

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 664
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mAirMotionScrollAnimationImage:[I

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mAnimationImage:[I

    .line 665
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090c56

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 666
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v7, 0x7f090c6e

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    .line 667
    :cond_18
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings_ex/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090c59

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 668
    const/16 v6, 0x771

    iput v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentMotion:I

    .line 669
    const-string v6, "air_motion_item_move"

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 670
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mAirItemMoveAnimationImage:[I

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mAnimationImage:[I

    .line 671
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090c5a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 672
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v7, 0x7f090c73

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    .line 673
    :cond_19
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings_ex/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090c5c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 674
    const/16 v6, 0x772

    iput v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentMotion:I

    .line 675
    const-string v6, "air_motion_clip"

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 676
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mAirClipAnimationImage:[I

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mAnimationImage:[I

    .line 677
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090c5d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 678
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v7, 0x7f090c7e

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    .line 679
    :cond_1a
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings_ex/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090c5f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 680
    const/16 v6, 0x773

    iput v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentMotion:I

    .line 681
    const-string v6, "air_motion_call_accept"

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 682
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mAirCallAcceptAnimationImage:[I

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mAnimationImage:[I

    .line 683
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090c60

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 684
    iget-object v6, p0, Lcom/android/settings_ex/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v7, 0x7f090c81

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0
.end method

.method private showCameraShortCutDialog()V
    .locals 3

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/android/settings_ex/motion/MotionView;->allDialogDismiss()V

    .line 248
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090c37

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090bde

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090699

    new-instance v2, Lcom/android/settings_ex/motion/MotionView$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/motion/MotionView$2;-><init>(Lcom/android/settings_ex/motion/MotionView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090143

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mCameraShortCutDialog:Landroid/app/AlertDialog;

    .line 262
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mCameraShortCutDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings_ex/motion/MotionView$3;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/motion/MotionView$3;-><init>(Lcom/android/settings_ex/motion/MotionView;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 267
    return-void
.end method

.method private showMotionDialog()V
    .locals 4

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/android/settings_ex/motion/MotionView;->allDialogDismiss()V

    .line 273
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090c19

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, message:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090c18

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090c17

    new-instance v3, Lcom/android/settings_ex/motion/MotionView$4;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/motion/MotionView$4;-><init>(Lcom/android/settings_ex/motion/MotionView;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090143

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/motion/MotionView;->mMotionDialog:Landroid/app/AlertDialog;

    .line 294
    iget-object v1, p0, Lcom/android/settings_ex/motion/MotionView;->mMotionDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/settings_ex/motion/MotionView$5;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/motion/MotionView$5;-><init>(Lcom/android/settings_ex/motion/MotionView;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 300
    return-void
.end method

.method private showUseRingDialog()V
    .locals 3

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/android/settings_ex/motion/MotionView;->allDialogDismiss()V

    .line 343
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090c15

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090c14

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090699

    new-instance v2, Lcom/android/settings_ex/motion/MotionView$9;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/motion/MotionView$9;-><init>(Lcom/android/settings_ex/motion/MotionView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090c16

    new-instance v2, Lcom/android/settings_ex/motion/MotionView$8;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/motion/MotionView$8;-><init>(Lcom/android/settings_ex/motion/MotionView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 360
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mUseRingDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings_ex/motion/MotionView$10;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/motion/MotionView$10;-><init>(Lcom/android/settings_ex/motion/MotionView;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 366
    return-void
.end method

.method private startAnimation()V
    .locals 2

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    const-string v0, "MotionView"

    const-string v1, "startAnimation()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 499
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/motion/MotionView;->mAnimationIndex:I

    .line 500
    invoke-direct {p0}, Lcom/android/settings_ex/motion/MotionView;->updateAnimation()V

    goto :goto_0
.end method

.method private startTryActually()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/16 v5, 0xa

    const/4 v4, 0x1

    .line 370
    iget v2, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x44d

    if-ne v2, v3, :cond_1

    .line 371
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 372
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "image/jpeg"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    const-string v2, "com.sec.android.gallery3d"

    const-string v3, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    const-string v2, "MotionTest"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 375
    invoke-virtual {p0, v1, v5}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 453
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    iget v2, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x44e

    if-ne v2, v3, :cond_3

    .line 377
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 378
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 379
    const-string v2, "com.android.jcontacts"

    const-string v3, "com.sec.android.app.contacts.activities.TiltToScrollListTutorialActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    :goto_1
    invoke-virtual {p0, v1, v5}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 381
    :cond_2
    const-string v2, "com.android.contacts"

    const-string v3, "com.sec.android.app.contacts.activities.TiltToScrollListTutorialActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 384
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3
    iget v2, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x4b1

    if-ne v2, v3, :cond_4

    .line 385
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 386
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "com.sec.android.motions.settings.panningtutorial"

    const-string v3, "com.sec.android.motions.settings.panningtutorial.PanningTryActually"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    invoke-virtual {p0, v1, v5}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 388
    .end local v1           #intent:Landroid/content/Intent;
    :cond_4
    iget v2, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x4b2

    if-ne v2, v3, :cond_5

    .line 389
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 390
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "image/jpeg"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    const-string v2, "com.sec.android.gallery3d"

    const-string v3, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    const-string v2, "MotionTest"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 393
    invoke-virtual {p0, v1, v5}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 394
    .end local v1           #intent:Landroid/content/Intent;
    :cond_5
    iget v2, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x515

    if-ne v2, v3, :cond_6

    .line 402
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 403
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "com.android.settings_ex"

    const-string v3, "com.android.settings_ex.motion.ShakeTutorial"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    invoke-virtual {p0, v1, v5}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 405
    .end local v1           #intent:Landroid/content/Intent;
    :cond_6
    iget v2, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x579

    if-ne v2, v3, :cond_8

    .line 406
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 407
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 408
    const-string v2, "com.android.jcontacts"

    const-string v3, "com.sec.android.app.contacts.activities.DoubleTapTutorialActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    :goto_2
    invoke-virtual {p0, v1, v5}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 410
    :cond_7
    const-string v2, "com.android.contacts"

    const-string v3, "com.sec.android.app.contacts.activities.DoubleTapTutorialActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 413
    .end local v1           #intent:Landroid/content/Intent;
    :cond_8
    iget v2, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x5dd

    if-ne v2, v3, :cond_9

    .line 414
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 415
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "android.pickuptutorial.PICKUPTUTORIAL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    invoke-virtual {p0, v1, v5}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 417
    .end local v1           #intent:Landroid/content/Intent;
    :cond_9
    iget v2, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x5de

    if-ne v2, v3, :cond_a

    .line 418
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 419
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "com.android.mms.ui.DirectCallTutorial"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 421
    .end local v1           #intent:Landroid/content/Intent;
    :cond_a
    iget v2, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x6a5

    if-ne v2, v3, :cond_b

    .line 422
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 423
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "android.camerashortcut.CAMERASHORTCUTTUTORIAL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    invoke-virtual {p0, v1, v5}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 425
    .end local v1           #intent:Landroid/content/Intent;
    :cond_b
    iget v2, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x641

    if-ne v2, v3, :cond_d

    .line 426
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 427
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-ne v2, v6, :cond_c

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-eqz v2, :cond_c

    .line 428
    invoke-direct {p0}, Lcom/android/settings_ex/motion/MotionView;->showUseRingDialog()V

    goto/16 :goto_0

    .line 430
    :cond_c
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/settings_ex/motion/MotionView;->startTryActually(Z)V

    goto/16 :goto_0

    .line 432
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :cond_d
    iget v2, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x709

    if-eq v2, v3, :cond_0

    .line 434
    iget v2, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x70a

    if-eq v2, v3, :cond_0

    .line 436
    iget v2, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x70b

    if-eq v2, v3, :cond_0

    .line 438
    iget v2, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x76d

    if-ne v2, v3, :cond_e

    .line 439
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "goto glance view try view"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 440
    :cond_e
    iget v2, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x76e

    if-ne v2, v3, :cond_f

    .line 441
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "goto air web navigate try view"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 442
    :cond_f
    iget v2, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x76f

    if-ne v2, v3, :cond_10

    .line 443
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "goto air note swap try view"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 444
    :cond_10
    iget v2, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x770

    if-ne v2, v3, :cond_11

    .line 445
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "goto air scroll try view"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 446
    :cond_11
    iget v2, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x771

    if-ne v2, v3, :cond_12

    .line 447
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "goto air item move try view"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 448
    :cond_12
    iget v2, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x772

    if-ne v2, v3, :cond_13

    .line 449
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "goto air clip try view"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 450
    :cond_13
    iget v2, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x773

    if-ne v2, v3, :cond_0

    .line 451
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "goto air call accept try view"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method private startTryActually(Z)V
    .locals 3
    .parameter "useRing"

    .prologue
    .line 456
    iget v1, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentMotion:I

    const/16 v2, 0x641

    if-ne v1, v2, :cond_0

    .line 457
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 458
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "UseRing"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 459
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.callsettings.OverturnTutorialIncallScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 462
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    const-string v0, "MotionView"

    const-string v1, "stopAnimation()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private updateAnimation()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1f4

    const/16 v3, 0x66

    .line 466
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 467
    :cond_1
    const-string v0, "MotionView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHANGE_ANIMATION : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/motion/MotionView;->mAnimationIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 469
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mAnimationView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings_ex/motion/MotionView;->mAnimationImage:[I

    iget v2, p0, Lcom/android/settings_ex/motion/MotionView;->mAnimationIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 470
    iget v0, p0, Lcom/android/settings_ex/motion/MotionView;->mAnimationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings_ex/motion/MotionView;->mAnimationIndex:I

    .line 473
    :cond_2
    iget v0, p0, Lcom/android/settings_ex/motion/MotionView;->mAnimationIndex:I

    iget-object v1, p0, Lcom/android/settings_ex/motion/MotionView;->mAnimationImage:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings_ex/motion/MotionView;->mAnimationIndex:I

    .line 475
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 476
    invoke-direct {p0}, Lcom/android/settings_ex/motion/MotionView;->stopAnimation()V

    .line 477
    iget v0, p0, Lcom/android/settings_ex/motion/MotionView;->mAnimationIndex:I

    if-nez v0, :cond_3

    .line 478
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 480
    :cond_3
    iget v0, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentMotion:I

    const/16 v1, 0x579

    if-ne v0, v1, :cond_5

    .line 481
    iget v0, p0, Lcom/android/settings_ex/motion/MotionView;->mAnimationIndex:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    .line 482
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 484
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 487
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private updateCheckedUI()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 229
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 230
    .local v0, saved_value:Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/motion/MotionView;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 231
    iget-object v1, p0, Lcom/android/settings_ex/motion/MotionView;->mSensitivity:Lcom/android/settings_ex/motion/SensitivityPreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 232
    return-void
.end method


# virtual methods
.method public allDialogDismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 699
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 701
    iput-object v1, p0, Lcom/android/settings_ex/motion/MotionView;->mGuideDialog:Landroid/app/AlertDialog;

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mMotionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 704
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mMotionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 705
    iput-object v1, p0, Lcom/android/settings_ex/motion/MotionView;->mMotionDialog:Landroid/app/AlertDialog;

    .line 707
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mUseRingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 708
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mUseRingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 709
    iput-object v1, p0, Lcom/android/settings_ex/motion/MotionView;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 711
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mCameraShortCutDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 712
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mCameraShortCutDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 713
    iput-object v1, p0, Lcom/android/settings_ex/motion/MotionView;->mCameraShortCutDialog:Landroid/app/AlertDialog;

    .line 716
    :cond_3
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 167
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 168
    invoke-direct {p0}, Lcom/android/settings_ex/motion/MotionView;->setArguments()V

    .line 169
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 213
    const-string v0, "MotionView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , resultCode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    packed-switch p1, :pswitch_data_0

    .line 227
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 217
    :pswitch_1
    const/16 v0, 0x65

    if-ne p2, v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mSensitivity:Lcom/android/settings_ex/motion/SensitivityPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/motion/SensitivityPreference;->showTutorialDialog()V

    goto :goto_0

    .line 222
    :pswitch_2
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/android/settings_ex/motion/MotionView;->showGuideDialog()V

    goto :goto_0

    .line 214
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 173
    const-string v3, "MotionView"

    const-string v4, "onCheckChanged"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget v3, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentMotion:I

    const/16 v4, 0x6a5

    if-ne v3, v4, :cond_1

    .line 175
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "master_motion"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 178
    .local v0, motionState:I
    if-nez v0, :cond_1

    .line 179
    if-ne p2, v1, :cond_0

    .line 180
    invoke-direct {p0}, Lcom/android/settings_ex/motion/MotionView;->showCameraShortCutDialog()V

    .line 187
    .end local v0           #motionState:I
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    if-eqz p2, :cond_2

    :goto_1
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 185
    iget-object v1, p0, Lcom/android/settings_ex/motion/MotionView;->mSensitivity:Lcom/android/settings_ex/motion/SensitivityPreference;

    invoke-virtual {v1, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 184
    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 155
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 157
    const v0, 0x7f07004e

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 158
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mActivity:Landroid/app/Activity;

    .line 159
    const-string v0, "sensitivity"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/motion/SensitivityPreference;

    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mSensitivity:Lcom/android/settings_ex/motion/SensitivityPreference;

    .line 160
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mSensitivity:Lcom/android/settings_ex/motion/SensitivityPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/motion/SensitivityPreference;->setInformation(Lcom/android/settings_ex/SettingsPreferenceFragment;)V

    .line 161
    const-string v0, "tutorial"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    .line 162
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentMotion:I

    .line 163
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 207
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 208
    invoke-direct {p0}, Lcom/android/settings_ex/motion/MotionView;->stopAnimation()V

    .line 209
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/android/settings_ex/motion/MotionView;->showGuideDialog()V

    .line 241
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 239
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 191
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 192
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 194
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/motion/MotionView;->updateCheckedUI()V

    .line 195
    invoke-direct {p0}, Lcom/android/settings_ex/motion/MotionView;->updateAnimation()V

    .line 196
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 200
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 201
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionView;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 203
    :cond_0
    return-void
.end method

.method public showGuideDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 304
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/settings_ex/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 305
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings_ex/motion/MotionView;->allDialogDismiss()V

    .line 308
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 309
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f04005f

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 310
    .local v2, layout:Landroid/view/View;
    const v4, 0x7f0b004a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 311
    .local v3, message:Landroid/widget/TextView;
    const v4, 0x7f0b010c

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/settings_ex/motion/MotionView;->mAnimationView:Landroid/widget/ImageView;

    .line 313
    iget-object v4, p0, Lcom/android/settings_ex/motion/MotionView;->mCurrentText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 315
    iget-object v4, p0, Lcom/android/settings_ex/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    invoke-virtual {v4}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 317
    const v4, 0x7f090c0e

    new-instance v5, Lcom/android/settings_ex/motion/MotionView$6;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/motion/MotionView$6;-><init>(Lcom/android/settings_ex/motion/MotionView;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090143

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 331
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/motion/MotionView;->mGuideDialog:Landroid/app/AlertDialog;

    .line 332
    iget-object v4, p0, Lcom/android/settings_ex/motion/MotionView;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 333
    iget-object v4, p0, Lcom/android/settings_ex/motion/MotionView;->mGuideDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/settings_ex/motion/MotionView$7;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/motion/MotionView$7;-><init>(Lcom/android/settings_ex/motion/MotionView;)V

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 338
    invoke-direct {p0}, Lcom/android/settings_ex/motion/MotionView;->startAnimation()V

    .line 339
    return-void
.end method
