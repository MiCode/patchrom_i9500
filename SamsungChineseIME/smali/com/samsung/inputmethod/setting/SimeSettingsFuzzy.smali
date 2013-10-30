.class public Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;
.super Landroid/preference/PreferenceActivity;
.source "SimeSettingsFuzzy.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimeSettingsFuzzy"


# instance fields
.field private fuzzyStateFlag:[Z

.field private mFuzzyPinyinANGAN:Landroid/preference/CheckBoxPreference;

.field private mFuzzyPinyinCHC:Landroid/preference/CheckBoxPreference;

.field private mFuzzyPinyinENGEN:Landroid/preference/CheckBoxPreference;

.field private mFuzzyPinyinHF:Landroid/preference/CheckBoxPreference;

.field private mFuzzyPinyinINGIN:Landroid/preference/CheckBoxPreference;

.field private mFuzzyPinyinNL:Landroid/preference/CheckBoxPreference;

.field private mFuzzyPinyinRL:Landroid/preference/CheckBoxPreference;

.field private mFuzzyPinyinSHS:Landroid/preference/CheckBoxPreference;

.field private mFuzzyPinyinZHZ:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 63
    const/16 v0, 0x9

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->fuzzyStateFlag:[Z

    .line 64
    return-void
.end method

.method private updateSettingsFuzzyWidget()V
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->mFuzzyPinyinZHZ:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->fuzzyStateFlag:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 172
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->mFuzzyPinyinCHC:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->fuzzyStateFlag:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 173
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->mFuzzyPinyinSHS:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->fuzzyStateFlag:[Z

    const/4 v2, 0x2

    aget-boolean v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 174
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->mFuzzyPinyinNL:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->fuzzyStateFlag:[Z

    const/4 v2, 0x3

    aget-boolean v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 175
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->mFuzzyPinyinRL:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->fuzzyStateFlag:[Z

    const/4 v2, 0x4

    aget-boolean v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 176
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->mFuzzyPinyinHF:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->fuzzyStateFlag:[Z

    const/4 v2, 0x5

    aget-boolean v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 177
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->mFuzzyPinyinANGAN:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->fuzzyStateFlag:[Z

    const/4 v2, 0x6

    aget-boolean v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 178
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->mFuzzyPinyinENGEN:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->fuzzyStateFlag:[Z

    const/4 v2, 0x7

    aget-boolean v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 179
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->mFuzzyPinyinINGIN:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->fuzzyStateFlag:[Z

    const/16 v2, 0x8

    aget-boolean v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 182
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v2, 0x7f040005

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->addPreferencesFromResource(I)V

    .line 71
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 72
    .local v0, bar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 73
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 78
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    const v2, 0x7f0b0169

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->mFuzzyPinyinZHZ:Landroid/preference/CheckBoxPreference;

    .line 80
    const v2, 0x7f0b015d

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->mFuzzyPinyinCHC:Landroid/preference/CheckBoxPreference;

    .line 82
    const v2, 0x7f0b0167

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->mFuzzyPinyinSHS:Landroid/preference/CheckBoxPreference;

    .line 84
    const v2, 0x7f0b0165

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->mFuzzyPinyinNL:Landroid/preference/CheckBoxPreference;

    .line 86
    const v2, 0x7f0b0166

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->mFuzzyPinyinRL:Landroid/preference/CheckBoxPreference;

    .line 88
    const v2, 0x7f0b015f

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->mFuzzyPinyinHF:Landroid/preference/CheckBoxPreference;

    .line 90
    const v2, 0x7f0b015c

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->mFuzzyPinyinANGAN:Landroid/preference/CheckBoxPreference;

    .line 92
    const v2, 0x7f0b015e

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->mFuzzyPinyinENGEN:Landroid/preference/CheckBoxPreference;

    .line 94
    const v2, 0x7f0b0162

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->mFuzzyPinyinINGIN:Landroid/preference/CheckBoxPreference;

    .line 97
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->fuzzyStateFlag:[Z

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->getFuzzyPinyinState([Z)V

    .line 98
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->updateSettingsFuzzyWidget()V

    .line 101
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 113
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 114
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 187
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 192
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 189
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->finish()V

    .line 190
    const/4 v0, 0x1

    goto :goto_0

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 121
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->mFuzzyPinyinZHZ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setFuzzyPinyinState(ZI)V

    .line 122
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->mFuzzyPinyinCHC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setFuzzyPinyinState(ZI)V

    .line 123
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->mFuzzyPinyinSHS:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setFuzzyPinyinState(ZI)V

    .line 124
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->mFuzzyPinyinNL:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setFuzzyPinyinState(ZI)V

    .line 125
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->mFuzzyPinyinRL:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setFuzzyPinyinState(ZI)V

    .line 126
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->mFuzzyPinyinHF:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setFuzzyPinyinState(ZI)V

    .line 127
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->mFuzzyPinyinANGAN:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setFuzzyPinyinState(ZI)V

    .line 128
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->mFuzzyPinyinENGEN:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setFuzzyPinyinState(ZI)V

    .line 129
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->mFuzzyPinyinINGIN:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setFuzzyPinyinState(ZI)V

    .line 132
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->writeBack()V

    .line 133
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 137
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 138
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, keys:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 164
    :goto_0
    return v1

    .line 142
    :cond_0
    const v3, 0x7f0b0163

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 143
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->fuzzyStateFlag:[Z

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->getFuzzyPinyinState([Z)V

    :cond_1
    :goto_1
    move v1, v2

    .line 164
    goto :goto_0

    .line 144
    :cond_2
    const v3, 0x7f0b0169

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 145
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->mFuzzyPinyinZHZ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-static {v3, v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setFuzzyPinyinState(ZI)V

    goto :goto_1

    .line 146
    :cond_3
    const v1, 0x7f0b015d

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 147
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->mFuzzyPinyinCHC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-static {v1, v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setFuzzyPinyinState(ZI)V

    goto :goto_1

    .line 148
    :cond_4
    const v1, 0x7f0b0167

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 149
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->mFuzzyPinyinSHS:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/samsung/inputmethod/setting/SimeSetting;->setFuzzyPinyinState(ZI)V

    goto :goto_1

    .line 150
    :cond_5
    const v1, 0x7f0b0165

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 151
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->mFuzzyPinyinNL:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    const/4 v3, 0x3

    invoke-static {v1, v3}, Lcom/samsung/inputmethod/setting/SimeSetting;->setFuzzyPinyinState(ZI)V

    goto :goto_1

    .line 152
    :cond_6
    const v1, 0x7f0b0166

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 153
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->mFuzzyPinyinRL:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    const/4 v3, 0x4

    invoke-static {v1, v3}, Lcom/samsung/inputmethod/setting/SimeSetting;->setFuzzyPinyinState(ZI)V

    goto :goto_1

    .line 154
    :cond_7
    const v1, 0x7f0b015f

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 155
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->mFuzzyPinyinHF:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    const/4 v3, 0x5

    invoke-static {v1, v3}, Lcom/samsung/inputmethod/setting/SimeSetting;->setFuzzyPinyinState(ZI)V

    goto/16 :goto_1

    .line 156
    :cond_8
    const v1, 0x7f0b015c

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 157
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->mFuzzyPinyinANGAN:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    const/4 v3, 0x6

    invoke-static {v1, v3}, Lcom/samsung/inputmethod/setting/SimeSetting;->setFuzzyPinyinState(ZI)V

    goto/16 :goto_1

    .line 158
    :cond_9
    const v1, 0x7f0b015e

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 159
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->mFuzzyPinyinENGEN:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    const/4 v3, 0x7

    invoke-static {v1, v3}, Lcom/samsung/inputmethod/setting/SimeSetting;->setFuzzyPinyinState(ZI)V

    goto/16 :goto_1

    .line 160
    :cond_a
    const v1, 0x7f0b0162

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->mFuzzyPinyinINGIN:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    const/16 v3, 0x8

    invoke-static {v1, v3}, Lcom/samsung/inputmethod/setting/SimeSetting;->setFuzzyPinyinState(ZI)V

    goto/16 :goto_1
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 106
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->fuzzyStateFlag:[Z

    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSetting;->getFuzzyPinyinState([Z)V

    .line 107
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsFuzzy;->updateSettingsFuzzyWidget()V

    .line 108
    return-void
.end method
