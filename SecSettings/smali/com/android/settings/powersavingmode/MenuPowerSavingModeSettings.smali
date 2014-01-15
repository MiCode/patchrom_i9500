.class public Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "MenuPowerSavingModeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final KEY_BACKGROUND_POWER_SAVING:Ljava/lang/String; = "power_saving_background_color"

.field public static final KEY_CPU_POWER_SAVING:Ljava/lang/String; = "power_saving_cpu"

.field public static final KEY_DISPLAY_POWER_SAVING:Ljava/lang/String; = "power_saving_display"

.field public static final KEY_HAPTIC_POWER_SAVING:Ljava/lang/String; = "power_saving_haptic"

.field public static final KEY_POWER_SAVING_PREFERENCE:Ljava/lang/String; = "power_saving_mode_setting"

.field private static final MENU_HELP:I = 0x1

.field public static final PREF_SIOP_CLOCK:Ljava/lang/String; = "pref_siop_clock"

.field public static final PREF_SIOP_RENDERING:Ljava/lang/String; = "pref_siop_rendering"

.field private static final TAG:Ljava/lang/String; = "MenuPowerSavingModeSettings"


# instance fields
.field private iBackgroundColor:I

.field private iCpuPowerSavinge:I

.field private iDisplayPowerSaving:I

.field private iOffHapticFeedback:I

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Lmiui/widget/SlidingButton;

.field private mBackgroundColor:Landroid/preference/CheckBoxPreference;

.field private mCpuPowerSavinge:Landroid/preference/CheckBoxPreference;

.field private mDisplayPowerSaving:Landroid/preference/CheckBoxPreference;

.field private mHelpStep1Dialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

.field private mHelpStep2Dialog:Lcom/android/settings_ex/helpdialog/TwHelpDialog;

.field private mIsFromHelp:Z

.field private mOffHapticFeedback:Landroid/preference/CheckBoxPreference;

.field private mPowerSavingEnabler:Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;

.field private mPowerSavingObserver:Landroid/database/ContentObserver;

.field private mSupportBrowser:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 91
    iput-object v0, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    .line 92
    iput-object v0, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings_ex/helpdialog/TwHelpDialog;

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mIsFromHelp:Z

    .line 95
    new-instance v0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings$1;-><init>(Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mPowerSavingObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->updateUIPowerSaving()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;)Lcom/android/settings_ex/helpdialog/TwHelpDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings_ex/helpdialog/TwHelpDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;Lcom/android/settings_ex/helpdialog/TwHelpDialog;)Lcom/android/settings_ex/helpdialog/TwHelpDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings_ex/helpdialog/TwHelpDialog;

    return-object p1
.end method

.method private showHelpStep1Dialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 346
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings_ex/helpdialog/TwHelpDialog;

    if-eqz v1, :cond_0

    .line 347
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings_ex/helpdialog/TwHelpDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 348
    iput-object v3, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings_ex/helpdialog/TwHelpDialog;

    .line 351
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    if-nez v1, :cond_1

    .line 352
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040085

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 354
    .local v0, view:Landroid/view/View;
    new-instance v1, Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    .line 355
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 356
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    sget-object v2, Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/helpdialog/TwHelpDialog;->setTouchTransparencyMode(Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;)V

    .line 357
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/helpdialog/TwHelpDialog;->setShowWrongInputToast(Z)V

    .line 358
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 359
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 362
    .end local v0           #view:Landroid/view/View;
    :cond_1
    return-void
.end method

.method private showHelpStep2Dialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 365
    iget-object v2, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    if-eqz v2, :cond_0

    .line 366
    iget-object v2, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 367
    iput-object v4, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    .line 370
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings_ex/helpdialog/TwHelpDialog;

    if-nez v2, :cond_1

    .line 371
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040086

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 372
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0b00de

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 373
    .local v0, closeBtn:Landroid/widget/ImageView;
    new-instance v2, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings$2;-><init>(Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    new-instance v2, Lcom/android/settings_ex/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings_ex/helpdialog/TwHelpDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings_ex/helpdialog/TwHelpDialog;

    .line 383
    iget-object v2, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings_ex/helpdialog/TwHelpDialog;

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 384
    iget-object v2, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings_ex/helpdialog/TwHelpDialog;

    sget-object v3, Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/helpdialog/TwHelpDialog;->setTouchTransparencyMode(Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;)V

    .line 385
    iget-object v2, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings_ex/helpdialog/TwHelpDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/helpdialog/TwHelpDialog;->setShowWrongInputToast(Z)V

    .line 386
    iget-object v2, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings_ex/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 387
    iget-object v2, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings_ex/helpdialog/TwHelpDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 389
    .end local v0           #closeBtn:Landroid/widget/ImageView;
    .end local v1           #view:Landroid/view/View;
    :cond_1
    return-void
.end method

.method private updateUIPowerSaving()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 242
    const/4 v0, 0x0

    .line 243
    .local v0, powersavingState:I
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "psm_switch"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 246
    :cond_0
    const-string v1, "MenuPowerSavingModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "powersavingState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    if-nez v0, :cond_2

    .line 248
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mCpuPowerSavinge:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 249
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mDisplayPowerSaving:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 250
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mBackgroundColor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 251
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mOffHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 253
    iget-boolean v1, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mIsFromHelp:Z

    if-eqz v1, :cond_1

    .line 254
    invoke-direct {p0}, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->showHelpStep1Dialog()V

    .line 267
    :cond_1
    :goto_0
    return-void

    .line 257
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Lmiui/widget/SlidingButton;

    invoke-virtual {v1, v5}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 258
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mCpuPowerSavinge:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 259
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mDisplayPowerSaving:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 260
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mBackgroundColor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 261
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mOffHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 263
    iget-boolean v1, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mIsFromHelp:Z

    if-eqz v1, :cond_1

    .line 264
    invoke-direct {p0}, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->showHelpStep2Dialog()V

    goto :goto_0
.end method


# virtual methods
.method public isAllOptionDisabled()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 295
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "psm_switch"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 296
    .local v4, powersavingState:I
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "psm_cpu_clock"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 297
    .local v1, cpu:I
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "psm_display"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 298
    .local v2, display:I
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "psm_background_colour"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 299
    .local v0, back:I
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "psm_haptic_feedback"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 302
    .local v3, haptic:I
    const-string v6, "power_saving_cpu"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-nez v6, :cond_0

    .line 303
    const/4 v1, 0x0

    .line 304
    :cond_0
    const-string v6, "power_saving_display"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-nez v6, :cond_1

    .line 305
    const/4 v2, 0x0

    .line 306
    :cond_1
    const-string v6, "power_saving_background_color"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-nez v6, :cond_2

    .line 307
    const/4 v0, 0x0

    .line 308
    :cond_2
    const-string v6, "power_saving_haptic"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-nez v6, :cond_3

    .line 309
    const/4 v3, 0x0

    .line 311
    :cond_3
    const-string v6, "MenuPowerSavingModeSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isAllOptionDisabled(), powersavingState : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", cpu : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", display : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", back : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", haptic : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    if-nez v1, :cond_4

    if-nez v2, :cond_4

    if-nez v3, :cond_4

    if-nez v0, :cond_4

    const/4 v5, 0x1

    .line 316
    .local v5, retVal:Z
    :cond_4
    return v5
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 236
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 237
    const-string v0, "MenuPowerSavingModeSettings"

    const-string v1, "onConfigurationChanged() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/16 v9, 0x10

    const/4 v10, -0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 106
    const-string v4, "MenuPowerSavingModeSettings"

    const-string v7, "onCreate() "

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 111
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 112
    const-string v4, "fromHelp"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mIsFromHelp:Z

    .line 114
    :cond_0
    const-string v4, "MenuPowerSavingModeSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isFromHelp : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mIsFromHelp:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mIsFromHelp:Z

    if-nez v4, :cond_1

    .line 118
    invoke-virtual {p0, v5}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 122
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v7, "com.android.browser"

    invoke-static {v4, v7}, Lcom/android/settings_ex/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mSupportBrowser:Z

    .line 124
    const v4, 0x7f070048

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 125
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 126
    .local v0, activity:Landroid/app/Activity;
    new-instance v4, Lmiui/widget/SlidingButton;

    invoke-direct {v4, v0}, Lmiui/widget/SlidingButton;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Lmiui/widget/SlidingButton;

    .line 128
    instance-of v4, v0, Landroid/preference/PreferenceActivity;

    if-eqz v4, :cond_2

    move-object v3, v0

    .line 129
    check-cast v3, Landroid/preference/PreferenceActivity;

    .line 131
    .local v3, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0f0008

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 133
    .local v2, padding:I
    iget-object v4, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Lmiui/widget/SlidingButton;

    invoke-virtual {v4, v6, v6, v2, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 134
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 136
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Lmiui/widget/SlidingButton;

    new-instance v8, Landroid/app/ActionBar$LayoutParams;

    const/16 v9, 0x15

    invoke-direct {v8, v10, v10, v9}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v7, v8}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 140
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mActionBarLayout:Landroid/view/View;

    .line 141
    iget-object v4, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Lmiui/widget/SlidingButton;

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 144
    .end local v2           #padding:I
    .end local v3           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_2
    new-instance v4, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;

    iget-object v7, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Lmiui/widget/SlidingButton;

    invoke-direct {v4, v0, v7, v6}, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;-><init>(Landroid/content/Context;Lmiui/widget/SlidingButton;Z)V

    iput-object v4, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mPowerSavingEnabler:Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;

    .line 146
    const-string v4, "power_saving_cpu"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mCpuPowerSavinge:Landroid/preference/CheckBoxPreference;

    .line 147
    iget-object v7, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mCpuPowerSavinge:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "psm_cpu_clock"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 148
    const-string v4, "power_saving_display"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mDisplayPowerSaving:Landroid/preference/CheckBoxPreference;

    .line 149
    iget-object v7, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mDisplayPowerSaving:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "psm_display"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_5

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 150
    const-string v4, "power_saving_background_color"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mBackgroundColor:Landroid/preference/CheckBoxPreference;

    .line 151
    iget-object v7, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mBackgroundColor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "psm_background_colour"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_6

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 152
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 153
    iget-object v4, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mBackgroundColor:Landroid/preference/CheckBoxPreference;

    const v7, 0x7f090b09

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setSummary(I)V

    .line 157
    :cond_3
    iget-boolean v4, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mSupportBrowser:Z

    if-eqz v4, :cond_7

    .line 165
    :goto_3
    const-string v4, "power_saving_haptic"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mOffHapticFeedback:Landroid/preference/CheckBoxPreference;

    .line 166
    iget-object v4, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mOffHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "psm_haptic_feedback"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_8

    :goto_4
    invoke-virtual {v4, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 167
    const-string v4, "vibrator"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    invoke-virtual {v4}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 172
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "psm_cpu_clock"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->iCpuPowerSavinge:I

    .line 173
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "psm_display"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->iDisplayPowerSaving:I

    .line 174
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "psm_background_colour"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->iBackgroundColor:I

    .line 175
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "psm_haptic_feedback"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->iOffHapticFeedback:I

    .line 176
    return-void

    :cond_4
    move v4, v6

    .line 147
    goto/16 :goto_0

    :cond_5
    move v4, v6

    .line 149
    goto/16 :goto_1

    :cond_6
    move v4, v6

    .line 151
    goto :goto_2

    .line 161
    :cond_7
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mBackgroundColor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 162
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "psm_background_colour"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_8
    move v5, v6

    .line 166
    goto :goto_4

    .line 168
    :cond_9
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mOffHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 169
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "psm_haptic_feedback"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_5
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 327
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 329
    const/4 v0, 0x1

    const v1, 0x7f090f77

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02017d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 331
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 230
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 231
    const-string v0, "MenuPowerSavingModeSettings"

    const-string v1, "onDestroy() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 335
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 342
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 337
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 338
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "helphub:section"

    const-string v2, "battery_conservation"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 340
    const/4 v1, 0x1

    goto :goto_0

    .line 335
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 195
    const-string v1, "MenuPowerSavingModeSettings"

    const-string v2, "onPause() "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 198
    iget v1, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->iCpuPowerSavinge:I

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "psm_cpu_clock"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->iDisplayPowerSaving:I

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "psm_display"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->iBackgroundColor:I

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "psm_background_colour"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->iOffHapticFeedback:I

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "psm_haptic_feedback"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 202
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.POWERSAVING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "changed"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 207
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->isAllOptionDisabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 208
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "psm_switch"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 209
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Lmiui/widget/SlidingButton;

    invoke-virtual {v1, v4}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 211
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090f9a

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 216
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mPowerSavingEnabler:Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;

    invoke-virtual {v1}, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->pause()V

    .line 217
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mPowerSavingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 218
    return-void

    .line 214
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Lmiui/widget/SlidingButton;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 322
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 270
    iget-object v0, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mCpuPowerSavinge:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "psm_cpu_clock"

    iget-object v0, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mCpuPowerSavinge:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 284
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->isAllOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 285
    iget-object v0, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, v2}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 290
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    :cond_1
    move v0, v2

    .line 271
    goto :goto_0

    .line 273
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mDisplayPowerSaving:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 274
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "psm_display"

    iget-object v0, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mDisplayPowerSaving:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_3

    .line 276
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mBackgroundColor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 277
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "psm_background_colour"

    iget-object v0, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mBackgroundColor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_4
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_4

    .line 279
    :cond_6
    iget-object v0, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mOffHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "psm_haptic_feedback"

    iget-object v0, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mOffHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_5
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_5

    .line 287
    :cond_8
    iget-object v0, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 179
    const-string v0, "MenuPowerSavingModeSettings"

    const-string v1, "onResume() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 182
    iget-object v0, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 185
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->updateUIPowerSaving()V

    .line 186
    iget-object v0, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mPowerSavingEnabler:Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->resume()V

    .line 187
    iget-object v0, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 188
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "psm_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mPowerSavingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 191
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 222
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 223
    const-string v0, "MenuPowerSavingModeSettings"

    const-string v1, "onStop() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/settings_ex/powersavingmode/MenuPowerSavingModeSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 226
    :cond_0
    return-void
.end method
