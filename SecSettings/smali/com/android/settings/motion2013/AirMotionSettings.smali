.class public Lcom/android/settings_ex/motion2013/AirMotionSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "AirMotionSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final AIR_SCROLL_UNCHECK_MESSAGE:I = 0x0

.field private static final AIR_TURN_UNCHECK_MESSAGE:I = 0x1

.field private static final ANIMATION_DEALY:I = 0x1f4

.field private static final CHANGE_ANIMATION:I = 0x66

.field private static final KEY_AIR_MOTION_INDICATOR:Ljava/lang/String; = "air_motion_indicator"

.field private static final KEY_AIR_MOVE:Ljava/lang/String; = "air_move"

.field private static final KEY_AIR_PIN:Ljava/lang/String; = "air_pin"

.field private static final KEY_AIR_SCROLL:Ljava/lang/String; = "air_scroll"

.field private static final KEY_AIR_TURN:Ljava/lang/String; = "air_turn"

.field private static final KEY_CALL_ACCEPT:Ljava/lang/String; = "air_call_accept"

.field private static final KEY_QUICK_GLANCE:Ljava/lang/String; = "quick_glance"

.field private static final MENU_HELP:I = 0x0

.field private static final PREF_AIR_MOTION_SENSOR_NOTI:Ljava/lang/String; = "pref_air_motion_sensor_noti"

.field private static final TAG:Ljava/lang/String; = "AirMotionSettings"


# instance fields
.field private isGoIntoQuideHub:Z

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mAirCallAccept:Landroid/preference/SwitchPreferenceScreen;

.field private mAirMotionIndicatorAnimation:[I

.field private mAirMotionObserver:Landroid/database/ContentObserver;

.field private mAirMove:Landroid/preference/SwitchPreferenceScreen;

.field private mAirPin:Landroid/preference/SwitchPreferenceScreen;

.field private mAirScroll:Landroid/preference/SwitchPreferenceScreen;

.field private mAirTurn:Landroid/preference/SwitchPreferenceScreen;

.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationIndex:I

.field private mAnimationView:Landroid/widget/ImageView;

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mQuickGlance:Landroid/preference/SwitchPreferenceScreen;

.field private mResolver:Landroid/content/ContentResolver;

.field protected mSwitchUncheckHandler:Landroid/os/Handler;

.field private mTalkbackDisableDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 67
    iput-object v1, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 68
    iput-boolean v0, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->isGoIntoQuideHub:Z

    .line 71
    iput v0, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAnimationIndex:I

    .line 72
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAirMotionIndicatorAnimation:[I

    .line 73
    iput-object v1, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAnimationView:Landroid/widget/ImageView;

    .line 74
    new-instance v0, Lcom/android/settings_ex/motion2013/AirMotionSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings$1;-><init>(Lcom/android/settings_ex/motion2013/AirMotionSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAnimationHandler:Landroid/os/Handler;

    .line 83
    new-instance v0, Lcom/android/settings_ex/motion2013/AirMotionSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings$2;-><init>(Lcom/android/settings_ex/motion2013/AirMotionSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mSwitchUncheckHandler:Landroid/os/Handler;

    .line 95
    new-instance v0, Lcom/android/settings_ex/motion2013/AirMotionSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/motion2013/AirMotionSettings$3;-><init>(Lcom/android/settings_ex/motion2013/AirMotionSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAirMotionObserver:Landroid/database/ContentObserver;

    return-void

    .line 72
    :array_0
    .array-data 0x4
        0x23t 0x4t 0x2t 0x7ft
        0x24t 0x4t 0x2t 0x7ft
        0x25t 0x4t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings_ex/motion2013/AirMotionSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->updateAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/motion2013/AirMotionSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAirScroll:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/motion2013/AirMotionSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAirCallAccept:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/motion2013/AirMotionSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->showGuideDialog(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/motion2013/AirMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/motion2013/AirMotionSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->stopAnimation()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/motion2013/AirMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings_ex/motion2013/AirMotionSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->broadcastAirScrollChanged(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings_ex/motion2013/AirMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings_ex/motion2013/AirMotionSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->broadcastAirBrowseChanged(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/motion2013/AirMotionSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAirTurn:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/motion2013/AirMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/motion2013/AirMotionSettings;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/motion2013/AirMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/motion2013/AirMotionSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->broadcastAirMotionChanged(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings_ex/motion2013/AirMotionSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mQuickGlance:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/motion2013/AirMotionSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAirMove:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/motion2013/AirMotionSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAirPin:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method private broadcastAirBrowseChanged(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 533
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_BROWSE_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 534
    .local v0, motion_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 535
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 536
    return-void
.end method

.method private broadcastAirCallAcceptChanged(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 548
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_CALL_ACCEPT_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 549
    .local v0, motion_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 550
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 551
    return-void
.end method

.method private broadcastAirMotionChanged(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 523
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_MOTION_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 524
    .local v0, motion_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 525
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 526
    return-void
.end method

.method private broadcastAirMoveChanged(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 538
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_MOVE_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 539
    .local v0, motion_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 540
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 541
    return-void
.end method

.method private broadcastAirPinChanged(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 543
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_PIN_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 544
    .local v0, motion_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 545
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 546
    return-void
.end method

.method private broadcastAirScrollChanged(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 528
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_SCROLL_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 529
    .local v0, motion_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 530
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 531
    return-void
.end method

.method private dismissAllDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 444
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 446
    iput-object v1, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 449
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 450
    iput-object v1, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 452
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 453
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 454
    iput-object v1, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 456
    :cond_2
    return-void
.end method

.method private isAllAirScrollOptionDisabled()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 498
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 499
    iget-object v8, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_scroll_all_list"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 500
    .local v1, alllist:I
    iget-object v8, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_scroll_web_page"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 501
    .local v5, webpage:I
    iget-object v8, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_scroll_contact_list"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 502
    .local v2, contactlist:I
    iget-object v8, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_scroll_email_list"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 503
    .local v4, emaillist:I
    iget-object v8, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_scroll_album_and_photo"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 504
    .local v0, albumandphoto:I
    iget-object v8, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_scroll_email_body"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 505
    .local v3, emailbody:I
    or-int v8, v1, v5

    or-int/2addr v8, v2

    or-int/2addr v8, v4

    or-int/2addr v8, v0

    or-int/2addr v8, v3

    if-ge v8, v6, :cond_0

    :goto_0
    return v6

    :cond_0
    move v6, v7

    goto :goto_0
.end method

.method private isAllAirTurnOptionDisabled()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 508
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 509
    iget-object v7, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "air_motion_turn_single_photo_view"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 510
    .local v4, singlephotoview:I
    iget-object v7, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "air_motion_turn_internet_window"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 511
    .local v1, internetwindow:I
    iget-object v7, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "air_motion_turn_now_playing_on_music"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 512
    .local v3, nowplayingmusic:I
    iget-object v7, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "air_motion_turn_bgm_on_lock_screen"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 513
    .local v0, bgmonlockscreen:I
    iget-object v7, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "air_motion_turn_note_page_view"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 514
    .local v2, notepageview:I
    or-int v7, v4, v1

    or-int/2addr v7, v3

    or-int/2addr v7, v0

    or-int/2addr v7, v2

    if-ge v7, v5, :cond_0

    :goto_0
    return v5

    :cond_0
    move v5, v6

    goto :goto_0
.end method

.method private sendGlanceViewCheck(Z)V
    .locals 4
    .parameter "value"

    .prologue
    .line 517
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings_ex.GlanceViewChanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 518
    .local v0, i:Landroid/content/Intent;
    const-string v1, "GlanceViewState"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 519
    const-string v1, "AirMotionSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GlanceViewState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 521
    return-void
.end method

.method private showAllOptionDisabledDialog(IILjava/lang/String;)V
    .locals 4
    .parameter "title_res_id"
    .parameter "message_res_id"
    .parameter "key"

    .prologue
    .line 420
    invoke-direct {p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->dismissAllDialog()V

    .line 421
    move-object v0, p3

    .line 422
    .local v0, motion_type:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings_ex/motion2013/AirMotionSettings$9;

    invoke-direct {v3, p0, v0}, Lcom/android/settings_ex/motion2013/AirMotionSettings$9;-><init>(Lcom/android/settings_ex/motion2013/AirMotionSettings;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 441
    iget-object v1, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 442
    return-void
.end method

.method private showGuideDialog(Z)V
    .locals 19
    .parameter "showagain_checkbox_flag"

    .prologue
    .line 348
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->dismissAllDialog()V

    .line 351
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-direct {v1, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 353
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 354
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v14, 0x7f040060

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 355
    .local v5, layout:Landroid/view/View;
    const v14, 0x7f0b004a

    invoke-virtual {v5, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 356
    .local v6, message:Landroid/widget/TextView;
    const v14, 0x7f0b010c

    invoke-virtual {v5, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 357
    .local v3, image:Landroid/widget/ImageView;
    const v14, 0x7f0b010a

    invoke-virtual {v5, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 358
    .local v2, checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 359
    if-eqz p1, :cond_0

    .line 360
    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 362
    :cond_0
    const v14, 0x7f020425

    invoke-virtual {v3, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 364
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 365
    .local v12, res:Landroid/content/res/Resources;
    const v14, 0x7f090c66

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 366
    .local v9, part1:Ljava/lang/String;
    const-string v14, "."

    invoke-virtual {v9, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 367
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 371
    :goto_0
    const v14, 0x7f0e0004

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 372
    .local v11, proper_distance:I
    const v14, 0x7f090c68

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 373
    .local v10, part3:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v13

    .line 374
    .local v13, salesCode:Ljava/lang/String;
    const-string v14, "ATT"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    const-string v14, "SPR"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    const-string v14, "VZW"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    const-string v14, "TMB"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    const-string v14, "USC"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    const-string v14, "CRI"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    const-string v14, "VMU"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    const-string v14, "BST"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    const-string v14, "XAS"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    const-string v14, "TFN"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    const-string v14, "XAR"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    const-string v14, "CSP"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 377
    :cond_1
    const v14, 0x7f0e0005

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 378
    const v14, 0x7f090c69

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 380
    :cond_2
    const-string v14, "."

    invoke-virtual {v10, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 381
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 385
    :goto_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const v15, 0x7f090c67

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 386
    .local v8, original_str:Ljava/lang/String;
    const-string v14, "ja"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    iget-object v15, v15, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v15}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 387
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const v15, 0x7f090c66

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const v15, 0x7f090c68

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x7

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const v15, 0x7f090c67

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 391
    :cond_3
    const v14, 0x7f020026

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-static {v8, v14}, Lcom/android/settings_ex/Utils;->makeStringWithImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/text/SpannableString;

    move-result-object v7

    .line 392
    .local v7, message_str:Landroid/text/SpannableString;
    if-eqz v7, :cond_6

    .line 393
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    :goto_2
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 398
    const v14, 0x7f090c64

    invoke-virtual {v1, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 399
    const v14, 0x7f090699

    new-instance v15, Lcom/android/settings_ex/motion2013/AirMotionSettings$7;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v2}, Lcom/android/settings_ex/motion2013/AirMotionSettings$7;-><init>(Lcom/android/settings_ex/motion2013/AirMotionSettings;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v1, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 409
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 410
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/AlertDialog;->show()V

    .line 411
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mGuideDialog:Landroid/app/AlertDialog;

    new-instance v15, Lcom/android/settings_ex/motion2013/AirMotionSettings$8;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/settings_ex/motion2013/AirMotionSettings$8;-><init>(Lcom/android/settings_ex/motion2013/AirMotionSettings;)V

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 417
    return-void

    .line 369
    .end local v7           #message_str:Landroid/text/SpannableString;
    .end local v8           #original_str:Ljava/lang/String;
    .end local v10           #part3:Ljava/lang/String;
    .end local v11           #proper_distance:I
    .end local v13           #salesCode:Ljava/lang/String;
    :cond_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ". "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 383
    .restart local v10       #part3:Ljava/lang/String;
    .restart local v11       #proper_distance:I
    .restart local v13       #salesCode:Ljava/lang/String;
    :cond_5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 395
    .restart local v7       #message_str:Landroid/text/SpannableString;
    .restart local v8       #original_str:Ljava/lang/String;
    :cond_6
    const v14, 0x7f090c65

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method

.method private showTalkBackDisableDialog()V
    .locals 3

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->dismissAllDialog()V

    .line 306
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090c4d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090c4c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings_ex/motion2013/AirMotionSettings$5;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings$5;-><init>(Lcom/android/settings_ex/motion2013/AirMotionSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings_ex/motion2013/AirMotionSettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings$4;-><init>(Lcom/android/settings_ex/motion2013/AirMotionSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 337
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 339
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings_ex/motion2013/AirMotionSettings$6;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings$6;-><init>(Lcom/android/settings_ex/motion2013/AirMotionSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 346
    return-void
.end method

.method private startAnimation()V
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 462
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAnimationIndex:I

    .line 463
    invoke-direct {p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->updateAnimation()V

    goto :goto_0
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 471
    :cond_0
    return-void
.end method

.method private updateAnimation()V
    .locals 4

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 474
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAnimationView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAirMotionIndicatorAnimation:[I

    iget v2, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAnimationIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 475
    iget v0, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAnimationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAnimationIndex:I

    .line 476
    iget v0, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAnimationIndex:I

    iget-object v1, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAirMotionIndicatorAnimation:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAnimationIndex:I

    .line 477
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->stopAnimation()V

    goto :goto_0
.end method


# virtual methods
.method public isAllAirMotionDisabled()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 486
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 487
    iget-object v8, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_glance_view"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 488
    .local v5, quickGlance:I
    iget-object v8, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_scroll"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 489
    .local v2, airScroll:I
    iget-object v8, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_turn"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 490
    .local v3, airTurn:I
    iget-object v8, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_item_move"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 491
    .local v0, airMove:I
    const/4 v1, 0x0

    .line 493
    .local v1, airPin:I
    iget-object v8, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_call_accept"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 494
    .local v4, callAccept:I
    or-int v8, v5, v2

    or-int/2addr v8, v3

    or-int/2addr v8, v0

    or-int/2addr v8, v1

    or-int/2addr v8, v4

    if-ge v8, v6, :cond_0

    :goto_0
    return v6

    :cond_0
    move v6, v7

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 282
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 283
    invoke-direct {p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->showTalkBackDisableDialog()V

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "air_motion_engine"

    if-eqz p2, :cond_2

    move v2, v3

    :goto_1
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 287
    invoke-direct {p0, p2}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->broadcastAirMotionChanged(Z)V

    .line 288
    iget-object v2, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mQuickGlance:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 289
    iget-object v2, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAirScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 290
    iget-object v2, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAirTurn:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 291
    iget-object v2, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAirMove:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 292
    iget-object v2, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAirPin:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 293
    iget-object v2, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAirCallAccept:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 295
    if-eqz p2, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 297
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v2, "pref_air_motion_sensor_noti"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 298
    .local v0, do_not_show_again:Z
    if-nez v0, :cond_0

    .line 299
    invoke-direct {p0, v3}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->showGuideDialog(Z)V

    goto :goto_0

    .end local v0           #do_not_show_again:Z
    .end local v1           #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_2
    move v2, v4

    .line 286
    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/16 v7, 0x10

    const/4 v11, 0x1

    const/4 v10, -0x2

    const/4 v9, 0x0

    .line 104
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0, v11}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->setHasOptionsMenu(Z)V

    .line 106
    const v5, 0x7f07000a

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->addPreferencesFromResource(I)V

    .line 107
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mActivity:Landroid/app/Activity;

    .line 108
    new-instance v5, Landroid/widget/Switch;

    iget-object v6, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 109
    iget-object v5, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mActivity:Landroid/app/Activity;

    instance-of v5, v5, Landroid/preference/PreferenceActivity;

    if-eqz v5, :cond_0

    .line 110
    iget-object v5, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0008

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 112
    .local v1, padding:I
    iget-object v5, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v9, v9, v1, v9}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 113
    iget-object v5, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 115
    iget-object v5, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v7, Landroid/app/ActionBar$LayoutParams;

    const/16 v8, 0x15

    invoke-direct {v7, v10, v10, v8}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v6, v7}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 119
    iget-object v5, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mActionBarLayout:Landroid/view/View;

    .line 121
    .end local v1           #padding:I
    :cond_0
    const-string v5, "quick_glance"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreferenceScreen;

    iput-object v5, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mQuickGlance:Landroid/preference/SwitchPreferenceScreen;

    .line 122
    const-string v5, "air_scroll"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreferenceScreen;

    iput-object v5, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAirScroll:Landroid/preference/SwitchPreferenceScreen;

    .line 123
    const-string v5, "air_turn"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreferenceScreen;

    iput-object v5, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAirTurn:Landroid/preference/SwitchPreferenceScreen;

    .line 124
    const-string v5, "air_move"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreferenceScreen;

    iput-object v5, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAirMove:Landroid/preference/SwitchPreferenceScreen;

    .line 125
    const-string v5, "air_pin"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreferenceScreen;

    iput-object v5, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAirPin:Landroid/preference/SwitchPreferenceScreen;

    .line 126
    const-string v5, "air_call_accept"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreferenceScreen;

    iput-object v5, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAirCallAccept:Landroid/preference/SwitchPreferenceScreen;

    .line 128
    iget-object v5, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mQuickGlance:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 129
    iget-object v5, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAirScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 130
    iget-object v5, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAirTurn:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 131
    iget-object v5, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAirMove:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 132
    iget-object v5, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAirPin:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 133
    iget-object v5, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAirCallAccept:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 134
    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, salesCode:Ljava/lang/String;
    const-string v5, "ATT"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "SPR"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "VZW"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "TMB"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "USC"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 136
    :cond_1
    iget-object v5, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAirMove:Landroid/preference/SwitchPreferenceScreen;

    const v6, 0x7f090c5b

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    .line 140
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 141
    .local v2, ps:Landroid/preference/PreferenceScreen;
    iget-object v5, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAirPin:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 144
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 145
    .local v4, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v5, "pref_air_motion_sensor_noti"

    invoke-interface {v4, v5, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 146
    .local v0, do_not_show_again:Z
    if-nez v0, :cond_3

    .line 147
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->isAllAirMotionDisabled()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "air_motion_engine"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_3

    .line 148
    invoke-direct {p0, v11}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->showGuideDialog(Z)V

    .line 151
    :cond_3
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 263
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 264
    const/4 v0, 0x1

    const v1, 0x7f090a11

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02018c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 267
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 270
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 277
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 272
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 273
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "helphub:section"

    const-string v2, "air_gesture"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 275
    const/4 v1, 0x1

    goto :goto_0

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 181
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 182
    invoke-direct {p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->stopAnimation()V

    .line 183
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAirMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 184
    iget-boolean v0, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->isGoIntoQuideHub:Z

    if-nez v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->isAllAirMotionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_engine"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090c4b

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 187
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_engine"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 188
    invoke-direct {p0, v2}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->broadcastAirMotionChanged(Z)V

    .line 189
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 192
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const v6, 0x7f090c14

    const v5, 0x7f090bdc

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 201
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .local v0, key:Ljava/lang/String;
    move-object v2, p2

    .line 202
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v3

    .line 203
    .local v1, value:I
    :goto_0
    const-string v2, "quick_glance"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 204
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "air_motion_glance_view"

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 205
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->sendGlanceViewCheck(Z)V

    .line 242
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->isAllAirMotionDisabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 243
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "air_motion_engine"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 244
    invoke-direct {p0, v4}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->broadcastAirMotionChanged(Z)V

    .line 245
    iget-object v2, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 247
    :cond_1
    :goto_2
    return v3

    .end local v1           #value:I
    .restart local p2
    :cond_2
    move v1, v4

    .line 202
    goto :goto_0

    .line 206
    .restart local v1       #value:I
    :cond_3
    const-string v2, "air_scroll"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v2, p2

    .line 207
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 208
    invoke-direct {p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->isAllAirScrollOptionDisabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 209
    invoke-direct {p0, v6, v5, v0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->showAllOptionDisabledDialog(IILjava/lang/String;)V

    goto :goto_2

    .line 212
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "air_motion_scroll"

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 213
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->broadcastAirScrollChanged(Z)V

    goto :goto_1

    .line 216
    .restart local p2
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "air_motion_scroll"

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 217
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->broadcastAirScrollChanged(Z)V

    goto :goto_1

    .line 219
    .restart local p2
    :cond_6
    const-string v2, "air_turn"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object v2, p2

    .line 220
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 221
    invoke-direct {p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->isAllAirTurnOptionDisabled()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 222
    invoke-direct {p0, v6, v5, v0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->showAllOptionDisabledDialog(IILjava/lang/String;)V

    goto :goto_2

    .line 225
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "air_motion_turn"

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 226
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->broadcastAirBrowseChanged(Z)V

    goto/16 :goto_1

    .line 229
    .restart local p2
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "air_motion_turn"

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 230
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->broadcastAirBrowseChanged(Z)V

    goto/16 :goto_1

    .line 232
    .restart local p2
    :cond_9
    const-string v2, "air_move"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 233
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "air_motion_item_move"

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 234
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->broadcastAirMoveChanged(Z)V

    goto/16 :goto_1

    .line 235
    .restart local p2
    :cond_a
    const-string v2, "air_pin"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 236
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "air_motion_clip"

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 237
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->broadcastAirPinChanged(Z)V

    goto/16 :goto_1

    .line 238
    .restart local p2
    :cond_b
    const-string v2, "air_call_accept"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "air_motion_call_accept"

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 240
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->broadcastAirCallAcceptChanged(Z)V

    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 251
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, key:Ljava/lang/String;
    const-string v2, "air_motion_indicator"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 253
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->showGuideDialog(Z)V

    .line 258
    :goto_0
    return v1

    .line 256
    :cond_0
    iput-boolean v1, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->isGoIntoQuideHub:Z

    .line 258
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 154
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 155
    iput-boolean v3, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->isGoIntoQuideHub:Z

    .line 156
    iget-object v1, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 159
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->updateAnimation()V

    .line 161
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 162
    iget-object v4, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mQuickGlance:Landroid/preference/SwitchPreferenceScreen;

    iget-object v1, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_glance_view"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 163
    iget-object v4, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAirScroll:Landroid/preference/SwitchPreferenceScreen;

    iget-object v1, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_scroll"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 164
    iget-object v4, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAirTurn:Landroid/preference/SwitchPreferenceScreen;

    iget-object v1, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_turn"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 165
    iget-object v4, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAirMove:Landroid/preference/SwitchPreferenceScreen;

    iget-object v1, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_item_move"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 166
    iget-object v4, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAirPin:Landroid/preference/SwitchPreferenceScreen;

    iget-object v1, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_clip"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 167
    iget-object v4, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAirCallAccept:Landroid/preference/SwitchPreferenceScreen;

    iget-object v1, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_call_accept"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    :goto_5
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 168
    iget-object v1, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "air_motion_engine"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_7

    move v0, v2

    .line 169
    .local v0, airMotionEngineState:Z
    :goto_6
    iget-object v1, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 170
    iget-object v1, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 171
    iget-object v1, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mQuickGlance:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 172
    iget-object v1, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAirScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 173
    iget-object v1, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAirTurn:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 174
    iget-object v1, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAirMove:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 175
    iget-object v1, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAirPin:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 176
    iget-object v1, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAirCallAccept:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 177
    iget-object v1, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "air_motion_engine"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAirMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 178
    return-void

    .end local v0           #airMotionEngineState:Z
    :cond_1
    move v1, v3

    .line 162
    goto/16 :goto_0

    :cond_2
    move v1, v3

    .line 163
    goto/16 :goto_1

    :cond_3
    move v1, v3

    .line 164
    goto :goto_2

    :cond_4
    move v1, v3

    .line 165
    goto :goto_3

    :cond_5
    move v1, v3

    .line 166
    goto :goto_4

    :cond_6
    move v1, v3

    .line 167
    goto :goto_5

    :cond_7
    move v0, v3

    .line 168
    goto :goto_6
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 195
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onStop()V

    .line 196
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 199
    :cond_0
    return-void
.end method
