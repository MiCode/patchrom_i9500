.class public Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;
.super Landroid/preference/PreferenceActivity;
.source "SimeTabtabSettingActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$OnColorChangedListener;
.implements Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$OnLineChangedListener;
.implements Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$OnLineGradientChangedListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final DIALOG_CLEAN_USER_DATA:I = 0x1

.field private static final DIALOG_COLOR_PICK:I = 0x2

.field private static final DIALOG_DEFINE_OFF:I = 0x0

.field private static final DIALOG_INPUT_LANGUAGE_CHECK:I = 0x5

.field private static final DIALOG_LINE_GRADEENT_STYLE_PICK:I = 0x4

.field private static final DIALOG_LINE_STYLE_PICK:I = 0x3

.field private static final DIALOG_RESET_SETTING:I = 0x6

.field public static final PREFERENCE_KEY_FUZZY_SETTINGS:Ljava/lang/String; = "setting_fuzzy_pinyin_input_key"

.field public static final PREFERENCE_KEY_HANDWRITE_SETTINGS:Ljava/lang/String; = "setting_handwrite_summary_key"

.field public static final PREFERENCE_KEY_LANGUAGE_SETTINGS:Ljava/lang/String; = "setting_language_summary_key"

.field private static final TAG:Ljava/lang/String; = "SimeSettingsActivity"


# instance fields
.field private final GET_CODE:I

.field private fuzzyStateFlag:[Z

.field fuzzysettingsclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field handwritesettingsclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private mAutoCapitalizationPref:Landroid/preference/SwitchPreference;

.field private mAutoFullStopPref:Landroid/preference/SwitchPreference;

.field private mCharPreviewPref:Landroid/preference/SwitchPreference;

.field private mHWLineGradient:[I

.field private mHWLineProperty:[I

.field private mHWRecgType:I

.field private mInputModeForTab:Landroid/preference/Preference;

.field private mIsLineGradient:Z

.field private mLinkToContactsPref:Landroid/preference/SwitchPreference;

.field private mPredictionPref:Landroid/preference/SwitchPreference;

.field private mPreference:Landroid/preference/Preference;

.field private mResetSetting:Landroid/preference/Preference;

.field private mSoundKeyPressPref:Landroid/preference/SwitchPreference;

.field private mSpaceInputPref:Landroid/preference/SwitchPreference;

.field private mSpeed:I

.field private mTabEditDialog:Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;

.field private mVoiceInputPref:Landroid/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->GET_CODE:I

    .line 83
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mHWLineProperty:[I

    .line 84
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mHWLineGradient:[I

    .line 96
    const/16 v0, 0x9

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->fuzzyStateFlag:[Z

    .line 177
    new-instance v0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity$1;-><init>(Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->fuzzysettingsclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 186
    new-instance v0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity$2;-><init>(Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->handwritesettingsclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->updateWidgets()V

    return-void
.end method

.method private updateWidgets()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mPredictionPref:Landroid/preference/SwitchPreference;

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPrediction()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 278
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mSpaceInputPref:Landroid/preference/SwitchPreference;

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getSpaceKeyInputAssociate()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 279
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mAutoFullStopPref:Landroid/preference/SwitchPreference;

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getAutoFullStop()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 280
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mCharPreviewPref:Landroid/preference/SwitchPreference;

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getCharPreview()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 281
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mVoiceInputPref:Landroid/preference/SwitchPreference;

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getVoiceInput()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 283
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mSoundKeyPressPref:Landroid/preference/SwitchPreference;

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getKeySound()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 285
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mAutoCapitalizationPref:Landroid/preference/SwitchPreference;

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getAutoCapitalization()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 286
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mLinkToContactsPref:Landroid/preference/SwitchPreference;

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLinkToContacts()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 288
    return-void
.end method


# virtual methods
.method public colorChanged(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mHWLineProperty:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 197
    return-void
.end method

.method public lineChanged(I)V
    .locals 2
    .parameter "line"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mHWLineProperty:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 201
    return-void
.end method

.method public lineGradientChanged(III)V
    .locals 2
    .parameter "scolor"
    .parameter "mcolor"
    .parameter "ecolor"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mHWLineGradient:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 205
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mHWLineGradient:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 206
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mHWLineGradient:[I

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 207
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    const v2, 0x7f040009

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->addPreferencesFromResource(I)V

    .line 107
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFilesDir()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->setFilesDir(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->setLibraryDir(Ljava/lang/String;)V

    .line 111
    :cond_0
    invoke-static {}, Lcom/samsung/inputmethod/service/handwriting/SimeHWService;->isHandwriteInit()Z

    move-result v2

    if-nez v2, :cond_1

    .line 112
    sget-object v2, Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;->CHN:Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;

    const/16 v3, 0x6ff

    const/4 v4, 0x0

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getConvert()I

    move-result v5

    int-to-short v5, v5

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/inputmethod/service/handwriting/SimeHWService;->hwInitEngine(Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;CCI)V

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 117
    .local v0, prefSet:Landroid/preference/PreferenceScreen;
    const-string v2, "setting_fuzzy_pinyin_input_key"

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mPreference:Landroid/preference/Preference;

    .line 118
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mPreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->fuzzysettingsclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 119
    const-string v2, "setting_handwrite_summary_key"

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mPreference:Landroid/preference/Preference;

    .line 120
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mPreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->handwritesettingsclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 122
    const v2, 0x7f0b02c3

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mInputModeForTab:Landroid/preference/Preference;

    .line 123
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mInputModeForTab:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 125
    const v2, 0x7f0b0188

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mResetSetting:Landroid/preference/Preference;

    .line 126
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mResetSetting:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 128
    const v2, 0x7f0b0185

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mPredictionPref:Landroid/preference/SwitchPreference;

    .line 130
    const v2, 0x7f0b018b

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mSpaceInputPref:Landroid/preference/SwitchPreference;

    .line 132
    const v2, 0x7f0b0145

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mAutoFullStopPref:Landroid/preference/SwitchPreference;

    .line 134
    const v2, 0x7f0b0146

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mCharPreviewPref:Landroid/preference/SwitchPreference;

    .line 136
    const v2, 0x7f0b018f

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mVoiceInputPref:Landroid/preference/SwitchPreference;

    .line 138
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isVoiceInstalled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 139
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mVoiceInputPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 142
    :cond_2
    const v2, 0x7f0b018a

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mSoundKeyPressPref:Landroid/preference/SwitchPreference;

    .line 145
    const v2, 0x7f0b0144

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mAutoCapitalizationPref:Landroid/preference/SwitchPreference;

    .line 148
    const v2, 0x7f0b016b

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mLinkToContactsPref:Landroid/preference/SwitchPreference;

    .line 150
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_CONTACT_ACCESS_FEATURE:Z

    if-nez v2, :cond_3

    .line 151
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mLinkToContactsPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 154
    :cond_3
    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 156
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/Context;)V

    .line 158
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->getInstance(Landroid/content/SharedPreferences;)Lcom/samsung/inputmethod/setting/SimeSetting;

    .line 160
    const v2, 0x7f0b0142

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->updatePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)V

    .line 162
    new-instance v1, Lcom/samsung/inputmethod/setting/SimeVersionInfo;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/setting/SimeVersionInfo;-><init>(Landroid/content/Context;)V

    .line 163
    .local v1, versionInfo:Lcom/samsung/inputmethod/setting/SimeVersionInfo;
    const v2, 0x7f0b013f

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/inputmethod/setting/SimeVersionInfo;->getSimeVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 166
    new-instance v2, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mTabEditDialog:Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;

    .line 168
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mHWLineProperty:[I

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->getHandwriteLine([I)V

    .line 170
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getSpeed()I

    move-result v2

    iput v2, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mSpeed:I

    .line 171
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->fuzzyStateFlag:[Z

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->getFuzzyPinyinState([Z)V

    .line 172
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mHWLineGradient:[I

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->getHandwriteLineGradient([I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mIsLineGradient:Z

    .line 173
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getHandwriteRecgType()I

    move-result v2

    iput v2, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mHWRecgType:I

    .line 174
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->updateWidgets()V

    .line 175
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 13
    .parameter "id"

    .prologue
    const v1, 0x7f0b002c

    const/4 v10, 0x0

    const/4 v4, 0x0

    const v2, 0x7f0b004a

    const/4 v5, 0x1

    .line 292
    packed-switch p1, :pswitch_data_0

    .line 356
    :goto_0
    return-object v10

    .line 296
    :pswitch_0
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 297
    .local v7, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 298
    if-nez p1, :cond_1

    .line 299
    new-instance v1, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity$3;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity$3;-><init>(Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;)V

    invoke-virtual {v7, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 303
    const v1, 0x7f0b007c

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 333
    :cond_0
    :goto_1
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    .line 334
    .local v10, dialog:Landroid/app/AlertDialog;
    goto :goto_0

    .line 304
    .end local v10           #dialog:Landroid/app/AlertDialog;
    :cond_1
    if-ne v5, p1, :cond_2

    .line 305
    new-instance v1, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity$4;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity$4;-><init>(Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;)V

    invoke-virtual {v7, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 315
    const v1, 0x7f0b0045

    invoke-virtual {v7, v1, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 316
    const v1, 0x7f0b0089

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 319
    :cond_2
    const/4 v1, 0x6

    if-ne v1, p1, :cond_0

    .line 320
    new-instance v1, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity$5;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity$5;-><init>(Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;)V

    invoke-virtual {v7, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 330
    const v1, 0x7f0b0045

    invoke-virtual {v7, v1, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 331
    const v1, 0x7f0b00eb

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 336
    .end local v7           #builder:Landroid/app/AlertDialog$Builder;
    :pswitch_1
    new-instance v9, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mHWLineProperty:[I

    aget v1, v1, v5

    invoke-direct {v9, p0, p0, v1}, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$OnColorChangedListener;I)V

    .local v9, colorDialog:Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;
    move-object v10, v9

    .line 337
    goto :goto_0

    .line 339
    .end local v9           #colorDialog:Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;
    :pswitch_2
    new-instance v12, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mHWLineProperty:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mHWLineProperty:[I

    aget v2, v2, v5

    invoke-direct {v12, p0, p0, v1, v2}, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog;-><init>(Landroid/content/Context;Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$OnLineChangedListener;II)V

    .local v12, lineStyleDialog:Lcom/samsung/inputmethod/setting/SimeLineStyleDialog;
    move-object v10, v12

    .line 340
    goto :goto_0

    .line 342
    .end local v12           #lineStyleDialog:Lcom/samsung/inputmethod/setting/SimeLineStyleDialog;
    :pswitch_3
    new-instance v0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mHWLineProperty:[I

    aget v3, v1, v4

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mHWLineGradient:[I

    aget v4, v1, v4

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mHWLineGradient:[I

    aget v5, v1, v5

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mHWLineGradient:[I

    const/4 v2, 0x2

    aget v6, v1, v2

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;-><init>(Landroid/content/Context;Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$OnLineGradientChangedListener;IIII)V

    .local v0, lineGradientStyleDialog:Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;
    move-object v10, v0

    .line 344
    goto :goto_0

    .line 346
    .end local v0           #lineGradientStyleDialog:Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;
    :pswitch_4
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 347
    .local v8, builderLanguage:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 349
    new-instance v1, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity$6;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity$6;-><init>(Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;)V

    invoke-virtual {v8, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 352
    const v1, 0x7f0b005b

    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 353
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    .local v11, dialogLanguage:Landroid/app/AlertDialog;
    move-object v10, v11

    .line 354
    goto/16 :goto_0

    .line 292
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 245
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->releaseInstance()V

    .line 246
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 247
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 251
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 254
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mSoundKeyPressPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSetting;->setKeySound(Z)V

    .line 256
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mPredictionPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSetting;->setPrediction(Z)V

    .line 257
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mSpaceInputPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSetting;->SetSpaceKeyInputAssociate(Z)V

    .line 258
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mVoiceInputPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSetting;->SetVoiceInput(Z)V

    .line 259
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mAutoFullStopPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSetting;->SetAutoFullStop(Z)V

    .line 260
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mCharPreviewPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSetting;->setCharPreview(Z)V

    .line 261
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mAutoCapitalizationPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSetting;->setAutoCapitalization(Z)V

    .line 262
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mLinkToContactsPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSetting;->SetLinkToContacts(Z)V

    .line 264
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->writeBack()V

    .line 265
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 268
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, keys:Ljava/lang/String;
    const/4 v1, 0x1

    return v1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x6

    const/4 v1, 0x1

    .line 211
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 212
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, keys:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 214
    const/4 v1, 0x0

    .line 234
    :cond_0
    :goto_0
    return v1

    .line 217
    :cond_1
    const v2, 0x7f0b0144

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 218
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mAutoCapitalizationPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setAutoCapitalization(Z)V

    goto :goto_0

    .line 220
    :cond_2
    const v2, 0x7f0b02c3

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 222
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->mTabEditDialog:Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;->showDialog()V

    goto :goto_0

    .line 223
    :cond_3
    const v2, 0x7f0b0188

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 224
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->removeDialog(I)V

    .line 225
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->showDialog(I)V

    goto :goto_0

    .line 230
    :cond_4
    const v2, 0x7f0b0149

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->showDialog(I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 239
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 240
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->updateWidgets()V

    .line 241
    return-void
.end method

.method public updatePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)V
    .locals 6
    .parameter "parentPref"
    .parameter "prefKey"

    .prologue
    .line 361
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 362
    .local v4, preference:Landroid/preference/Preference;
    if-nez v4, :cond_1

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    invoke-virtual {v4}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 366
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 368
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 369
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 370
    .local v2, listSize:I
    if-nez v2, :cond_0

    .line 371
    invoke-virtual {p1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method
