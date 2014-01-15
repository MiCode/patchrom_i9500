.class public Lcom/android/settings_ex/cloud/CloudVideosSyncFragment;
.super Lcom/android/settings_ex/cloud/SyncFragment;
.source "CloudVideosSyncFragment.java"


# static fields
.field private static final PREF_KEY_WIFI_ONLY:Ljava/lang/String; = "pref_wifi_only"

.field private static isVideoSyncAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings_ex/cloud/CloudVideosSyncFragment;->isVideoSyncAvailable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/settings_ex/cloud/SyncFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected broadcastStatus(I)V
    .locals 5
    .parameter "type"

    .prologue
    .line 80
    if-nez p1, :cond_1

    .line 81
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.cloudagent.settings.ACTION_REQUEST_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    .local v1, i:Landroid/content/Intent;
    const-string v2, "videoSync"

    iget-object v3, p0, Lcom/android/settings_ex/cloud/SyncFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 85
    const-string v2, "CloudSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CloudVideosSyncFragment changed -->  sending intent with Cloud Status "

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

    .line 100
    .end local v1           #i:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 89
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 90
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "wifiOnlyType"

    const-string v3, "video"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v2, "wifiOnlyValue"

    iget-object v3, p0, Lcom/android/settings_ex/cloud/SyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 93
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.cloudagent.settings.ACTION_REQUEST_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .restart local v1       #i:Landroid/content/Intent;
    const-string v2, "wifiOnly"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 95
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 96
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
    .line 39
    iget-object v0, p0, Lcom/android/settings_ex/cloud/SyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_0

    .line 40
    const-string v0, "pref_wifi_only"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/cloud/SyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/cloud/SyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 46
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/android/settings_ex/cloud/SyncFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 31
    const v0, 0x7f07001e

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 34
    invoke-virtual {p0}, Lcom/android/settings_ex/cloud/CloudVideosSyncFragment;->getPreferencesReference()V

    .line 35
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/settings_ex/cloud/SyncFragment;->onResume()V

    .line 52
    iget-object v0, p0, Lcom/android/settings_ex/cloud/SyncFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-static {}, Lcom/android/settings_ex/cloud/CloudSettings;->getInstance()Lcom/android/settings_ex/cloud/CloudSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/cloud/CloudSettings;->isVideoSync()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 56
    iget-object v0, p0, Lcom/android/settings_ex/cloud/SyncFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings_ex/cloud/CloudVideosSyncFragment;->updatePreferences()V

    .line 60
    return-void
.end method

.method protected toggleCheckbox(Z)V
    .locals 2
    .parameter "isChecked"

    .prologue
    .line 115
    invoke-static {}, Lcom/android/settings_ex/cloud/CloudSettings;->getInstance()Lcom/android/settings_ex/cloud/CloudSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/settings_ex/cloud/CloudSettings;->setWifiOnly(IZ)V

    .line 116
    return-void
.end method

.method protected togglePreferences(Z)V
    .locals 1
    .parameter "isChecked"

    .prologue
    .line 106
    invoke-static {}, Lcom/android/settings_ex/cloud/CloudSettings;->getInstance()Lcom/android/settings_ex/cloud/CloudSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/cloud/CloudSettings;->setVideoSync(Z)V

    .line 107
    invoke-virtual {p0}, Lcom/android/settings_ex/cloud/CloudVideosSyncFragment;->updatePreferences()V

    .line 108
    return-void
.end method

.method protected updatePreferences()V
    .locals 4

    .prologue
    .line 63
    invoke-static {}, Lcom/android/settings_ex/cloud/CloudSettings;->getInstance()Lcom/android/settings_ex/cloud/CloudSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/cloud/CloudSettings;->isVideoSync()Z

    move-result v1

    sput-boolean v1, Lcom/android/settings_ex/cloud/CloudVideosSyncFragment;->isVideoSyncAvailable:Z

    .line 65
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 67
    .local v0, mPreferenceScreen:Landroid/preference/PreferenceScreen;
    sget-boolean v1, Lcom/android/settings_ex/cloud/CloudVideosSyncFragment;->isVideoSyncAvailable:Z

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/android/settings_ex/cloud/SyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 69
    iget-object v1, p0, Lcom/android/settings_ex/cloud/SyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/android/settings_ex/cloud/CloudSettings;->getInstance()Lcom/android/settings_ex/cloud/CloudSettings;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/cloud/CloudSettings;->isWifiOnly(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/cloud/SyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method
