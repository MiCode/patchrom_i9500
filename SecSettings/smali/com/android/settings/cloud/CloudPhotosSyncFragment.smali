.class public Lcom/android/settings_ex/cloud/CloudPhotosSyncFragment;
.super Lcom/android/settings_ex/cloud/SyncFragment;
.source "CloudPhotosSyncFragment.java"


# static fields
.field private static final PREF_KEY_WIFI_ONLY:Ljava/lang/String; = "pref_wifi_only"

.field private static isPictureSyncAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings_ex/cloud/CloudPhotosSyncFragment;->isPictureSyncAvailable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/settings_ex/cloud/SyncFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected broadcastStatus(I)V
    .locals 5
    .parameter "type"

    .prologue
    .line 83
    if-nez p1, :cond_1

    .line 84
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.cloudagent.settings.ACTION_REQUEST_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .local v1, i:Landroid/content/Intent;
    const-string v2, "photoSync"

    iget-object v3, p0, Lcom/android/settings_ex/cloud/SyncFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 88
    const-string v2, "CloudSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CloudPhotosSyncFragment changed -->  sending intent with Cloud Status "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/cloud/SyncFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .end local v1           #i:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 92
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 93
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "wifiOnlyType"

    const-string v3, "photo"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v2, "wifiOnlyValue"

    iget-object v3, p0, Lcom/android/settings_ex/cloud/SyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 96
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.cloudagent.settings.ACTION_REQUEST_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    .restart local v1       #i:Landroid/content/Intent;
    const-string v2, "wifiOnly"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 98
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 99
    const-string v2, "CloudSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CloudPhotosSyncFragment Wifi Only option changed -->  sending intent with Cloud Status "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/cloud/SyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getPreferencesReference()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings_ex/cloud/SyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_0

    .line 43
    const-string v0, "pref_wifi_only"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/cloud/SyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/cloud/SyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 49
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/android/settings_ex/cloud/SyncFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 34
    const v0, 0x7f07001d

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 37
    invoke-virtual {p0}, Lcom/android/settings_ex/cloud/CloudPhotosSyncFragment;->getPreferencesReference()V

    .line 38
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0}, Lcom/android/settings_ex/cloud/SyncFragment;->onResume()V

    .line 55
    iget-object v0, p0, Lcom/android/settings_ex/cloud/SyncFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-static {}, Lcom/android/settings_ex/cloud/CloudSettings;->getInstance()Lcom/android/settings_ex/cloud/CloudSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/cloud/CloudSettings;->isPhotoSync()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 59
    iget-object v0, p0, Lcom/android/settings_ex/cloud/SyncFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings_ex/cloud/CloudPhotosSyncFragment;->updatePreferences()V

    .line 62
    return-void
.end method

.method protected toggleCheckbox(Z)V
    .locals 2
    .parameter "isChecked"

    .prologue
    .line 119
    invoke-static {}, Lcom/android/settings_ex/cloud/CloudSettings;->getInstance()Lcom/android/settings_ex/cloud/CloudSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/settings_ex/cloud/CloudSettings;->setWifiOnly(IZ)V

    .line 120
    return-void
.end method

.method protected togglePreferences(Z)V
    .locals 1
    .parameter "isChecked"

    .prologue
    .line 110
    invoke-static {}, Lcom/android/settings_ex/cloud/CloudSettings;->getInstance()Lcom/android/settings_ex/cloud/CloudSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/cloud/CloudSettings;->setPhotoSync(Z)V

    .line 111
    invoke-virtual {p0}, Lcom/android/settings_ex/cloud/CloudPhotosSyncFragment;->updatePreferences()V

    .line 112
    return-void
.end method

.method protected updatePreferences()V
    .locals 4

    .prologue
    .line 65
    invoke-static {}, Lcom/android/settings_ex/cloud/CloudSettings;->getInstance()Lcom/android/settings_ex/cloud/CloudSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/cloud/CloudSettings;->isPhotoSync()Z

    move-result v1

    sput-boolean v1, Lcom/android/settings_ex/cloud/CloudPhotosSyncFragment;->isPictureSyncAvailable:Z

    .line 67
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 69
    .local v0, mPreferenceScreen:Landroid/preference/PreferenceScreen;
    sget-boolean v1, Lcom/android/settings_ex/cloud/CloudPhotosSyncFragment;->isPictureSyncAvailable:Z

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/android/settings_ex/cloud/SyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 71
    iget-object v1, p0, Lcom/android/settings_ex/cloud/SyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/android/settings_ex/cloud/CloudSettings;->getInstance()Lcom/android/settings_ex/cloud/CloudSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/cloud/CloudSettings;->isWifiOnly(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/cloud/SyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method
