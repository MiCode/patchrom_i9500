.class public Lcom/android/settings_ex/SEAndroidSettings;
.super Landroid/preference/PreferenceFragment;
.source "SEAndroidSettings.java"


# static fields
.field private static final KEY_MAC_ENFORCING:Ljava/lang/String; = "mac_enforcing"

.field private static final KEY_SELINUX_ENFORCING:Ljava/lang/String; = "selinux_enforcing"

.field static final LOG_TAG:Ljava/lang/String; = "SEAndroidSettings"

.field private static final MAC_SYSTEM_PROPERTY:Ljava/lang/String; = "persist.mac_enforcing_mode"


# instance fields
.field private mSELinuxToggleEnforce:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private getMacEnforcingMode()Z
    .locals 2

    .prologue
    .line 96
    const-string v0, "persist.mac_enforcing_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private saveEnforcing()V
    .locals 3

    .prologue
    .line 100
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "1"

    .line 101
    .local v0, enforcing:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "selinux_enforcing"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 104
    return-void

    .line 100
    .end local v0           #enforcing:Ljava/lang/String;
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const v0, 0x7f070067

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 87
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "selinux_enforcing"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/SEAndroidSettings;->mSELinuxToggleEnforce:Landroid/preference/CheckBoxPreference;

    .line 90
    iget-object v0, p0, Lcom/android/settings_ex/SEAndroidSettings;->mSELinuxToggleEnforce:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 91
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 118
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, key:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/SEAndroidSettings;->mSELinuxToggleEnforce:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_0

    .line 121
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v1}, Landroid/os/SELinux;->setSELinuxEnforce(Z)Z

    .line 122
    iget-object v1, p0, Lcom/android/settings_ex/SEAndroidSettings;->mSELinuxToggleEnforce:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 123
    invoke-direct {p0}, Lcom/android/settings_ex/SEAndroidSettings;->saveEnforcing()V

    .line 125
    :cond_0
    return v2

    .line 121
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 108
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 110
    iget-object v0, p0, Lcom/android/settings_ex/SEAndroidSettings;->mSELinuxToggleEnforce:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/settings_ex/SEAndroidSettings;->mSELinuxToggleEnforce:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 113
    :cond_0
    return-void
.end method
