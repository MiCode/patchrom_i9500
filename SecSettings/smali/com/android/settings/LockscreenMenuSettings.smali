.class public Lcom/android/settings_ex/LockscreenMenuSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "LockscreenMenuSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final CONFIRM_EXISTING_FOR_BIOMETRIC_WEAK_IMPROVE_REQUEST:I = 0x7c

.field private static final CONFIRM_EXISTING_FOR_BIOMETRIC_WEAK_LIVELINESS_OFF:I = 0x7d

.field private static final DUALCLOCK_MENU_SETTINGS:Ljava/lang/String; = "dualclock_menu_settings"

.field private static final FALLBACK_SCREEN_TIMEOUT_VALUE:I = 0x7530

.field private static final KEY_BIOMETRIC_WEAK_IMPROVE_MATCHING:Ljava/lang/String; = "biometric_weak_improve_matching"

.field private static final KEY_BIOMETRIC_WEAK_LIVELINESS:Ljava/lang/String; = "biometric_weak_liveliness"

.field private static final KEY_DUALCLOCK_SETTINGS:Ljava/lang/String; = "dualclock_settings"

.field private static final KEY_HELP_TEXT:Ljava/lang/String; = "help_text"

.field private static final KEY_INK_EFFECT:Ljava/lang/String; = "ink_effect"

.field private static final KEY_LOCK_AFTER_TIMEOUT:Ljava/lang/String; = "lock_after_timeout"

.field private static final KEY_LOCK_ENABLED:Ljava/lang/String; = "lockenabled"

.field private static final KEY_LOCK_SCREEN_OPTIONS:Ljava/lang/String; = "lock_screen_options"

.field private static final KEY_LOCK_SCREEN_OPTIONS_CATEGORY:Ljava/lang/String; = "lock_screen_options_category"

.field private static final KEY_LOCK_SCREEN_SECURITY_CATEGORY:Ljava/lang/String; = "lock_screen_security_category"

.field private static final KEY_LOCK_SCREEN_SHORTCUT_MENU:Ljava/lang/String; = "lock_screen_shortcut_menu"

.field private static final KEY_LOCK_SCREEN_WIDGET_OPTIONS:Ljava/lang/String; = "lock_screen_widget_options"

.field private static final KEY_MULTIPLE_LOCK_SCREEN:Ljava/lang/String; = "multiple_lock_screen"

.field private static final KEY_OWNER_INFO_MENU:Ljava/lang/String; = "owner_info_settings"

.field private static final KEY_POWER_INSTANTLY_LOCKS:Ljava/lang/String; = "power_button_instantly_locks"

.field private static final KEY_QUICK_NOTE:Ljava/lang/String; = "quick_note"

.field private static final KEY_RIPPLE_EFFECT:Ljava/lang/String; = "ripple_effect"

.field public static final KEY_SAFETY_ZONE_DO_NOT_SHOW_ON:Ljava/lang/String; = "DoNotShowDialogOn"

.field private static final KEY_SAFETY_ZONE_SETTINGS:Ljava/lang/String; = "safetyzone_settings"

.field private static final KEY_SAY_YOUR_WAKEUP:Ljava/lang/String; = "say_your_wakeup"

.field private static final KEY_SECURITY_CATEGORY:Ljava/lang/String; = "security_category"

.field private static final KEY_SIGNATURE_VERIFICATION_LEVEL:Ljava/lang/String; = "signature_verification_level"

.field private static final KEY_TACTILE_FEEDBACK_ENABLED:Ljava/lang/String; = "unlock_tactile_feedback"

.field private static final KEY_UNLOCK_EFFECT:Ljava/lang/String; = "unlock_effect"

.field private static final KEY_UNLOCK_SET_OR_CHANGE:Ljava/lang/String; = "unlock_set_or_change"

.field private static final KEY_VISIBLE_PATTERN:Ljava/lang/String; = "visiblepattern"

.field private static final KEY_VISIBLE_SIGNATURE:Ljava/lang/String; = "visiblesignature"

.field private static final KEY_WITH_CIRCLE:Ljava/lang/String; = "with_circle"

.field private static final SET_OR_CHANGE_LOCK_METHOD_REQUEST:I = 0x7b

.field private static final TAG:Ljava/lang/String; = "LockScreenMenu"


# instance fields
.field private isDeviceLockTime:Z

.field private mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

.field private mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

.field mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDeviceLockDialog:Landroid/app/AlertDialog;

.field private mDirect:I

.field mDirectUri:Landroid/net/Uri;

.field private mDualclock:Landroid/preference/SwitchPreferenceScreen;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mHelpText:Landroid/preference/CheckBoxPreference;

.field private mInkEffect:Landroid/preference/PreferenceScreen;

.field mInkEffectSummary:[I

.field private mLockAfter:Landroid/preference/ListPreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockScreenOptions:Landroid/preference/PreferenceScreen;

.field private mLockScreenWidgetOptions:Landroid/preference/PreferenceScreen;

.field private mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

.field private mOptionsCategory:Landroid/preference/PreferenceCategory;

.field private mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

.field private mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

.field private mQuicknote:Landroid/preference/CheckBoxPreference;

.field private mRippleEffect:Landroid/preference/CheckBoxPreference;

.field private mSafetyZone:Landroid/preference/SwitchPreferenceScreen;

.field private mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

.field private mSafetyZoneLocktype:Ljava/lang/String;

.field private mSafetyZoneObserver:Landroid/database/ContentObserver;

.field private mSayCommand:Landroid/preference/CheckBoxPreference;

.field private mSecurityCategory:Landroid/preference/PreferenceCategory;

.field private mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

.field private mSignatureVerificationLevel:Landroid/preference/ListPreference;

.field private mTactileFeedback:Landroid/preference/CheckBoxPreference;

.field private mUnlockEffect:Landroid/preference/ListPreference;

.field private mVisiblePattern:Landroid/preference/CheckBoxPreference;

.field private mVisibleSignature:Landroid/preference/CheckBoxPreference;

.field private mWithCircle:Landroid/preference/CheckBoxPreference;

.field private setWakeupCommand:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 150
    iput-object v1, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mDeviceLockDialog:Landroid/app/AlertDialog;

    .line 160
    iput-object v1, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

    .line 161
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    .line 168
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mDirect:I

    .line 169
    iput-object v1, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mDirectUri:Landroid/net/Uri;

    .line 172
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mInkEffectSummary:[I

    .line 183
    new-instance v0, Lcom/android/settings_ex/LockscreenMenuSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/LockscreenMenuSettings$1;-><init>(Lcom/android/settings_ex/LockscreenMenuSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSafetyZoneObserver:Landroid/database/ContentObserver;

    return-void

    .line 172
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

.method static synthetic access$000(Lcom/android/settings_ex/LockscreenMenuSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSafetyZone:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/LockscreenMenuSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/LockscreenMenuSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->showSafetyZoneEnableDialog()V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 14

    .prologue
    .line 216
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    .line 217
    .local v8, root:Landroid/preference/PreferenceScreen;
    if-eqz v8, :cond_0

    .line 218
    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 220
    :cond_0
    const v10, 0x7f070068

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 221
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    .line 224
    const/4 v7, 0x0

    .line 225
    .local v7, resid:I
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v10

    if-nez v10, :cond_21

    .line 226
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v10

    if-eqz v10, :cond_20

    .line 227
    const v7, 0x7f07006e

    .line 262
    :goto_0
    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 264
    const-string v10, "lock_screen_options_category"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 266
    .local v0, ca:Landroid/preference/PreferenceCategory;
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v10

    if-nez v10, :cond_1

    .line 267
    new-instance v10, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    .line 268
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    const-string v11, "multiple_lock_screen"

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 269
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    const v11, 0x7f090fe0

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setTitle(I)V

    .line 270
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    const v11, 0x7f090fe1

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setSummary(I)V

    .line 271
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 272
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setOrder(I)V

    .line 273
    if-eqz v0, :cond_1

    .line 274
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 279
    :cond_1
    const-string v10, "lock_after_timeout"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/ListPreference;

    iput-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    .line 280
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    if-eqz v10, :cond_3

    .line 282
    iget-boolean v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->isDeviceLockTime:Z

    if-eqz v10, :cond_2

    .line 283
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    const v11, 0x7f090027

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setTitle(I)V

    .line 284
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    const v11, 0x7f090027

    invoke-virtual {v10, v11}, Landroid/preference/DialogPreference;->setDialogTitle(I)V

    .line 285
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    const v11, 0x7f0a0012

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 286
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    const v11, 0x7f0a0013

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 289
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->setupLockAfterPreference()V

    .line 290
    invoke-direct {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->updateLockAfterPreferenceSummary()V

    .line 294
    :cond_3
    const-string v10, "biometric_weak_liveliness"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    .line 298
    const-string v10, "visiblepattern"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    .line 300
    const-string v10, "power_button_instantly_locks"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    .line 304
    const v10, 0x7f070069

    if-eq v7, v10, :cond_4

    const v10, 0x7f070075

    if-ne v7, v10, :cond_5

    :cond_4
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v10

    const/high16 v11, 0x1

    if-eq v10, v11, :cond_5

    .line 307
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v10, :cond_5

    .line 308
    const-string v10, "visiblepattern"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 313
    :cond_5
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v10, :cond_6

    .line 314
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternDisabledByMDM()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 315
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 321
    :cond_6
    const-string v10, "owner_info_settings"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceScreen;

    iput-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    .line 322
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    if-eqz v10, :cond_7

    .line 324
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 329
    :cond_7
    const-string v10, "with_circle"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mWithCircle:Landroid/preference/CheckBoxPreference;

    .line 331
    const-string v10, "lock_screen_options"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceScreen;

    iput-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockScreenOptions:Landroid/preference/PreferenceScreen;

    .line 334
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockScreenOptions:Landroid/preference/PreferenceScreen;

    if-eqz v10, :cond_8

    .line 335
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockScreenOptions:Landroid/preference/PreferenceScreen;

    const v11, 0x7f09100a

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setSummary(I)V

    .line 338
    :cond_8
    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticModel()Z

    move-result v10

    if-nez v10, :cond_24

    const-string v10, "Germany"

    const-string v11, "ro.csc.country_code"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_24

    .line 342
    :cond_9
    :goto_1
    const-string v10, "lock_screen_widget_options"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceScreen;

    iput-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockScreenWidgetOptions:Landroid/preference/PreferenceScreen;

    .line 344
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_25

    .line 345
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockScreenWidgetOptions:Landroid/preference/PreferenceScreen;

    if-eqz v10, :cond_a

    .line 346
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockScreenWidgetOptions:Landroid/preference/PreferenceScreen;

    const v11, 0x7f090fe9

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setSummary(I)V

    .line 355
    :cond_a
    :goto_2
    const-string v10, "quick_note"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    .line 356
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    if-eqz v10, :cond_b

    const v10, 0x7f07006e

    if-eq v7, v10, :cond_b

    .line 358
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 361
    :cond_b
    const-string v10, "visiblesignature"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    .line 362
    const-string v10, "signature_verification_level"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/ListPreference;

    iput-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    .line 363
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    if-eqz v10, :cond_c

    .line 364
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/settings_ex/LockscreenMenuSettings;->setupSignatureVerificationLevelPreference(Z)V

    .line 368
    :cond_c
    const-string v10, "unlock_tactile_feedback"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    .line 369
    const-string v10, "vibrator"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Vibrator;

    invoke-virtual {v10}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v10

    if-nez v10, :cond_d

    .line 370
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    if-eqz v10, :cond_d

    .line 371
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 376
    :cond_d
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v10

    if-nez v10, :cond_28

    .line 377
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v10

    if-nez v10, :cond_27

    .line 378
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "lock_motion_tilt_to_unlock"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_e

    .line 379
    const-string v10, "unlock_set_or_change"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    .line 380
    .local v1, configureLockScreenPreference:Landroid/preference/PreferenceScreen;
    const v10, 0x7f090bda

    invoke-virtual {v1, v10}, Landroid/preference/Preference;->setSummary(I)V

    .line 381
    const v10, 0x7f090bda

    invoke-virtual {p0, v10}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    .line 406
    .end local v1           #configureLockScreenPreference:Landroid/preference/PreferenceScreen;
    :cond_e
    :goto_3
    iget-boolean v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->isDeviceLockTime:Z

    if-eqz v10, :cond_f

    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    if-eqz v10, :cond_f

    .line 407
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 410
    :cond_f
    const-string v10, "LockScreenMenu"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mLockPatternUtils.isSecure(): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "is_secured_lock"

    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v10

    if-eqz v10, :cond_2a

    const/4 v10, 0x1

    :goto_4
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 415
    const-string v10, "dualclock_settings"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreferenceScreen;

    iput-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    .line 416
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v10, :cond_10

    .line 417
    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticModel()Z

    move-result v10

    if-eqz v10, :cond_2c

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_2c

    .line 418
    iget-object v11, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v12, "dualclock_menu_settings"

    const/4 v13, 0x1

    invoke-static {v10, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_2b

    const/4 v10, 0x1

    :goto_5
    invoke-virtual {v11, v10}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 419
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v10, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 425
    :cond_10
    :goto_6
    const-string v10, "safetyzone_settings"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreferenceScreen;

    iput-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSafetyZone:Landroid/preference/SwitchPreferenceScreen;

    .line 426
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSafetyZone:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v10, :cond_11

    .line 427
    iget-object v11, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSafetyZone:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v12, "easy_mode_switch"

    const/4 v13, 0x1

    invoke-static {v10, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v12, 0x1

    if-ne v10, v12, :cond_2d

    const/4 v10, 0x1

    :goto_7
    invoke-virtual {v11, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 429
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSafetyZone:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 440
    :cond_11
    const-string v10, "lock_screen_security_category"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceCategory;

    iput-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSecurityCategory:Landroid/preference/PreferenceCategory;

    .line 441
    const-string v10, "lock_screen_options_category"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceCategory;

    iput-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mOptionsCategory:Landroid/preference/PreferenceCategory;

    .line 442
    const-string v10, "lock_screen_shortcut_menu"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreferenceScreen;

    iput-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    .line 444
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSecurityCategory:Landroid/preference/PreferenceCategory;

    if-eqz v10, :cond_12

    .line 449
    :cond_12
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mOptionsCategory:Landroid/preference/PreferenceCategory;

    if-eqz v10, :cond_13

    .line 454
    :cond_13
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v10, :cond_15

    .line 455
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v10, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 459
    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticModel()Z

    move-result v10

    if-nez v10, :cond_14

    const-string v10, "Germany"

    const-string v11, "ro.csc.country_code"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_14

    const-string v10, "Australia"

    const-string v11, "ro.csc.country_code"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 462
    :cond_14
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v10, :cond_15

    .line 463
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 468
    :cond_15
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mWithCircle:Landroid/preference/CheckBoxPreference;

    if-eqz v10, :cond_16

    .line 469
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mWithCircle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 471
    :cond_16
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockScreenOptions:Landroid/preference/PreferenceScreen;

    if-eqz v10, :cond_17

    .line 472
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockScreenOptions:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 475
    :cond_17
    const-string v10, "unlock_effect"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/ListPreference;

    iput-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    .line 476
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "lockscreen_ripple_effect"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 477
    .local v5, mDefaultUnlock:I
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    if-eqz v10, :cond_18

    .line 478
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v10, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 480
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 481
    invoke-direct {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->updateRippleEffectPreferenceSummary()V

    .line 484
    :cond_18
    const-string v10, "ripple_effect"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    .line 485
    const-string v10, "ja"

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget-object v11, v11, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2e

    const-string v2, ""

    .line 486
    .local v2, dot:Ljava/lang/String;
    :goto_8
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    if-eqz v10, :cond_19

    .line 487
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090fad

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 490
    :cond_19
    const-string v10, "ink_effect"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceScreen;

    iput-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    .line 491
    const-string v10, "help_text"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    .line 492
    const-string v10, "say_your_wakeup"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    .line 494
    const v10, 0x7f07006b

    if-ne v7, v10, :cond_1f

    .line 495
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    if-eqz v10, :cond_1a

    .line 497
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f091015

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 501
    :cond_1a
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    if-eqz v10, :cond_1b

    .line 507
    :cond_1b
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    if-eqz v10, :cond_1c

    .line 510
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 513
    :cond_1c
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    if-eqz v10, :cond_1d

    .line 515
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 520
    :cond_1d
    const-string v10, "set_wakeup_command"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceScreen;

    iput-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    .line 521
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    if-eqz v10, :cond_1f

    .line 522
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v10}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 523
    .local v9, set_wakeup_commant_intent:Landroid/content/Intent;
    if-eqz v9, :cond_1f

    .line 524
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 525
    .local v6, pm:Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 526
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ge v10, v11, :cond_1f

    .line 527
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    if-eqz v10, :cond_1e

    .line 528
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 529
    :cond_1e
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    if-eqz v10, :cond_1f

    .line 530
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 536
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v6           #pm:Landroid/content/pm/PackageManager;
    .end local v9           #set_wakeup_commant_intent:Landroid/content/Intent;
    :cond_1f
    return-object v8

    .line 229
    .end local v0           #ca:Landroid/preference/PreferenceCategory;
    .end local v2           #dot:Ljava/lang/String;
    .end local v5           #mDefaultUnlock:I
    :cond_20
    const v7, 0x7f07006b

    .line 230
    const v10, 0x7f09019b

    invoke-virtual {p0, v10}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    goto/16 :goto_0

    .line 232
    :cond_21
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v10

    if-eqz v10, :cond_22

    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v10

    if-eqz v10, :cond_22

    .line 234
    const v7, 0x7f070069

    .line 235
    const v10, 0x7f0901d0

    invoke-virtual {p0, v10}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    goto/16 :goto_0

    .line 236
    :cond_22
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->usingSignatureUnlock()Z

    move-result v10

    if-eqz v10, :cond_23

    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->isSignatureLockInstalled()Z

    move-result v10

    if-eqz v10, :cond_23

    .line 238
    const v7, 0x7f070075

    .line 239
    const v10, 0x7f0901d1

    invoke-virtual {p0, v10}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    goto/16 :goto_0

    .line 241
    :cond_23
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    .line 260
    :goto_9
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "lock_motion_tilt_to_unlock"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 243
    :sswitch_0
    const v7, 0x7f070071

    .line 244
    const v10, 0x7f0901a2

    invoke-virtual {p0, v10}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    goto :goto_9

    .line 247
    :sswitch_1
    const v7, 0x7f070073

    .line 248
    const v10, 0x7f0901c9

    invoke-virtual {p0, v10}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    goto :goto_9

    .line 253
    :sswitch_2
    const v7, 0x7f070070

    .line 254
    const v10, 0x7f0901cb

    invoke-virtual {p0, v10}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    goto :goto_9

    .line 257
    :sswitch_3
    const v7, 0x7f07006a

    goto :goto_9

    .line 338
    .restart local v0       #ca:Landroid/preference/PreferenceCategory;
    :cond_24
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockScreenOptions:Landroid/preference/PreferenceScreen;

    if-eqz v10, :cond_9

    .line 339
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockScreenOptions:Landroid/preference/PreferenceScreen;

    const v11, 0x7f09100b

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_1

    .line 349
    :cond_25
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockScreenWidgetOptions:Landroid/preference/PreferenceScreen;

    if-eqz v10, :cond_a

    .line 350
    iget-object v11, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockScreenWidgetOptions:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v12, "easy_mode_switch"

    const/4 v13, 0x1

    invoke-static {v10, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v12, 0x1

    if-ne v10, v12, :cond_26

    const/4 v10, 0x1

    :goto_a
    invoke-virtual {v11, v10}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_26
    const/4 v10, 0x0

    goto :goto_a

    .line 384
    :cond_27
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "lock_motion_tilt_to_unlock"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 386
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings_ex/Utils;->autoTurnOffMotionEngine(Landroid/content/Context;)V

    goto/16 :goto_3

    .line 390
    :cond_28
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "lock_motion_tilt_to_unlock"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 392
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings_ex/Utils;->autoTurnOffMotionEngine(Landroid/content/Context;)V

    .line 395
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v10

    if-eqz v10, :cond_e

    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 396
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "lock_screen_face_with_voice"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 397
    .local v3, isfacevalue:I
    const/4 v10, 0x1

    if-ne v3, v10, :cond_29

    .line 398
    const-string v10, "unlock_set_or_change"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    .line 399
    .restart local v1       #configureLockScreenPreference:Landroid/preference/PreferenceScreen;
    const v10, 0x7f09019f

    invoke-virtual {v1, v10}, Landroid/preference/Preference;->setSummary(I)V

    .line 400
    const v10, 0x7f09019f

    invoke-virtual {p0, v10}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    .line 402
    .end local v1           #configureLockScreenPreference:Landroid/preference/PreferenceScreen;
    :cond_29
    const-string v10, "LockScreenMenu"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mLockPatternUtils.usingBiometricWeak(): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 411
    .end local v3           #isfacevalue:I
    :cond_2a
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 418
    :cond_2b
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 421
    :cond_2c
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_6

    .line 427
    :cond_2d
    const/4 v10, 0x0

    goto/16 :goto_7

    .line 485
    .restart local v5       #mDefaultUnlock:I
    :cond_2e
    const-string v2, ". "

    goto/16 :goto_8

    .line 241
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
        0x70000 -> :sswitch_3
    .end sparse-switch
.end method

.method private disableUnusableTimeouts(J)V
    .locals 17
    .parameter "maxTimeout"

    .prologue
    .line 617
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v13}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 618
    .local v3, entries:[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v13}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v12

    .line 619
    .local v12, values:[Ljava/lang/CharSequence;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 620
    .local v7, revisedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 622
    .local v8, revisedValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "screen_off_timeout"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    int-to-long v1, v13

    .line 625
    .local v1, displayTimeout:J
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v13, v12

    if-ge v4, v13, :cond_1

    .line 626
    aget-object v13, v12, v4

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 627
    .local v9, timeout:J
    cmp-long v13, v9, p1

    if-gtz v13, :cond_0

    .line 628
    aget-object v13, v3, v4

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    aget-object v13, v12, v4

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 634
    .end local v9           #timeout:J
    :cond_1
    const-string v13, "LockScreenMenu"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "revisedValues.size() : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    sub-long v5, p1, v13

    .line 636
    .local v5, last_timeout:J
    const-string v13, "LockScreenMenu"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "last_timeout : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const-wide/16 v13, 0x0

    cmp-long v13, v5, v13

    if-lez v13, :cond_2

    array-length v13, v12

    add-int/lit8 v13, v13, -0x1

    aget-object v13, v12, v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v13, p1, v13

    if-gez v13, :cond_2

    .line 638
    const v13, 0x7f090e4d

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-direct/range {p0 .. p2}, Lcom/android/settings_ex/LockscreenMenuSettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v13, v13, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/CharSequence;

    invoke-virtual {v14, v13}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 645
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v13, v13, [Ljava/lang/CharSequence;

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/CharSequence;

    invoke-virtual {v14, v13}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 647
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v13}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 648
    .local v11, userPreference:I
    int-to-long v13, v11

    cmp-long v13, v13, p1

    if-gtz v13, :cond_3

    .line 649
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 658
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_4

    const/4 v13, 0x1

    :goto_2
    invoke-virtual {v14, v13}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 660
    return-void

    .line 651
    :cond_3
    const-string v13, "LockScreenMenu"

    const-string v14, "mLockAfter.setValueIndex(revisedValues.size()-1)"

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_1

    .line 658
    :cond_4
    const/4 v13, 0x0

    goto :goto_2
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 704
    const-string v0, "enterprise_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 706
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getTimeoutNewEntry(J)Ljava/lang/String;
    .locals 10
    .parameter "time"

    .prologue
    .line 1172
    const-wide/16 v5, 0x3e8

    div-long v3, p1, v5

    .line 1173
    .local v3, second:J
    const-wide/16 v5, 0x3c

    div-long v0, v3, v5

    .line 1174
    .local v0, minute:J
    const-wide/16 v5, 0x3c

    rem-long/2addr v3, v5

    .line 1176
    const-string v2, ""

    .line 1177
    .local v2, result:Ljava/lang/String;
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-lez v5, :cond_0

    .line 1178
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f110007

    long-to-int v7, v0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    long-to-int v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1180
    :cond_0
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-lez v5, :cond_1

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    .line 1181
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1183
    :cond_1
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_2

    .line 1184
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f110008

    long-to-int v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    long-to-int v9, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1187
    :cond_2
    const-string v5, "LockScreenMenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTimeoutNewEntry : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    return-object v2
.end method

.method private isEffect()Z
    .locals 5

    .prologue
    .line 691
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_ripple_effect"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 693
    .local v0, effect:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 694
    const/4 v1, 0x1

    .line 698
    .local v1, state:Z
    :goto_0
    return v1

    .line 696
    .end local v1           #state:Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #state:Z
    goto :goto_0
.end method

.method private isInDefaultTimeoutList(J)Z
    .locals 5
    .parameter "timeout"

    .prologue
    const/4 v2, 0x0

    .line 1217
    const/4 v1, 0x0

    .line 1218
    .local v1, values:[Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->isDeviceLockTime:Z

    if-eqz v3, :cond_1

    .line 1219
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0013

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1225
    :goto_0
    if-nez v1, :cond_2

    .line 1231
    :cond_0
    :goto_1
    return v2

    .line 1221
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0015

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1227
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 1228
    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    .line 1227
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private isToggled(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "pref"

    .prologue
    .line 954
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    return v0
.end method

.method private setupLockAfterPreference()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const-wide/16 v6, 0x0

    .line 546
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    const-wide/16 v10, 0x1388

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 548
    .local v2, currentTimeout:J
    iget-object v8, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 549
    iget-object v8, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 550
    iget-object v8, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 551
    .local v0, adminTimeout:J
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screen_off_timeout"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-long v4, v8

    .line 553
    .local v4, displayTimeout:J
    cmp-long v8, v0, v6

    if-lez v8, :cond_0

    .line 559
    iget-boolean v8, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->isDeviceLockTime:Z

    if-eqz v8, :cond_2

    .end local v0           #adminTimeout:J
    :goto_1
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/android/settings_ex/LockscreenMenuSettings;->disableUnusableTimeouts(J)V

    .line 562
    :cond_0
    return-void

    .end local v4           #displayTimeout:J
    :cond_1
    move-wide v0, v6

    .line 550
    goto :goto_0

    .line 559
    .restart local v0       #adminTimeout:J
    .restart local v4       #displayTimeout:J
    :cond_2
    sub-long/2addr v0, v4

    goto :goto_1
.end method

.method private setupSignatureVerificationLevelPreference(Z)V
    .locals 13
    .parameter "isUpdate"

    .prologue
    const/4 v11, 0x1

    .line 663
    if-nez p1, :cond_0

    .line 664
    iget-object v8, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    const v9, 0x7f040114

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 665
    iget-object v8, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 668
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_signature_verification_level"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 671
    .local v1, currentLevel:I
    iget-object v8, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 673
    iget-object v8, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 674
    .local v2, entries:[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 676
    .local v7, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 677
    .local v0, best:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v8, v7

    if-ge v3, v8, :cond_2

    .line 678
    aget-object v8, v7, v3

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 679
    .local v4, level:J
    int-to-long v8, v1

    cmp-long v8, v8, v4

    if-nez v8, :cond_1

    .line 680
    move v0, v3

    .line 677
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 684
    .end local v4           #level:J
    :cond_2
    aget-object v8, v2, v0

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 685
    .local v6, levelString:Ljava/lang/String;
    const-string v8, "SecuritySettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "get signature verification level: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    iget-object v8, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    const v9, 0x7f090e6e

    new-array v10, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 688
    return-void
.end method

.method private showSafetyZoneEnableDialog()V
    .locals 3

    .prologue
    .line 1099
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090af4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090021

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings_ex/LockscreenMenuSettings$5;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/LockscreenMenuSettings$5;-><init>(Lcom/android/settings_ex/LockscreenMenuSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings_ex/LockscreenMenuSettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/LockscreenMenuSettings$4;-><init>(Lcom/android/settings_ex/LockscreenMenuSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1122
    return-void
.end method

.method private showSafetyZoneInfoDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1126
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1128
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 1129
    iget-object v4, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 1130
    iput-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

    .line 1133
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 1134
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f04005c

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1135
    .local v2, layout:Landroid/view/View;
    const v4, 0x7f0b004a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1137
    .local v3, message:Landroid/widget/TextView;
    const v4, 0x7f090af3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1138
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1139
    const v4, 0x7f090aed

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1140
    const v4, 0x7f090699

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1141
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

    .line 1142
    iget-object v4, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 1143
    iget-object v4, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/settings_ex/LockscreenMenuSettings$6;

    invoke-direct {v5, p0, v2}, Lcom/android/settings_ex/LockscreenMenuSettings$6;-><init>(Lcom/android/settings_ex/LockscreenMenuSettings;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1162
    return-void
.end method

.method private updateLockAfterPreferenceSummary()V
    .locals 22

    .prologue
    .line 566
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "lock_screen_lock_after_timeout"

    const-wide/16 v20, 0x1388

    invoke-static/range {v18 .. v21}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v5

    .line 568
    .local v5, currentTimeout:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v9

    .line 569
    .local v9, entries:[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v17

    .line 570
    .local v17, values:[Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 571
    .local v4, best:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v10, v0, :cond_1

    .line 572
    aget-object v18, v17, v10

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 573
    .local v15, timeout:J
    cmp-long v18, v5, v15

    if-ltz v18, :cond_0

    .line 574
    move v4, v10

    .line 571
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 579
    .end local v15           #timeout:J
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v2

    .line 580
    .local v2, adminTimeout:J
    :goto_1
    const/16 v18, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "screen_off_timeout"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v18

    move/from16 v0, v18

    int-to-long v7, v0

    .line 582
    .local v7, displayTimeout:J
    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->isDeviceLockTime:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .end local v2           #adminTimeout:J
    :goto_2
    move-wide/from16 v0, v18

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 586
    .local v12, maxTimeout:J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->isDeviceLockTime:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    const v14, 0x7f090028

    .line 587
    .local v14, summaryResID:I
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->isDeviceLockTime:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    const v11, 0x7f090029

    .line 590
    .local v11, immeResID:I
    :goto_4
    aget-object v18, v17, v4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    cmp-long v18, v18, v12

    if-gez v18, :cond_7

    cmp-long v18, v12, v5

    if-gez v18, :cond_7

    .line 591
    const-string v18, "LockScreenMenu"

    const-string v19, "updateLockAfterPreferenceSummary, Long.valueOf(values[best].toString()) < maxTimeout && maxTimeout < currentTimeout"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->isDeviceLockTime:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    cmp-long v18, v12, v7

    if-gez v18, :cond_6

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v21, v9, v4

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 614
    :goto_5
    return-void

    .line 579
    .end local v7           #displayTimeout:J
    .end local v11           #immeResID:I
    .end local v12           #maxTimeout:J
    .end local v14           #summaryResID:I
    :cond_2
    const-wide/16 v2, 0x0

    goto/16 :goto_1

    .line 582
    .restart local v2       #adminTimeout:J
    .restart local v7       #displayTimeout:J
    :cond_3
    sub-long/2addr v2, v7

    goto :goto_2

    .line 586
    .end local v2           #adminTimeout:J
    .restart local v12       #maxTimeout:J
    :cond_4
    const v14, 0x7f090170

    goto :goto_3

    .line 587
    .restart local v14       #summaryResID:I
    :cond_5
    const v11, 0x7f090e4c

    goto :goto_4

    .line 596
    .restart local v11       #immeResID:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/settings_ex/LockscreenMenuSettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v14, v1}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 601
    :cond_7
    if-nez v4, :cond_8

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v21, v9, v4

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 604
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/settings_ex/LockscreenMenuSettings;->isInDefaultTimeoutList(J)Z

    move-result v18

    if-eqz v18, :cond_a

    cmp-long v18, v5, v12

    if-ltz v18, :cond_9

    const-wide/16 v18, 0x0

    cmp-long v18, v12, v18

    if-nez v18, :cond_a

    .line 605
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v21, v9, v4

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v14, v1}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 607
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/settings_ex/LockscreenMenuSettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v14, v1}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method

.method private updateRippleEffectPreferenceSummary()V
    .locals 5

    .prologue
    .line 1091
    iget-object v2, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 1092
    .local v1, entries:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_ripple_effect"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1093
    .local v0, State:I
    iget-object v2, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1094
    const-string v2, "LockScreenMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " LockScreen : updateRippleEffectPreferenceSummary :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    iget-object v2, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1096
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 962
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 963
    const/16 v1, 0x7c

    if-ne p1, v1, :cond_1

    if-ne p2, v2, :cond_1

    .line 965
    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->startBiometricWeakImprove()V

    .line 978
    :cond_0
    :goto_0
    return-void

    .line 967
    :cond_1
    const/16 v1, 0x7d

    if-ne p1, v1, :cond_2

    if-ne p2, v2, :cond_2

    .line 969
    iget-object v1, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 970
    .local v0, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    .line 971
    iget-object v1, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 972
    iget-object v1, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 977
    .end local v0           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 1239
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 192
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 195
    const-string v1, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->isDeviceLockTime:Z

    .line 198
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 200
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 202
    new-instance v1, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    .line 205
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 206
    .local v0, activity:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mDirectUri:Landroid/net/Uri;

    .line 207
    const-string v1, "LockScreenMenu"

    const-string v2, " LockScreen : onCreateCalled"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v1, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mDirectUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mDirectUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mDirect:I

    .line 210
    const-string v1, "LockScreenMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDirect LockScreen : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mDirect:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 541
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 542
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 854
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 855
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSafetyZoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 856
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 19
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 981
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_3

    .line 982
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 984
    .local v13, timeout:I
    int-to-long v14, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/settings_ex/LockscreenMenuSettings;->isInDefaultTimeoutList(J)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 985
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "lock_after_timeout_rollback"

    invoke-static {v14, v15, v13}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 991
    :goto_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "lock_screen_lock_after_timeout"

    invoke-static {v14, v15, v13}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 997
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "screen_off_timeout"

    const-wide/16 v16, 0x7530

    invoke-static/range {v14 .. v17}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    .line 999
    .local v3, currentScreenTimeout:J
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->isDeviceLockTime:Z

    if-eqz v14, :cond_0

    if-eqz v13, :cond_0

    int-to-long v14, v13

    cmp-long v14, v14, v3

    if-gez v14, :cond_0

    .line 1000
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->showDeviceLockDialog()V

    .line 1003
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->updateLockAfterPreferenceSummary()V

    .line 1087
    .end local v3           #currentScreenTimeout:J
    .end local v13           #timeout:I
    :cond_1
    :goto_2
    const/4 v14, 0x1

    return v14

    .line 987
    .restart local v13       #timeout:I
    :cond_2
    const v13, 0x1b7741

    goto :goto_0

    .line 993
    :catch_0
    move-exception v6

    .line 994
    .local v6, e:Ljava/lang/NumberFormatException;
    const-string v14, "SecuritySettings"

    const-string v15, "could not persist lockAfter timeout setting"

    invoke-static {v14, v15, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1004
    .end local v6           #e:Ljava/lang/NumberFormatException;
    .end local v13           #timeout:I
    .restart local p2
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_4

    .line 1005
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1007
    .local v9, level:I
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "lock_signature_verification_level"

    invoke-static {v14, v15, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1013
    :goto_3
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/LockscreenMenuSettings;->setupSignatureVerificationLevelPreference(Z)V

    goto :goto_2

    .line 1009
    :catch_1
    move-exception v6

    .line 1010
    .restart local v6       #e:Ljava/lang/NumberFormatException;
    const-string v14, "SecuritySettings"

    const-string v15, "could not persist signature verification level setting"

    invoke-static {v14, v15, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1014
    .end local v6           #e:Ljava/lang/NumberFormatException;
    .end local v9           #level:I
    .restart local p2
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 1015
    const-string v14, "oversea"

    const-string v15, "ril.currentplmn"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 1016
    .local v8, isRoamingArea:Z
    if-nez v8, :cond_5

    const-string v14, "SKT"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1017
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-direct {v10, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1018
    .local v10, mAlertDialog:Landroid/app/AlertDialog$Builder;
    const v14, 0x7f090d02

    invoke-virtual {v10, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1019
    const v14, 0x7f091277

    invoke-virtual {v10, v14}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1020
    const v14, 0x104000a

    new-instance v15, Lcom/android/settings_ex/LockscreenMenuSettings$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/settings_ex/LockscreenMenuSettings$3;-><init>(Lcom/android/settings_ex/LockscreenMenuSettings;)V

    invoke-virtual {v10, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1026
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1027
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_2

    .line 1029
    .end local v10           #mAlertDialog:Landroid/app/AlertDialog$Builder;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "dualclock_menu_settings"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_6

    const/4 v14, 0x1

    :goto_4
    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_6
    const/4 v14, 0x0

    goto :goto_4

    .line 1031
    .end local v8           #isRoamingArea:Z
    .restart local p2
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSafetyZone:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 1032
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1034
    .local v2, checked:Z
    if-eqz v2, :cond_a

    .line 1035
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "safetyzone_settings"

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1036
    .local v1, ReverbSharedPrefs:Landroid/content/SharedPreferences;
    if-eqz v1, :cond_1

    .line 1037
    const/4 v5, 0x0

    .line 1038
    .local v5, doNotShow:Z
    const-string v14, "DoNotShowDialogOn"

    const/4 v15, 0x0

    invoke-interface {v1, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 1039
    if-nez v5, :cond_8

    .line 1040
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->showSafetyZoneInfoDialog()V

    goto/16 :goto_2

    .line 1042
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "safety_zone_list"

    invoke-static {v14, v15}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1043
    .local v11, safety_zone_list:Ljava/lang/String;
    const-string v14, ""

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 1044
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->showSafetyZoneEnableDialog()V

    goto/16 :goto_2

    .line 1046
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "safety_zone_enable"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 1050
    .end local v1           #ReverbSharedPrefs:Landroid/content/SharedPreferences;
    .end local v5           #doNotShow:Z
    .end local v11           #safety_zone_list:Ljava/lang/String;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "safety_zone_enable"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-eqz v14, :cond_c

    .line 1051
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const v15, 0x7f090af6

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 1052
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "safety_zone_enable"

    if-eqz v2, :cond_b

    const/4 v14, 0x1

    :goto_5
    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_b
    const/4 v14, 0x0

    goto :goto_5

    .line 1054
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "safety_zone_enable"

    if-eqz v2, :cond_d

    const/4 v14, 0x1

    :goto_6
    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_d
    const/4 v14, 0x0

    goto :goto_6

    .line 1057
    .end local v2           #checked:Z
    .restart local p2
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_f

    .line 1058
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "lockscreen_ripple_effect"

    move-object/from16 v14, p2

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1059
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->updateRippleEffectPreferenceSummary()V

    .line 1060
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->isEffect()Z

    move-result v15

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 1061
    const-string v14, "LockScreenMenu"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " LockScreen : lockscreen_ripple_effect :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1062
    .restart local p2
    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_12

    .line 1064
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v14

    if-eqz v14, :cond_10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v14}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/app/enterprise/RestrictionPolicy;->isLockScreenViewAllowed(I)Z

    move-result v14

    if-eqz v14, :cond_1

    :cond_10
    move-object/from16 v14, p2

    .line 1067
    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_11

    const/4 v12, 0x1

    .line 1068
    .local v12, setValue:I
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "lock_screen_shortcut"

    invoke-static {v14, v15, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1069
    new-instance v7, Landroid/content/Intent;

    const-string v14, "com.android.settings_ex.LOCK_SCREEN_SHORTCUT_CHANGED"

    invoke-direct {v7, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1070
    .local v7, intent:Landroid/content/Intent;
    const-string v14, "isEnable"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    move-object/from16 v0, p2

    invoke-virtual {v7, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1071
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 1067
    .end local v7           #intent:Landroid/content/Intent;
    .end local v12           #setValue:I
    .restart local p2
    :cond_11
    const/4 v12, 0x0

    goto :goto_7

    .line 1075
    :cond_12
    const-string v14, "multiple_lock_screen"

    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1077
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v14

    if-eqz v14, :cond_13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/LockscreenMenuSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v14}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v14

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/app/enterprise/RestrictionPolicy;->isLockScreenViewAllowed(I)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1080
    :cond_13
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_14

    const/4 v12, 0x1

    .line 1081
    .restart local v12       #setValue:I
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "kg_multiple_lockscreen"

    invoke-static {v14, v15, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1082
    const-string v14, "LockScreenMenu"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Multiple lock screen : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "kg_multiple_lockscreen"

    const/16 v18, 0x1

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1080
    .end local v12           #setValue:I
    :cond_14
    const/4 v12, 0x0

    goto :goto_8
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 13
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v12, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 860
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 862
    .local v4, key:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "lockscreen_wallpaper"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v9, :cond_1

    move v1, v8

    .line 863
    .local v1, isLiveWallpaper:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "lock_motion_tilt_to_unlock"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 864
    .local v2, isMotionLock:I
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "pen_hovering_ink_effect"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 866
    .local v7, mInkEffectColor:I
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {v10}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    .line 867
    .local v5, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    const-string v10, "unlock_set_or_change"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 868
    const-string v8, "com.android.settings_ex.ChooseLockGeneric$ChooseLockGenericFragment"

    const/16 v9, 0x7b

    invoke-virtual {p0, p0, v8, v9, v12}, Lcom/android/settings_ex/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 945
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v9

    :goto_2
    return v9

    .end local v1           #isLiveWallpaper:Z
    .end local v2           #isMotionLock:I
    .end local v5           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    .end local v7           #mInkEffectColor:I
    :cond_1
    move v1, v9

    .line 862
    goto :goto_0

    .line 870
    .restart local v1       #isLiveWallpaper:Z
    .restart local v2       #isMotionLock:I
    .restart local v5       #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    .restart local v7       #mInkEffectColor:I
    :cond_2
    const-string v10, "biometric_weak_improve_matching"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 871
    new-instance v0, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v0, v8, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 873
    .local v0, helper:Lcom/android/settings_ex/ChooseLockSettingsHelper;
    const/16 v8, 0x7c

    invoke-virtual {v0, v8, v12, v12}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 879
    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->startBiometricWeakImprove()V

    goto :goto_1

    .line 881
    .end local v0           #helper:Lcom/android/settings_ex/ChooseLockSettingsHelper;
    :cond_3
    const-string v10, "biometric_weak_liveliness"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 882
    invoke-direct {p0, p2}, Lcom/android/settings_ex/LockscreenMenuSettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 883
    invoke-virtual {v5, v9}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    goto :goto_1

    .line 888
    :cond_4
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v9}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 889
    new-instance v0, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v0, v9, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 891
    .restart local v0       #helper:Lcom/android/settings_ex/ChooseLockSettingsHelper;
    const/16 v9, 0x7d

    invoke-virtual {v0, v9, v12, v12}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 897
    invoke-virtual {v5, v8}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    .line 898
    iget-object v9, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v8}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    .line 901
    .end local v0           #helper:Lcom/android/settings_ex/ChooseLockSettingsHelper;
    :cond_5
    const-string v10, "lockenabled"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 902
    invoke-direct {p0, p2}, Lcom/android/settings_ex/LockscreenMenuSettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v8

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    goto :goto_1

    .line 903
    :cond_6
    const-string v10, "visiblepattern"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 904
    invoke-direct {p0, p2}, Lcom/android/settings_ex/LockscreenMenuSettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v8

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    goto :goto_1

    .line 905
    :cond_7
    const-string v10, "with_circle"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 906
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "with_circle"

    iget-object v12, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mWithCircle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_8

    :goto_3
    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 908
    iget-object v8, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockScreenOptions:Landroid/preference/PreferenceScreen;

    iget-object v9, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mWithCircle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_8
    move v9, v8

    .line 906
    goto :goto_3

    .line 909
    :cond_9
    const-string v10, "quick_note"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 910
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "lock_screen_quick_note"

    iget-object v12, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_a

    :goto_4
    invoke-static {v10, v11, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_a
    move v9, v8

    goto :goto_4

    .line 911
    :cond_b
    const-string v10, "visiblesignature"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 912
    invoke-direct {p0, p2}, Lcom/android/settings_ex/LockscreenMenuSettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v8

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/LockPatternUtils;->setVisibleSignatureEnabled(Z)V

    goto/16 :goto_1

    .line 913
    :cond_c
    const-string v10, "unlock_tactile_feedback"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 915
    const-string v10, "power_button_instantly_locks"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 916
    invoke-direct {p0, p2}, Lcom/android/settings_ex/LockscreenMenuSettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v8

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(Z)V

    goto/16 :goto_1

    .line 917
    :cond_d
    const-string v10, "owner_info_settings"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-ne p2, v10, :cond_e

    .line 918
    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->showDialog()V

    goto/16 :goto_1

    .line 919
    :cond_e
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {p2, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 920
    iget-object v8, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-direct {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->isEffect()Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    goto/16 :goto_1

    .line 921
    :cond_f
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 922
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "lockscreen_ripple_effect"

    iget-object v12, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_10

    :goto_5
    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 923
    iget-object v8, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    iget-object v9, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_10
    move v9, v8

    .line 922
    goto :goto_5

    .line 924
    :cond_11
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 925
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "unlock_text"

    iget-object v12, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_12

    :goto_6
    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_12
    move v9, v8

    goto :goto_6

    .line 926
    :cond_13
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 927
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "wake_up_lock_screen"

    iget-object v12, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_14

    :goto_7
    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_14
    move v9, v8

    goto :goto_7

    .line 928
    :cond_15
    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p2, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 929
    const-string v10, "oversea"

    const-string v11, "ril.currentplmn"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 930
    .local v3, isRoamingArea:Z
    if-nez v3, :cond_0

    const-string v10, "SKT"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 931
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v6, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 932
    .local v6, mAlertDialog:Landroid/app/AlertDialog$Builder;
    const v10, 0x7f090d02

    invoke-virtual {v6, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 933
    const v10, 0x7f091277

    invoke-virtual {v6, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 934
    const v10, 0x104000a

    new-instance v11, Lcom/android/settings_ex/LockscreenMenuSettings$2;

    invoke-direct {v11, p0}, Lcom/android/settings_ex/LockscreenMenuSettings$2;-><init>(Lcom/android/settings_ex/LockscreenMenuSettings;)V

    invoke-virtual {v6, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 939
    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 940
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_2
.end method

.method public onResume()V
    .locals 12

    .prologue
    const/4 v11, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 712
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 716
    invoke-direct {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 718
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {v6}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    .line 719
    .local v3, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_0

    .line 720
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakLivelinessEnabled()Z

    move-result v9

    invoke-virtual {v6, v9}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 723
    :cond_0
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_1

    .line 724
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v9

    invoke-virtual {v6, v9}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 726
    :cond_1
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mWithCircle:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_2

    .line 727
    iget-object v9, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mWithCircle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v10, "with_circle"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_17

    move v6, v7

    :goto_0
    invoke-virtual {v9, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 728
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mLockScreenOptions:Landroid/preference/PreferenceScreen;

    iget-object v9, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mWithCircle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v9

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 730
    :cond_2
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_3

    .line 731
    iget-object v9, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v10, "lock_screen_quick_note"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_18

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 733
    :cond_3
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_4

    .line 734
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isVisibleSignatureEnabled()Z

    move-result v9

    invoke-virtual {v6, v9}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 736
    :cond_4
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_5

    .line 737
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v9

    invoke-virtual {v6, v9}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 739
    :cond_5
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_6

    .line 740
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v9

    invoke-virtual {v6, v9}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 741
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings_ex/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 742
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    const v9, 0x7f091108

    invoke-virtual {v6, v9}, Landroid/preference/Preference;->setSummary(I)V

    .line 746
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "lockscreen_wallpaper"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_19

    move v0, v8

    .line 747
    .local v0, isLiveWallpaper:Z
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "lock_motion_tilt_to_unlock"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 748
    .local v1, isMotionLock:I
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "pen_hovering_ink_effect"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 751
    .local v4, mInkEffectColor:I
    invoke-direct {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    if-eqz v6, :cond_1a

    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/app/enterprise/RestrictionPolicy;->isLockScreenViewAllowed(I)Z

    move-result v6

    if-nez v6, :cond_1a

    .line 753
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_7

    .line 754
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v8}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 755
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 771
    :cond_7
    :goto_3
    invoke-direct {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    if-eqz v6, :cond_1d

    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v6

    const/4 v9, 0x2

    invoke-virtual {v6, v9}, Landroid/app/enterprise/RestrictionPolicy;->isLockScreenViewAllowed(I)Z

    move-result v6

    if-nez v6, :cond_1d

    .line 773
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v6, :cond_8

    .line 774
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 775
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 787
    :cond_8
    :goto_4
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    if-eqz v6, :cond_a

    .line 788
    if-nez v0, :cond_9

    if-lez v1, :cond_20

    .line 789
    :cond_9
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 792
    :goto_5
    invoke-direct {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->updateRippleEffectPreferenceSummary()V

    .line 794
    :cond_a
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_c

    .line 795
    if-nez v0, :cond_b

    if-lez v1, :cond_21

    .line 796
    :cond_b
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 799
    :goto_6
    iget-object v9, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v10, "lockscreen_ripple_effect"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_22

    move v6, v7

    :goto_7
    invoke-virtual {v9, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 801
    :cond_c
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_f

    .line 802
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-direct {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->isEffect()Z

    move-result v9

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 803
    if-nez v0, :cond_d

    if-lez v1, :cond_e

    .line 804
    :cond_d
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 806
    :cond_e
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mInkEffectSummary:[I

    aget v10, v10, v4

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 808
    :cond_f
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_10

    .line 809
    iget-object v9, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v10, "unlock_text"

    invoke-static {v6, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_23

    move v6, v7

    :goto_8
    invoke-virtual {v9, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 812
    :cond_10
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_11

    .line 813
    iget-object v9, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v10, "wake_up_lock_screen"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_24

    move v6, v7

    :goto_9
    invoke-virtual {v9, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 814
    iget-object v9, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v10, "easy_mode_switch"

    invoke-static {v6, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_25

    move v6, v7

    :goto_a
    invoke-virtual {v9, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 817
    :cond_11
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_12

    .line 818
    iget-object v9, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v10, "easy_mode_switch"

    invoke-static {v6, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_26

    move v6, v7

    :goto_b
    invoke-virtual {v9, v6}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 821
    :cond_12
    const/4 v5, 0x1

    .line 822
    .local v5, svoice_state:Z
    invoke-direct {p0}, Lcom/android/settings_ex/LockscreenMenuSettings;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    if-eqz v6, :cond_13

    .line 823
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/app/enterprise/RestrictionPolicy;->isSVoiceAllowed(Z)Z

    move-result v6

    if-eqz v6, :cond_27

    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/app/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z

    move-result v6

    if-eqz v6, :cond_27

    move v5, v7

    .line 825
    :cond_13
    :goto_c
    if-nez v5, :cond_15

    .line 826
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_14

    .line 827
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 828
    :cond_14
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_15

    .line 829
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 835
    :cond_15
    iget v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mDirect:I

    const/16 v8, 0xb

    if-ne v6, v8, :cond_28

    .line 836
    const-string v6, "com.android.settings_ex.ChooseLockGeneric$ChooseLockGenericFragment"

    const/16 v8, 0x7b

    const/4 v9, 0x0

    invoke-virtual {p0, p0, v6, v8, v9}, Lcom/android/settings_ex/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 838
    iput v11, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mDirect:I

    .line 848
    :cond_16
    :goto_d
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "safety_zone_enable"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mSafetyZoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v8, v7, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 850
    return-void

    .end local v0           #isLiveWallpaper:Z
    .end local v1           #isMotionLock:I
    .end local v4           #mInkEffectColor:I
    .end local v5           #svoice_state:Z
    :cond_17
    move v6, v8

    .line 727
    goto/16 :goto_0

    :cond_18
    move v6, v8

    .line 731
    goto/16 :goto_1

    :cond_19
    move v0, v7

    .line 746
    goto/16 :goto_2

    .line 759
    .restart local v0       #isLiveWallpaper:Z
    .restart local v1       #isMotionLock:I
    .restart local v4       #mInkEffectColor:I
    :cond_1a
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "kg_multiple_lockscreen"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_1b

    move v2, v7

    .line 761
    .local v2, isMultiple:Z
    :goto_e
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_7

    .line 762
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 763
    iget-object v9, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v10, "easy_mode_switch"

    invoke-static {v6, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_1c

    move v6, v7

    :goto_f
    invoke-virtual {v9, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_3

    .end local v2           #isMultiple:Z
    :cond_1b
    move v2, v8

    .line 759
    goto :goto_e

    .restart local v2       #isMultiple:Z
    :cond_1c
    move v6, v8

    .line 763
    goto :goto_f

    .line 779
    .end local v2           #isMultiple:Z
    :cond_1d
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v6, :cond_8

    .line 780
    iget-object v9, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v10, "lock_screen_shortcut"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_1e

    move v6, v7

    :goto_10
    invoke-virtual {v9, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 781
    iget-object v9, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v10, "easy_mode_switch"

    invoke-static {v6, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_1f

    move v6, v7

    :goto_11
    invoke-virtual {v9, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_4

    :cond_1e
    move v6, v8

    .line 780
    goto :goto_10

    :cond_1f
    move v6, v8

    .line 781
    goto :goto_11

    .line 791
    :cond_20
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_5

    .line 798
    :cond_21
    iget-object v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_6

    :cond_22
    move v6, v8

    .line 799
    goto/16 :goto_7

    :cond_23
    move v6, v8

    .line 809
    goto/16 :goto_8

    :cond_24
    move v6, v8

    .line 813
    goto/16 :goto_9

    :cond_25
    move v6, v8

    .line 814
    goto/16 :goto_a

    :cond_26
    move v6, v8

    .line 818
    goto/16 :goto_b

    .restart local v5       #svoice_state:Z
    :cond_27
    move v5, v8

    .line 823
    goto/16 :goto_c

    .line 839
    :cond_28
    iget v6, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mDirect:I

    if-ne v6, v11, :cond_16

    .line 844
    const-string v6, "LockScreenMenu"

    const-string v8, "LockScreenMenuSettings : onResumeCalled -> finish()"

    invoke-static {v6, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    goto/16 :goto_d
.end method

.method public showDeviceLockDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1194
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1196
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mDeviceLockDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 1197
    iget-object v4, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mDeviceLockDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 1198
    iput-object v5, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mDeviceLockDialog:Landroid/app/AlertDialog;

    .line 1201
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 1202
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f0400de

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1203
    .local v2, layout:Landroid/view/View;
    const v4, 0x7f0b029a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1204
    .local v3, tv:Landroid/widget/TextView;
    const v4, 0x7f09002a

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1206
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1207
    const v4, 0x7f0904de

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1208
    const v4, 0x104000a

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1210
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mDeviceLockDialog:Landroid/app/AlertDialog;

    .line 1211
    iget-object v4, p0, Lcom/android/settings_ex/LockscreenMenuSettings;->mDeviceLockDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 1212
    return-void
.end method

.method showDialog()V
    .locals 3

    .prologue
    .line 949
    const v1, 0x7f090172

    invoke-static {v1}, Lcom/android/settings_ex/OwnerInfoSettings;->newInstance(I)Lcom/android/settings_ex/OwnerInfoSettings;

    move-result-object v0

    .line 950
    .local v0, newFragment:Landroid/app/DialogFragment;
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 951
    return-void
.end method

.method public startBiometricWeakImprove()V
    .locals 3

    .prologue
    .line 1165
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1166
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.facelock"

    const-string v2, "com.android.facelock.AddToSetup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1167
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 1168
    return-void
.end method
