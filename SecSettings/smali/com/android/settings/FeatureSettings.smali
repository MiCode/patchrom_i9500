.class public Lcom/android/settings_ex/FeatureSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "FeatureSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final AIR_MOTION_UNCHECK_MESSAGE:I = 0x0

.field private static final AIR_VIEW_UNCHECK_MESSAGE:I = 0x1

.field private static final SMART_PAUSE_UNCHECK_MESSAGE:I = 0x3

.field private static final SMART_SCROLL_UNCHECK_MESSAGE:I = 0x4

.field private static final SMART_STAY_UNCHECK_MESSAGE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FeatureSettings"


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mAdapt:Landroid/preference/SwitchPreferenceScreen;

.field private mAirMotion:Landroid/preference/SwitchPreferenceScreen;

.field private mAirView:Landroid/preference/SwitchPreferenceScreen;

.field private mEasyMode:Landroid/preference/SwitchPreferenceScreen;

.field private mEnabler:Lcom/android/settings_ex/nfc/SBeamEnabler;

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mMulti:Landroid/preference/SwitchPreferenceScreen;

.field private mPm:Landroid/content/pm/PackageManager;

.field mResolver:Landroid/content/ContentResolver;

.field private mSBeam:Landroid/preference/SwitchPreferenceScreen;

.field private mSmartBlock:Landroid/preference/SwitchPreferenceScreen;

.field private mSmartPause:Landroid/preference/SwitchPreferenceScreen;

.field private mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

.field private mSmartStay:Landroid/preference/SwitchPreferenceScreen;

.field protected mSwitchUncheckHandler:Landroid/os/Handler;

.field private mTalkbackDisableDialog:Landroid/app/AlertDialog;

.field private mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 83
    iput-object v0, p0, Lcom/android/settings_ex/FeatureSettings;->mEnabler:Lcom/android/settings_ex/nfc/SBeamEnabler;

    .line 85
    iput-object v0, p0, Lcom/android/settings_ex/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 86
    iput-object v0, p0, Lcom/android/settings_ex/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 88
    new-instance v0, Lcom/android/settings_ex/FeatureSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/FeatureSettings$1;-><init>(Lcom/android/settings_ex/FeatureSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/FeatureSettings;->mSwitchUncheckHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/FeatureSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings_ex/FeatureSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/FeatureSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings_ex/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/FeatureSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings_ex/FeatureSettings;->mSmartStay:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/FeatureSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings_ex/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/FeatureSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings_ex/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/FeatureSettings;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings_ex/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/FeatureSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings_ex/FeatureSettings;->turnOnEasyMode(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings_ex/FeatureSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings_ex/FeatureSettings;->mMulti:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method private initUI()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 140
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    .line 142
    iget-object v8, p0, Lcom/android/settings_ex/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    iget-object v5, p0, Lcom/android/settings_ex/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "finger_air_view"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_4

    move v5, v6

    :goto_0
    invoke-virtual {v8, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 143
    iget-object v8, p0, Lcom/android/settings_ex/FeatureSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    iget-object v5, p0, Lcom/android/settings_ex/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_engine"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_5

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 144
    iget-object v8, p0, Lcom/android/settings_ex/FeatureSettings;->mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;

    iget-object v5, p0, Lcom/android/settings_ex/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "voice_input_control"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_6

    move v5, v6

    :goto_2
    invoke-virtual {v8, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 145
    iget-object v8, p0, Lcom/android/settings_ex/FeatureSettings;->mSmartStay:Landroid/preference/SwitchPreferenceScreen;

    iget-object v5, p0, Lcom/android/settings_ex/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "intelligent_sleep_mode"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_7

    move v5, v6

    :goto_3
    invoke-virtual {v8, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 146
    iget-object v8, p0, Lcom/android/settings_ex/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    iget-object v5, p0, Lcom/android/settings_ex/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "smart_pause"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_8

    move v5, v6

    :goto_4
    invoke-virtual {v8, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 147
    iget-object v8, p0, Lcom/android/settings_ex/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    iget-object v5, p0, Lcom/android/settings_ex/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "smart_scroll"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_9

    move v5, v6

    :goto_5
    invoke-virtual {v8, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 148
    iget-object v8, p0, Lcom/android/settings_ex/FeatureSettings;->mEasyMode:Landroid/preference/SwitchPreferenceScreen;

    iget-object v5, p0, Lcom/android/settings_ex/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "easy_mode_switch"

    invoke-static {v5, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_a

    move v5, v6

    :goto_6
    invoke-virtual {v8, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 149
    iget-object v8, p0, Lcom/android/settings_ex/FeatureSettings;->mSmartBlock:Landroid/preference/SwitchPreferenceScreen;

    iget-object v5, p0, Lcom/android/settings_ex/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "key_spam_smart"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_b

    move v5, v6

    :goto_7
    invoke-virtual {v8, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 150
    iget-object v8, p0, Lcom/android/settings_ex/FeatureSettings;->mAdapt:Landroid/preference/SwitchPreferenceScreen;

    iget-object v5, p0, Lcom/android/settings_ex/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "screen_mode_automatic_setting"

    invoke-static {v5, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_c

    move v5, v6

    :goto_8
    invoke-virtual {v8, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 151
    iget-object v5, p0, Lcom/android/settings_ex/FeatureSettings;->mMulti:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "multi_window_enabled"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_d

    :goto_9
    invoke-virtual {v5, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 153
    iget-object v5, p0, Lcom/android/settings_ex/FeatureSettings;->mSBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 155
    iget-object v5, p0, Lcom/android/settings_ex/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 156
    iget-object v5, p0, Lcom/android/settings_ex/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 157
    iget-object v5, p0, Lcom/android/settings_ex/FeatureSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 158
    iget-object v5, p0, Lcom/android/settings_ex/FeatureSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 159
    iget-object v5, p0, Lcom/android/settings_ex/FeatureSettings;->mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 160
    iget-object v5, p0, Lcom/android/settings_ex/FeatureSettings;->mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 161
    iget-object v5, p0, Lcom/android/settings_ex/FeatureSettings;->mSmartStay:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 162
    iget-object v5, p0, Lcom/android/settings_ex/FeatureSettings;->mSmartStay:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 163
    iget-object v5, p0, Lcom/android/settings_ex/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 164
    iget-object v5, p0, Lcom/android/settings_ex/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 165
    iget-object v5, p0, Lcom/android/settings_ex/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 166
    iget-object v5, p0, Lcom/android/settings_ex/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 167
    iget-object v5, p0, Lcom/android/settings_ex/FeatureSettings;->mEasyMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 168
    iget-object v5, p0, Lcom/android/settings_ex/FeatureSettings;->mEasyMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 169
    iget-object v5, p0, Lcom/android/settings_ex/FeatureSettings;->mSmartBlock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 170
    iget-object v5, p0, Lcom/android/settings_ex/FeatureSettings;->mSmartBlock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 171
    iget-object v5, p0, Lcom/android/settings_ex/FeatureSettings;->mAdapt:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 172
    iget-object v5, p0, Lcom/android/settings_ex/FeatureSettings;->mAdapt:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 173
    iget-object v5, p0, Lcom/android/settings_ex/FeatureSettings;->mMulti:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 174
    iget-object v5, p0, Lcom/android/settings_ex/FeatureSettings;->mMulti:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 176
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 192
    .local v4, ps:Landroid/preference/PreferenceScreen;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    .line 193
    .local v1, cscFeature:Lcom/sec/android/app/CscFeature;
    const-string v5, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual {v1, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    .line 194
    .local v3, enableBlackListForCHN:Z
    if-nez v3, :cond_0

    .line 195
    iget-object v5, p0, Lcom/android/settings_ex/FeatureSettings;->mSmartBlock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 208
    :cond_0
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 209
    iget-object v5, p0, Lcom/android/settings_ex/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 210
    iget-object v5, p0, Lcom/android/settings_ex/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 214
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.vlingo.midas"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_a
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.feature.multiwindow"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 220
    .local v0, UseMultiWindow:Z
    if-eqz v0, :cond_2

    const-string v5, "ATT"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 221
    :cond_2
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/FeatureSettings;->mMulti:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 223
    :cond_3
    return-void

    .end local v0           #UseMultiWindow:Z
    .end local v1           #cscFeature:Lcom/sec/android/app/CscFeature;
    .end local v3           #enableBlackListForCHN:Z
    .end local v4           #ps:Landroid/preference/PreferenceScreen;
    :cond_4
    move v5, v7

    .line 142
    goto/16 :goto_0

    :cond_5
    move v5, v7

    .line 143
    goto/16 :goto_1

    :cond_6
    move v5, v7

    .line 144
    goto/16 :goto_2

    :cond_7
    move v5, v7

    .line 145
    goto/16 :goto_3

    :cond_8
    move v5, v7

    .line 146
    goto/16 :goto_4

    :cond_9
    move v5, v7

    .line 147
    goto/16 :goto_5

    :cond_a
    move v5, v7

    .line 148
    goto/16 :goto_6

    :cond_b
    move v5, v7

    .line 149
    goto/16 :goto_7

    :cond_c
    move v5, v7

    .line 150
    goto/16 :goto_8

    :cond_d
    move v6, v7

    .line 151
    goto/16 :goto_9

    .line 215
    .restart local v1       #cscFeature:Lcom/sec/android/app/CscFeature;
    .restart local v3       #enableBlackListForCHN:Z
    .restart local v4       #ps:Landroid/preference/PreferenceScreen;
    :catch_0
    move-exception v2

    .line 216
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v5, p0, Lcom/android/settings_ex/FeatureSettings;->mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_a
.end method

.method private showTalkBackDisableDialog(IILjava/lang/String;)V
    .locals 4
    .parameter "title_res_id"
    .parameter "message_res_id"
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    .line 914
    iget-object v1, p0, Lcom/android/settings_ex/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 915
    iget-object v1, p0, Lcom/android/settings_ex/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 916
    iput-object v2, p0, Lcom/android/settings_ex/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 919
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 920
    iget-object v1, p0, Lcom/android/settings_ex/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 921
    iput-object v2, p0, Lcom/android/settings_ex/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 924
    :cond_1
    move-object v0, p3

    .line 925
    .local v0, setting_type:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings_ex/FeatureSettings$7;

    invoke-direct {v3, p0, v0}, Lcom/android/settings_ex/FeatureSettings$7;-><init>(Lcom/android/settings_ex/FeatureSettings;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/android/settings_ex/FeatureSettings$6;

    invoke-direct {v3, p0, v0}, Lcom/android/settings_ex/FeatureSettings$6;-><init>(Lcom/android/settings_ex/FeatureSettings;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 997
    iget-object v1, p0, Lcom/android/settings_ex/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 999
    iget-object v1, p0, Lcom/android/settings_ex/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/settings_ex/FeatureSettings$8;

    invoke-direct {v2, p0, v0}, Lcom/android/settings_ex/FeatureSettings$8;-><init>(Lcom/android/settings_ex/FeatureSettings;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1016
    return-void
.end method

.method private turnOnEasyMode(Z)V
    .locals 8
    .parameter "value"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 886
    iget-object v3, p0, Lcom/android/settings_ex/FeatureSettings;->mEasyMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 887
    iget-object v6, p0, Lcom/android/settings_ex/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "easy_mode_switch"

    if-eqz p1, :cond_1

    move v3, v4

    :goto_0
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 889
    if-ne p1, v5, :cond_0

    .line 890
    iget-object v3, p0, Lcom/android/settings_ex/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "smart_scroll"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 891
    iget-object v3, p0, Lcom/android/settings_ex/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 892
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.SMART_SCROLL_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 893
    .local v2, smart_scroll_changed:Landroid/content/Intent;
    const-string v3, "isEnable"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 894
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 896
    iget-object v3, p0, Lcom/android/settings_ex/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "smart_pause"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 897
    iget-object v3, p0, Lcom/android/settings_ex/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 898
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sec.SMART_PAUSE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 899
    .local v1, smart_pause_changed:Landroid/content/Intent;
    const-string v3, "isEnable"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 900
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 902
    iget-object v3, p0, Lcom/android/settings_ex/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "finger_air_view"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 903
    iget-object v3, p0, Lcom/android/settings_ex/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 905
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 906
    .local v0, finger_air_view_changed:Landroid/content/Intent;
    const-string v3, "isEnable"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 907
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 909
    iget-object v3, p0, Lcom/android/settings_ex/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "multi_window_enabled"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 911
    .end local v0           #finger_air_view_changed:Landroid/content/Intent;
    .end local v1           #smart_pause_changed:Landroid/content/Intent;
    .end local v2           #smart_scroll_changed:Landroid/content/Intent;
    :cond_0
    return-void

    :cond_1
    move v3, v5

    .line 887
    goto :goto_0
.end method


# virtual methods
.method public getSVoiceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "c"
    .parameter "name"

    .prologue
    .line 449
    if-nez p1, :cond_1

    const-string v1, ""

    .line 456
    :cond_0
    :goto_0
    return-object v1

    .line 451
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "string"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 452
    .local v0, resID:I
    const-string v1, ""

    .line 453
    .local v1, ret:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 454
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public makeAdaptDisplayLayout()Landroid/view/View;
    .locals 7

    .prologue
    .line 673
    const/4 v3, 0x0

    .line 674
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Lcom/android/settings_ex/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040076

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 675
    const v4, 0x7f0b0175

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 677
    .local v1, helpContent:Landroid/widget/LinearLayout;
    const v4, 0x7f090a65

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 679
    .local v2, s:Ljava/lang/String;
    new-instance v0, Lcom/android/settings_ex/HelpItem;

    iget-object v4, p0, Lcom/android/settings_ex/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v4}, Lcom/android/settings_ex/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 680
    .local v0, first:Lcom/android/settings_ex/HelpItem;
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/HelpItem;->setTitleVisibility(I)V

    .line 681
    invoke-virtual {v0, v2}, Lcom/android/settings_ex/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 682
    const v4, 0x7f020351

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/HelpItem;->setContentImage(I)V

    .line 684
    invoke-virtual {v0}, Lcom/android/settings_ex/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 686
    return-object v3
.end method

.method public makeAirMotionLayout()Landroid/view/View;
    .locals 21

    .prologue
    .line 355
    const/4 v15, 0x0

    .line 356
    .local v15, view:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v16, v0

    const v17, 0x7f040076

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 357
    const v16, 0x7f0b0175

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 359
    .local v4, helpContent:Landroid/widget/LinearLayout;
    new-instance v2, Lcom/android/settings_ex/HelpItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Lcom/android/settings_ex/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 360
    .local v2, first:Lcom/android/settings_ex/HelpItem;
    const v16, 0x7f090c4e

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/settings_ex/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 362
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 363
    .local v11, res:Landroid/content/res/Resources;
    const v16, 0x7f090c66

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 364
    .local v8, part1:Ljava/lang/String;
    const-string v16, "."

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 365
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 369
    :goto_0
    const v16, 0x7f0e0004

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 370
    .local v10, proper_distance:I
    const v16, 0x7f090c68

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 371
    .local v9, part3:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v12

    .line 372
    .local v12, salesCode:Ljava/lang/String;
    const-string v16, "ATT"

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    const-string v16, "SPR"

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    const-string v16, "VZW"

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    const-string v16, "TMB"

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    const-string v16, "USC"

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    const-string v16, "CRI"

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    const-string v16, "VMU"

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    const-string v16, "BST"

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    const-string v16, "XAS"

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    const-string v16, "TFN"

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    const-string v16, "XAR"

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    const-string v16, "CSP"

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 375
    :cond_0
    const v16, 0x7f0e0005

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 376
    const v16, 0x7f090c69

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 378
    :cond_1
    const-string v16, "."

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 379
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 383
    :goto_1
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const v17, 0x7f090c67

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 384
    .local v7, original_str:Ljava/lang/String;
    const-string v16, "ja"

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 385
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const v17, 0x7f090c66

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const v17, 0x7f090c68

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x7

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const v17, 0x7f090c67

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 389
    :cond_2
    const v16, 0x7f020026

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v7, v0}, Lcom/android/settings_ex/Utils;->makeStringWithImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/text/SpannableString;

    move-result-object v6

    .line 390
    .local v6, message_str:Landroid/text/SpannableString;
    if-eqz v6, :cond_8

    .line 391
    invoke-virtual {v2, v6}, Lcom/android/settings_ex/HelpItem;->setContentText(Landroid/text/SpannableString;)V

    .line 395
    :goto_2
    const v16, 0x7f020425

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/settings_ex/HelpItem;->setContentImage(I)V

    .line 397
    invoke-virtual {v2}, Lcom/android/settings_ex/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 399
    new-instance v14, Lcom/android/settings_ex/HelpItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Lcom/android/settings_ex/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 400
    .local v14, third:Lcom/android/settings_ex/HelpItem;
    const v16, 0x7f090c55

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/settings_ex/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 401
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const v17, 0x7f090c6f

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const v17, 0x7f090c61

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n- "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const v17, 0x7f090ca7

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n- "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const v17, 0x7f090cb0

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 405
    .local v5, mGuideContent:Ljava/lang/String;
    invoke-virtual {v14, v5}, Lcom/android/settings_ex/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 406
    const v16, 0x7f020027

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/settings_ex/HelpItem;->setContentImage(I)V

    .line 407
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/settings_ex/HelpItem;->usePlayButton(Z)V

    .line 408
    invoke-virtual {v14}, Lcom/android/settings_ex/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 410
    new-instance v13, Lcom/android/settings_ex/HelpItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Lcom/android/settings_ex/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 411
    .local v13, second:Lcom/android/settings_ex/HelpItem;
    const v16, 0x7f090c57

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/android/settings_ex/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 412
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const v17, 0x7f090c71

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const v17, 0x7f090c61

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n- "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const v17, 0x7f090cb7

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n- "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const v17, 0x7f090cba

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n- "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const v17, 0x7f090cbd

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n- "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const v17, 0x7f090cbf

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n- "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const v17, 0x7f090cc2

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 419
    invoke-virtual {v13, v5}, Lcom/android/settings_ex/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 420
    const v16, 0x7f020028

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/android/settings_ex/HelpItem;->setContentImage(I)V

    .line 421
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/android/settings_ex/HelpItem;->usePlayButton(Z)V

    .line 422
    invoke-virtual {v13}, Lcom/android/settings_ex/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 424
    new-instance v3, Lcom/android/settings_ex/HelpItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Lcom/android/settings_ex/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 425
    .local v3, fourth:Lcom/android/settings_ex/HelpItem;
    const v16, 0x7f090c74

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 426
    const-string v16, "ATT"

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_3

    const-string v16, "SPR"

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_3

    const-string v16, "VZW"

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_3

    const-string v16, "TMB"

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_3

    const-string v16, "USC"

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 427
    :cond_3
    const v16, 0x7f090c76

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 430
    :cond_4
    const v16, 0x7f090c59

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/settings_ex/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 431
    invoke-virtual {v3, v5}, Lcom/android/settings_ex/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 432
    const v16, 0x7f020023

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/settings_ex/HelpItem;->setContentImage(I)V

    .line 433
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/settings_ex/HelpItem;->usePlayButton(Z)V

    .line 434
    invoke-virtual {v3}, Lcom/android/settings_ex/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 436
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v16

    if-nez v16, :cond_5

    .line 437
    new-instance v1, Lcom/android/settings_ex/HelpItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v1, v0}, Lcom/android/settings_ex/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 438
    .local v1, fifth:Lcom/android/settings_ex/HelpItem;
    const v16, 0x7f090010

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 439
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/HelpItem;->setTitleVisibility(I)V

    .line 440
    invoke-virtual {v1, v5}, Lcom/android/settings_ex/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 441
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/HelpItem;->setImageVisibility(I)V

    .line 442
    invoke-virtual {v1}, Lcom/android/settings_ex/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 445
    .end local v1           #fifth:Lcom/android/settings_ex/HelpItem;
    :cond_5
    return-object v15

    .line 367
    .end local v3           #fourth:Lcom/android/settings_ex/HelpItem;
    .end local v5           #mGuideContent:Ljava/lang/String;
    .end local v6           #message_str:Landroid/text/SpannableString;
    .end local v7           #original_str:Ljava/lang/String;
    .end local v9           #part3:Ljava/lang/String;
    .end local v10           #proper_distance:I
    .end local v12           #salesCode:Ljava/lang/String;
    .end local v13           #second:Lcom/android/settings_ex/HelpItem;
    .end local v14           #third:Lcom/android/settings_ex/HelpItem;
    :cond_6
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ". "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 381
    .restart local v9       #part3:Ljava/lang/String;
    .restart local v10       #proper_distance:I
    .restart local v12       #salesCode:Ljava/lang/String;
    :cond_7
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ".\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 393
    .restart local v6       #message_str:Landroid/text/SpannableString;
    .restart local v7       #original_str:Ljava/lang/String;
    :cond_8
    const v16, 0x7f090c65

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/settings_ex/HelpItem;->setContentText(I)V

    goto/16 :goto_2
.end method

.method public makeAirViewLayout()Landroid/view/View;
    .locals 10

    .prologue
    .line 289
    const/4 v6, 0x0

    .line 290
    .local v6, view:Landroid/view/View;
    iget-object v7, p0, Lcom/android/settings_ex/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v8, 0x7f040076

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 291
    const v7, 0x7f0b0175

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 303
    .local v1, helpContent:Landroid/widget/LinearLayout;
    new-instance v2, Lcom/android/settings_ex/HelpItem;

    iget-object v7, p0, Lcom/android/settings_ex/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v2, v7}, Lcom/android/settings_ex/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 304
    .local v2, infoPreview:Lcom/android/settings_ex/HelpItem;
    const v7, 0x7f090cd3

    invoke-virtual {v2, v7}, Lcom/android/settings_ex/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 305
    const v7, 0x7f090cd4

    invoke-virtual {v2, v7}, Lcom/android/settings_ex/HelpItem;->setContentText(I)V

    .line 306
    const v7, 0x7f0203a4

    invoke-virtual {v2, v7}, Lcom/android/settings_ex/HelpItem;->setContentImage(I)V

    .line 308
    invoke-virtual {v2}, Lcom/android/settings_ex/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 311
    new-instance v0, Lcom/android/settings_ex/HelpItem;

    iget-object v7, p0, Lcom/android/settings_ex/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v7}, Lcom/android/settings_ex/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 312
    .local v0, barPreview:Lcom/android/settings_ex/HelpItem;
    const v7, 0x7f090cdc

    invoke-virtual {v0, v7}, Lcom/android/settings_ex/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 313
    const v7, 0x7f090cdd

    invoke-virtual {v0, v7}, Lcom/android/settings_ex/HelpItem;->setContentText(I)V

    .line 314
    const v7, 0x7f0203a1

    invoke-virtual {v0, v7}, Lcom/android/settings_ex/HelpItem;->setContentImage(I)V

    .line 316
    invoke-virtual {v0}, Lcom/android/settings_ex/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 319
    new-instance v5, Lcom/android/settings_ex/HelpItem;

    iget-object v7, p0, Lcom/android/settings_ex/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v5, v7}, Lcom/android/settings_ex/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 320
    .local v5, speedPreview:Lcom/android/settings_ex/HelpItem;
    const v7, 0x7f090cde

    invoke-virtual {v5, v7}, Lcom/android/settings_ex/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 321
    const v7, 0x7f090cdf

    invoke-virtual {v5, v7}, Lcom/android/settings_ex/HelpItem;->setContentText(I)V

    .line 322
    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    .line 323
    .local v4, salesCode:Ljava/lang/String;
    const-string v7, "ATT"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "SPR"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "VZW"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "TMB"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "USC"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 325
    :cond_0
    const v7, 0x7f0203a3

    invoke-virtual {v5, v7}, Lcom/android/settings_ex/HelpItem;->setContentImage(I)V

    .line 330
    :goto_0
    invoke-virtual {v5}, Lcom/android/settings_ex/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 333
    new-instance v3, Lcom/android/settings_ex/HelpItem;

    iget-object v7, p0, Lcom/android/settings_ex/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v3, v7}, Lcom/android/settings_ex/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 334
    .local v3, magniPreview:Lcom/android/settings_ex/HelpItem;
    const v7, 0x7f090ccf

    invoke-virtual {v3, v7}, Lcom/android/settings_ex/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 335
    const v7, 0x7f090cd0

    invoke-virtual {v3, v7}, Lcom/android/settings_ex/HelpItem;->setContentText(I)V

    .line 336
    const v7, 0x7f0203a0

    invoke-virtual {v3, v7}, Lcom/android/settings_ex/HelpItem;->setContentImage(I)V

    .line 338
    invoke-virtual {v3}, Lcom/android/settings_ex/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 350
    return-object v6

    .line 327
    .end local v3           #magniPreview:Lcom/android/settings_ex/HelpItem;
    :cond_1
    const v7, 0x7f0203a2

    invoke-virtual {v5, v7}, Lcom/android/settings_ex/HelpItem;->setContentImage(I)V

    goto :goto_0
.end method

.method public makeEasyModeLayout()Landroid/view/View;
    .locals 7

    .prologue
    .line 648
    const/4 v3, 0x0

    .line 649
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Lcom/android/settings_ex/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040076

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 650
    const v4, 0x7f0b0175

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 652
    .local v1, helpContent:Landroid/widget/LinearLayout;
    const v4, 0x7f090011

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 654
    .local v2, s:Ljava/lang/String;
    new-instance v0, Lcom/android/settings_ex/HelpItem;

    iget-object v4, p0, Lcom/android/settings_ex/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v4}, Lcom/android/settings_ex/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 655
    .local v0, first:Lcom/android/settings_ex/HelpItem;
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/HelpItem;->setTitleVisibility(I)V

    .line 656
    invoke-virtual {v0, v2}, Lcom/android/settings_ex/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 657
    const v4, 0x7f0203ae

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/HelpItem;->setContentImage(I)V

    .line 659
    invoke-virtual {v0}, Lcom/android/settings_ex/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 661
    return-object v3
.end method

.method public makeMultiWindowLayout()Landroid/view/View;
    .locals 9

    .prologue
    const/16 v8, 0x8

    .line 690
    const/4 v4, 0x0

    .line 691
    .local v4, view:Landroid/view/View;
    iget-object v5, p0, Lcom/android/settings_ex/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040076

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 692
    const v5, 0x7f0b0175

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 694
    .local v1, helpContent:Landroid/widget/LinearLayout;
    const v5, 0x7f0904f2

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 696
    .local v2, s:Ljava/lang/String;
    new-instance v0, Lcom/android/settings_ex/HelpItem;

    iget-object v5, p0, Lcom/android/settings_ex/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v5}, Lcom/android/settings_ex/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 697
    .local v0, first:Lcom/android/settings_ex/HelpItem;
    invoke-virtual {v0, v8}, Lcom/android/settings_ex/HelpItem;->setTitleVisibility(I)V

    .line 698
    invoke-virtual {v0, v2}, Lcom/android/settings_ex/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 699
    const v5, 0x7f0202d7

    invoke-virtual {v0, v5}, Lcom/android/settings_ex/HelpItem;->setContentImage(I)V

    .line 700
    invoke-virtual {v0, v8}, Lcom/android/settings_ex/HelpItem;->setTitle2Visibility(I)V

    .line 702
    invoke-virtual {v0}, Lcom/android/settings_ex/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 704
    new-instance v3, Lcom/android/settings_ex/HelpItem;

    iget-object v5, p0, Lcom/android/settings_ex/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v3, v5}, Lcom/android/settings_ex/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 705
    .local v3, second:Lcom/android/settings_ex/HelpItem;
    invoke-virtual {v3, v8}, Lcom/android/settings_ex/HelpItem;->setTitleVisibility(I)V

    .line 706
    invoke-virtual {v3, v8}, Lcom/android/settings_ex/HelpItem;->setContentVisibility(I)V

    .line 707
    const v5, 0x7f0202d8

    invoke-virtual {v3, v5}, Lcom/android/settings_ex/HelpItem;->setContentImage(I)V

    .line 708
    invoke-virtual {v3, v8}, Lcom/android/settings_ex/HelpItem;->setTitle2Visibility(I)V

    .line 710
    invoke-virtual {v3}, Lcom/android/settings_ex/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 712
    return-object v4
.end method

.method public makeSBeamLayout()Landroid/view/View;
    .locals 7

    .prologue
    .line 271
    const/4 v3, 0x0

    .line 272
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Lcom/android/settings_ex/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040076

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 273
    const v4, 0x7f0b0175

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 275
    .local v1, helpContent:Landroid/widget/LinearLayout;
    const v4, 0x7f090271

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 277
    .local v2, s:Ljava/lang/String;
    new-instance v0, Lcom/android/settings_ex/HelpItem;

    iget-object v4, p0, Lcom/android/settings_ex/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v4}, Lcom/android/settings_ex/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 278
    .local v0, first:Lcom/android/settings_ex/HelpItem;
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/HelpItem;->setTitleVisibility(I)V

    .line 279
    invoke-virtual {v0, v2}, Lcom/android/settings_ex/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 280
    const v4, 0x7f050009

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/HelpItem;->setContentImage(I)V

    .line 281
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/HelpItem;->usePlayButton(Z)V

    .line 282
    invoke-virtual {v0}, Lcom/android/settings_ex/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 284
    return-object v3
.end method

.method public makeSmartBlockLayout()Landroid/view/View;
    .locals 4

    .prologue
    .line 666
    iget-object v1, p0, Lcom/android/settings_ex/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040087

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 668
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public makeSmartPauseLayout()Landroid/view/View;
    .locals 9

    .prologue
    const/16 v8, 0x8

    .line 572
    const/4 v4, 0x0

    .line 573
    .local v4, view:Landroid/view/View;
    iget-object v5, p0, Lcom/android/settings_ex/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040076

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 574
    const v5, 0x7f0b0175

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 576
    .local v1, helpContent:Landroid/widget/LinearLayout;
    const v5, 0x7f090e1b

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 578
    .local v2, s:Ljava/lang/String;
    new-instance v0, Lcom/android/settings_ex/HelpItem;

    iget-object v5, p0, Lcom/android/settings_ex/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v5}, Lcom/android/settings_ex/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 579
    .local v0, first:Lcom/android/settings_ex/HelpItem;
    invoke-virtual {v0, v8}, Lcom/android/settings_ex/HelpItem;->setTitleVisibility(I)V

    .line 580
    invoke-virtual {v0, v2}, Lcom/android/settings_ex/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 581
    const v5, 0x7f0203da

    invoke-virtual {v0, v5}, Lcom/android/settings_ex/HelpItem;->setContentImage(I)V

    .line 582
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/android/settings_ex/HelpItem;->usePlayButton(Z)V

    .line 583
    invoke-virtual {v0}, Lcom/android/settings_ex/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 585
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f090e1c

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 586
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v5, 0x7f090e1d

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 587
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v5, 0x7f090e1e

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 588
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v5, 0x7f090e1f

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 590
    new-instance v3, Lcom/android/settings_ex/HelpItem;

    iget-object v5, p0, Lcom/android/settings_ex/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v3, v5}, Lcom/android/settings_ex/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 591
    .local v3, second:Lcom/android/settings_ex/HelpItem;
    invoke-virtual {v3, v8}, Lcom/android/settings_ex/HelpItem;->setTitleVisibility(I)V

    .line 592
    invoke-virtual {v3, v8}, Lcom/android/settings_ex/HelpItem;->setImageVisibility(I)V

    .line 593
    invoke-virtual {v3, v2}, Lcom/android/settings_ex/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 594
    invoke-virtual {v3}, Lcom/android/settings_ex/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 596
    return-object v4
.end method

.method public makeSmartScrollLayout()Landroid/view/View;
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x8

    .line 601
    const/4 v6, 0x0

    .line 602
    .local v6, view:Landroid/view/View;
    iget-object v7, p0, Lcom/android/settings_ex/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v8, 0x7f040076

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 603
    const v7, 0x7f0b0175

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 605
    .local v2, helpContent:Landroid/widget/LinearLayout;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f090e23

    invoke-virtual {p0, v7}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 606
    .local v4, s:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v7, 0x7f090e24

    invoke-virtual {p0, v7}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 607
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f090e25

    invoke-virtual {p0, v8}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 608
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f090e26

    invoke-virtual {p0, v8}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 609
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v7, 0x7f090e27

    invoke-virtual {p0, v7}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 610
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f090e28

    invoke-virtual {p0, v8}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 612
    new-instance v3, Lcom/android/settings_ex/HelpItem;

    iget-object v7, p0, Lcom/android/settings_ex/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v3, v7}, Lcom/android/settings_ex/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 613
    .local v3, helpTop:Lcom/android/settings_ex/HelpItem;
    invoke-virtual {v3, v10}, Lcom/android/settings_ex/HelpItem;->setTitleVisibility(I)V

    .line 614
    invoke-virtual {v3, v10}, Lcom/android/settings_ex/HelpItem;->setImageVisibility(I)V

    .line 615
    invoke-virtual {v3, v4}, Lcom/android/settings_ex/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 616
    invoke-virtual {v3}, Lcom/android/settings_ex/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 619
    new-instance v0, Lcom/android/settings_ex/HelpItem;

    iget-object v7, p0, Lcom/android/settings_ex/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v7}, Lcom/android/settings_ex/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 620
    .local v0, first:Lcom/android/settings_ex/HelpItem;
    const v7, 0x7f090e32

    invoke-virtual {v0, v7}, Lcom/android/settings_ex/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 621
    const v7, 0x7f090e29

    invoke-virtual {p0, v7}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/android/settings_ex/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 622
    const v7, 0x7f0203dc

    invoke-virtual {v0, v7}, Lcom/android/settings_ex/HelpItem;->setContentImage(I)V

    .line 623
    invoke-virtual {v0, v11}, Lcom/android/settings_ex/HelpItem;->usePlayButton(Z)V

    .line 624
    invoke-virtual {v0}, Lcom/android/settings_ex/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 626
    new-instance v5, Lcom/android/settings_ex/HelpItem;

    iget-object v7, p0, Lcom/android/settings_ex/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v5, v7}, Lcom/android/settings_ex/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 627
    .local v5, second:Lcom/android/settings_ex/HelpItem;
    const v7, 0x7f090e31

    invoke-virtual {v5, v7}, Lcom/android/settings_ex/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 628
    const v7, 0x7f090e2a

    invoke-virtual {p0, v7}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/android/settings_ex/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 629
    const v7, 0x7f0203db

    invoke-virtual {v5, v7}, Lcom/android/settings_ex/HelpItem;->setContentImage(I)V

    .line 630
    invoke-virtual {v5, v11}, Lcom/android/settings_ex/HelpItem;->usePlayButton(Z)V

    .line 631
    invoke-virtual {v5}, Lcom/android/settings_ex/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 633
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f090e2b

    invoke-virtual {p0, v7}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 634
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v7, 0x7f090e2c

    invoke-virtual {p0, v7}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 635
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v7, 0x7f090e2d

    invoke-virtual {p0, v7}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 636
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v7, 0x7f090e2e

    invoke-virtual {p0, v7}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 638
    new-instance v1, Lcom/android/settings_ex/HelpItem;

    iget-object v7, p0, Lcom/android/settings_ex/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v1, v7}, Lcom/android/settings_ex/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 639
    .local v1, helpBottom:Lcom/android/settings_ex/HelpItem;
    invoke-virtual {v1, v10}, Lcom/android/settings_ex/HelpItem;->setTitleVisibility(I)V

    .line 640
    invoke-virtual {v1, v10}, Lcom/android/settings_ex/HelpItem;->setImageVisibility(I)V

    .line 641
    invoke-virtual {v1, v4}, Lcom/android/settings_ex/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 642
    invoke-virtual {v1}, Lcom/android/settings_ex/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 644
    return-object v6
.end method

.method public makeSmartStayLayout()Landroid/view/View;
    .locals 9

    .prologue
    const/16 v8, 0x8

    .line 543
    const/4 v4, 0x0

    .line 544
    .local v4, view:Landroid/view/View;
    iget-object v5, p0, Lcom/android/settings_ex/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040076

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 545
    const v5, 0x7f0b0175

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 547
    .local v1, helpContent:Landroid/widget/LinearLayout;
    const v5, 0x7f090df8

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 549
    .local v2, s:Ljava/lang/String;
    new-instance v0, Lcom/android/settings_ex/HelpItem;

    iget-object v5, p0, Lcom/android/settings_ex/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v5}, Lcom/android/settings_ex/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 550
    .local v0, first:Lcom/android/settings_ex/HelpItem;
    invoke-virtual {v0, v8}, Lcom/android/settings_ex/HelpItem;->setTitleVisibility(I)V

    .line 551
    invoke-virtual {v0, v2}, Lcom/android/settings_ex/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 552
    const v5, 0x7f0203d3

    invoke-virtual {v0, v5}, Lcom/android/settings_ex/HelpItem;->setContentImage(I)V

    .line 553
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/android/settings_ex/HelpItem;->usePlayButton(Z)V

    .line 554
    invoke-virtual {v0}, Lcom/android/settings_ex/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 556
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f090df9

    invoke-virtual {p0, v6}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 557
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f090dfa

    invoke-virtual {p0, v6}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 558
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f090dfb

    invoke-virtual {p0, v6}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 559
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f090dfc

    invoke-virtual {p0, v6}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 561
    new-instance v3, Lcom/android/settings_ex/HelpItem;

    iget-object v5, p0, Lcom/android/settings_ex/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v3, v5}, Lcom/android/settings_ex/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 562
    .local v3, second:Lcom/android/settings_ex/HelpItem;
    invoke-virtual {v3, v8}, Lcom/android/settings_ex/HelpItem;->setTitleVisibility(I)V

    .line 563
    invoke-virtual {v3, v8}, Lcom/android/settings_ex/HelpItem;->setImageVisibility(I)V

    .line 564
    invoke-virtual {v3, v2}, Lcom/android/settings_ex/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 565
    invoke-virtual {v3}, Lcom/android/settings_ex/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 567
    return-object v4
.end method

.method public makeVoiceCmdLayout()Landroid/view/View;
    .locals 15

    .prologue
    const/16 v14, 0x8

    .line 462
    const/4 v10, 0x0

    .line 463
    .local v10, view:Landroid/view/View;
    iget-object v11, p0, Lcom/android/settings_ex/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v12, 0x7f040076

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 464
    const v11, 0x7f0b0175

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 465
    .local v6, helpContent:Landroid/widget/LinearLayout;
    const/4 v0, 0x0

    .line 467
    .local v0, c:Landroid/content/Context;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "com.vlingo.midas"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/ContextWrapper;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 474
    :goto_0
    const-string v11, "voice_input_control_incomming_calls"

    invoke-virtual {p0, v0, v11}, Lcom/android/settings_ex/FeatureSettings;->getSVoiceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 475
    .local v9, title:Ljava/lang/String;
    const-string v11, "voice_input_control_incomming_calls_summary"

    invoke-virtual {p0, v0, v11}, Lcom/android/settings_ex/FeatureSettings;->getSVoiceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 478
    .local v1, contents:Ljava/lang/String;
    new-instance v4, Lcom/android/settings_ex/HelpItem;

    iget-object v11, p0, Lcom/android/settings_ex/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v4, v11}, Lcom/android/settings_ex/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 479
    .local v4, first:Lcom/android/settings_ex/HelpItem;
    invoke-virtual {v4, v9}, Lcom/android/settings_ex/HelpItem;->setTitleTextWithOutCategory(Ljava/lang/String;)V

    .line 480
    invoke-virtual {v4, v1}, Lcom/android/settings_ex/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 481
    invoke-virtual {v4, v14}, Lcom/android/settings_ex/HelpItem;->setImageVisibility(I)V

    .line 482
    const-string v11, ""

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, ""

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 483
    invoke-virtual {v4}, Lcom/android/settings_ex/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 486
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "com.sec.chaton"

    invoke-static {v11, v12}, Lcom/android/settings_ex/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-static {}, Lcom/android/settings_ex/Utils;->isChinaModel()Z

    move-result v11

    if-nez v11, :cond_1

    .line 488
    const-string v11, "voice_input_control_chatonv"

    invoke-virtual {p0, v0, v11}, Lcom/android/settings_ex/FeatureSettings;->getSVoiceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 489
    const-string v11, "voice_input_control_chatonv_summary"

    invoke-virtual {p0, v0, v11}, Lcom/android/settings_ex/FeatureSettings;->getSVoiceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 492
    new-instance v3, Lcom/android/settings_ex/HelpItem;

    iget-object v11, p0, Lcom/android/settings_ex/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v3, v11}, Lcom/android/settings_ex/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 493
    .local v3, extra:Lcom/android/settings_ex/HelpItem;
    invoke-virtual {v3, v9}, Lcom/android/settings_ex/HelpItem;->setTitleTextWithOutCategory(Ljava/lang/String;)V

    .line 494
    invoke-virtual {v3, v1}, Lcom/android/settings_ex/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 495
    invoke-virtual {v3, v14}, Lcom/android/settings_ex/HelpItem;->setImageVisibility(I)V

    .line 496
    const-string v11, ""

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, ""

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 497
    invoke-virtual {v3}, Lcom/android/settings_ex/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 502
    .end local v3           #extra:Lcom/android/settings_ex/HelpItem;
    :cond_1
    const-string v11, "voice_input_control_alarm"

    invoke-virtual {p0, v0, v11}, Lcom/android/settings_ex/FeatureSettings;->getSVoiceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 503
    const-string v11, "voice_input_control_alarm_summary"

    invoke-virtual {p0, v0, v11}, Lcom/android/settings_ex/FeatureSettings;->getSVoiceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 506
    new-instance v7, Lcom/android/settings_ex/HelpItem;

    iget-object v11, p0, Lcom/android/settings_ex/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v7, v11}, Lcom/android/settings_ex/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 507
    .local v7, second:Lcom/android/settings_ex/HelpItem;
    invoke-virtual {v7, v9}, Lcom/android/settings_ex/HelpItem;->setTitleTextWithOutCategory(Ljava/lang/String;)V

    .line 508
    invoke-virtual {v7, v1}, Lcom/android/settings_ex/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 509
    invoke-virtual {v7, v14}, Lcom/android/settings_ex/HelpItem;->setImageVisibility(I)V

    .line 510
    const-string v11, ""

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, ""

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 511
    invoke-virtual {v7}, Lcom/android/settings_ex/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 515
    :cond_2
    const-string v11, "voice_input_control_camera"

    invoke-virtual {p0, v0, v11}, Lcom/android/settings_ex/FeatureSettings;->getSVoiceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 516
    const-string v11, "voice_input_control_camera_summary"

    invoke-virtual {p0, v0, v11}, Lcom/android/settings_ex/FeatureSettings;->getSVoiceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 518
    new-instance v8, Lcom/android/settings_ex/HelpItem;

    iget-object v11, p0, Lcom/android/settings_ex/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v8, v11}, Lcom/android/settings_ex/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 519
    .local v8, third:Lcom/android/settings_ex/HelpItem;
    invoke-virtual {v8, v9}, Lcom/android/settings_ex/HelpItem;->setTitleTextWithOutCategory(Ljava/lang/String;)V

    .line 520
    invoke-virtual {v8, v1}, Lcom/android/settings_ex/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 521
    invoke-virtual {v8, v14}, Lcom/android/settings_ex/HelpItem;->setImageVisibility(I)V

    .line 522
    const-string v11, ""

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, ""

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 523
    invoke-virtual {v8}, Lcom/android/settings_ex/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 527
    :cond_3
    const-string v11, "voice_input_control_music"

    invoke-virtual {p0, v0, v11}, Lcom/android/settings_ex/FeatureSettings;->getSVoiceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 528
    const-string v11, "voice_input_control_music_summary"

    invoke-virtual {p0, v0, v11}, Lcom/android/settings_ex/FeatureSettings;->getSVoiceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 530
    new-instance v5, Lcom/android/settings_ex/HelpItem;

    iget-object v11, p0, Lcom/android/settings_ex/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v5, v11}, Lcom/android/settings_ex/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 531
    .local v5, fourth:Lcom/android/settings_ex/HelpItem;
    invoke-virtual {v5, v9}, Lcom/android/settings_ex/HelpItem;->setTitleTextWithOutCategory(Ljava/lang/String;)V

    .line 532
    invoke-virtual {v5, v1}, Lcom/android/settings_ex/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 533
    const v11, 0x7f0204ef

    invoke-virtual {v5, v11}, Lcom/android/settings_ex/HelpItem;->setContentImage(I)V

    .line 534
    const-string v11, ""

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, ""

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 535
    invoke-virtual {v5}, Lcom/android/settings_ex/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 538
    :cond_4
    return-object v10

    .line 468
    .end local v1           #contents:Ljava/lang/String;
    .end local v4           #first:Lcom/android/settings_ex/HelpItem;
    .end local v5           #fourth:Lcom/android/settings_ex/HelpItem;
    .end local v7           #second:Lcom/android/settings_ex/HelpItem;
    .end local v8           #third:Lcom/android/settings_ex/HelpItem;
    .end local v9           #title:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 470
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    const-string v1, "FeatureSettings"

    const-string v2, "talkback is enabled, so samsung features are off"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/Utils;->isTalkBackExclusiveOptionEnabled(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "option_flag"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 117
    .local v0, mDisableExclusiveOptionsFlag:I
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings_ex/Utils;->turnOffTalkBackExclusiveOptions(Landroid/content/Context;I)V

    .line 120
    .end local v0           #mDisableExclusiveOptionsFlag:I
    :cond_0
    const v1, 0x7f070038

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 122
    const-string v1, "sbeam"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings_ex/FeatureSettings;->mSBeam:Landroid/preference/SwitchPreferenceScreen;

    .line 123
    const-string v1, "air_view"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings_ex/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    .line 124
    const-string v1, "air_motion"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings_ex/FeatureSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    .line 125
    const-string v1, "voice_cmd"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings_ex/FeatureSettings;->mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;

    .line 126
    const-string v1, "smart_stay"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings_ex/FeatureSettings;->mSmartStay:Landroid/preference/SwitchPreferenceScreen;

    .line 127
    const-string v1, "smart_pause"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings_ex/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    .line 128
    const-string v1, "smart_scroll"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings_ex/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    .line 129
    const-string v1, "easy_mode"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings_ex/FeatureSettings;->mEasyMode:Landroid/preference/SwitchPreferenceScreen;

    .line 130
    const-string v1, "smart_block"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings_ex/FeatureSettings;->mSmartBlock:Landroid/preference/SwitchPreferenceScreen;

    .line 131
    const-string v1, "adapt_display"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings_ex/FeatureSettings;->mAdapt:Landroid/preference/SwitchPreferenceScreen;

    .line 132
    const-string v1, "multi_window"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings_ex/FeatureSettings;->mMulti:Landroid/preference/SwitchPreferenceScreen;

    .line 133
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/FeatureSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 135
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    .line 136
    new-instance v1, Lcom/android/settings_ex/nfc/SBeamEnabler;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/FeatureSettings;->mSBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-direct {v1, v2, v3}, Lcom/android/settings_ex/nfc/SBeamEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreferenceScreen;)V

    iput-object v1, p0, Lcom/android/settings_ex/FeatureSettings;->mEnabler:Lcom/android/settings_ex/nfc/SBeamEnabler;

    .line 137
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 236
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 238
    iget-object v0, p0, Lcom/android/settings_ex/FeatureSettings;->mEnabler:Lcom/android/settings_ex/nfc/SBeamEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/nfc/SBeamEnabler;->procOnPause()V

    .line 240
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 13
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 761
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 762
    .local v9, value:Z
    iget-object v10, p0, Lcom/android/settings_ex/FeatureSettings;->mSBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 763
    iget-object v11, p0, Lcom/android/settings_ex/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "sbeam_mode"

    if-eqz v9, :cond_1

    const/4 v10, 0x1

    :goto_0
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 882
    :cond_0
    :goto_1
    const/4 v10, 0x1

    return v10

    .line 763
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 764
    :cond_2
    iget-object v10, p0, Lcom/android/settings_ex/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 765
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings_ex/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 766
    const v10, 0x7f090cca

    const v11, 0x7f090b89

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v10, v11, v12}, Lcom/android/settings_ex/FeatureSettings;->showTalkBackDisableDialog(IILjava/lang/String;)V

    goto :goto_1

    .line 768
    :cond_3
    iget-object v11, p0, Lcom/android/settings_ex/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "finger_air_view"

    if-eqz v9, :cond_4

    const/4 v10, 0x1

    :goto_2
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 770
    new-instance v0, Landroid/content/Intent;

    const-string v10, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 771
    .local v0, finger_air_view_changed:Landroid/content/Intent;
    const-string v10, "isEnable"

    invoke-virtual {v0, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 772
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 768
    .end local v0           #finger_air_view_changed:Landroid/content/Intent;
    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    .line 774
    :cond_5
    iget-object v10, p0, Lcom/android/settings_ex/FeatureSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 775
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings_ex/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 776
    const v10, 0x7f090c49

    const v11, 0x7f090c4d

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v10, v11, v12}, Lcom/android/settings_ex/FeatureSettings;->showTalkBackDisableDialog(IILjava/lang/String;)V

    goto :goto_1

    .line 778
    :cond_6
    iget-object v11, p0, Lcom/android/settings_ex/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "air_motion_engine"

    if-eqz v9, :cond_7

    const/4 v10, 0x1

    :goto_3
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 779
    new-instance v4, Landroid/content/Intent;

    const-string v10, "com.sec.gesture.AIR_MOTION_SETTINGS_CHANGED"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 780
    .local v4, motion_changed:Landroid/content/Intent;
    const-string v10, "isEnable"

    invoke-virtual {v4, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 781
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 783
    iget-object v11, p0, Lcom/android/settings_ex/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "air_motion_scroll"

    if-eqz v9, :cond_8

    const/4 v10, 0x1

    :goto_4
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 784
    new-instance v6, Landroid/content/Intent;

    const-string v10, "com.sec.gesture.AIR_SCROLL_SETTINGS_CHANGED"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 785
    .local v6, motion_scroll_changed:Landroid/content/Intent;
    const-string v10, "isEnable"

    invoke-virtual {v6, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 786
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 788
    iget-object v11, p0, Lcom/android/settings_ex/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "air_motion_turn"

    if-eqz v9, :cond_9

    const/4 v10, 0x1

    :goto_5
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 789
    new-instance v3, Landroid/content/Intent;

    const-string v10, "com.sec.gesture.AIR_BROWSE_SETTINGS_CHANGED"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 790
    .local v3, motion_browse_changed:Landroid/content/Intent;
    const-string v10, "isEnable"

    invoke-virtual {v3, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 791
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 793
    iget-object v11, p0, Lcom/android/settings_ex/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "air_motion_item_move"

    if-eqz v9, :cond_a

    const/4 v10, 0x1

    :goto_6
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 794
    new-instance v5, Landroid/content/Intent;

    const-string v10, "com.sec.gesture.AIR_MOVE_SETTINGS_CHANGED"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 795
    .local v5, motion_move_changed:Landroid/content/Intent;
    const-string v10, "isEnable"

    invoke-virtual {v5, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 796
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 778
    .end local v3           #motion_browse_changed:Landroid/content/Intent;
    .end local v4           #motion_changed:Landroid/content/Intent;
    .end local v5           #motion_move_changed:Landroid/content/Intent;
    .end local v6           #motion_scroll_changed:Landroid/content/Intent;
    :cond_7
    const/4 v10, 0x0

    goto :goto_3

    .line 783
    .restart local v4       #motion_changed:Landroid/content/Intent;
    :cond_8
    const/4 v10, 0x0

    goto :goto_4

    .line 788
    .restart local v6       #motion_scroll_changed:Landroid/content/Intent;
    :cond_9
    const/4 v10, 0x0

    goto :goto_5

    .line 793
    .restart local v3       #motion_browse_changed:Landroid/content/Intent;
    :cond_a
    const/4 v10, 0x0

    goto :goto_6

    .line 805
    .end local v3           #motion_browse_changed:Landroid/content/Intent;
    .end local v4           #motion_changed:Landroid/content/Intent;
    .end local v6           #motion_scroll_changed:Landroid/content/Intent;
    :cond_b
    iget-object v10, p0, Lcom/android/settings_ex/FeatureSettings;->mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 806
    iget-object v11, p0, Lcom/android/settings_ex/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "voice_input_control"

    if-eqz v9, :cond_c

    const/4 v10, 0x1

    :goto_7
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_c
    const/4 v10, 0x0

    goto :goto_7

    .line 807
    :cond_d
    iget-object v10, p0, Lcom/android/settings_ex/FeatureSettings;->mSmartStay:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 808
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings_ex/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 809
    const v10, 0x7f090df4

    const v11, 0x7f090e47

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v10, v11, v12}, Lcom/android/settings_ex/FeatureSettings;->showTalkBackDisableDialog(IILjava/lang/String;)V

    goto/16 :goto_1

    .line 811
    :cond_e
    iget-object v11, p0, Lcom/android/settings_ex/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "intelligent_sleep_mode"

    if-eqz v9, :cond_f

    const/4 v10, 0x1

    :goto_8
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_f
    const/4 v10, 0x0

    goto :goto_8

    .line 813
    :cond_10
    iget-object v10, p0, Lcom/android/settings_ex/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 814
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings_ex/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 815
    const v10, 0x7f090e01

    const v11, 0x7f090e47

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v10, v11, v12}, Lcom/android/settings_ex/FeatureSettings;->showTalkBackDisableDialog(IILjava/lang/String;)V

    goto/16 :goto_1

    .line 817
    :cond_11
    iget-object v11, p0, Lcom/android/settings_ex/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "smart_pause"

    if-eqz v9, :cond_12

    const/4 v10, 0x1

    :goto_9
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 819
    new-instance v7, Landroid/content/Intent;

    const-string v10, "com.sec.SMART_PAUSE_CHANGED"

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 820
    .local v7, smart_pause_changed:Landroid/content/Intent;
    const-string v10, "isEnable"

    invoke-virtual {v7, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 821
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 817
    .end local v7           #smart_pause_changed:Landroid/content/Intent;
    :cond_12
    const/4 v10, 0x0

    goto :goto_9

    .line 823
    :cond_13
    iget-object v10, p0, Lcom/android/settings_ex/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 824
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings_ex/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 825
    const v10, 0x7f090e03

    const v11, 0x7f090e47

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v10, v11, v12}, Lcom/android/settings_ex/FeatureSettings;->showTalkBackDisableDialog(IILjava/lang/String;)V

    goto/16 :goto_1

    .line 827
    :cond_14
    iget-object v11, p0, Lcom/android/settings_ex/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "smart_scroll"

    if-eqz v9, :cond_15

    const/4 v10, 0x1

    :goto_a
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 829
    new-instance v8, Landroid/content/Intent;

    const-string v10, "com.sec.SMART_SCROLL_CHANGED"

    invoke-direct {v8, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 830
    .local v8, smart_scroll_changed:Landroid/content/Intent;
    const-string v10, "isEnable"

    invoke-virtual {v8, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 831
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 827
    .end local v8           #smart_scroll_changed:Landroid/content/Intent;
    :cond_15
    const/4 v10, 0x0

    goto :goto_a

    .line 833
    :cond_16
    iget-object v10, p0, Lcom/android/settings_ex/FeatureSettings;->mEasyMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 834
    if-eqz v9, :cond_17

    .line 836
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v1, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 837
    .local v1, mAlertDialog:Landroid/app/AlertDialog$Builder;
    const v10, 0x7f090fd9

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 838
    const v10, 0x7f090011

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 839
    const v10, 0x104000a

    new-instance v11, Lcom/android/settings_ex/FeatureSettings$3;

    invoke-direct {v11, p0}, Lcom/android/settings_ex/FeatureSettings$3;-><init>(Lcom/android/settings_ex/FeatureSettings;)V

    invoke-virtual {v1, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 845
    const/high16 v10, 0x104

    new-instance v11, Lcom/android/settings_ex/FeatureSettings$4;

    invoke-direct {v11, p0}, Lcom/android/settings_ex/FeatureSettings$4;-><init>(Lcom/android/settings_ex/FeatureSettings;)V

    invoke-virtual {v1, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 851
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 853
    .end local v1           #mAlertDialog:Landroid/app/AlertDialog$Builder;
    :cond_17
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/settings_ex/FeatureSettings;->turnOnEasyMode(Z)V

    goto/16 :goto_1

    .line 856
    :cond_18
    iget-object v10, p0, Lcom/android/settings_ex/FeatureSettings;->mSmartBlock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 857
    iget-object v11, p0, Lcom/android/settings_ex/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "key_spam_smart"

    if-eqz v9, :cond_19

    const/4 v10, 0x1

    :goto_b
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_19
    const/4 v10, 0x0

    goto :goto_b

    .line 859
    :cond_1a
    iget-object v10, p0, Lcom/android/settings_ex/FeatureSettings;->mAdapt:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 860
    if-eqz v9, :cond_1b

    .line 861
    const/4 v10, 0x4

    invoke-static {v10}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 862
    iget-object v10, p0, Lcom/android/settings_ex/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v11, "screen_mode_automatic_setting"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 864
    :cond_1b
    iget-object v10, p0, Lcom/android/settings_ex/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v11, "screen_mode_setting"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 865
    iget-object v10, p0, Lcom/android/settings_ex/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v11, "screen_mode_automatic_setting"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 868
    :cond_1c
    iget-object v10, p0, Lcom/android/settings_ex/FeatureSettings;->mMulti:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 869
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings_ex/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_1d

    .line 870
    const v10, 0x7f090b86

    const v11, 0x7f090b87

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v10, v11, v12}, Lcom/android/settings_ex/FeatureSettings;->showTalkBackDisableDialog(IILjava/lang/String;)V

    goto/16 :goto_1

    .line 872
    :cond_1d
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "multi_window_enabled"

    if-eqz v9, :cond_1e

    const/4 v10, 0x1

    :goto_c
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 873
    iget-object v10, p0, Lcom/android/settings_ex/FeatureSettings;->mMulti:Landroid/preference/SwitchPreferenceScreen;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 874
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 875
    .local v2, mHandler:Landroid/os/Handler;
    new-instance v10, Lcom/android/settings_ex/FeatureSettings$5;

    invoke-direct {v10, p0}, Lcom/android/settings_ex/FeatureSettings$5;-><init>(Lcom/android/settings_ex/FeatureSettings;)V

    const-wide/16 v11, 0x3e8

    invoke-virtual {v2, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 872
    .end local v2           #mHandler:Landroid/os/Handler;
    :cond_1e
    const/4 v10, 0x0

    goto :goto_c
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    .line 718
    iget-object v1, p0, Lcom/android/settings_ex/FeatureSettings;->mSBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 719
    invoke-virtual {p0}, Lcom/android/settings_ex/FeatureSettings;->makeSBeamLayout()Landroid/view/View;

    move-result-object v0

    .line 720
    .local v0, layout:Landroid/view/View;
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09026c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    .line 755
    .end local v0           #layout:Landroid/view/View;
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 721
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 722
    invoke-virtual {p0}, Lcom/android/settings_ex/FeatureSettings;->makeAirViewLayout()Landroid/view/View;

    move-result-object v0

    .line 723
    .restart local v0       #layout:Landroid/view/View;
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090b8a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 724
    .end local v0           #layout:Landroid/view/View;
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/FeatureSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 725
    invoke-virtual {p0}, Lcom/android/settings_ex/FeatureSettings;->makeAirMotionLayout()Landroid/view/View;

    move-result-object v0

    .line 726
    .restart local v0       #layout:Landroid/view/View;
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090c49

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 727
    .end local v0           #layout:Landroid/view/View;
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/FeatureSettings;->mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 728
    invoke-virtual {p0}, Lcom/android/settings_ex/FeatureSettings;->makeVoiceCmdLayout()Landroid/view/View;

    move-result-object v0

    .line 729
    .restart local v0       #layout:Landroid/view/View;
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090f01

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 730
    .end local v0           #layout:Landroid/view/View;
    :cond_4
    iget-object v1, p0, Lcom/android/settings_ex/FeatureSettings;->mSmartStay:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 731
    invoke-virtual {p0}, Lcom/android/settings_ex/FeatureSettings;->makeSmartStayLayout()Landroid/view/View;

    move-result-object v0

    .line 732
    .restart local v0       #layout:Landroid/view/View;
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090df4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 733
    .end local v0           #layout:Landroid/view/View;
    :cond_5
    iget-object v1, p0, Lcom/android/settings_ex/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 734
    invoke-virtual {p0}, Lcom/android/settings_ex/FeatureSettings;->makeSmartPauseLayout()Landroid/view/View;

    move-result-object v0

    .line 735
    .restart local v0       #layout:Landroid/view/View;
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090e01

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 736
    .end local v0           #layout:Landroid/view/View;
    :cond_6
    iget-object v1, p0, Lcom/android/settings_ex/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 737
    invoke-virtual {p0}, Lcom/android/settings_ex/FeatureSettings;->makeSmartScrollLayout()Landroid/view/View;

    move-result-object v0

    .line 738
    .restart local v0       #layout:Landroid/view/View;
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090e03

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 739
    .end local v0           #layout:Landroid/view/View;
    :cond_7
    iget-object v1, p0, Lcom/android/settings_ex/FeatureSettings;->mEasyMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 740
    invoke-virtual {p0}, Lcom/android/settings_ex/FeatureSettings;->makeEasyModeLayout()Landroid/view/View;

    move-result-object v0

    .line 741
    .restart local v0       #layout:Landroid/view/View;
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090fc9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 743
    .end local v0           #layout:Landroid/view/View;
    :cond_8
    iget-object v1, p0, Lcom/android/settings_ex/FeatureSettings;->mSmartBlock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 744
    invoke-virtual {p0}, Lcom/android/settings_ex/FeatureSettings;->makeSmartBlockLayout()Landroid/view/View;

    move-result-object v0

    .line 745
    .restart local v0       #layout:Landroid/view/View;
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090e05

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 747
    .end local v0           #layout:Landroid/view/View;
    :cond_9
    iget-object v1, p0, Lcom/android/settings_ex/FeatureSettings;->mAdapt:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 748
    invoke-virtual {p0}, Lcom/android/settings_ex/FeatureSettings;->makeAdaptDisplayLayout()Landroid/view/View;

    move-result-object v0

    .line 749
    .restart local v0       #layout:Landroid/view/View;
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090a63

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 751
    .end local v0           #layout:Landroid/view/View;
    :cond_a
    iget-object v1, p0, Lcom/android/settings_ex/FeatureSettings;->mMulti:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 752
    invoke-virtual {p0}, Lcom/android/settings_ex/FeatureSettings;->makeMultiWindowLayout()Landroid/view/View;

    move-result-object v0

    .line 753
    .restart local v0       #layout:Landroid/view/View;
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0904f0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 227
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 229
    iget-object v0, p0, Lcom/android/settings_ex/FeatureSettings;->mEnabler:Lcom/android/settings_ex/nfc/SBeamEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/nfc/SBeamEnabler;->procOnResume()V

    .line 231
    invoke-direct {p0}, Lcom/android/settings_ex/FeatureSettings;->initUI()V

    .line 232
    return-void
.end method

.method public showGuideDialog(Landroid/view/View;Ljava/lang/String;)V
    .locals 3
    .parameter "layout"
    .parameter "title"

    .prologue
    const/4 v2, 0x0

    .line 244
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 246
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/android/settings_ex/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/android/settings_ex/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 248
    iput-object v2, p0, Lcom/android/settings_ex/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 251
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 252
    iget-object v1, p0, Lcom/android/settings_ex/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 253
    iput-object v2, p0, Lcom/android/settings_ex/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 256
    :cond_1
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 257
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 259
    const v1, 0x104000a

    new-instance v2, Lcom/android/settings_ex/FeatureSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/FeatureSettings$2;-><init>(Lcom/android/settings_ex/FeatureSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 265
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 266
    iget-object v1, p0, Lcom/android/settings_ex/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 267
    return-void
.end method
