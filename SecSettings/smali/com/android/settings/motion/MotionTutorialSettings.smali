.class public Lcom/android/settings_ex/motion/MotionTutorialSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "MotionTutorialSettings.java"


# static fields
.field private static final ANIMATION_DEALY:I = 0x1f4

.field private static final CHANGE_ANIMATION:I = 0x66

.field private static final EXTRA_TYPE:Ljava/lang/String; = "type"

.field private static final KEY_CATEGORY_SURFACE:Ljava/lang/String; = "category_surface"

.field private static final KEY_DOUBLE_TAP:Ljava/lang/String; = "double_tap"

.field private static final KEY_GLANCE_VIEW:Ljava/lang/String; = "glance_view"

.field private static final KEY_PALM_SWIPE:Ljava/lang/String; = "palm_swipe"

.field private static final KEY_PALM_TOUCH:Ljava/lang/String; = "palm_touch"

.field private static final KEY_PAN:Ljava/lang/String; = "pan"

.field private static final KEY_PAN_TO_BROWSE_IMAGE:Ljava/lang/String; = "pan_to_browse_image"

.field private static final KEY_PICK_UP:Ljava/lang/String; = "pick_up"

.field private static final KEY_PICK_UP_TO_CALL_OUT:Ljava/lang/String; = "pick_up_to_call_out"

.field private static final KEY_SHAKE:Ljava/lang/String; = "shake"

.field private static final KEY_TAP_AND_TWIST:Ljava/lang/String; = "tap_and_twist"

.field private static final KEY_TILT:Ljava/lang/String; = "tilt"

.field private static final KEY_TILT_TO_SCROLL_LIST:Ljava/lang/String; = "tilt_to_scroll_list"

.field private static final KEY_TURN_OVER:Ljava/lang/String; = "turn_over"

.field private static final LAST_ANIMATION_DEALY:I = 0x7d0

.field private static final LAST_ANIMATION_INDEX:I = 0x0

.field private static final QUICK_ANIMATION_DEALY:I = 0x7d

.field private static final RESULT_BACK:I = 0x65

.field private static final RESULT_INFORMATION:I = 0x64

.field private static final TAG:Ljava/lang/String; = "MotionTutorialSettings"

.field private static final TUTORIAL:I = 0xa


# instance fields
.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationImage:[I

.field private mAnimationIndex:I

.field private mAnimationView:Landroid/widget/ImageView;

.field private mCurrentDB:Ljava/lang/String;

.field private mDoubleTap:Landroid/preference/Preference;

.field private mDoubleTapToGoTopAnimationImage:[I

.field private mGlanceView:Landroid/preference/Preference;

.field private mGlanceViewTutorialAnimationImage:[I

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mIsQuickAnimation:Z

.field private mIsTablet:Z

.field private mMotionDialog:Landroid/app/AlertDialog;

.field private mPalmSwipe:Landroid/preference/Preference;

.field private mPalmTouch:Landroid/preference/Preference;

.field private mPan:Landroid/preference/Preference;

.field private mPanToBrowseImage:Landroid/preference/Preference;

.field private mPanToBrowseImageAnimationImage:[I

.field private mPanToMoveIconAnimationImage:[I

.field private mPickUp:Landroid/preference/Preference;

.field private mPickUpToBeNotifiedAnimationImage:[I

.field private mPickUpToCallOut:Landroid/preference/Preference;

.field private mPickUpToCallOutAnimationImage:[I

.field private mShake:Landroid/preference/Preference;

.field private mShakeToUpdateAnimationImage:[I

.field private mSupportBrowser:Z

.field private mSurfacePalmSwipeAnimationImage:[I

.field private mSurfacePalmTouchAnimationImage:[I

.field private mSurfaceTapAndTwistAnimationImage:[I

.field private mTabletPanToBrowseImageAnimationImage:[I

.field private mTabletPanToMoveIconAnimationImage:[I

.field private mTapAndTwist:Landroid/preference/Preference;

.field private mTilt:Landroid/preference/Preference;

.field private mTiltToScrollList:Landroid/preference/Preference;

.field private mTiltToScrollListAnimationImage:[I

.field private mTiltToZoomAnimationImage:[I

.field private mTurnOver:Landroid/preference/Preference;

.field private mTurnOverToMuteAnimationImage:[I

.field private mTutorialContent:Ljava/lang/String;

.field private mTutorialTitle:Ljava/lang/String;

.field private mUnlockCameraShortCut:[I

.field private mUseRingDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x3

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 85
    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 87
    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 89
    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mMotionDialog:Landroid/app/AlertDialog;

    .line 90
    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 91
    iput v2, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mAnimationIndex:I

    .line 92
    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mAnimationView:Landroid/widget/ImageView;

    .line 93
    iput-boolean v2, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mIsTablet:Z

    .line 94
    iput-boolean v2, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 97
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mGlanceViewTutorialAnimationImage:[I

    .line 98
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTiltToZoomAnimationImage:[I

    .line 99
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTiltToScrollListAnimationImage:[I

    .line 100
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mPanToMoveIconAnimationImage:[I

    .line 101
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mPanToBrowseImageAnimationImage:[I

    .line 102
    new-array v0, v3, [I

    fill-array-data v0, :array_5

    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mShakeToUpdateAnimationImage:[I

    .line 103
    new-array v0, v3, [I

    fill-array-data v0, :array_6

    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mDoubleTapToGoTopAnimationImage:[I

    .line 104
    new-array v0, v1, [I

    fill-array-data v0, :array_7

    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mPickUpToBeNotifiedAnimationImage:[I

    .line 105
    new-array v0, v1, [I

    fill-array-data v0, :array_8

    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTurnOverToMuteAnimationImage:[I

    .line 106
    new-array v0, v1, [I

    fill-array-data v0, :array_9

    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mPickUpToCallOutAnimationImage:[I

    .line 107
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mUnlockCameraShortCut:[I

    .line 108
    new-array v0, v3, [I

    fill-array-data v0, :array_b

    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTabletPanToMoveIconAnimationImage:[I

    .line 109
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_c

    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTabletPanToBrowseImageAnimationImage:[I

    .line 112
    new-array v0, v4, [I

    fill-array-data v0, :array_d

    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mSurfacePalmSwipeAnimationImage:[I

    .line 113
    new-array v0, v1, [I

    fill-array-data v0, :array_e

    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mSurfacePalmTouchAnimationImage:[I

    .line 114
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x7f02052c

    aput v1, v0, v2

    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mSurfaceTapAndTwistAnimationImage:[I

    .line 121
    new-instance v0, Lcom/android/settings_ex/motion/MotionTutorialSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/motion/MotionTutorialSettings$1;-><init>(Lcom/android/settings_ex/motion/MotionTutorialSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mAnimationHandler:Landroid/os/Handler;

    return-void

    .line 97
    :array_0
    .array-data 0x4
        0x1dt 0x4t 0x2t 0x7ft
        0x1et 0x4t 0x2t 0x7ft
        0x1ft 0x4t 0x2t 0x7ft
        0x20t 0x4t 0x2t 0x7ft
        0x21t 0x4t 0x2t 0x7ft
        0x22t 0x4t 0x2t 0x7ft
    .end array-data

    .line 98
    :array_1
    .array-data 0x4
        0xaft 0x2t 0x2t 0x7ft
        0xb0t 0x2t 0x2t 0x7ft
        0xb1t 0x2t 0x2t 0x7ft
    .end array-data

    .line 99
    :array_2
    .array-data 0x4
        0xcbt 0x2t 0x2t 0x7ft
        0xcct 0x2t 0x2t 0x7ft
        0xcdt 0x2t 0x2t 0x7ft
        0xcet 0x2t 0x2t 0x7ft
        0xcft 0x2t 0x2t 0x7ft
    .end array-data

    .line 100
    :array_3
    .array-data 0x4
        0xabt 0x2t 0x2t 0x7ft
        0xact 0x2t 0x2t 0x7ft
        0xadt 0x2t 0x2t 0x7ft
        0xaet 0x2t 0x2t 0x7ft
    .end array-data

    .line 101
    :array_4
    .array-data 0x4
        0x9bt 0x2t 0x2t 0x7ft
        0x9ct 0x2t 0x2t 0x7ft
        0x9dt 0x2t 0x2t 0x7ft
        0x9et 0x2t 0x2t 0x7ft
        0x9ft 0x2t 0x2t 0x7ft
        0xa0t 0x2t 0x2t 0x7ft
        0xa1t 0x2t 0x2t 0x7ft
    .end array-data

    .line 102
    :array_5
    .array-data 0x4
        0xbat 0x2t 0x2t 0x7ft
        0xbbt 0x2t 0x2t 0x7ft
        0xbat 0x2t 0x2t 0x7ft
        0xbbt 0x2t 0x2t 0x7ft
    .end array-data

    .line 103
    :array_6
    .array-data 0x4
        0xa4t 0x2t 0x2t 0x7ft
        0xa5t 0x2t 0x2t 0x7ft
        0xa4t 0x2t 0x2t 0x7ft
        0xa5t 0x2t 0x2t 0x7ft
    .end array-data

    .line 104
    :array_7
    .array-data 0x4
        0xb5t 0x2t 0x2t 0x7ft
        0xb6t 0x2t 0x2t 0x7ft
        0xb7t 0x2t 0x2t 0x7ft
    .end array-data

    .line 105
    :array_8
    .array-data 0x4
        0xd4t 0x2t 0x2t 0x7ft
        0xd5t 0x2t 0x2t 0x7ft
        0xd6t 0x2t 0x2t 0x7ft
    .end array-data

    .line 106
    :array_9
    .array-data 0x4
        0xa8t 0x2t 0x2t 0x7ft
        0xa9t 0x2t 0x2t 0x7ft
        0xaat 0x2t 0x2t 0x7ft
    .end array-data

    .line 107
    :array_a
    .array-data 0x4
        0xb8t 0x2t 0x2t 0x7ft
        0xb9t 0x2t 0x2t 0x7ft
    .end array-data

    .line 108
    :array_b
    .array-data 0x4
        0xc6t 0x2t 0x2t 0x7ft
        0xc7t 0x2t 0x2t 0x7ft
        0xc8t 0x2t 0x2t 0x7ft
        0xc9t 0x2t 0x2t 0x7ft
    .end array-data

    .line 109
    :array_c
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

    .line 112
    :array_d
    .array-data 0x4
        0xft 0x3t 0x2t 0x7ft
        0x10t 0x3t 0x2t 0x7ft
        0x11t 0x3t 0x2t 0x7ft
        0x12t 0x3t 0x2t 0x7ft
        0x13t 0x3t 0x2t 0x7ft
    .end array-data

    .line 113
    :array_e
    .array-data 0x4
        0x14t 0x3t 0x2t 0x7ft
        0x15t 0x3t 0x2t 0x7ft
        0x16t 0x3t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings_ex/motion/MotionTutorialSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings_ex/motion/MotionTutorialSettings;->updateAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/motion/MotionTutorialSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/motion/MotionTutorialSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings_ex/motion/MotionTutorialSettings;->startTryActually(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/motion/MotionTutorialSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/motion/MotionTutorialSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/motion/MotionTutorialSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/motion/MotionTutorialSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings_ex/motion/MotionTutorialSettings;->startTryActually()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings_ex/motion/MotionTutorialSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/motion/MotionTutorialSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings_ex/motion/MotionTutorialSettings;->showMotionDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings_ex/motion/MotionTutorialSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/motion/MotionTutorialSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings_ex/motion/MotionTutorialSettings;->stopAnimation()V

    return-void
.end method

.method private showMotionDialog()V
    .locals 4

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/android/settings_ex/motion/MotionTutorialSettings;->allDialogDismiss()V

    .line 362
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090c19

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 363
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

    new-instance v3, Lcom/android/settings_ex/motion/MotionTutorialSettings$2;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/motion/MotionTutorialSettings$2;-><init>(Lcom/android/settings_ex/motion/MotionTutorialSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090143

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mMotionDialog:Landroid/app/AlertDialog;

    .line 383
    iget-object v1, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mMotionDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/settings_ex/motion/MotionTutorialSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/motion/MotionTutorialSettings$3;-><init>(Lcom/android/settings_ex/motion/MotionTutorialSettings;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 389
    return-void
.end method

.method private showUseRingDialog()V
    .locals 3

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/android/settings_ex/motion/MotionTutorialSettings;->allDialogDismiss()V

    .line 431
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

    new-instance v2, Lcom/android/settings_ex/motion/MotionTutorialSettings$7;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/motion/MotionTutorialSettings$7;-><init>(Lcom/android/settings_ex/motion/MotionTutorialSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090c16

    new-instance v2, Lcom/android/settings_ex/motion/MotionTutorialSettings$6;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/motion/MotionTutorialSettings$6;-><init>(Lcom/android/settings_ex/motion/MotionTutorialSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 446
    return-void
.end method

.method private startAnimation()V
    .locals 2

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 585
    :cond_1
    const-string v0, "MotionTutorialSettings"

    const-string v1, "startAnimation()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 587
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mAnimationIndex:I

    .line 588
    invoke-direct {p0}, Lcom/android/settings_ex/motion/MotionTutorialSettings;->updateAnimation()V

    goto :goto_0
.end method

.method private startTryActually()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/16 v4, 0xa

    .line 450
    iget-object v2, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v3, "motion_zooming"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 451
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 452
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "image/jpeg"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 453
    const-string v2, "com.sec.android.gallery3d"

    const-string v3, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    const-string v2, "MotionTest"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 455
    invoke-virtual {p0, v1, v4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 539
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v3, "motion_tilt_to_list_scrolling"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 457
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 458
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 459
    const-string v2, "com.android.jcontacts"

    const-string v3, "com.sec.android.app.contacts.activities.TiltToScrollListTutorialActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 463
    :goto_1
    invoke-virtual {p0, v1, v4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 461
    :cond_2
    const-string v2, "com.android.contacts"

    const-string v3, "com.sec.android.app.contacts.activities.TiltToScrollListTutorialActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 464
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v3, "motion_panning"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 465
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 466
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "com.sec.android.motions.settings.panningtutorial"

    const-string v3, "com.sec.android.motions.settings.panningtutorial.PanningTryActually"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    invoke-virtual {p0, v1, v4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 468
    .end local v1           #intent:Landroid/content/Intent;
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v3, "motion_pan_to_browse_image"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 469
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 470
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "image/jpeg"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    const-string v2, "com.sec.android.gallery3d"

    const-string v3, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 472
    const-string v2, "MotionTest"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 473
    invoke-virtual {p0, v1, v4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 474
    .end local v1           #intent:Landroid/content/Intent;
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v3, "motion_zooming"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 482
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 483
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "com.android.settings_ex"

    const-string v3, "com.android.settings_ex.motion.ShakeTutorial"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    invoke-virtual {p0, v1, v4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 485
    .end local v1           #intent:Landroid/content/Intent;
    :cond_6
    iget-object v2, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v3, "motion_shake"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 493
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 494
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "com.android.settings_ex"

    const-string v3, "com.android.settings_ex.motion.ShakeTutorial"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 495
    invoke-virtual {p0, v1, v4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 496
    .end local v1           #intent:Landroid/content/Intent;
    :cond_7
    iget-object v2, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v3, "motion_double_tap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 497
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 498
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 499
    const-string v2, "com.android.jcontacts"

    const-string v3, "com.sec.android.app.contacts.activities.DoubleTapTutorialActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 503
    :goto_2
    invoke-virtual {p0, v1, v4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 501
    :cond_8
    const-string v2, "com.android.contacts"

    const-string v3, "com.sec.android.app.contacts.activities.DoubleTapTutorialActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 504
    .end local v1           #intent:Landroid/content/Intent;
    :cond_9
    iget-object v2, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v3, "motion_pick_up"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 505
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 506
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "android.pickuptutorial.PICKUPTUTORIAL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    invoke-virtual {p0, v1, v4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 508
    .end local v1           #intent:Landroid/content/Intent;
    :cond_a
    iget-object v2, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v3, "motion_pick_up_to_call_out"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 509
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 510
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "com.android.mms.ui.DirectCallTutorial"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 512
    .end local v1           #intent:Landroid/content/Intent;
    :cond_b
    iget-object v2, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v3, "motion_overturn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 513
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 514
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-ne v2, v5, :cond_c

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-eqz v2, :cond_c

    .line 515
    invoke-direct {p0}, Lcom/android/settings_ex/motion/MotionTutorialSettings;->showUseRingDialog()V

    goto/16 :goto_0

    .line 517
    :cond_c
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/settings_ex/motion/MotionTutorialSettings;->startTryActually(Z)V

    goto/16 :goto_0

    .line 519
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :cond_d
    iget-object v2, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v3, "air_motion_glance_view"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 520
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 521
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "samsung.pickuptutorial.GLANCEVIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 522
    invoke-virtual {p0, v1, v4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 523
    const-string v2, "MotionTutorialSettings"

    const-string v3, "AIR_MOTION_GLANCE_VIEW"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 524
    .end local v1           #intent:Landroid/content/Intent;
    :cond_e
    iget-object v2, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v3, "surface_palm_swipe"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 526
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 527
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "com.samsung.pickuptutorial.PALMSWIPETUTORIAL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 528
    invoke-virtual {p0, v1, v4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 529
    const-string v2, "MotionTutorialSettings"

    const-string v3, "MotionTutorialSettings Tutorial Palm swipe to capture"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 530
    .end local v1           #intent:Landroid/content/Intent;
    :cond_f
    iget-object v2, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v3, "surface_palm_touch"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 532
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 533
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.PALM_TOUCH_TUTORIAL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 534
    invoke-virtual {p0, v1, v4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 535
    const-string v2, "MotionTutorialSettings"

    const-string v3, "MotionTutorialSettings Tutorial Palm touch to mute/pause"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 536
    .end local v1           #intent:Landroid/content/Intent;
    :cond_10
    iget-object v2, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v3, "surface_tap_and_twist"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0
.end method

.method private startTryActually(Z)V
    .locals 3
    .parameter "useRing"

    .prologue
    .line 542
    iget-object v1, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v2, "motion_overturn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 543
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 544
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "UseRing"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 545
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 546
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.callsettings.OverturnTutorialIncallScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 550
    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 552
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void

    .line 548
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_1
    const-string v1, "com.sec.android.app.clockpackage"

    const-string v2, "com.sec.android.app.clockpackage.alarm.OverturnTutorialAlarmScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 595
    :cond_1
    const-string v0, "MotionTutorialSettings"

    const-string v1, "stopAnimation()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private updateAnimation()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1f4

    const/16 v3, 0x66

    .line 555
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 580
    :cond_0
    :goto_0
    return-void

    .line 556
    :cond_1
    const-string v0, "MotionTutorialSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHANGE_ANIMATION : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mAnimationIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 558
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mAnimationView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mAnimationImage:[I

    iget v2, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mAnimationIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 559
    iget v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mAnimationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mAnimationIndex:I

    .line 562
    :cond_2
    iget v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mAnimationIndex:I

    iget-object v1, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mAnimationImage:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mAnimationIndex:I

    .line 564
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 565
    invoke-direct {p0}, Lcom/android/settings_ex/motion/MotionTutorialSettings;->stopAnimation()V

    .line 566
    iget v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mAnimationIndex:I

    if-nez v0, :cond_3

    .line 567
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 569
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    if-eqz v0, :cond_5

    .line 570
    iget v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mAnimationIndex:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    .line 571
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 573
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 576
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public allDialogDismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 602
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 604
    iput-object v1, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mMotionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 607
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mMotionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 608
    iput-object v1, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mMotionDialog:Landroid/app/AlertDialog;

    .line 610
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mUseRingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 611
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mUseRingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 612
    iput-object v1, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 614
    :cond_2
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 219
    const-string v0, "MotionTutorialSettings"

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

    .line 220
    packed-switch p1, :pswitch_data_0

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 222
    :pswitch_0
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/android/settings_ex/motion/MotionTutorialSettings;->showGuideDialog()V

    goto :goto_0

    .line 220
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 133
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 135
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "com.android.browser"

    invoke-static {v4, v5}, Lcom/android/settings_ex/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mSupportBrowser:Z

    .line 137
    invoke-static {v6}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mIsTablet:Z

    .line 138
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 139
    .local v0, arguments:Landroid/os/Bundle;
    const-string v4, "type"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    const/4 v1, 0x1

    .line 141
    .local v1, isMotionTutorial:Z
    :cond_0
    const v4, 0x7f07004d

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 143
    const-string v4, "glance_view"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mGlanceView:Landroid/preference/Preference;

    .line 144
    const-string v4, "tilt"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTilt:Landroid/preference/Preference;

    .line 145
    const-string v4, "tilt_to_scroll_list"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTiltToScrollList:Landroid/preference/Preference;

    .line 146
    const-string v4, "pan"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mPan:Landroid/preference/Preference;

    .line 147
    const-string v4, "pan_to_browse_image"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mPanToBrowseImage:Landroid/preference/Preference;

    .line 148
    const-string v4, "shake"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mShake:Landroid/preference/Preference;

    .line 149
    const-string v4, "double_tap"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mDoubleTap:Landroid/preference/Preference;

    .line 150
    const-string v4, "pick_up"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mPickUp:Landroid/preference/Preference;

    .line 151
    const-string v4, "pick_up_to_call_out"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mPickUpToCallOut:Landroid/preference/Preference;

    .line 152
    const-string v4, "turn_over"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTurnOver:Landroid/preference/Preference;

    .line 153
    const-string v4, "palm_swipe"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mPalmSwipe:Landroid/preference/Preference;

    .line 154
    const-string v4, "palm_touch"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mPalmTouch:Landroid/preference/Preference;

    .line 155
    const-string v4, "tap_and_twist"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTapAndTwist:Landroid/preference/Preference;

    .line 157
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 159
    .local v3, ps:Landroid/preference/PreferenceScreen;
    invoke-static {v6}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    .line 161
    .local v2, isTablet:Z
    if-nez v1, :cond_1

    .line 162
    iget-object v4, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mGlanceView:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 164
    :cond_1
    if-nez v1, :cond_2

    .line 165
    iget-object v4, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTilt:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 168
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTiltToScrollList:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 170
    if-nez v1, :cond_3

    .line 171
    iget-object v4, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mPan:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 173
    :cond_3
    if-nez v1, :cond_4

    .line 174
    iget-object v4, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mPanToBrowseImage:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 177
    :cond_4
    iget-object v4, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mShake:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 179
    if-eqz v1, :cond_5

    if-eqz v2, :cond_6

    .line 180
    :cond_5
    iget-object v4, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mDoubleTap:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 182
    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings_ex/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 183
    :cond_7
    iget-object v4, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mPickUp:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 185
    :cond_8
    if-eqz v1, :cond_9

    if-eqz v2, :cond_a

    .line 186
    :cond_9
    iget-object v4, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mPickUpToCallOut:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 188
    :cond_a
    if-eqz v1, :cond_b

    if-eqz v2, :cond_c

    .line 189
    :cond_b
    iget-object v4, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTurnOver:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 191
    :cond_c
    if-eqz v1, :cond_d

    .line 192
    iget-object v4, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mPalmSwipe:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 194
    :cond_d
    if-eqz v1, :cond_e

    .line 195
    iget-object v4, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mPalmTouch:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 198
    :cond_e
    iget-object v4, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTapAndTwist:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 200
    iget-boolean v4, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mSupportBrowser:Z

    if-nez v4, :cond_f

    .line 201
    iget-object v4, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTilt:Landroid/preference/Preference;

    const v5, 0x7f090bea

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(I)V

    .line 203
    :cond_f
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 213
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 214
    invoke-direct {p0}, Lcom/android/settings_ex/motion/MotionTutorialSettings;->stopAnimation()V

    .line 215
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const v7, 0x7f090c07

    const v5, 0x7f090bfb

    const v4, 0x7f090bfa

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 231
    iget-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mGlanceView:Landroid/preference/Preference;

    if-ne p2, v3, :cond_0

    .line 232
    iget-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mGlanceViewTutorialAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 233
    const-string v3, "air_motion_glance_view"

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 234
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090c9e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 235
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090c9f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 236
    iput-boolean v6, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 237
    invoke-virtual {p0}, Lcom/android/settings_ex/motion/MotionTutorialSettings;->showGuideDialog()V

    .line 355
    :goto_0
    return v2

    .line 238
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTilt:Landroid/preference/Preference;

    if-ne p2, v3, :cond_1

    .line 239
    iget-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTiltToZoomAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 240
    const-string v3, "motion_zooming"

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 241
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 242
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090c01

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 243
    iput-boolean v6, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 244
    invoke-virtual {p0}, Lcom/android/settings_ex/motion/MotionTutorialSettings;->showGuideDialog()V

    goto :goto_0

    .line 245
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTiltToScrollList:Landroid/preference/Preference;

    if-ne p2, v3, :cond_2

    .line 246
    iget-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTiltToScrollListAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 247
    const-string v3, "motion_tilt_to_list_scrolling"

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 248
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 249
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090c02

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 250
    iput-boolean v6, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 251
    invoke-virtual {p0}, Lcom/android/settings_ex/motion/MotionTutorialSettings;->showGuideDialog()V

    goto :goto_0

    .line 252
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mPan:Landroid/preference/Preference;

    if-ne p2, v3, :cond_4

    .line 253
    iget-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mPanToMoveIconAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 254
    iget-boolean v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mIsTablet:Z

    if-eqz v3, :cond_3

    .line 255
    iget-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTabletPanToMoveIconAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 257
    :cond_3
    const-string v3, "motion_panning"

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 258
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 259
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090c03

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 260
    iput-boolean v6, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 261
    invoke-virtual {p0}, Lcom/android/settings_ex/motion/MotionTutorialSettings;->showGuideDialog()V

    goto/16 :goto_0

    .line 262
    :cond_4
    iget-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mPanToBrowseImage:Landroid/preference/Preference;

    if-ne p2, v3, :cond_6

    .line 263
    iget-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mPanToBrowseImageAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 264
    iget-boolean v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mIsTablet:Z

    if-eqz v3, :cond_5

    .line 265
    iget-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTabletPanToBrowseImageAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 267
    :cond_5
    const-string v3, "motion_pan_to_browse_image"

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 268
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 269
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090c04

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 270
    iput-boolean v6, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 271
    invoke-virtual {p0}, Lcom/android/settings_ex/motion/MotionTutorialSettings;->showGuideDialog()V

    goto/16 :goto_0

    .line 272
    :cond_6
    iget-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mShake:Landroid/preference/Preference;

    if-ne p2, v3, :cond_c

    .line 273
    iget-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mShakeToUpdateAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 274
    const-string v3, "motion_shake"

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 275
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090bfc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 276
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090c05

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 277
    const/4 v1, 0x1

    .line 279
    .local v1, isKiesAirInstalled:Z
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.swift.app.kiesair"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :goto_1
    if-nez v1, :cond_8

    .line 284
    const-string v3, "CMCC"

    const-string v4, "OPEN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "CHM"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 286
    :cond_7
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090c08

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 297
    :cond_8
    :goto_2
    iput-boolean v6, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 298
    invoke-virtual {p0}, Lcom/android/settings_ex/motion/MotionTutorialSettings;->showGuideDialog()V

    goto/16 :goto_0

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_1

    .line 288
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_9
    const-string v3, "CHN"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "CTC"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 290
    :cond_a
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    goto :goto_2

    .line 293
    :cond_b
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    goto :goto_2

    .line 299
    .end local v1           #isKiesAirInstalled:Z
    :cond_c
    iget-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mDoubleTap:Landroid/preference/Preference;

    if-ne p2, v3, :cond_d

    .line 300
    iget-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mDoubleTapToGoTopAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 301
    const-string v3, "motion_double_tap"

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 302
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090bfd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 303
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090c09

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 304
    iput-boolean v2, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 305
    invoke-virtual {p0}, Lcom/android/settings_ex/motion/MotionTutorialSettings;->showGuideDialog()V

    goto/16 :goto_0

    .line 306
    :cond_d
    iget-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mPickUp:Landroid/preference/Preference;

    if-ne p2, v3, :cond_e

    .line 307
    iget-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mPickUpToBeNotifiedAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 308
    const-string v3, "motion_pick_up"

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 309
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090bfe

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 310
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090c0a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 315
    iput-boolean v6, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 316
    invoke-virtual {p0}, Lcom/android/settings_ex/motion/MotionTutorialSettings;->showGuideDialog()V

    goto/16 :goto_0

    .line 317
    :cond_e
    iget-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mPickUpToCallOut:Landroid/preference/Preference;

    if-ne p2, v3, :cond_f

    .line 318
    iget-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mPickUpToCallOutAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 319
    const-string v3, "motion_pick_up_to_call_out"

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 320
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090bff

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 321
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090c1c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 322
    iput-boolean v6, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 323
    invoke-virtual {p0}, Lcom/android/settings_ex/motion/MotionTutorialSettings;->showGuideDialog()V

    goto/16 :goto_0

    .line 324
    :cond_f
    iget-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTurnOver:Landroid/preference/Preference;

    if-ne p2, v3, :cond_10

    .line 325
    iget-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTurnOverToMuteAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 326
    const-string v3, "motion_overturn"

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 327
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090c00

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 328
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090c0d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 329
    iput-boolean v6, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 330
    invoke-virtual {p0}, Lcom/android/settings_ex/motion/MotionTutorialSettings;->showGuideDialog()V

    goto/16 :goto_0

    .line 331
    :cond_10
    iget-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mPalmSwipe:Landroid/preference/Preference;

    if-ne p2, v3, :cond_11

    .line 332
    iget-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mSurfacePalmSwipeAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 333
    const-string v3, "surface_palm_swipe"

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 334
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090c28

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 335
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090c29

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 336
    iput-boolean v6, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 337
    invoke-virtual {p0}, Lcom/android/settings_ex/motion/MotionTutorialSettings;->showGuideDialog()V

    goto/16 :goto_0

    .line 338
    :cond_11
    iget-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mPalmTouch:Landroid/preference/Preference;

    if-ne p2, v3, :cond_12

    .line 339
    iget-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mSurfacePalmTouchAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 340
    const-string v3, "surface_palm_touch"

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 341
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090c2a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 342
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090c2b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 343
    iput-boolean v6, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 344
    invoke-virtual {p0}, Lcom/android/settings_ex/motion/MotionTutorialSettings;->showGuideDialog()V

    goto/16 :goto_0

    .line 345
    :cond_12
    iget-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTapAndTwist:Landroid/preference/Preference;

    if-ne p2, v3, :cond_13

    .line 346
    iget-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mSurfaceTapAndTwistAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 347
    const-string v3, "surface_tap_and_twist"

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 348
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090c2c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 349
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090c2d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 350
    iput-boolean v6, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 351
    invoke-virtual {p0}, Lcom/android/settings_ex/motion/MotionTutorialSettings;->showGuideDialog()V

    goto/16 :goto_0

    .line 353
    :cond_13
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 207
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 208
    invoke-direct {p0}, Lcom/android/settings_ex/motion/MotionTutorialSettings;->updateAnimation()V

    .line 209
    return-void
.end method

.method public showGuideDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 393
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 394
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings_ex/motion/MotionTutorialSettings;->allDialogDismiss()V

    .line 396
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 397
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f04005f

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 398
    .local v2, layout:Landroid/view/View;
    const v4, 0x7f0b004a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 399
    .local v3, message:Landroid/widget/TextView;
    const v4, 0x7f0b010c

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mAnimationView:Landroid/widget/ImageView;

    .line 401
    iget-object v4, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 403
    iget-object v4, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 405
    const v4, 0x7f090c0e

    new-instance v5, Lcom/android/settings_ex/motion/MotionTutorialSettings$4;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/motion/MotionTutorialSettings$4;-><init>(Lcom/android/settings_ex/motion/MotionTutorialSettings;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090143

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 419
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 420
    iget-object v4, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 421
    iget-object v4, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings;->mGuideDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/settings_ex/motion/MotionTutorialSettings$5;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/motion/MotionTutorialSettings$5;-><init>(Lcom/android/settings_ex/motion/MotionTutorialSettings;)V

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 426
    invoke-direct {p0}, Lcom/android/settings_ex/motion/MotionTutorialSettings;->startAnimation()V

    .line 427
    return-void
.end method
