.class public Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;
.super Landroid/preference/PreferenceActivity;
.source "SimeSettingsAdvanced.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final DEBUG:Z = false

.field public static final PREFERENCE_KEY_FUZZY_SETTINGS:Ljava/lang/String; = "setting_fuzzy_pinyin_input_key"

.field private static final TAG:Ljava/lang/String; = "SimeSettingsAdvanced"


# instance fields
.field private final GET_CODE:I

.field fuzzysettingsclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private mAutoCapitalizationPref:Landroid/preference/CheckBoxPreference;

.field private mAutoFullStopPref:Landroid/preference/CheckBoxPreference;

.field private mCharPreviewPref:Landroid/preference/CheckBoxPreference;

.field private mErrorCorrectionPref:Landroid/preference/CheckBoxPreference;

.field private mFuzzyPinyinPref:Landroid/preference/Preference;

.field private mKeySoundPref:Landroid/preference/CheckBoxPreference;

.field private mSpaceInputPref:Landroid/preference/CheckBoxPreference;

.field private mVibratePref:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;->GET_CODE:I

    .line 244
    new-instance v0, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced$1;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced$1;-><init>(Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;->fuzzysettingsclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 74
    return-void
.end method

.method private updateWidgets()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;->mSpaceInputPref:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getSpaceKeyInputAssociate()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 218
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;->mErrorCorrectionPref:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getErrorCorrect()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 220
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;->mAutoCapitalizationPref:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getAutoCapitalization()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 221
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;->mAutoFullStopPref:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getAutoFullStop()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 223
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;->mCharPreviewPref:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getCharPreview()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 224
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;->mKeySoundPref:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getKeySound()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 225
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;->mVibratePref:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getVibrate()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 227
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 81
    .local v0, bar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 82
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 85
    :cond_0
    const v3, 0x7f040004

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;->addPreferencesFromResource(I)V

    .line 87
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 89
    .local v2, prefSet:Landroid/preference/PreferenceScreen;
    const v3, 0x7f0b018b

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;->mSpaceInputPref:Landroid/preference/CheckBoxPreference;

    .line 96
    const v3, 0x7f0b0145

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;->mAutoFullStopPref:Landroid/preference/CheckBoxPreference;

    .line 99
    const v3, 0x7f0b0187

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;->mErrorCorrectionPref:Landroid/preference/CheckBoxPreference;

    .line 102
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;->mErrorCorrectionPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 103
    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NO_AUTOCORRECTION_FEATURE:Z

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SWIFTKEY_ENGINE_FEATURE:Z

    if-eqz v3, :cond_2

    .line 104
    :cond_1
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;->mErrorCorrectionPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 107
    :cond_2
    const-string v3, "setting_fuzzy_pinyin_input_key"

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;->mFuzzyPinyinPref:Landroid/preference/Preference;

    .line 108
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;->mFuzzyPinyinPref:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;->fuzzysettingsclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 110
    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SWIFTKEY_ENGINE_FEATURE:Z

    if-eqz v3, :cond_3

    .line 111
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;->mFuzzyPinyinPref:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 114
    :cond_3
    const v3, 0x7f0b0144

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;->mAutoCapitalizationPref:Landroid/preference/CheckBoxPreference;

    .line 117
    const v3, 0x7f0b0146

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;->mCharPreviewPref:Landroid/preference/CheckBoxPreference;

    .line 121
    const v3, 0x7f0b018e

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;->mVibratePref:Landroid/preference/CheckBoxPreference;

    .line 124
    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NO_VIBRATION_FEATURE:Z

    if-eqz v3, :cond_4

    .line 125
    const v3, 0x7f0b015b

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 126
    .local v1, othersCategory:Landroid/preference/PreferenceCategory;
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;->mVibratePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 130
    .end local v1           #othersCategory:Landroid/preference/PreferenceCategory;
    :cond_4
    const v3, 0x7f0b018a

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;->mKeySoundPref:Landroid/preference/CheckBoxPreference;

    .line 134
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 146
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 147
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 233
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 238
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 235
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;->finish()V

    .line 236
    const/4 v0, 0x1

    goto :goto_0

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 153
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 155
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;->mSpaceInputPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSetting;->SetSpaceKeyInputAssociate(Z)V

    .line 156
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;->mErrorCorrectionPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSetting;->SetErrorCorrect(Z)V

    .line 158
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;->mAutoCapitalizationPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSetting;->setAutoCapitalization(Z)V

    .line 159
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;->mAutoFullStopPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSetting;->SetAutoFullStop(Z)V

    .line 161
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;->mCharPreviewPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSetting;->setCharPreview(Z)V

    .line 162
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;->mKeySoundPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSetting;->setKeySound(Z)V

    .line 163
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;->mVibratePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSetting;->setVibrate(Z)V

    .line 165
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->writeBack()V

    .line 166
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v0, 0x1

    .line 187
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;->mSpaceInputPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_0

    .line 188
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->SetSpaceKeyInputAssociate(Z)V

    .line 210
    :goto_0
    return v0

    .line 197
    .restart local p2
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;->mErrorCorrectionPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_1

    .line 198
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->SetErrorCorrect(Z)V

    goto :goto_0

    .line 201
    .restart local p2
    :cond_1
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;->mKeySoundPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_2

    .line 202
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setKeySound(Z)V

    goto :goto_0

    .line 205
    .restart local p2
    :cond_2
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;->mVibratePref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_3

    .line 206
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setVibrate(Z)V

    goto :goto_0

    .line 210
    .restart local p2
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 170
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 171
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, keys:Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 180
    :goto_0
    return v1

    .line 176
    :cond_0
    const v1, 0x7f0b0144

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;->mAutoCapitalizationPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setAutoCapitalization(Z)V

    .line 180
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 138
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 139
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsAdvanced;->updateWidgets()V

    .line 141
    return-void
.end method
