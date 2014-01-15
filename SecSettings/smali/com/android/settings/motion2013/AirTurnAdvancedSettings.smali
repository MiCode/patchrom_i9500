.class public Lcom/android/settings_ex/motion2013/AirTurnAdvancedSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "AirTurnAdvancedSettings.java"


# static fields
.field private static final KEY_BGM_ON_LOCK_SCREEN:Ljava/lang/String; = "bgm_on_lock_screen"

.field private static final KEY_INTERNET_WINDOW:Ljava/lang/String; = "internet_window"

.field private static final KEY_NOTE_PAGE_VIEW:Ljava/lang/String; = "note_page_view"

.field private static final KEY_NOW_PLAYING_ON_MUSIC:Ljava/lang/String; = "now_playing_on_music"

.field private static final KEY_SINGLE_PHOTO_VIEW:Ljava/lang/String; = "single_photo_view"

.field private static final TAG:Ljava/lang/String; = "AirTurnAdvancedSettings"


# instance fields
.field private mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

.field private mInternetWindow:Landroid/preference/CheckBoxPreference;

.field private mNotePageView:Landroid/preference/CheckBoxPreference;

.field private mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSinglePhotoView:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f07000d

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 45
    const-string v0, "single_photo_view"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/motion2013/AirTurnAdvancedSettings;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    .line 46
    const-string v0, "internet_window"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/motion2013/AirTurnAdvancedSettings;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    .line 47
    const-string v0, "now_playing_on_music"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/motion2013/AirTurnAdvancedSettings;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    .line 48
    const-string v0, "bgm_on_lock_screen"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/motion2013/AirTurnAdvancedSettings;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    .line 49
    const-string v0, "note_page_view"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/motion2013/AirTurnAdvancedSettings;->mNotePageView:Landroid/preference/CheckBoxPreference;

    .line 50
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 67
    iget-object v2, p0, Lcom/android/settings_ex/motion2013/AirTurnAdvancedSettings;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_motion_turn_single_photo_view"

    iget-object v4, p0, Lcom/android/settings_ex/motion2013/AirTurnAdvancedSettings;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 84
    :goto_0
    return v1

    .line 70
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/motion2013/AirTurnAdvancedSettings;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_3

    .line 71
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_motion_turn_internet_window"

    iget-object v4, p0, Lcom/android/settings_ex/motion2013/AirTurnAdvancedSettings;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 73
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/motion2013/AirTurnAdvancedSettings;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_5

    .line 74
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_motion_turn_now_playing_on_music"

    iget-object v4, p0, Lcom/android/settings_ex/motion2013/AirTurnAdvancedSettings;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v1

    :cond_4
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 76
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/motion2013/AirTurnAdvancedSettings;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_7

    .line 77
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_motion_turn_bgm_on_lock_screen"

    iget-object v4, p0, Lcom/android/settings_ex/motion2013/AirTurnAdvancedSettings;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_6

    move v0, v1

    :cond_6
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 79
    :cond_7
    iget-object v2, p0, Lcom/android/settings_ex/motion2013/AirTurnAdvancedSettings;->mNotePageView:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_9

    .line 80
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_motion_turn_note_page_view"

    iget-object v4, p0, Lcom/android/settings_ex/motion2013/AirTurnAdvancedSettings;->mNotePageView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_8

    move v0, v1

    :cond_8
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 84
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 54
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/motion2013/AirTurnAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    .line 58
    iget-object v3, p0, Lcom/android/settings_ex/motion2013/AirTurnAdvancedSettings;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings_ex/motion2013/AirTurnAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "air_motion_turn_single_photo_view"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 59
    iget-object v3, p0, Lcom/android/settings_ex/motion2013/AirTurnAdvancedSettings;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings_ex/motion2013/AirTurnAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "air_motion_turn_internet_window"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 60
    iget-object v3, p0, Lcom/android/settings_ex/motion2013/AirTurnAdvancedSettings;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings_ex/motion2013/AirTurnAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "air_motion_turn_now_playing_on_music"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 61
    iget-object v3, p0, Lcom/android/settings_ex/motion2013/AirTurnAdvancedSettings;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings_ex/motion2013/AirTurnAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "air_motion_turn_bgm_on_lock_screen"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 62
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/AirTurnAdvancedSettings;->mNotePageView:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings_ex/motion2013/AirTurnAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "air_motion_turn_note_page_view"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    :goto_4
    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 63
    return-void

    :cond_0
    move v0, v2

    .line 58
    goto :goto_0

    :cond_1
    move v0, v2

    .line 59
    goto :goto_1

    :cond_2
    move v0, v2

    .line 60
    goto :goto_2

    :cond_3
    move v0, v2

    .line 61
    goto :goto_3

    :cond_4
    move v1, v2

    .line 62
    goto :goto_4
.end method
