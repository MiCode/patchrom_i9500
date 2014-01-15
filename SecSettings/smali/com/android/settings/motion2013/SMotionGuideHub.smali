.class public Lcom/android/settings_ex/motion2013/SMotionGuideHub;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "SMotionGuideHub.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final ADVANCED_SETTING:I = 0xe

.field private static final DEFAULT:Ljava/lang/String; = "default"

.field private static final EXTRA_HAS_ADVANCED_SETTINGS:Ljava/lang/String; = "hasAdvancedSettings"

.field private static final EXTRA_HAS_SENSITIVITY:Ljava/lang/String; = "hasSensitivity"

.field private static final EXTRA_TYPE:Ljava/lang/String; = "type"

.field private static final KEY_ADVANCED_AIR_CALL_ACCEPT_AUTO_START_SPEAKER:Ljava/lang/String; = "advanced_air_call_accept_auto_start_speaker"

.field private static final KEY_ADVANCED_CATEGORY:Ljava/lang/String; = "advanced_category"

.field private static final KEY_ADVANCED_SETTING:Ljava/lang/String; = "advanced_setting"

.field private static final KEY_AIR_MOVE:Ljava/lang/String; = "air_move"

.field private static final KEY_AIR_PIN:Ljava/lang/String; = "air_pin"

.field private static final KEY_AIR_SCROLL:Ljava/lang/String; = "air_scroll"

.field private static final KEY_AIR_TURN:Ljava/lang/String; = "air_turn"

.field private static final KEY_ALBUM_AND_PHOTO:Ljava/lang/String; = "album_and_photo"

.field private static final KEY_ALL_LIST:Ljava/lang/String; = "all_list"

.field private static final KEY_BATTERY:Ljava/lang/String; = "battery"

.field private static final KEY_BGM_ON_LOCK_SCREEN:Ljava/lang/String; = "bgm_on_lock_screen"

.field private static final KEY_CALL_ACCEPT:Ljava/lang/String; = "air_call_accept"

.field private static final KEY_CONTACT_LIST:Ljava/lang/String; = "contact_list"

.field private static final KEY_CURRENT_MUSIC:Ljava/lang/String; = "current_music"

.field private static final KEY_DOUBLE_TAP:Ljava/lang/String; = "double_tap"

.field private static final KEY_EMAIL_BODY:Ljava/lang/String; = "email_body"

.field private static final KEY_EMAIL_LIST:Ljava/lang/String; = "email_list"

.field private static final KEY_INTERNET_WINDOW:Ljava/lang/String; = "internet_window"

.field private static final KEY_MISSED_CALL:Ljava/lang/String; = "missed_call"

.field private static final KEY_MOTION_UNLOCK_CAMERA_SHORT_CUT:Ljava/lang/String; = "camera_short_cut"

.field private static final KEY_NOTE_PAGE_VIEW:Ljava/lang/String; = "note_page_view"

.field private static final KEY_NOTIFICATION:Ljava/lang/String; = "notification"

.field private static final KEY_NOW_PLAYING_ON_MUSIC:Ljava/lang/String; = "now_playing_on_music"

.field private static final KEY_PALM_SWIPE:Ljava/lang/String; = "palm_swipe"

.field private static final KEY_PALM_TOUCH:Ljava/lang/String; = "palm_touch"

.field private static final KEY_PAN:Ljava/lang/String; = "pan"

.field private static final KEY_PAN_TO_BROWSE_IMAGE:Ljava/lang/String; = "pan_to_browse_image"

.field private static final KEY_PICK_UP:Ljava/lang/String; = "pick_up"

.field private static final KEY_PICK_UP_TO_CALL_OUT:Ljava/lang/String; = "pick_up_to_call_out"

.field private static final KEY_QUICK_GLANCE:Ljava/lang/String; = "quick_glance"

.field private static final KEY_SHAKE:Ljava/lang/String; = "shake"

.field private static final KEY_SINGLE_PHOTO_VIEW:Ljava/lang/String; = "single_photo_view"

.field private static final KEY_TAP_AND_TWIST:Ljava/lang/String; = "tap_and_twist"

.field private static final KEY_TILT:Ljava/lang/String; = "tilt"

.field private static final KEY_TILT_TO_SCROLL_LIST:Ljava/lang/String; = "tilt_to_scroll_list"

.field private static final KEY_TIME_AND_DATE:Ljava/lang/String; = "time_and_date"

.field private static final KEY_TURN_OVER:Ljava/lang/String; = "turn_over"

.field private static final KEY_UNREAD_MESSAGE:Ljava/lang/String; = "unread_message"

.field private static final KEY_WEB_PAGE:Ljava/lang/String; = "web_page"

.field private static final SENSITIVITY_TEST:I = 0xc

.field private static final TAG:Ljava/lang/String; = "SMotionGuideHub"

.field private static final TUTORIAL:I = 0xa


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mAdvancedCategory:Landroid/preference/PreferenceCategory;

.field private mAdvancedSetting:Landroid/preference/Preference;

.field private mAirCallAcceptAutoStartSpeaker:Landroid/preference/CheckBoxPreference;

.field private mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

.field private mBattery:Landroid/preference/CheckBoxPreference;

.field private mCurrentMusic:Landroid/preference/CheckBoxPreference;

.field private mGuideAniResID:I

.field private mGuideContent:Ljava/lang/String;

.field private mHasAdvancedSettings:Z

.field private mHasSensitivity:Z

.field private mImageView:Landroid/widget/ImageView;

.field private mInternetWindow:Landroid/preference/CheckBoxPreference;

.field private mLearnAboutTitleID:I

.field private mMessageView:Landroid/widget/TextView;

.field private mMissedCall:Landroid/preference/CheckBoxPreference;

.field private mMotionDBItem:Ljava/lang/String;

.field private mMotionDialog:Landroid/app/AlertDialog;

.field private mMotionType:Ljava/lang/String;

.field private mNotePageView:Landroid/preference/CheckBoxPreference;

.field private mNotification:Landroid/preference/CheckBoxPreference;

.field private mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSinglePhotoView:Landroid/preference/CheckBoxPreference;

.field private mTimeAndDate:Landroid/preference/CheckBoxPreference;

.field private mTryBtnClickListener:Landroid/view/View$OnClickListener;

.field private mUnreadMessage:Landroid/preference/CheckBoxPreference;

.field private mUseRingDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 124
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    .line 125
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 126
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 127
    iput v1, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 128
    iput v1, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mGuideAniResID:I

    .line 142
    iput-boolean v1, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mHasSensitivity:Z

    .line 143
    iput-boolean v1, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mHasAdvancedSettings:Z

    .line 171
    iput-object v2, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 172
    iput-object v2, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionDialog:Landroid/app/AlertDialog;

    .line 174
    new-instance v0, Lcom/android/settings_ex/motion2013/SMotionGuideHub$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/motion2013/SMotionGuideHub$1;-><init>(Lcom/android/settings_ex/motion2013/SMotionGuideHub;)V

    iput-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mTryBtnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/motion2013/SMotionGuideHub;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/motion2013/SMotionGuideHub;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->showMotionDialog()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/motion2013/SMotionGuideHub;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->startTurnOverTryActually(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/motion2013/SMotionGuideHub;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/motion2013/SMotionGuideHub;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->startTryActually(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/motion2013/SMotionGuideHub;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->sendGlanceViewCheck(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings_ex/motion2013/SMotionGuideHub;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->broadcastAirScrollChanged(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings_ex/motion2013/SMotionGuideHub;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->broadcastAirBrowseChanged(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings_ex/motion2013/SMotionGuideHub;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->broadcastAirMoveChanged(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings_ex/motion2013/SMotionGuideHub;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->broadcastAirPinChanged(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings_ex/motion2013/SMotionGuideHub;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->broadcastAirCallAcceptChanged(Z)V

    return-void
.end method

.method private broadcastAirBrowseChanged(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 1023
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_BROWSE_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1024
    .local v0, motion_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1025
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 1026
    return-void
.end method

.method private broadcastAirCallAcceptChanged(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 1041
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_CALL_ACCEPT_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1042
    .local v0, motion_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1043
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 1044
    return-void
.end method

.method private broadcastAirMoveChanged(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 1029
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_MOVE_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1030
    .local v0, motion_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1031
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 1032
    return-void
.end method

.method private broadcastAirPinChanged(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 1035
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_PIN_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1036
    .local v0, motion_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1037
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 1038
    return-void
.end method

.method private broadcastAirScrollChanged(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 1017
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_SCROLL_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1018
    .local v0, motion_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1019
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 1020
    return-void
.end method

.method private isAllAirScrollOptionDisabled()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 985
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    .line 987
    iget-object v8, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_scroll_all_list"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 988
    .local v1, alllist:I
    iget-object v8, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_scroll_web_page"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 989
    .local v5, webpage:I
    iget-object v8, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_scroll_contact_list"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 990
    .local v2, contactlist:I
    iget-object v8, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_scroll_email_list"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 991
    .local v4, emaillist:I
    iget-object v8, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_scroll_album_and_photo"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 992
    .local v0, albumandphoto:I
    iget-object v8, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_scroll_email_body"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 994
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

    .line 998
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    .line 1000
    iget-object v7, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "air_motion_turn_single_photo_view"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1001
    .local v4, singlephotoview:I
    iget-object v7, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "air_motion_turn_internet_window"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1002
    .local v1, internetwindow:I
    iget-object v7, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "air_motion_turn_now_playing_on_music"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1003
    .local v3, nowplayingmusic:I
    iget-object v7, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "air_motion_turn_bgm_on_lock_screen"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1004
    .local v0, bgmonlockscreen:I
    iget-object v7, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "air_motion_turn_note_page_view"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1006
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
    .line 1010
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings_ex.GlanceViewChanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1011
    .local v0, i:Landroid/content/Intent;
    const-string v1, "GlanceViewState"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1012
    const-string v1, "SMotionGuideHub"

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

    .line 1013
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 1014
    return-void
.end method

.method private setArgument(Ljava/lang/String;)V
    .locals 9
    .parameter "key"

    .prologue
    const v8, 0x7f090c07

    const v7, 0x7f090bfb

    const v6, 0x7f090bfa

    .line 584
    const-string v4, "quick_glance"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 585
    const-string v4, "air_motion_glance_view"

    iput-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 586
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 587
    .local v2, res:Landroid/content/res/Resources;
    const v4, 0x7f090c6b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 588
    const v4, 0x7f090c9e

    iput v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 589
    const v4, 0x7f020025

    iput v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mGuideAniResID:I

    .line 715
    .end local v2           #res:Landroid/content/res/Resources;
    :goto_0
    return-void

    .line 590
    :cond_0
    const-string v4, "air_scroll"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 591
    const-string v4, "air_motion_scroll"

    iput-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 592
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 593
    .restart local v2       #res:Landroid/content/res/Resources;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f090c6f

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f090c61

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f090ca7

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f090cb0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 597
    const v4, 0x7f090c6e

    iput v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 598
    const v4, 0x7f020027

    iput v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto :goto_0

    .line 599
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_1
    const-string v4, "air_turn"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 600
    const-string v4, "air_motion_turn"

    iput-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 601
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 602
    .restart local v2       #res:Landroid/content/res/Resources;
    const v4, 0x7f090c71

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 603
    const v4, 0x7f090c70

    iput v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 604
    const v4, 0x7f020028

    iput v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 605
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_2
    const-string v4, "air_move"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 606
    const-string v4, "air_motion_item_move"

    iput-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 607
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 608
    .restart local v2       #res:Landroid/content/res/Resources;
    const v4, 0x7f090c74

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 609
    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    .line 610
    .local v3, salesCode:Ljava/lang/String;
    const-string v4, "ATT"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "SPR"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "VZW"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "TMB"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "USC"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 611
    :cond_3
    const v4, 0x7f090c76

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 613
    :cond_4
    const v4, 0x7f090c73

    iput v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 614
    const v4, 0x7f020023

    iput v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 615
    .end local v2           #res:Landroid/content/res/Resources;
    .end local v3           #salesCode:Ljava/lang/String;
    :cond_5
    const-string v4, "air_pin"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 616
    const-string v4, "air_motion_clip"

    iput-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 617
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090c7f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 618
    const v4, 0x7f090c7e

    iput v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 619
    const v4, 0x7f020024

    iput v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 620
    :cond_6
    const-string v4, "air_call_accept"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 621
    const-string v4, "air_motion_call_accept"

    iput-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 622
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090c82

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 623
    const v4, 0x7f090c81

    iput v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 624
    const v4, 0x7f020021

    iput v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 625
    :cond_7
    const-string v4, "tilt"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 626
    const-string v4, "motion_zooming"

    iput-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 627
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090c01

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 628
    iput v6, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 629
    const v4, 0x7f0202d2

    iput v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 630
    :cond_8
    const-string v4, "tilt_to_scroll_list"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 631
    const-string v4, "motion_tilt_to_list_scrolling"

    iput-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 632
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090c02

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 633
    iput v6, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 634
    const v4, 0x7f0202ca

    iput v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 635
    :cond_9
    const-string v4, "pan"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 636
    const-string v4, "motion_panning"

    iput-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 637
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090c03

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 638
    iput v7, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 639
    const v4, 0x7f0202b4

    iput v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 640
    :cond_a
    const-string v4, "pan_to_browse_image"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 641
    const-string v4, "motion_pan_to_browse_image"

    iput-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 642
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090c04

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 643
    iput v7, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 644
    const v4, 0x7f0202b3

    iput v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 645
    :cond_b
    const-string v4, "shake"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 646
    const-string v4, "motion_shake"

    iput-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 647
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090c05

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 648
    const/4 v1, 0x1

    .line 650
    .local v1, isKiesAirInstalled:Z
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.samsung.swift.app.kiesair"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 654
    :goto_1
    if-nez v1, :cond_d

    .line 655
    const-string v4, "CMCC"

    const-string v5, "OPEN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "CHM"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 658
    :cond_c
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090c08

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 668
    :cond_d
    :goto_2
    const v4, 0x7f090bfc

    iput v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 669
    const v4, 0x7f0202bc

    iput v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 651
    :catch_0
    move-exception v0

    .line 652
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_1

    .line 660
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_e
    const-string v4, "CHN"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string v4, "CTC"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 662
    :cond_f
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    goto :goto_2

    .line 665
    :cond_10
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    goto :goto_2

    .line 670
    .end local v1           #isKiesAirInstalled:Z
    :cond_11
    const-string v4, "double_tap"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 671
    const-string v4, "motion_double_tap"

    iput-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 672
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090c09

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 673
    const v4, 0x7f090bfd

    iput v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 674
    const v4, 0x7f0202a6

    iput v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 675
    :cond_12
    const-string v4, "pick_up"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 676
    const-string v4, "motion_pick_up"

    iput-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 677
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090c0a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 678
    const v4, 0x7f090bfe

    iput v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 679
    const v4, 0x7f0202bd

    iput v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 680
    :cond_13
    const-string v4, "pick_up_to_call_out"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 681
    const-string v4, "motion_pick_up_to_call_out"

    iput-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 682
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090c1c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 683
    const v4, 0x7f090bff

    iput v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 684
    const v4, 0x7f0202a3

    iput v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 685
    :cond_14
    const-string v4, "turn_over"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 686
    const-string v4, "motion_overturn"

    iput-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 687
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090c0d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 688
    const v4, 0x7f090c00

    iput v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 689
    const v4, 0x7f0202d3

    iput v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 690
    :cond_15
    const-string v4, "palm_swipe"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 691
    const-string v4, "surface_palm_swipe"

    iput-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 692
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090c29

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 693
    const v4, 0x7f090c28

    iput v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 694
    const v4, 0x7f0200c3

    iput v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 695
    :cond_16
    const-string v4, "palm_touch"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 696
    const-string v4, "surface_palm_touch"

    iput-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 697
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090c2b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 698
    const v4, 0x7f090c2a

    iput v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 699
    const v4, 0x7f0200c4

    iput v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 700
    :cond_17
    const-string v4, "tap_and_twist"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 701
    const-string v4, "surface_tap_and_twist"

    iput-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 702
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090c2d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 703
    const v4, 0x7f090c2c

    iput v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    goto/16 :goto_0

    .line 705
    :cond_18
    const-string v4, "camera_short_cut"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 706
    const-string v4, "motion_unlock_camera_short_cut"

    iput-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 707
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090c39

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 708
    const v4, 0x7f090c38

    iput v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 709
    const v4, 0x7f0202a2

    iput v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 711
    :cond_19
    const-string v4, "SMotionGuideHub"

    const-string v5, "Cannot get correct motion information"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private showMotionDialog()V
    .locals 6

    .prologue
    const v5, 0x7f090c85

    .line 899
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->allDialogDismiss()V

    .line 900
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 901
    .local v1, res:Landroid/content/res/Resources;
    const v3, 0x7f090c18

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 902
    .local v2, title:Ljava/lang/String;
    const v3, 0x7f090c19

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 903
    .local v0, message:Ljava/lang/String;
    const-string v3, "air_motion_glance_view"

    iget-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 904
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 905
    const v3, 0x7f090c86

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 922
    :cond_0
    :goto_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1010355

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090699

    new-instance v5, Lcom/android/settings_ex/motion2013/SMotionGuideHub$2;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/motion2013/SMotionGuideHub$2;-><init>(Lcom/android/settings_ex/motion2013/SMotionGuideHub;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090143

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionDialog:Landroid/app/AlertDialog;

    .line 947
    iget-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/android/settings_ex/motion2013/SMotionGuideHub$3;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/motion2013/SMotionGuideHub$3;-><init>(Lcom/android/settings_ex/motion2013/SMotionGuideHub;)V

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 952
    return-void

    .line 906
    :cond_1
    const-string v3, "air_motion_scroll"

    iget-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 907
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 908
    const v3, 0x7f090c87

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 909
    :cond_2
    const-string v3, "air_motion_turn"

    iget-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 910
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 911
    const v3, 0x7f090c88

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 912
    :cond_3
    const-string v3, "air_motion_item_move"

    iget-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 913
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 914
    const v3, 0x7f090c89

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 915
    :cond_4
    const-string v3, "air_motion_clip"

    iget-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 916
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 917
    const v3, 0x7f090c8a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 918
    :cond_5
    const-string v3, "air_motion_call_accept"

    iget-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 919
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 920
    const v3, 0x7f090c8b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private showUseRingDialog()V
    .locals 3

    .prologue
    .line 955
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->allDialogDismiss()V

    .line 956
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

    new-instance v2, Lcom/android/settings_ex/motion2013/SMotionGuideHub$5;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/motion2013/SMotionGuideHub$5;-><init>(Lcom/android/settings_ex/motion2013/SMotionGuideHub;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090c16

    new-instance v2, Lcom/android/settings_ex/motion2013/SMotionGuideHub$4;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/motion2013/SMotionGuideHub$4;-><init>(Lcom/android/settings_ex/motion2013/SMotionGuideHub;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 971
    return-void
.end method

.method private startTryActually(Ljava/lang/String;)V
    .locals 6
    .parameter "key"

    .prologue
    const/high16 v3, 0x1000

    const/4 v5, 0x2

    const/16 v4, 0xa

    .line 764
    const-string v2, "quick_glance"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 765
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 766
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "samsung.pickuptutorial.GLANCEVIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 767
    invoke-virtual {p0, v1, v4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 768
    const-string v2, "SMotionGuideHub"

    const-string v3, "AIR_MOTION_GLANCE_VIEW"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 769
    :cond_1
    const-string v2, "air_scroll"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 774
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.AirScrollTry"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 775
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 776
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 777
    invoke-virtual {p0, v1, v4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 778
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    const-string v2, "air_turn"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 779
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 780
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 781
    const-string v2, "com.sec.android.gallery3d"

    const-string v3, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 782
    const-string v2, "MotionTest"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 783
    invoke-virtual {p0, v1, v4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 784
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3
    const-string v2, "air_move"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 785
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 786
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "com.sec.android.motions.settings.airmotiontutorial"

    const-string v3, "com.sec.android.motions.settings.airmotiontutorial.AirMotionTry"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 787
    invoke-virtual {p0, v1, v4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 788
    .end local v1           #intent:Landroid/content/Intent;
    :cond_4
    const-string v2, "air_pin"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 789
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.AirPinTry"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 790
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 791
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 792
    invoke-virtual {p0, v1, v4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 793
    .end local v1           #intent:Landroid/content/Intent;
    :cond_5
    const-string v2, "air_call_accept"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 794
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 795
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.AirMotionTutorialIncallScreen"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 796
    invoke-virtual {p0, v1, v4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 797
    .end local v1           #intent:Landroid/content/Intent;
    :cond_6
    const-string v2, "tilt"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 806
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->startSensitivityTest(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 807
    :cond_7
    const-string v2, "tilt_to_scroll_list"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 808
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 809
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 810
    const-string v2, "com.android.jcontacts"

    const-string v3, "com.sec.android.app.contacts.activities.TiltToScrollListTutorialActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 814
    :goto_1
    invoke-virtual {p0, v1, v4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 812
    :cond_8
    const-string v2, "com.android.contacts"

    const-string v3, "com.sec.android.app.contacts.activities.TiltToScrollListTutorialActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 815
    .end local v1           #intent:Landroid/content/Intent;
    :cond_9
    const-string v2, "pan"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 822
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->startSensitivityTest(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 823
    :cond_a
    const-string v2, "pan_to_browse_image"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 831
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->startSensitivityTest(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 832
    :cond_b
    const-string v2, "shake"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 840
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 841
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "com.android.settings_ex"

    const-string v3, "com.android.settings_ex.motion.ShakeTutorial"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 842
    invoke-virtual {p0, v1, v4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 843
    .end local v1           #intent:Landroid/content/Intent;
    :cond_c
    const-string v2, "double_tap"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 844
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 845
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 846
    const-string v2, "com.android.jcontacts"

    const-string v3, "com.sec.android.app.contacts.activities.DoubleTapTutorialActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 850
    :goto_2
    invoke-virtual {p0, v1, v4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 848
    :cond_d
    const-string v2, "com.android.contacts"

    const-string v3, "com.sec.android.app.contacts.activities.DoubleTapTutorialActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 851
    .end local v1           #intent:Landroid/content/Intent;
    :cond_e
    const-string v2, "pick_up"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 852
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 853
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "android.pickuptutorial.PICKUPTUTORIAL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 854
    invoke-virtual {p0, v1, v4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 855
    .end local v1           #intent:Landroid/content/Intent;
    :cond_f
    const-string v2, "pick_up_to_call_out"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 856
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 857
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "com.android.mms.ui.DirectCallTutorial"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 858
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 859
    .end local v1           #intent:Landroid/content/Intent;
    :cond_10
    const-string v2, "turn_over"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 860
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 861
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-ne v2, v5, :cond_11

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-eqz v2, :cond_11

    .line 862
    invoke-direct {p0}, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->showUseRingDialog()V

    goto/16 :goto_0

    .line 864
    :cond_11
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->startTurnOverTryActually(Z)V

    goto/16 :goto_0

    .line 866
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :cond_12
    const-string v2, "palm_swipe"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 868
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 869
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "com.samsung.pickuptutorial.PALMSWIPETUTORIAL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 871
    invoke-virtual {p0, v1, v4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 872
    const-string v2, "SMotionGuideHub"

    const-string v3, "MotionTutorialSettings Tutorial Palm swipe to capture"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 873
    .end local v1           #intent:Landroid/content/Intent;
    :cond_13
    const-string v2, "palm_touch"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 875
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 876
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.PALM_TOUCH_TUTORIAL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 877
    invoke-virtual {p0, v1, v4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 878
    const-string v2, "SMotionGuideHub"

    const-string v3, "MotionTutorialSettings Tutorial Palm touch to mute/pause"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 879
    .end local v1           #intent:Landroid/content/Intent;
    :cond_14
    const-string v2, "tap_and_twist"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 881
    const-string v2, "camera_short_cut"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 882
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 883
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "android.camerashortcut.CAMERASHORTCUTTUTORIAL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 884
    invoke-virtual {p0, v1, v4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method

.method private startTurnOverTryActually(Z)V
    .locals 3
    .parameter "useRing"

    .prologue
    .line 888
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 889
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "UseRing"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 890
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 891
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.callsettings.OverturnTutorialIncallScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 895
    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 896
    return-void

    .line 893
    :cond_0
    const-string v1, "com.sec.android.app.clockpackage"

    const-string v2, "com.sec.android.app.clockpackage.alarm.OverturnTutorialAlarmScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public allDialogDismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 974
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 975
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 976
    iput-object v1, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionDialog:Landroid/app/AlertDialog;

    .line 978
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mUseRingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 979
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mUseRingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 980
    iput-object v1, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 982
    :cond_1
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 321
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 322
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f04011b

    invoke-virtual {v2, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 323
    .local v1, guideView:Landroid/view/View;
    const v4, 0x7f0b0355

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMessageView:Landroid/widget/TextView;

    .line 324
    const v4, 0x7f0b0354

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mImageView:Landroid/widget/ImageView;

    .line 325
    const v4, 0x7f0b0077

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 326
    .local v3, tryBtn:Landroid/widget/Button;
    iget-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mTryBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    const-string v4, "default"

    iget-object v5, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 341
    iget-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMessageView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    :cond_0
    iget v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mGuideAniResID:I

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mImageView:Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    .line 345
    iget-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mImageView:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mGuideAniResID:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 346
    iget-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 347
    .local v0, ani:Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v0, :cond_1

    .line 348
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 352
    .end local v0           #ani:Landroid/graphics/drawable/AnimationDrawable;
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v6, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 354
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 355
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 456
    const-string v0, "default"

    iget-object v1, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 457
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    if-eqz p2, :cond_6

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 462
    const-string v0, "air_motion_glance_view"

    iget-object v1, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    invoke-direct {p0, p2}, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->sendGlanceViewCheck(Z)V

    .line 464
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mBattery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 465
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 466
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMissedCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 467
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mUnreadMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 468
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mCurrentMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 482
    :cond_0
    const-string v0, "air_motion_turn"

    iget-object v1, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 483
    invoke-direct {p0, p2}, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->broadcastAirBrowseChanged(Z)V

    .line 484
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 485
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 486
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 487
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 488
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mNotePageView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 491
    :cond_1
    const-string v0, "air_motion_item_move"

    iget-object v1, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 492
    invoke-direct {p0, p2}, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->broadcastAirMoveChanged(Z)V

    .line 495
    :cond_2
    const-string v0, "air_motion_clip"

    iget-object v1, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 496
    invoke-direct {p0, p2}, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->broadcastAirPinChanged(Z)V

    .line 499
    :cond_3
    const-string v0, "air_motion_call_accept"

    iget-object v1, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 500
    invoke-direct {p0, p2}, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->broadcastAirCallAcceptChanged(Z)V

    .line 503
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mAdvancedSetting:Landroid/preference/Preference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 504
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mAirCallAcceptAutoStartSpeaker:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 506
    :cond_5
    return-void

    .line 457
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/16 v5, 0x10

    const/4 v8, -0x2

    const/4 v7, 0x0

    .line 195
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 197
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 198
    .local v0, arguments:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 199
    const-string v3, "type"

    const-string v4, "default"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    .line 200
    const-string v3, "hasSensitivity"

    invoke-virtual {v0, v3, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mHasSensitivity:Z

    .line 201
    const-string v3, "hasAdvancedSettings"

    invoke-virtual {v0, v3, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mHasAdvancedSettings:Z

    .line 203
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->setArgument(Ljava/lang/String;)V

    .line 205
    const v3, 0x7f070060

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 207
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mActivity:Landroid/app/Activity;

    .line 208
    new-instance v3, Landroid/widget/Switch;

    iget-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mActionBarSwitch:Landroid/widget/Switch;

    .line 209
    iget-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mActivity:Landroid/app/Activity;

    instance-of v3, v3, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_1

    .line 210
    iget-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 212
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v7, v7, v1, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 213
    iget-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 215
    iget-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v8, v8, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 219
    iget-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mActionBarLayout:Landroid/view/View;

    .line 222
    .end local v1           #padding:I
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 237
    const-string v3, "advanced_category"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    .line 238
    const-string v3, "advanced_setting"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mAdvancedSetting:Landroid/preference/Preference;

    .line 239
    const-string v3, "advanced_air_call_accept_auto_start_speaker"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mAirCallAcceptAutoStartSpeaker:Landroid/preference/CheckBoxPreference;

    .line 240
    iget-boolean v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mHasAdvancedSettings:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mAdvancedSetting:Landroid/preference/Preference;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mAirCallAcceptAutoStartSpeaker:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_3

    .line 241
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 242
    .local v2, ps:Landroid/preference/PreferenceScreen;
    iget-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 243
    iget-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mAdvancedSetting:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 244
    iget-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mAirCallAcceptAutoStartSpeaker:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 290
    :cond_2
    :goto_0
    return-void

    .line 245
    .end local v2           #ps:Landroid/preference/PreferenceScreen;
    :cond_3
    const-string v3, "air_call_accept"

    iget-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 247
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 248
    .restart local v2       #ps:Landroid/preference/PreferenceScreen;
    iget-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mAdvancedSetting:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 249
    iget-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    const v4, 0x7f090cc7

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(I)V

    goto :goto_0

    .line 251
    .end local v2           #ps:Landroid/preference/PreferenceScreen;
    :cond_4
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 252
    .restart local v2       #ps:Landroid/preference/PreferenceScreen;
    iget-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mAirCallAcceptAutoStartSpeaker:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 253
    const-string v3, "quick_glance"

    iget-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 254
    iget-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    const v4, 0x7f090c9d

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 255
    iget-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mAdvancedSetting:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 256
    const v3, 0x7f07005d

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 257
    const-string v3, "time_and_date"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mTimeAndDate:Landroid/preference/CheckBoxPreference;

    .line 258
    const-string v3, "battery"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mBattery:Landroid/preference/CheckBoxPreference;

    .line 259
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mNotification:Landroid/preference/CheckBoxPreference;

    .line 260
    const-string v3, "missed_call"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMissedCall:Landroid/preference/CheckBoxPreference;

    .line 261
    const-string v3, "unread_message"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mUnreadMessage:Landroid/preference/CheckBoxPreference;

    .line 262
    const-string v3, "current_music"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mCurrentMusic:Landroid/preference/CheckBoxPreference;

    .line 263
    iget-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mTimeAndDate:Landroid/preference/CheckBoxPreference;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 264
    iget-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mTimeAndDate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 278
    :cond_5
    const-string v3, "air_turn"

    iget-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 279
    iget-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    const v4, 0x7f090cb4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 280
    iget-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mAdvancedSetting:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 281
    const v3, 0x7f07000d

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 282
    const-string v3, "single_photo_view"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    .line 283
    const-string v3, "internet_window"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    .line 284
    const-string v3, "now_playing_on_music"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    .line 285
    const-string v3, "bgm_on_lock_screen"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    .line 286
    const-string v3, "note_page_view"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mNotePageView:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 4

    .prologue
    const v3, 0x7f090bdc

    const/4 v2, 0x0

    .line 429
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 431
    const-string v0, "air_scroll"

    iget-object v1, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 432
    invoke-direct {p0}, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->isAllAirScrollOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_scroll"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 434
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_scroll"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 435
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    const-string v0, "air_turn"

    iget-object v1, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    invoke-direct {p0}, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->isAllAirTurnOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_turn"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 440
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_turn"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 441
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 518
    iget-object v2, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mAdvancedSetting:Landroid/preference/Preference;

    if-ne p2, v2, :cond_1

    .line 519
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->startAdvancedSettings(Ljava/lang/String;)V

    .line 580
    :cond_0
    :goto_0
    return v1

    .line 521
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mAirCallAcceptAutoStartSpeaker:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_3

    .line 522
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_motion_call_accept_auto_start_speaker"

    iget-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mAirCallAcceptAutoStartSpeaker:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 524
    :cond_3
    if-eqz p2, :cond_0

    .line 526
    iget-object v2, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mBattery:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_5

    .line 527
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "glance_view_battery_charging_info"

    iget-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mBattery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v1

    :cond_4
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 529
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mNotification:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_7

    .line 530
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "glance_view_notification"

    iget-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_6

    move v0, v1

    :cond_6
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 532
    :cond_7
    iget-object v2, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMissedCall:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_9

    .line 533
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "glance_view_missed_call"

    iget-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMissedCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_8

    move v0, v1

    :cond_8
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 535
    :cond_9
    iget-object v2, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mUnreadMessage:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_b

    .line 536
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "glance_view_new_message"

    iget-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mUnreadMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_a

    move v0, v1

    :cond_a
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 538
    :cond_b
    iget-object v2, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mCurrentMusic:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_d

    .line 539
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "glance_view_now_playing_music"

    iget-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mCurrentMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_c

    move v0, v1

    :cond_c
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 555
    :cond_d
    iget-object v2, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_10

    .line 556
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_motion_turn_single_photo_view"

    iget-object v2, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_f

    move v2, v1

    :goto_1
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 567
    :cond_e
    :goto_2
    const-string v2, "air_scroll"

    iget-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 568
    invoke-direct {p0}, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->isAllAirScrollOptionDisabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 569
    iget-object v2, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_0

    :cond_f
    move v2, v0

    .line 556
    goto :goto_1

    .line 557
    :cond_10
    iget-object v2, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_12

    .line 558
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_motion_turn_internet_window"

    iget-object v2, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_11

    move v2, v1

    :goto_3
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_11
    move v2, v0

    goto :goto_3

    .line 559
    :cond_12
    iget-object v2, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_14

    .line 560
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_motion_turn_now_playing_on_music"

    iget-object v2, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_13

    move v2, v1

    :goto_4
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_13
    move v2, v0

    goto :goto_4

    .line 561
    :cond_14
    iget-object v2, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_16

    .line 562
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_motion_turn_bgm_on_lock_screen"

    iget-object v2, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_15

    move v2, v1

    :goto_5
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_15
    move v2, v0

    goto :goto_5

    .line 563
    :cond_16
    iget-object v2, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mNotePageView:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_e

    .line 564
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_motion_turn_note_page_view"

    iget-object v2, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mNotePageView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_17

    move v2, v1

    :goto_6
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_17
    move v2, v0

    goto :goto_6

    .line 573
    :cond_18
    const-string v2, "air_turn"

    iget-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 574
    invoke-direct {p0}, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->isAllAirTurnOptionDisabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 575
    iget-object v2, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_0

    .line 580
    :cond_19
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 362
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 364
    const-string v3, "default"

    iget-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 365
    iget-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mActionBarLayout:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 366
    iget-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 369
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 370
    .local v0, motionEngineState:Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 371
    iget-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mAdvancedSetting:Landroid/preference/Preference;

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 372
    iget-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mAirCallAcceptAutoStartSpeaker:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 374
    iget-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mAirCallAcceptAutoStartSpeaker:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "air_motion_call_accept_auto_start_speaker"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    :goto_1
    invoke-virtual {v4, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 376
    const-string v3, "quick_glance"

    iget-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 377
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    .line 378
    iget-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mBattery:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "glance_view_battery_charging_info"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    move v3, v1

    :goto_2
    invoke-virtual {v4, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 379
    iget-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mNotification:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "glance_view_notification"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_5

    move v3, v1

    :goto_3
    invoke-virtual {v4, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 380
    iget-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMissedCall:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "glance_view_missed_call"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_6

    move v3, v1

    :goto_4
    invoke-virtual {v4, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 381
    iget-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mUnreadMessage:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "glance_view_new_message"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_7

    move v3, v1

    :goto_5
    invoke-virtual {v4, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 382
    iget-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mCurrentMusic:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "glance_view_now_playing_music"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_8

    :goto_6
    invoke-virtual {v3, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 384
    iget-object v1, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mBattery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 385
    iget-object v1, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 386
    iget-object v1, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMissedCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 387
    iget-object v1, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mUnreadMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 388
    iget-object v1, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mCurrentMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 426
    .end local v0           #motionEngineState:Z
    :cond_1
    :goto_7
    return-void

    :cond_2
    move v0, v2

    .line 369
    goto/16 :goto_0

    .restart local v0       #motionEngineState:Z
    :cond_3
    move v3, v2

    .line 374
    goto :goto_1

    :cond_4
    move v3, v2

    .line 378
    goto :goto_2

    :cond_5
    move v3, v2

    .line 379
    goto :goto_3

    :cond_6
    move v3, v2

    .line 380
    goto :goto_4

    :cond_7
    move v3, v2

    .line 381
    goto :goto_5

    :cond_8
    move v1, v2

    .line 382
    goto :goto_6

    .line 406
    :cond_9
    const-string v3, "air_turn"

    iget-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 407
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    .line 409
    iget-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_turn_single_photo_view"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_a

    move v3, v1

    :goto_8
    invoke-virtual {v4, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 410
    iget-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_turn_internet_window"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_b

    move v3, v1

    :goto_9
    invoke-virtual {v4, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 411
    iget-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_turn_now_playing_on_music"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_c

    move v3, v1

    :goto_a
    invoke-virtual {v4, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 412
    iget-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_turn_bgm_on_lock_screen"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_d

    move v3, v1

    :goto_b
    invoke-virtual {v4, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 413
    iget-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mNotePageView:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_turn_note_page_view"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_e

    :goto_c
    invoke-virtual {v3, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 415
    iget-object v1, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 416
    iget-object v1, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 417
    iget-object v1, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 418
    iget-object v1, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 419
    iget-object v1, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mNotePageView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_7

    :cond_a
    move v3, v2

    .line 409
    goto :goto_8

    :cond_b
    move v3, v2

    .line 410
    goto :goto_9

    :cond_c
    move v3, v2

    .line 411
    goto :goto_a

    :cond_d
    move v3, v2

    .line 412
    goto :goto_b

    :cond_e
    move v1, v2

    .line 413
    goto :goto_c
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 448
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 449
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 452
    :cond_0
    return-void
.end method

.method public startAdvancedSettings(Ljava/lang/String;)V
    .locals 7
    .parameter "key"

    .prologue
    const v3, 0x7f090c84

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 718
    const-string v1, "quick_glance"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 719
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 720
    .local v0, preferenceActivity:Landroid/preference/PreferenceActivity;
    const-class v1, Lcom/android/settings_ex/motion2013/QuickGlanceAdvancedSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 729
    .end local v0           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_0
    :goto_0
    return-void

    .line 721
    :cond_1
    const-string v1, "air_scroll"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 722
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 723
    .restart local v0       #preferenceActivity:Landroid/preference/PreferenceActivity;
    const-class v1, Lcom/android/settings_ex/motion2013/AirScrollAdvancedSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 724
    .end local v0           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_2
    const-string v1, "air_turn"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 725
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 726
    .restart local v0       #preferenceActivity:Landroid/preference/PreferenceActivity;
    const-class v1, Lcom/android/settings_ex/motion2013/AirTurnAdvancedSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0
.end method

.method public startSensitivityTest(Ljava/lang/String;)V
    .locals 6
    .parameter "key"

    .prologue
    const/16 v5, 0xc

    const/4 v4, 0x5

    .line 733
    const-string v2, "tilt"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 734
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_zooming_sensitivity"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 735
    .local v1, sensitivity:I
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 736
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "image/jpeg"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 737
    const-string v2, "com.sec.android.gallery3d"

    const-string v3, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 738
    const-string v2, "MotionTest"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 739
    const-string v2, "Sensitivity"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 740
    invoke-virtual {p0, v0, v5}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 761
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #sensitivity:I
    :cond_0
    :goto_0
    return-void

    .line 741
    :cond_1
    const-string v2, "tilt_to_scroll_list"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 743
    const-string v2, "SMotionGuideHub"

    const-string v3, "MOTION_TILT_TO_SCROLL_LIST"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 745
    :cond_2
    const-string v2, "pan"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 746
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_panning_sensitivity"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 747
    .restart local v1       #sensitivity:I
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 748
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "com.sec.android.motions.settings.panningtutorial"

    const-string v3, "com.sec.android.motions.settings.panningtutorial.PanningTryActually"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 749
    const-string v2, "Preview"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 750
    const-string v2, "Sensitivity"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 751
    invoke-virtual {p0, v0, v5}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 752
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #sensitivity:I
    :cond_3
    const-string v2, "pan_to_browse_image"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 753
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_pan_to_browse_image_sensitivity"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 754
    .restart local v1       #sensitivity:I
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 755
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "image/jpeg"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 756
    const-string v2, "com.sec.android.gallery3d"

    const-string v3, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 757
    const-string v2, "MotionTest"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 758
    const-string v2, "Sensitivity"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 759
    invoke-virtual {p0, v0, v5}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
