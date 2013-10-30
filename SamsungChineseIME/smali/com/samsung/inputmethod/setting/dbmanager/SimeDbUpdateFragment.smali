.class public Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdateFragment;
.super Landroid/preference/PreferenceFragment;
.source "SimeDbUpdateFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final ACTION_WLAN_ONLY:Ljava/lang/String; = "com.samsung.inputmethod.setting.dbmanager.WLAN_ONLY_STATUS"

.field private static final TAG:Ljava/lang/String; = "SimeDbUpdateFragment"

.field public static final WLAN_ONLY_STATUS:Ljava/lang/String; = "wlan.only.status"


# instance fields
.field private mDbSettings:Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;

.field private mInputDbs:Landroid/preference/PreferenceCategory;

.field private mWLanOnlyPref:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 110
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v2, 0x7f04000a

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdateFragment;->addPreferencesFromResource(I)V

    .line 45
    new-instance v2, Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdateFragment;->mDbSettings:Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;

    .line 47
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdateFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 48
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    const v2, 0x7f0b0151

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdateFragment;->mInputDbs:Landroid/preference/PreferenceCategory;

    .line 58
    const v2, 0x7f0b014e

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdateFragment;->mWLanOnlyPref:Landroid/preference/CheckBoxPreference;

    .line 61
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdateFragment;->mWLanOnlyPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 63
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 65
    .local v0, context:Landroid/content/Context;
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_KLSDK_SUPPORT:Z

    if-eqz v2, :cond_2

    .line 67
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChinese()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdateFragment;->mInputDbs:Landroid/preference/PreferenceCategory;

    new-instance v3, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;

    new-instance v4, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;-><init>(Landroid/content/Context;I)V

    invoke-direct {v3, v0, v4}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;-><init>(Landroid/content/Context;Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;)V

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 72
    :cond_0
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseTw()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdateFragment;->mInputDbs:Landroid/preference/PreferenceCategory;

    new-instance v3, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;

    new-instance v4, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;

    const/4 v5, 0x1

    invoke-direct {v4, v0, v5}, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;-><init>(Landroid/content/Context;I)V

    invoke-direct {v3, v0, v4}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;-><init>(Landroid/content/Context;Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;)V

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 77
    :cond_1
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseHk()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 78
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdateFragment;->mInputDbs:Landroid/preference/PreferenceCategory;

    new-instance v3, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;

    new-instance v4, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;

    const/4 v5, 0x2

    invoke-direct {v4, v0, v5}, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;-><init>(Landroid/content/Context;I)V

    invoke-direct {v3, v0, v4}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;-><init>(Landroid/content/Context;Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;)V

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 83
    :cond_2
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdateFragment;->mInputDbs:Landroid/preference/PreferenceCategory;

    new-instance v3, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;

    new-instance v4, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;

    const/4 v5, 0x4

    invoke-direct {v4, v0, v5}, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;-><init>(Landroid/content/Context;I)V

    invoke-direct {v3, v0, v4}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;-><init>(Landroid/content/Context;Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;)V

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 96
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 114
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 116
    return-void
.end method

.method public onDestroyView()V
    .locals 4

    .prologue
    .line 120
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    .line 122
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdateFragment;->mInputDbs:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    .line 123
    .local v0, dbCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 124
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdateFragment;->mInputDbs:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 125
    .local v1, dbPrefrence:Landroid/preference/Preference;
    instance-of v3, v1, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;

    if-eqz v3, :cond_0

    .line 126
    check-cast v1, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;

    .end local v1           #dbPrefrence:Landroid/preference/Preference;
    invoke-virtual {v1}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->onDestroyView()V

    .line 123
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 158
    const/4 v1, 0x0

    .line 160
    .local v1, bRet:Z
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, keys:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 171
    const v4, 0x7f0b014e

    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdateFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 173
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 174
    .local v0, bChecked:Z
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdateFragment;->mDbSettings:Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;

    invoke-virtual {v4, v0}, Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;->setAutoUpdateWlanOnly(Z)V

    .line 175
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.samsung.inputmethod.setting.dbmanager.WLAN_ONLY_STATUS"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "wlan.only.status"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 177
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 178
    const/4 v1, 0x1

    .line 181
    .end local v0           #bChecked:Z
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    return v1
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 104
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdateFragment;->mWLanOnlyPref:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdateFragment;->mDbSettings:Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;->getAutoUpdateWlanOnly()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 105
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 133
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 135
    return-void
.end method
