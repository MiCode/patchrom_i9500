.class public Lcom/android/settings_ex/motion2013/AirScrollAdvancedSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "AirScrollAdvancedSettings.java"


# static fields
.field private static final KEY_ALBUM_AND_PHOTO:Ljava/lang/String; = "album_and_photo"

.field private static final KEY_ALL_LIST:Ljava/lang/String; = "all_list"

.field private static final KEY_CONTACT_LIST:Ljava/lang/String; = "contact_list"

.field private static final KEY_EMAIL_BODY:Ljava/lang/String; = "email_body"

.field private static final KEY_EMAIL_LIST:Ljava/lang/String; = "email_list"

.field private static final KEY_WEB_PAGE:Ljava/lang/String; = "web_page"

.field private static final TAG:Ljava/lang/String; = "AirScrollAdvancedSettings"


# instance fields
.field private mAlbumAndPhoto:Landroid/preference/CheckBoxPreference;

.field private mAllList:Landroid/preference/CheckBoxPreference;

.field private mContactList:Landroid/preference/CheckBoxPreference;

.field private mEmailBody:Landroid/preference/CheckBoxPreference;

.field private mEmailList:Landroid/preference/CheckBoxPreference;

.field private mResolver:Landroid/content/ContentResolver;

.field private mWebPage:Landroid/preference/CheckBoxPreference;


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
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v1, 0x7f07000c

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 49
    const-string v1, "all_list"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings_ex/motion2013/AirScrollAdvancedSettings;->mAllList:Landroid/preference/CheckBoxPreference;

    .line 50
    const-string v1, "web_page"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings_ex/motion2013/AirScrollAdvancedSettings;->mWebPage:Landroid/preference/CheckBoxPreference;

    .line 51
    const-string v1, "contact_list"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings_ex/motion2013/AirScrollAdvancedSettings;->mContactList:Landroid/preference/CheckBoxPreference;

    .line 52
    const-string v1, "email_list"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings_ex/motion2013/AirScrollAdvancedSettings;->mEmailList:Landroid/preference/CheckBoxPreference;

    .line 53
    const-string v1, "album_and_photo"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings_ex/motion2013/AirScrollAdvancedSettings;->mAlbumAndPhoto:Landroid/preference/CheckBoxPreference;

    .line 54
    const-string v1, "email_body"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings_ex/motion2013/AirScrollAdvancedSettings;->mEmailBody:Landroid/preference/CheckBoxPreference;

    .line 57
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 58
    .local v0, ps:Landroid/preference/PreferenceScreen;
    iget-object v1, p0, Lcom/android/settings_ex/motion2013/AirScrollAdvancedSettings;->mAllList:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 60
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 78
    iget-object v2, p0, Lcom/android/settings_ex/motion2013/AirScrollAdvancedSettings;->mAllList:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_1

    .line 79
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_motion_scroll_all_list"

    iget-object v4, p0, Lcom/android/settings_ex/motion2013/AirScrollAdvancedSettings;->mAllList:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 98
    :goto_0
    return v1

    .line 81
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/motion2013/AirScrollAdvancedSettings;->mWebPage:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_3

    .line 82
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_motion_scroll_web_page"

    iget-object v4, p0, Lcom/android/settings_ex/motion2013/AirScrollAdvancedSettings;->mWebPage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 84
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/motion2013/AirScrollAdvancedSettings;->mContactList:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_5

    .line 85
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_motion_scroll_contact_list"

    iget-object v4, p0, Lcom/android/settings_ex/motion2013/AirScrollAdvancedSettings;->mContactList:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v1

    :cond_4
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 87
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/motion2013/AirScrollAdvancedSettings;->mEmailList:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_7

    .line 88
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_motion_scroll_email_list"

    iget-object v4, p0, Lcom/android/settings_ex/motion2013/AirScrollAdvancedSettings;->mEmailList:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_6

    move v0, v1

    :cond_6
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 90
    :cond_7
    iget-object v2, p0, Lcom/android/settings_ex/motion2013/AirScrollAdvancedSettings;->mAlbumAndPhoto:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_9

    .line 91
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_motion_scroll_album_and_photo"

    iget-object v4, p0, Lcom/android/settings_ex/motion2013/AirScrollAdvancedSettings;->mAlbumAndPhoto:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_8

    move v0, v1

    :cond_8
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 93
    :cond_9
    iget-object v2, p0, Lcom/android/settings_ex/motion2013/AirScrollAdvancedSettings;->mEmailBody:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_b

    .line 94
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_motion_scroll_email_body"

    iget-object v4, p0, Lcom/android/settings_ex/motion2013/AirScrollAdvancedSettings;->mEmailBody:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_a

    move v0, v1

    :cond_a
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 98
    :cond_b
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 64
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/motion2013/AirScrollAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    .line 68
    iget-object v3, p0, Lcom/android/settings_ex/motion2013/AirScrollAdvancedSettings;->mAllList:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings_ex/motion2013/AirScrollAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "air_motion_scroll_all_list"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 69
    iget-object v3, p0, Lcom/android/settings_ex/motion2013/AirScrollAdvancedSettings;->mWebPage:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings_ex/motion2013/AirScrollAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "air_motion_scroll_web_page"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 70
    iget-object v3, p0, Lcom/android/settings_ex/motion2013/AirScrollAdvancedSettings;->mContactList:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings_ex/motion2013/AirScrollAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "air_motion_scroll_contact_list"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 71
    iget-object v3, p0, Lcom/android/settings_ex/motion2013/AirScrollAdvancedSettings;->mEmailList:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings_ex/motion2013/AirScrollAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "air_motion_scroll_email_list"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 72
    iget-object v3, p0, Lcom/android/settings_ex/motion2013/AirScrollAdvancedSettings;->mAlbumAndPhoto:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings_ex/motion2013/AirScrollAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "air_motion_scroll_album_and_photo"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 73
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/AirScrollAdvancedSettings;->mEmailBody:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings_ex/motion2013/AirScrollAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "air_motion_scroll_email_body"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_5

    :goto_5
    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 74
    return-void

    :cond_0
    move v0, v2

    .line 68
    goto :goto_0

    :cond_1
    move v0, v2

    .line 69
    goto :goto_1

    :cond_2
    move v0, v2

    .line 70
    goto :goto_2

    :cond_3
    move v0, v2

    .line 71
    goto :goto_3

    :cond_4
    move v0, v2

    .line 72
    goto :goto_4

    :cond_5
    move v1, v2

    .line 73
    goto :goto_5
.end method
