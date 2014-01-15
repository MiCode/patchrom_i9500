.class public Lcom/android/settings_ex/LockScreenSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "LockScreenSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final ACTION_CAMOBILE_DAEMON_SERVICE_ON_OFF:Ljava/lang/String; = "com.sec.android.daemonapp.ap.yahoonews.intent.action.SERVICE_ON_OFF"

.field public static final ACTION_CURRENT_LOCATION_KWEATHER_DATA:Ljava/lang/String; = "com.sec.android.widgetapp.ap.kweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

.field public static final ACTION_CURRENT_LOCATION_SNWEATHER_DATA:Ljava/lang/String; = "com.sec.android.widgetapp.ap.sinaweatherdaemon.action.SYNC_DATA_WITH_DAEMON"

.field public static final ACTION_CURRENT_LOCATION_WEATHERNEWS_DATA:Ljava/lang/String; = "com.sec.android.widgetapp.ap.weathernewsjpdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

.field public static final ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String; = "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

.field public static final ACTION_CURRENT_STOCK_DATA:Ljava/lang/String; = "com.sec.android.daemonapp.stockclock.action.CURRENT_STOCK_DATA"

.field public static final ACTION_SNNEWS_DEMON_SERVICE_ON_OFF:Ljava/lang/String; = "com.sec.android.daemonapp.ap.sinanews.intent.action.SERVICE_ON_OFF"

.field public static final ACTION_YHNEWS_SERVICE_ON_OFF:Ljava/lang/String; = "com.sec.android.daemonapp.ap.yahoonews.intent.action.SERVICE_ON_OFF"

.field public static final ACTION_YONHAPNEWS_DAEMON_SERVICE_ON_OFF:Ljava/lang/String; = "com.sec.android.daemonapp.ap.yonhapnews.intent.action.SERVICE_ON_OFF"

.field private static final DUALCLOCK_MENU_SETTINGS:Ljava/lang/String; = "dualclock_menu_settings"

.field public static final KEY_APP_SERVICE_STATUS:Ljava/lang/String; = "aw_daemon_service_key_app_service_status"

.field public static final KEY_CAMOBILE_SERVICE_STATUS:Ljava/lang/String; = "yh_daemon_service_key_app_service_status"

.field private static final KEY_CLOCK:Ljava/lang/String; = "clock"

.field private static final KEY_DUALCLOCK_SETTINGS:Ljava/lang/String; = "dualclock_settings"

.field private static final KEY_HELP_TEXT:Ljava/lang/String; = "help_text"

.field private static final KEY_INFORMATION_TICKER:Ljava/lang/String; = "information_ticker"

.field private static final KEY_INK_EFFECT:Ljava/lang/String; = "ink_effect"

.field private static final KEY_LOCK_SCREEN_CLOCK_OR_MYPROFILE:Ljava/lang/String; = "lock_screen_clock_or_myprofile"

.field private static final KEY_LOCK_SCREEN_CLOCK_SIZE:Ljava/lang/String; = "clock_size"

.field private static final KEY_LOCK_SCREEN_DISPLAY_CATEGORY:Ljava/lang/String; = "lock_screen_display_category"

.field private static final KEY_LOCK_SCREEN_EDIT_CLOCK:Ljava/lang/String; = "lock_screen_edit_clock"

.field private static final KEY_LOCK_SCREEN_MYPROFILE:Ljava/lang/String; = "lock_screen_profile"

.field private static final KEY_LOCK_SCREEN_OWNER_INFO:Ljava/lang/String; = "owner_info_settings"

.field private static final KEY_LOCK_SCREEN_SHORTCUT:Ljava/lang/String; = "lock_screen_shortcut"

.field private static final KEY_LOCK_SCREEN_SHORT_OR_CAMERA_CATEGORY:Ljava/lang/String; = "lock_screen_short_or_camera_category"

.field private static final KEY_LOCK_SCREEN_SHORT_OR_CAMERA_WIDGET:Ljava/lang/String; = "lock_screen_short_or_camera_widget"

.field private static final KEY_LOCK_SCREEN_SHOW_DATE:Ljava/lang/String; = "lock_screen_date_and_year"

.field private static final KEY_LOCK_SCREEN_WIDGET_OPTIONS_CATEGORY:Ljava/lang/String; = "lock_screen_widget_options_category"

.field private static final KEY_MOTION_UNLOCK_CAMERA_SHORT_CUT:Ljava/lang/String; = "camera_short_cut"

.field private static final KEY_RIPPLE_EFFECT:Ljava/lang/String; = "ripple_effect"

.field private static final KEY_SAY_YOUR_WAKEUP:Ljava/lang/String; = "say_your_wakeup"

.field public static final KEY_SNNW_SERVICE_STATUS:Ljava/lang/String; = "sn_daemon_service_key_app_service_status"

.field public static final KEY_STOCK_SERVICE_STATUS:Ljava/lang/String; = "stockclock_daemon_service_key_app_service_status"

.field private static final KEY_WEATHER:Ljava/lang/String; = "weather"

.field public static final KEY_YAHOONW_SERVICE_STATUS:Ljava/lang/String; = "yh_daemon_service_key_app_service_status"

.field public static final KEY_YONHAPNW_SERVICE_STATUS:Ljava/lang/String; = "yonhap_daemon_service_key_app_service_status"

.field public static final LOCK_SCREEN_SERVICE_CODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LockScreenSettings"

.field private static final mAwInitValue:I


# instance fields
.field private isMyprofile:I

.field private isWeatherEnabled:Z

.field private mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

.field private mClock:Landroid/preference/CheckBoxPreference;

.field private mClockMyprofile:Landroid/preference/PreferenceScreen;

.field private mClockSize:Landroid/preference/ListPreference;

.field private mDateAndYear:Landroid/preference/CheckBoxPreference;

.field private mDisplayCategory:Landroid/preference/PreferenceCategory;

.field private mDualclock:Landroid/preference/SwitchPreferenceScreen;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEditClock:Landroid/preference/PreferenceScreen;

.field private mHelpText:Landroid/preference/CheckBoxPreference;

.field private mInformationTicker:Landroid/preference/SwitchPreferenceScreen;

.field private mInkEffect:Landroid/preference/PreferenceScreen;

.field mInkEffectSummary:[I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockScreenShortcut:Landroid/preference/SwitchPreferenceScreen;

.field private mMotionDialog:Landroid/app/AlertDialog;

.field private mMyprofile:Landroid/preference/PreferenceScreen;

.field private mOwnerInfo:Landroid/preference/PreferenceScreen;

.field private mRippleEffect:Landroid/preference/CheckBoxPreference;

.field private mSayCommand:Landroid/preference/CheckBoxPreference;

.field private mShortCameraCategory:Landroid/preference/PreferenceCategory;

.field private mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

.field private mWeather:Landroid/preference/SwitchPreferenceScreen;

.field private mWidgetOptionsCategory:Landroid/preference/PreferenceCategory;

.field resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/LockScreenSettings;->mMotionDialog:Landroid/app/AlertDialog;

    .line 155
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/LockScreenSettings;->isMyprofile:I

    .line 162
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings_ex/LockScreenSettings;->mInkEffectSummary:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xb4t 0xft 0x9t 0x7ft
        0xb5t 0xft 0x9t 0x7ft
        0xb6t 0xft 0x9t 0x7ft
        0xb7t 0xft 0x9t 0x7ft
        0xb8t 0xft 0x9t 0x7ft
        0xb9t 0xft 0x9t 0x7ft
        0xbat 0xft 0x9t 0x7ft
        0xbbt 0xft 0x9t 0x7ft
    .end array-data
.end method

.method private static AppServiceOff(I)I
    .locals 0
    .parameter "value"

    .prologue
    .line 872
    xor-int/lit8 p0, p0, 0x1

    .line 873
    return p0
.end method

.method private static AppServiceOn(I)I
    .locals 0
    .parameter "value"

    .prologue
    .line 867
    or-int/lit8 p0, p0, 0x1

    .line 868
    return p0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 2

    .prologue
    .line 188
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 189
    .local v0, root:Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 192
    :cond_0
    const v1, 0x7f070045

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 193
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 195
    return-object v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/settings_ex/LockScreenSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 201
    const-string v0, "enterprise_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/settings_ex/LockScreenSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/LockScreenSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private updateClockSizeSummary()V
    .locals 5

    .prologue
    .line 790
    iget-object v2, p0, Lcom/android/settings_ex/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 791
    .local v1, entries:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_clock_size"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 792
    .local v0, State:I
    iget-object v2, p0, Lcom/android/settings_ex/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 793
    iget-object v2, p0, Lcom/android/settings_ex/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 794
    return-void
.end method

.method private updateState()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 445
    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mClock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "show_clock"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_11

    move v5, v6

    :goto_0
    invoke-virtual {v8, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 447
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "aw_daemon_service_key_app_service_status"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    and-int/lit8 v2, v5, 0x1

    .line 449
    .local v2, mAppLockScreen:I
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "pen_hovering_ink_effect"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 451
    .local v4, mInkEffectColor:I
    const-string v5, "LockScreenSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mInkEffectColor : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v5, p0, Lcom/android/settings_ex/LockScreenSettings;->mWeather:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v5, :cond_0

    .line 454
    if-ne v2, v6, :cond_12

    .line 455
    iget-object v5, p0, Lcom/android/settings_ex/LockScreenSettings;->mWeather:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 460
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/android/settings_ex/LockScreenSettings;->mClock:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_1

    .line 462
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mClock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 466
    :cond_1
    iget-object v5, p0, Lcom/android/settings_ex/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v5, :cond_2

    .line 467
    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "dualclock_menu_settings"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_13

    move v5, v6

    :goto_2
    invoke-virtual {v8, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 470
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "lock_screen_clock_size"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 471
    .local v3, mClockSizeValue:I
    const-string v5, "LockScreenSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mClockSizeValue : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v5, p0, Lcom/android/settings_ex/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    if-eqz v5, :cond_3

    .line 473
    iget-object v5, p0, Lcom/android/settings_ex/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 474
    iget-object v5, p0, Lcom/android/settings_ex/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 475
    invoke-direct {p0}, Lcom/android/settings_ex/LockScreenSettings;->updateClockSizeSummary()V

    .line 481
    :cond_3
    iget-object v5, p0, Lcom/android/settings_ex/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/settings_ex/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/settings_ex/LockScreenSettings;->mOwnerInfo:Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/settings_ex/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    if-eqz v5, :cond_5

    .line 483
    iget v5, p0, Lcom/android/settings_ex/LockScreenSettings;->isMyprofile:I

    if-ne v5, v6, :cond_5

    .line 485
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 486
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 487
    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticModel()Z

    move-result v5

    if-nez v5, :cond_4

    .line 488
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mOwnerInfo:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 489
    :cond_4
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 494
    :cond_5
    iget-object v5, p0, Lcom/android/settings_ex/LockScreenSettings;->mInformationTicker:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v5, :cond_6

    .line 495
    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mInformationTicker:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "information_ticker"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_14

    move v5, v6

    :goto_3
    invoke-virtual {v8, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 497
    :cond_6
    iget-object v5, p0, Lcom/android/settings_ex/LockScreenSettings;->mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v5, :cond_7

    .line 498
    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "motion_unlock_camera_short_cut"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_15

    move v5, v6

    :goto_4
    invoke-virtual {v8, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 501
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "lockscreen_wallpaper"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_16

    move v0, v7

    .line 502
    .local v0, isLiveWallpaper:Z
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "lock_motion_tilt_to_unlock"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 504
    .local v1, isMotionLock:I
    if-nez v0, :cond_8

    if-lez v1, :cond_17

    .line 505
    :cond_8
    iget-object v5, p0, Lcom/android/settings_ex/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 508
    :goto_6
    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "lockscreen_ripple_effect"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_18

    move v5, v6

    :goto_7
    invoke-virtual {v8, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 509
    iget-object v5, p0, Lcom/android/settings_ex/LockScreenSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v8

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 510
    if-nez v0, :cond_9

    if-lez v1, :cond_a

    .line 511
    :cond_9
    iget-object v5, p0, Lcom/android/settings_ex/LockScreenSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 513
    :cond_a
    iget-object v5, p0, Lcom/android/settings_ex/LockScreenSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/LockScreenSettings;->mInkEffectSummary:[I

    aget v9, v9, v4

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 515
    iget-object v5, p0, Lcom/android/settings_ex/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_b

    .line 516
    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "unlock_text"

    invoke-static {v5, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_19

    move v5, v6

    :goto_8
    invoke-virtual {v8, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 518
    :cond_b
    iget-object v5, p0, Lcom/android/settings_ex/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_c

    .line 519
    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "wake_up_lock_screen"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1a

    move v5, v6

    :goto_9
    invoke-virtual {v8, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 522
    :cond_c
    iget-object v5, p0, Lcom/android/settings_ex/LockScreenSettings;->mLockScreenShortcut:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v5, :cond_d

    .line 523
    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mLockScreenShortcut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "lock_screen_shortcut"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_1b

    move v5, v6

    :goto_a
    invoke-virtual {v8, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 526
    :cond_d
    iget-object v5, p0, Lcom/android/settings_ex/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v5, :cond_e

    .line 527
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "kg_enable_camera_widget_type"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1c

    .line 528
    iget-object v5, p0, Lcom/android/settings_ex/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090feb

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 534
    :cond_e
    :goto_b
    iget-object v5, p0, Lcom/android/settings_ex/LockScreenSettings;->mClockMyprofile:Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_f

    .line 535
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "my_profile_enabled"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1d

    .line 536
    iget-object v5, p0, Lcom/android/settings_ex/LockScreenSettings;->mClockMyprofile:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090d06

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 542
    :cond_f
    :goto_c
    iget-object v5, p0, Lcom/android/settings_ex/LockScreenSettings;->mWidgetOptionsCategory:Landroid/preference/PreferenceCategory;

    if-eqz v5, :cond_10

    .line 543
    iget v5, p0, Lcom/android/settings_ex/LockScreenSettings;->isMyprofile:I

    if-ne v5, v6, :cond_1e

    .line 544
    iget-object v5, p0, Lcom/android/settings_ex/LockScreenSettings;->mWidgetOptionsCategory:Landroid/preference/PreferenceCategory;

    const v6, 0x7f090ff6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 550
    :cond_10
    :goto_d
    return-void

    .end local v0           #isLiveWallpaper:Z
    .end local v1           #isMotionLock:I
    .end local v2           #mAppLockScreen:I
    .end local v3           #mClockSizeValue:I
    .end local v4           #mInkEffectColor:I
    :cond_11
    move v5, v7

    .line 445
    goto/16 :goto_0

    .line 457
    .restart local v2       #mAppLockScreen:I
    .restart local v4       #mInkEffectColor:I
    :cond_12
    iget-object v5, p0, Lcom/android/settings_ex/LockScreenSettings;->mWeather:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v7}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_1

    :cond_13
    move v5, v7

    .line 467
    goto/16 :goto_2

    .restart local v3       #mClockSizeValue:I
    :cond_14
    move v5, v7

    .line 495
    goto/16 :goto_3

    :cond_15
    move v5, v7

    .line 498
    goto/16 :goto_4

    :cond_16
    move v0, v6

    .line 501
    goto/16 :goto_5

    .line 507
    .restart local v0       #isLiveWallpaper:Z
    .restart local v1       #isMotionLock:I
    :cond_17
    iget-object v5, p0, Lcom/android/settings_ex/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_6

    :cond_18
    move v5, v7

    .line 508
    goto/16 :goto_7

    :cond_19
    move v5, v7

    .line 516
    goto/16 :goto_8

    :cond_1a
    move v5, v7

    .line 519
    goto/16 :goto_9

    :cond_1b
    move v5, v7

    .line 523
    goto :goto_a

    .line 531
    :cond_1c
    iget-object v5, p0, Lcom/android/settings_ex/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090fea

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 539
    :cond_1d
    iget-object v5, p0, Lcom/android/settings_ex/LockScreenSettings;->mClockMyprofile:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090a5a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 546
    :cond_1e
    iget-object v5, p0, Lcom/android/settings_ex/LockScreenSettings;->mWidgetOptionsCategory:Landroid/preference/PreferenceCategory;

    const v6, 0x7f090ff5

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(I)V

    goto :goto_d
.end method


# virtual methods
.method public checkNetwork()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 845
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 846
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 847
    .local v3, ni:Landroid/net/NetworkInfo;
    if-nez v3, :cond_1

    .line 848
    const-string v5, "LockScreenSettings"

    const-string v6, "checkNetwork() : NetworkInfo is null. return false"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    :cond_0
    :goto_0
    return v4

    .line 851
    :cond_1
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 852
    .local v2, isWifiAvail:Z
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 854
    if-nez v3, :cond_2

    .line 855
    const-string v4, "LockScreenSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkNetwork() : ConnectivityManager.TYPE_MOBILE return : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v2

    .line 856
    goto :goto_0

    .line 859
    :cond_2
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 861
    .local v1, isMobileAvail:Z
    const-string v6, "LockScreenSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isWifiAvail : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isConnected : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    if-nez v2, :cond_3

    if-eqz v1, :cond_0

    :cond_3
    move v4, v5

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 176
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 177
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/LockScreenSettings;->resolver:Landroid/content/ContentResolver;

    .line 179
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 185
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 15
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 616
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 617
    .local v6, key:Ljava/lang/String;
    const-string v12, "dualclock_settings"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 618
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v11, 0x1

    .line 619
    .local v11, value:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "dualclock_menu_settings"

    invoke-static {v12, v13, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 786
    .end local v11           #value:I
    :cond_0
    :goto_1
    const/4 v12, 0x1

    :goto_2
    return v12

    .line 618
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 620
    .restart local p2
    :cond_2
    const-string v12, "information_ticker"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    move-object/from16 v11, p2

    .line 621
    check-cast v11, Ljava/lang/Boolean;

    .line 627
    .local v11, value:Ljava/lang/Boolean;
    invoke-static {}, Lcom/android/settings_ex/Utils;->isChinaModel()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 628
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 629
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "sn_daemon_service_key_app_service_status"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    invoke-static {v12}, Lcom/android/settings_ex/LockScreenSettings;->AppServiceOn(I)I

    move-result v7

    .line 633
    .local v7, mAppServiceStatus:I
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "sn_daemon_service_key_app_service_status"

    invoke-static {v12, v13, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 635
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 636
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "stockclock_daemon_service_key_app_service_status"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    invoke-static {v12}, Lcom/android/settings_ex/LockScreenSettings;->AppServiceOn(I)I

    move-result v7

    .line 640
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v12, v13, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 642
    new-instance v4, Landroid/content/Intent;

    const-string v12, "com.sec.android.daemonapp.ap.sinanews.intent.action.SERVICE_ON_OFF"

    invoke-direct {v4, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 643
    .local v4, intent_nw:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12, v4}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 644
    new-instance v5, Landroid/content/Intent;

    const-string v12, "com.sec.android.daemonapp.stockclock.action.CURRENT_STOCK_DATA"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 645
    .local v5, intent_st:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12, v5}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 704
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "information_ticker"

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_b

    const/4 v12, 0x1

    :goto_6
    invoke-static {v13, v14, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 705
    invoke-direct {p0}, Lcom/android/settings_ex/LockScreenSettings;->updateState()V

    goto/16 :goto_1

    .line 631
    .end local v4           #intent_nw:Landroid/content/Intent;
    .end local v5           #intent_st:Landroid/content/Intent;
    .end local v7           #mAppServiceStatus:I
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "sn_daemon_service_key_app_service_status"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    invoke-static {v12}, Lcom/android/settings_ex/LockScreenSettings;->AppServiceOff(I)I

    move-result v7

    .restart local v7       #mAppServiceStatus:I
    goto :goto_3

    .line 638
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "stockclock_daemon_service_key_app_service_status"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    invoke-static {v12}, Lcom/android/settings_ex/LockScreenSettings;->AppServiceOff(I)I

    move-result v7

    goto :goto_4

    .line 646
    .end local v7           #mAppServiceStatus:I
    :cond_5
    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticModel()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 647
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 648
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "yonhap_daemon_service_key_app_service_status"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    invoke-static {v12}, Lcom/android/settings_ex/LockScreenSettings;->AppServiceOn(I)I

    move-result v7

    .line 652
    .restart local v7       #mAppServiceStatus:I
    :goto_7
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "yonhap_daemon_service_key_app_service_status"

    invoke-static {v12, v13, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 654
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 655
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "stockclock_daemon_service_key_app_service_status"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    invoke-static {v12}, Lcom/android/settings_ex/LockScreenSettings;->AppServiceOn(I)I

    move-result v7

    .line 659
    :goto_8
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v12, v13, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 661
    new-instance v4, Landroid/content/Intent;

    const-string v12, "com.sec.android.daemonapp.ap.yonhapnews.intent.action.SERVICE_ON_OFF"

    invoke-direct {v4, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 662
    .restart local v4       #intent_nw:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v12, "com.sec.android.daemonapp.ap.yonhapnews"

    const-string v13, "com.sec.android.daemonapp.ap.yonhapnews.DaemonReceiver"

    invoke-direct {v1, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    .local v1, component:Landroid/content/ComponentName;
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 665
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12, v4}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 667
    new-instance v5, Landroid/content/Intent;

    const-string v12, "com.sec.android.daemonapp.stockclock.action.CURRENT_STOCK_DATA"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 668
    .restart local v5       #intent_st:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12, v5}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_5

    .line 650
    .end local v1           #component:Landroid/content/ComponentName;
    .end local v4           #intent_nw:Landroid/content/Intent;
    .end local v5           #intent_st:Landroid/content/Intent;
    .end local v7           #mAppServiceStatus:I
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "yonhap_daemon_service_key_app_service_status"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    invoke-static {v12}, Lcom/android/settings_ex/LockScreenSettings;->AppServiceOff(I)I

    move-result v7

    .restart local v7       #mAppServiceStatus:I
    goto :goto_7

    .line 657
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "stockclock_daemon_service_key_app_service_status"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    invoke-static {v12}, Lcom/android/settings_ex/LockScreenSettings;->AppServiceOff(I)I

    move-result v7

    goto :goto_8

    .line 683
    .end local v7           #mAppServiceStatus:I
    :cond_8
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 684
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "yh_daemon_service_key_app_service_status"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    invoke-static {v12}, Lcom/android/settings_ex/LockScreenSettings;->AppServiceOn(I)I

    move-result v7

    .line 688
    .restart local v7       #mAppServiceStatus:I
    :goto_9
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "yh_daemon_service_key_app_service_status"

    invoke-static {v12, v13, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 690
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 691
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "stockclock_daemon_service_key_app_service_status"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    invoke-static {v12}, Lcom/android/settings_ex/LockScreenSettings;->AppServiceOn(I)I

    move-result v7

    .line 695
    :goto_a
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v12, v13, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 697
    new-instance v4, Landroid/content/Intent;

    const-string v12, "com.sec.android.daemonapp.ap.yahoonews.intent.action.SERVICE_ON_OFF"

    invoke-direct {v4, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 698
    .restart local v4       #intent_nw:Landroid/content/Intent;
    const-string v12, "ro.csc.sales_code"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 699
    .local v10, salesCode:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12, v4}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 700
    new-instance v5, Landroid/content/Intent;

    const-string v12, "com.sec.android.daemonapp.stockclock.action.CURRENT_STOCK_DATA"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 701
    .restart local v5       #intent_st:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12, v5}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_5

    .line 686
    .end local v4           #intent_nw:Landroid/content/Intent;
    .end local v5           #intent_st:Landroid/content/Intent;
    .end local v7           #mAppServiceStatus:I
    .end local v10           #salesCode:Ljava/lang/String;
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "yh_daemon_service_key_app_service_status"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    invoke-static {v12}, Lcom/android/settings_ex/LockScreenSettings;->AppServiceOff(I)I

    move-result v7

    .restart local v7       #mAppServiceStatus:I
    goto :goto_9

    .line 693
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "stockclock_daemon_service_key_app_service_status"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    invoke-static {v12}, Lcom/android/settings_ex/LockScreenSettings;->AppServiceOff(I)I

    move-result v7

    goto :goto_a

    .line 704
    .restart local v4       #intent_nw:Landroid/content/Intent;
    .restart local v5       #intent_st:Landroid/content/Intent;
    :cond_b
    const/4 v12, 0x0

    goto/16 :goto_6

    .line 707
    .end local v4           #intent_nw:Landroid/content/Intent;
    .end local v5           #intent_st:Landroid/content/Intent;
    .end local v7           #mAppServiceStatus:I
    .end local v11           #value:Ljava/lang/Boolean;
    :cond_c
    const-string v12, "weather"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    move-object/from16 v11, p2

    .line 708
    check-cast v11, Ljava/lang/Boolean;

    .line 709
    .restart local v11       #value:Ljava/lang/Boolean;
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-virtual {p0}, Lcom/android/settings_ex/LockScreenSettings;->checkNetwork()Z

    move-result v12

    if-nez v12, :cond_d

    .line 710
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const v13, 0x7f090a5e

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 712
    :cond_d
    invoke-static {}, Lcom/android/settings_ex/Utils;->isChinaModel()Z

    move-result v12

    if-nez v12, :cond_e

    .line 713
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "network"

    invoke-static {v12, v13}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_e

    .line 714
    iget-object v12, p0, Lcom/android/settings_ex/LockScreenSettings;->mWeather:Landroid/preference/SwitchPreferenceScreen;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 715
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "network"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 716
    new-instance v2, Landroid/content/Intent;

    const-string v12, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v2, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 717
    .local v2, gpsOptionIntent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 718
    const/4 v12, 0x1

    goto/16 :goto_2

    .line 723
    .end local v2           #gpsOptionIntent:Landroid/content/Intent;
    :cond_e
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "aw_daemon_service_key_app_service_status"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 724
    .local v8, mCurrentAppServiceStatus:I
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_f

    .line 725
    invoke-static {v8}, Lcom/android/settings_ex/LockScreenSettings;->AppServiceOn(I)I

    move-result v7

    .line 726
    .restart local v7       #mAppServiceStatus:I
    const/4 v9, 0x1

    .line 731
    .local v9, mNewValue:I
    :goto_b
    if-ne v8, v9, :cond_10

    .line 732
    const-string v12, "LockScreenSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onPreferenceChange, mCurrentAppServiceStatus:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/mNewValue:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " same"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    const/4 v12, 0x1

    goto/16 :goto_2

    .line 728
    .end local v7           #mAppServiceStatus:I
    .end local v9           #mNewValue:I
    :cond_f
    invoke-static {v8}, Lcom/android/settings_ex/LockScreenSettings;->AppServiceOff(I)I

    move-result v7

    .line 729
    .restart local v7       #mAppServiceStatus:I
    const/4 v9, 0x0

    .restart local v9       #mNewValue:I
    goto :goto_b

    .line 735
    :cond_10
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "aw_daemon_service_key_app_service_status"

    invoke-static {v12, v13, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 737
    invoke-static {}, Lcom/android/settings_ex/Utils;->isChinaModel()Z

    move-result v12

    if-eqz v12, :cond_11

    .line 738
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    new-instance v13, Landroid/content/Intent;

    const-string v14, "com.sec.android.widgetapp.ap.sinaweatherdaemon.action.SYNC_DATA_WITH_DAEMON"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 750
    :goto_c
    invoke-direct {p0}, Lcom/android/settings_ex/LockScreenSettings;->updateState()V

    goto/16 :goto_1

    .line 739
    :cond_11
    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticModel()Z

    move-result v12

    if-eqz v12, :cond_12

    .line 740
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    new-instance v13, Landroid/content/Intent;

    const-string v14, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_c

    .line 748
    :cond_12
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    new-instance v13, Landroid/content/Intent;

    const-string v14, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_c

    .line 753
    .end local v7           #mAppServiceStatus:I
    .end local v8           #mCurrentAppServiceStatus:I
    .end local v9           #mNewValue:I
    .end local v11           #value:Ljava/lang/Boolean;
    :cond_13
    const-string v12, "lock_screen_shortcut"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_15

    move-object/from16 v12, p2

    .line 754
    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_14

    const/4 v11, 0x1

    .line 755
    .local v11, value:I
    :goto_d
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "lock_screen_shortcut"

    invoke-static {v12, v13, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 756
    new-instance v3, Landroid/content/Intent;

    const-string v12, "com.android.settings_ex.LOCK_SCREEN_SHORTCUT_CHANGED"

    invoke-direct {v3, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 757
    .local v3, intent:Landroid/content/Intent;
    const-string v12, "isEnable"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    move-object/from16 v0, p2

    invoke-virtual {v3, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 758
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12, v3}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 754
    .end local v3           #intent:Landroid/content/Intent;
    .end local v11           #value:I
    .restart local p2
    :cond_14
    const/4 v11, 0x0

    goto :goto_d

    .line 761
    :cond_15
    const-string v12, "lock_screen_profile"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_17

    .line 762
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_16

    const/4 v11, 0x1

    .line 763
    .restart local v11       #value:I
    :goto_e
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "my_profile_enabled"

    invoke-static {v12, v13, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 762
    .end local v11           #value:I
    :cond_16
    const/4 v11, 0x0

    goto :goto_e

    .line 765
    .restart local p2
    :cond_17
    const-string v12, "lock_screen_short_or_camera_widget"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 767
    invoke-direct {p0}, Lcom/android/settings_ex/LockScreenSettings;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v12

    if-eqz v12, :cond_18

    iget-object v12, p0, Lcom/android/settings_ex/LockScreenSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v12}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/app/enterprise/RestrictionPolicy;->isLockScreenViewAllowed(I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 770
    :cond_18
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_19

    const/4 v11, 0x1

    .line 771
    .restart local v11       #value:I
    :goto_f
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "kg_enable_camera_widget"

    invoke-static {v12, v13, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 770
    .end local v11           #value:I
    :cond_19
    const/4 v11, 0x0

    goto :goto_f

    .line 777
    .restart local p2
    :cond_1a
    iget-object v12, p0, Lcom/android/settings_ex/LockScreenSettings;->mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_1b

    .line 778
    const-string v12, "LockScreenSettings"

    const-string v13, "onPreferenceChange, mCameraShortCut"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/LockScreenSettings;->setCameraShortCut(Z)V

    goto/16 :goto_1

    .line 782
    .restart local p2
    :cond_1b
    iget-object v12, p0, Lcom/android/settings_ex/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_0

    .line 783
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "lock_screen_clock_size"

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 784
    invoke-direct {p0}, Lcom/android/settings_ex/LockScreenSettings;->updateClockSizeSummary()V

    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 554
    iget-object v5, p0, Lcom/android/settings_ex/LockScreenSettings;->mClock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 555
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "show_clock"

    iget-object v7, p0, Lcom/android/settings_ex/LockScreenSettings;->mClock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_1

    :goto_0
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 556
    invoke-direct {p0}, Lcom/android/settings_ex/LockScreenSettings;->updateState()V

    .line 612
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3

    :cond_1
    move v3, v4

    .line 555
    goto :goto_0

    .line 557
    :cond_2
    iget-object v5, p0, Lcom/android/settings_ex/LockScreenSettings;->mWeather:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 558
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 559
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    const-string v4, "SETTING_MODE"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 562
    invoke-static {}, Lcom/android/settings_ex/Utils;->isChinaModel()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 563
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.daemonapp.ap.sinaweather"

    const-string v4, "com.sec.android.daemonapp.ap.sinaweather.MenuSettings"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    .local v0, cn:Landroid/content/ComponentName;
    :goto_2
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 572
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 564
    .end local v0           #cn:Landroid/content/ComponentName;
    :cond_3
    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticModel()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 565
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.daemonapp.ap.kweather"

    const-string v4, "com.sec.android.daemonapp.ap.kweather.MenuSettings"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #cn:Landroid/content/ComponentName;
    goto :goto_2

    .line 569
    .end local v0           #cn:Landroid/content/ComponentName;
    :cond_4
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.daemonapp.ap.accuweather"

    const-string v4, "com.sec.android.daemonapp.ap.accuweather.MenuSettings"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #cn:Landroid/content/ComponentName;
    goto :goto_2

    .line 573
    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_5
    iget-object v5, p0, Lcom/android/settings_ex/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 574
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lockscreen_ripple_effect"

    iget-object v7, p0, Lcom/android/settings_ex/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_6

    :goto_3
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 576
    iget-object v3, p0, Lcom/android/settings_ex/LockScreenSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/settings_ex/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    goto :goto_1

    :cond_6
    move v3, v4

    .line 574
    goto :goto_3

    .line 577
    :cond_7
    iget-object v5, p0, Lcom/android/settings_ex/LockScreenSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 578
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 579
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 580
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v3, "com.android.settings_ex.InkeffectPreviewTablet"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 581
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 583
    :cond_8
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v3, "com.android.settings_ex.InkeffectPreview"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 584
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 586
    .end local v1           #intent:Landroid/content/Intent;
    :cond_9
    iget-object v5, p0, Lcom/android/settings_ex/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 587
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "unlock_text"

    iget-object v7, p0, Lcom/android/settings_ex/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_a

    :goto_4
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_a
    move v3, v4

    goto :goto_4

    .line 588
    :cond_b
    iget-object v5, p0, Lcom/android/settings_ex/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 589
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wake_up_lock_screen"

    iget-object v7, p0, Lcom/android/settings_ex/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_c

    :goto_5
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_c
    move v3, v4

    goto :goto_5

    .line 590
    :cond_d
    iget-object v5, p0, Lcom/android/settings_ex/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 591
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 592
    .restart local v1       #intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v3, "com.android.settings_ex.ShortCameraMenu"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 593
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 594
    .end local v1           #intent:Landroid/content/Intent;
    :cond_e
    iget-object v5, p0, Lcom/android/settings_ex/LockScreenSettings;->mClockMyprofile:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 595
    invoke-static {v6}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 596
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.settings_ex.ClockMyprofileMenuTablet"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 597
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 599
    .end local v1           #intent:Landroid/content/Intent;
    :cond_f
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.settings_ex.ClockMyprofileMenu"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 600
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 602
    .end local v1           #intent:Landroid/content/Intent;
    :cond_10
    iget-object v5, p0, Lcom/android/settings_ex/LockScreenSettings;->mEditClock:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 606
    iget-object v5, p0, Lcom/android/settings_ex/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 607
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_date_and_year"

    iget-object v7, p0, Lcom/android/settings_ex/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_11

    :goto_6
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_11
    move v3, v4

    goto :goto_6

    .line 608
    :cond_12
    iget-object v3, p0, Lcom/android/settings_ex/LockScreenSettings;->mOwnerInfo:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 609
    const v3, 0x7f090172

    invoke-static {v3}, Lcom/android/settings_ex/OwnerInfoSettings;->newInstance(I)Lcom/android/settings_ex/OwnerInfoSettings;

    move-result-object v2

    .line 610
    .local v2, newFragment:Landroid/app/DialogFragment;
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "dialog"

    invoke-virtual {v2, v3, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 209
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 210
    invoke-direct {p0}, Lcom/android/settings_ex/LockScreenSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 214
    const-string v8, "lock_screen_shortcut"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreferenceScreen;

    iput-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mLockScreenShortcut:Landroid/preference/SwitchPreferenceScreen;

    .line 215
    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mLockScreenShortcut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 216
    iget-object v11, p0, Lcom/android/settings_ex/LockScreenSettings;->mLockScreenShortcut:Landroid/preference/SwitchPreferenceScreen;

    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->resolver:Landroid/content/ContentResolver;

    const-string v12, "lock_screen_shortcut"

    invoke-static {v8, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_18

    move v8, v9

    :goto_0
    invoke-virtual {v11, v8}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 217
    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mLockScreenShortcut:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v8, :cond_0

    .line 219
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings_ex/LockScreenSettings;->mLockScreenShortcut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 221
    const-string v8, "Germany"

    const-string v11, "ro.csc.country_code"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 222
    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mLockScreenShortcut:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v8, :cond_0

    .line 223
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings_ex/LockScreenSettings;->mLockScreenShortcut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 228
    :cond_0
    const-string v8, "lock_screen_display_category"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    iput-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mDisplayCategory:Landroid/preference/PreferenceCategory;

    .line 229
    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mDisplayCategory:Landroid/preference/PreferenceCategory;

    if-eqz v8, :cond_1

    .line 231
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings_ex/LockScreenSettings;->mDisplayCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 236
    :cond_1
    const-string v8, "lock_screen_short_or_camera_category"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    iput-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mShortCameraCategory:Landroid/preference/PreferenceCategory;

    .line 237
    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mShortCameraCategory:Landroid/preference/PreferenceCategory;

    if-eqz v8, :cond_2

    .line 243
    :cond_2
    const-string v8, "lock_screen_short_or_camera_widget"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreferenceScreen;

    iput-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    .line 244
    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 246
    invoke-direct {p0}, Lcom/android/settings_ex/LockScreenSettings;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v8

    if-eqz v8, :cond_19

    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/app/enterprise/RestrictionPolicy;->isLockScreenViewAllowed(I)Z

    move-result v8

    if-nez v8, :cond_19

    .line 248
    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v10}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 249
    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 259
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "kg_multiple_lockscreen"

    invoke-static {v8, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_1d

    move v2, v9

    .line 260
    .local v2, isMultiple:Z
    :goto_2
    iget-object v11, p0, Lcom/android/settings_ex/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_1e

    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v8

    if-nez v8, :cond_1e

    move v8, v9

    :goto_3
    invoke-virtual {v11, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 261
    invoke-static {v13}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 262
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings_ex/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 265
    :cond_3
    const-string v8, "lock_screen_clock_or_myprofile"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mClockMyprofile:Landroid/preference/PreferenceScreen;

    .line 266
    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mClockMyprofile:Landroid/preference/PreferenceScreen;

    if-eqz v8, :cond_4

    .line 271
    invoke-direct {p0}, Lcom/android/settings_ex/LockScreenSettings;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v8

    if-eqz v8, :cond_1f

    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getMiscPolicy()Landroid/app/enterprise/MiscPolicy;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/enterprise/MiscPolicy;->getCurrentLockScreenString()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1f

    .line 273
    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mClockMyprofile:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 281
    :cond_4
    :goto_4
    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->resolver:Landroid/content/ContentResolver;

    const-string v11, "my_profile_enabled"

    invoke-static {v8, v11, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/settings_ex/LockScreenSettings;->isMyprofile:I

    .line 283
    const-string v8, "lock_screen_widget_options_category"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    iput-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mWidgetOptionsCategory:Landroid/preference/PreferenceCategory;

    .line 284
    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mWidgetOptionsCategory:Landroid/preference/PreferenceCategory;

    if-eqz v8, :cond_5

    .line 285
    iget v8, p0, Lcom/android/settings_ex/LockScreenSettings;->isMyprofile:I

    if-ne v8, v9, :cond_20

    .line 286
    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mWidgetOptionsCategory:Landroid/preference/PreferenceCategory;

    const v11, 0x7f090ff6

    invoke-virtual {v8, v11}, Landroid/preference/Preference;->setTitle(I)V

    .line 295
    :cond_5
    :goto_5
    const-string v8, "lock_screen_profile"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mMyprofile:Landroid/preference/PreferenceScreen;

    .line 299
    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mMyprofile:Landroid/preference/PreferenceScreen;

    if-eqz v8, :cond_6

    .line 300
    iget v8, p0, Lcom/android/settings_ex/LockScreenSettings;->isMyprofile:I

    if-nez v8, :cond_6

    .line 301
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings_ex/LockScreenSettings;->mMyprofile:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 305
    :cond_6
    const-string v8, "clock_size"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    .line 306
    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    if-eqz v8, :cond_7

    .line 312
    :cond_7
    const-string v8, "lock_screen_date_and_year"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    .line 313
    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    if-eqz v8, :cond_8

    .line 314
    iget-object v11, p0, Lcom/android/settings_ex/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v12, "lock_screen_date_and_year"

    invoke-static {v8, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_21

    move v8, v9

    :goto_6
    invoke-virtual {v11, v8}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 319
    :cond_8
    const-string v8, "owner_info_settings"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mOwnerInfo:Landroid/preference/PreferenceScreen;

    .line 320
    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mOwnerInfo:Landroid/preference/PreferenceScreen;

    if-eqz v8, :cond_9

    .line 327
    :cond_9
    const-string v8, "clock"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mClock:Landroid/preference/CheckBoxPreference;

    .line 328
    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mClock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v10}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 330
    const-string v8, "weather"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreferenceScreen;

    iput-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mWeather:Landroid/preference/SwitchPreferenceScreen;

    .line 331
    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mWeather:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 333
    iget-boolean v8, p0, Lcom/android/settings_ex/LockScreenSettings;->isWeatherEnabled:Z

    if-nez v8, :cond_a

    .line 334
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings_ex/LockScreenSettings;->mWeather:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 338
    :cond_a
    const-string v8, "dualclock_settings"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreferenceScreen;

    iput-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    .line 339
    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 341
    const-string v8, "information_ticker"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreferenceScreen;

    iput-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mInformationTicker:Landroid/preference/SwitchPreferenceScreen;

    .line 342
    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mInformationTicker:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 344
    invoke-static {}, Lcom/android/settings_ex/Utils;->isChinaModel()Z

    move-result v8

    if-eqz v8, :cond_23

    .line 345
    const-string v8, "CHM"

    const-string v11, "ro.csc.sales_code"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    const-string v8, "CMCC"

    const-string v11, "OPEN"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_22

    .line 347
    :cond_b
    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mInformationTicker:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090b60

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 356
    :goto_7
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v11, "CscFeature_Setting_RemoveMenuInLockScreenTicker"

    invoke-virtual {v8, v11}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, ContentsTypeFeature:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mInformationTicker:Landroid/preference/SwitchPreferenceScreen;

    if-nez v8, :cond_c

    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticModel()Z

    move-result v8

    if-nez v8, :cond_c

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_c

    const-string v8, "-1"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 364
    :cond_c
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings_ex/LockScreenSettings;->mInformationTicker:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 368
    const-string v8, "camera_short_cut"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreferenceScreen;

    iput-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    .line 369
    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v8, :cond_d

    .line 371
    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    const-string v11, "com.android.settings_ex.motion2013.SMotionGuideHub"

    invoke-virtual {v8, v11}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 375
    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 378
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings_ex/LockScreenSettings;->mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 379
    iput-object v13, p0, Lcom/android/settings_ex/LockScreenSettings;->mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    .line 384
    :cond_d
    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticModel()Z

    move-result v8

    if-nez v8, :cond_e

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 386
    :cond_e
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings_ex/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 387
    const-string v8, "LockScreenSettings"

    const-string v11, " remove Dualclock menu"

    invoke-static {v8, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_f
    const-string v8, "ripple_effect"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    .line 391
    const-string v8, "ja"

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget-object v11, v11, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_24

    const-string v1, ""

    .line 392
    .local v1, dot:Ljava/lang/String;
    :goto_8
    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090fad

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f091029

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 394
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "pen_hovering_ink_effect"

    invoke-static {v8, v11, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 395
    .local v4, mInkEffectColor:I
    const-string v8, "ink_effect"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    .line 396
    const-string v8, "help_text"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    .line 397
    const-string v8, "say_your_wakeup"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    .line 399
    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    if-eqz v8, :cond_10

    .line 400
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings_ex/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 403
    :cond_10
    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    if-eqz v8, :cond_11

    .line 404
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings_ex/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 408
    :cond_11
    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f091015

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 411
    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    if-eqz v8, :cond_12

    .line 412
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings_ex/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 414
    :cond_12
    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    if-eqz v8, :cond_13

    .line 415
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 416
    .local v5, ps:Landroid/preference/PreferenceScreen;
    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 420
    .end local v5           #ps:Landroid/preference/PreferenceScreen;
    :cond_13
    const-string v8, "set_wakeup_command"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    .line 421
    .local v6, setWakeupCommand:Landroid/preference/PreferenceScreen;
    if-eqz v6, :cond_14

    .line 422
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    const-string v8, "feature_category"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    invoke-virtual {v11, v8}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 423
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 428
    :cond_14
    invoke-direct {p0}, Lcom/android/settings_ex/LockScreenSettings;->updateState()V

    .line 431
    const/4 v7, 0x1

    .line 433
    .local v7, svoice_state:Z
    invoke-direct {p0}, Lcom/android/settings_ex/LockScreenSettings;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v8

    if-eqz v8, :cond_15

    .line 434
    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/app/enterprise/RestrictionPolicy;->isSVoiceAllowed(Z)Z

    move-result v8

    if-eqz v8, :cond_25

    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/app/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z

    move-result v8

    if-eqz v8, :cond_25

    move v7, v9

    .line 436
    :cond_15
    :goto_9
    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    if-eqz v8, :cond_16

    .line 437
    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 438
    :cond_16
    if-eqz v6, :cond_17

    .line 439
    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 441
    :cond_17
    return-void

    .end local v0           #ContentsTypeFeature:Ljava/lang/String;
    .end local v1           #dot:Ljava/lang/String;
    .end local v2           #isMultiple:Z
    .end local v4           #mInkEffectColor:I
    .end local v6           #setWakeupCommand:Landroid/preference/PreferenceScreen;
    .end local v7           #svoice_state:Z
    :cond_18
    move v8, v10

    .line 216
    goto/16 :goto_0

    .line 252
    :cond_19
    iget-object v11, p0, Lcom/android/settings_ex/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->resolver:Landroid/content/ContentResolver;

    const-string v12, "kg_enable_camera_widget"

    invoke-static {v8, v12, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_1a

    move v8, v9

    :goto_a
    invoke-virtual {v11, v8}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 253
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "kg_multiple_lockscreen"

    invoke-static {v8, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_1b

    move v2, v9

    .line 254
    .restart local v2       #isMultiple:Z
    :goto_b
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "is_secured_lock"

    invoke-static {v8, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_1c

    move v3, v9

    .line 255
    .local v3, isSecured:Z
    :goto_c
    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_1

    .end local v2           #isMultiple:Z
    .end local v3           #isSecured:Z
    :cond_1a
    move v8, v10

    .line 252
    goto :goto_a

    :cond_1b
    move v2, v10

    .line 253
    goto :goto_b

    .restart local v2       #isMultiple:Z
    :cond_1c
    move v3, v10

    .line 254
    goto :goto_c

    .end local v2           #isMultiple:Z
    :cond_1d
    move v2, v10

    .line 259
    goto/16 :goto_2

    .restart local v2       #isMultiple:Z
    :cond_1e
    move v8, v10

    .line 260
    goto/16 :goto_3

    .line 276
    :cond_1f
    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mClockMyprofile:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    goto/16 :goto_4

    .line 288
    :cond_20
    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mWidgetOptionsCategory:Landroid/preference/PreferenceCategory;

    const v11, 0x7f090ff5

    invoke-virtual {v8, v11}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_5

    :cond_21
    move v8, v10

    .line 314
    goto/16 :goto_6

    .line 349
    :cond_22
    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mInformationTicker:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090b5f

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 352
    :cond_23
    iget-object v8, p0, Lcom/android/settings_ex/LockScreenSettings;->mInformationTicker:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090b5e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 391
    .restart local v0       #ContentsTypeFeature:Ljava/lang/String;
    :cond_24
    const-string v1, ". "

    goto/16 :goto_8

    .restart local v1       #dot:Ljava/lang/String;
    .restart local v4       #mInkEffectColor:I
    .restart local v6       #setWakeupCommand:Landroid/preference/PreferenceScreen;
    .restart local v7       #svoice_state:Z
    :cond_25
    move v7, v10

    .line 434
    goto/16 :goto_9
.end method

.method public setCameraShortCut(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 799
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 833
    .local v0, int_value:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_unlock_camera_short_cut"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 834
    if-eqz p1, :cond_1

    .line 835
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/Utils;->turnOnMotionEngine(Landroid/content/Context;)V

    .line 840
    :goto_1
    return-void

    .line 799
    .end local v0           #int_value:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 837
    .restart local v0       #int_value:I
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/Utils;->autoTurnOffMotionEngine(Landroid/content/Context;)V

    goto :goto_1
.end method
