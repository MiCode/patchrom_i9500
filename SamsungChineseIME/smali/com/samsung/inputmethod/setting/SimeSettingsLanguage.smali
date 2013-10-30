.class public Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;
.super Landroid/preference/PreferenceActivity;
.source "SimeSettingsLanguage.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimeSettingsLanguage"

.field private static instance:Lcom/samsung/inputmethod/SamsungIME;

.field private static mInstance:Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;


# instance fields
.field private mInputLanguage:Landroid/preference/PreferenceScreen;

.field private mLanguageChineseHkPref:Landroid/preference/CheckBoxPreference;

.field private mLanguageChinesePref:Landroid/preference/CheckBoxPreference;

.field private mLanguageChineseTwPref:Landroid/preference/CheckBoxPreference;

.field private mLanguageEnglishPref:Landroid/preference/CheckBoxPreference;

.field private mLanguageKoreanPref:Landroid/preference/CheckBoxPreference;

.field private mLanguageSummary:Ljava/lang/CharSequence;

.field private mLanguageText:[Ljava/lang/CharSequence;

.field private mPreference:Landroid/preference/Preference;

.field private mSimeSettingActivity:Lcom/samsung/inputmethod/setting/SimeSettingActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mInstance:Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mInstance:Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;

    invoke-direct {v0}, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;-><init>()V

    sput-object v0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mInstance:Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;

    .line 163
    :cond_0
    sget-object v0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mInstance:Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;

    return-object v0
.end method

.method private updateWidgets()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageChinesePref:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChinese()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 280
    invoke-static {}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->imIsHKTWModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageChineseTwPref:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseTw()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 283
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageChineseHkPref:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseHk()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageEnglishPref:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageEnglish()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 287
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageKoreanPref:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageKorean()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 288
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->setLanguageSummary()V

    .line 289
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f0b00b6

    const v7, 0x7f0b00b5

    const/4 v6, 0x1

    .line 71
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const v4, 0x7f040007

    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->addPreferencesFromResource(I)V

    .line 75
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 76
    .local v0, bar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 83
    .local v3, prefSet:Landroid/preference/PreferenceScreen;
    const v4, 0x7f0b016a

    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mInputLanguage:Landroid/preference/PreferenceScreen;

    .line 85
    invoke-static {}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->imIsHKTWModel()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 87
    new-instance v4, Landroid/preference/CheckBoxPreference;

    invoke-direct {v4, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageChineseTwPref:Landroid/preference/CheckBoxPreference;

    .line 88
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageChineseTwPref:Landroid/preference/CheckBoxPreference;

    const v5, 0x7f0b00d1

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 89
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageChineseTwPref:Landroid/preference/CheckBoxPreference;

    const v5, 0x7f0b00d2

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 90
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageChineseTwPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 91
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageChineseTwPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v8}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    .line 92
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageChineseTwPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    .line 93
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageChineseTwPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 94
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mInputLanguage:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageChineseTwPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 96
    new-instance v4, Landroid/preference/CheckBoxPreference;

    invoke-direct {v4, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageChineseHkPref:Landroid/preference/CheckBoxPreference;

    .line 97
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageChineseHkPref:Landroid/preference/CheckBoxPreference;

    const v5, 0x7f0b00ce

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 98
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageChineseHkPref:Landroid/preference/CheckBoxPreference;

    const v5, 0x7f0b00cf

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 99
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageChineseHkPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 100
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageChineseHkPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v8}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    .line 101
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageChineseHkPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    .line 102
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageChineseHkPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 103
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mInputLanguage:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageChineseHkPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 107
    :cond_1
    new-instance v4, Landroid/preference/CheckBoxPreference;

    invoke-direct {v4, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageChinesePref:Landroid/preference/CheckBoxPreference;

    .line 108
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageChinesePref:Landroid/preference/CheckBoxPreference;

    const v5, 0x7f0b00cd

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 109
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageChinesePref:Landroid/preference/CheckBoxPreference;

    const v5, 0x7f0b00d8

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 110
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageChinesePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 111
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageChinesePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v8}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    .line 112
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageChinesePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    .line 113
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageChinesePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 114
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mInputLanguage:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageChinesePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 116
    new-instance v4, Landroid/preference/CheckBoxPreference;

    invoke-direct {v4, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageKoreanPref:Landroid/preference/CheckBoxPreference;

    .line 117
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageKoreanPref:Landroid/preference/CheckBoxPreference;

    const v5, 0x7f0b00d5

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 118
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageKoreanPref:Landroid/preference/CheckBoxPreference;

    const v5, 0x7f0b00d6

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 119
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageKoreanPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 120
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageKoreanPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v8}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    .line 121
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageKoreanPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    .line 122
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageKoreanPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 123
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mInputLanguage:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageKoreanPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 125
    new-instance v4, Landroid/preference/CheckBoxPreference;

    invoke-direct {v4, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageEnglishPref:Landroid/preference/CheckBoxPreference;

    .line 126
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageEnglishPref:Landroid/preference/CheckBoxPreference;

    const v5, 0x7f0b00d3

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 127
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageEnglishPref:Landroid/preference/CheckBoxPreference;

    const v5, 0x7f0b00d4

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 128
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageEnglishPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 129
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageEnglishPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 130
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageEnglishPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v8}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    .line 131
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageEnglishPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    .line 132
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageEnglishPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 133
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mInputLanguage:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageEnglishPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 135
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060018

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageText:[Ljava/lang/CharSequence;

    .line 137
    invoke-virtual {v3, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 139
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v4, v5, p0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/Context;)V

    .line 141
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/inputmethod/setting/SimeSetting;->getInstance(Landroid/content/SharedPreferences;)Lcom/samsung/inputmethod/setting/SimeSetting;

    .line 144
    const-string v4, "Language"

    invoke-virtual {p0, v4, v9}, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 145
    .local v2, pref:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 146
    .local v1, edit:Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->imIsHKTWModel()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 147
    const-string v4, "Language4"

    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageChineseTwPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 148
    const-string v4, "Language5"

    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageChineseHkPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 150
    :cond_2
    const-string v4, "Language1"

    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageChinesePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 151
    const-string v4, "Language2"

    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageKoreanPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 152
    const-string v4, "Language3"

    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageEnglishPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 154
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 157
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 199
    const-string v2, "Language"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 200
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 201
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->imIsHKTWModel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    const-string v2, "Language4"

    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageChineseTwPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 203
    const-string v2, "Language5"

    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageChineseHkPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 205
    :cond_0
    const-string v2, "Language1"

    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageChinesePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 206
    const-string v2, "Language2"

    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageKoreanPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 207
    const-string v2, "Language3"

    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageEnglishPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 209
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 210
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->releaseInstance()V

    .line 211
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getInstance()Lcom/samsung/inputmethod/setting/SimeSettingActivity;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mSimeSettingActivity:Lcom/samsung/inputmethod/setting/SimeSettingActivity;

    .line 212
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mSimeSettingActivity:Lcom/samsung/inputmethod/setting/SimeSettingActivity;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 213
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mSimeSettingActivity:Lcom/samsung/inputmethod/setting/SimeSettingActivity;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->displayInputModeList()V

    .line 214
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mSimeSettingActivity:Lcom/samsung/inputmethod/setting/SimeSettingActivity;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->updateInputModeList()V

    .line 216
    :cond_1
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 217
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 293
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 298
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 295
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->finish()V

    .line 296
    const/4 v0, 0x1

    goto :goto_0

    .line 293
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 221
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 223
    const-string v2, "Language"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 224
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 225
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->imIsHKTWModel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    const-string v2, "Language4"

    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageChineseTwPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 227
    const-string v2, "Language5"

    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageChineseHkPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 229
    :cond_0
    const-string v2, "Language1"

    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageChinesePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 230
    const-string v2, "Language2"

    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageKoreanPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 231
    const-string v2, "Language3"

    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageEnglishPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 233
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 234
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageChinesePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->SetLanguageChinese(Z)V

    .line 236
    invoke-static {}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->imIsHKTWModel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 237
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageChineseTwPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->SetLanguageChineseTw(Z)V

    .line 238
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageChineseHkPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->SetLanguageChineseHk(Z)V

    .line 241
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageEnglishPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->SetLanguageEnglish(Z)V

    .line 242
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageKoreanPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->SetLanguageKorean(Z)V

    .line 246
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->writeBack()V

    .line 247
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v0, 0x1

    .line 252
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageChinesePref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_0

    .line 253
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->SetLanguageChinese(Z)V

    .line 254
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->setLanguageSummary()V

    .line 270
    :goto_0
    return v0

    .line 256
    .restart local p2
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageKoreanPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_1

    .line 257
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->SetLanguageKorean(Z)V

    .line 258
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->setLanguageSummary()V

    goto :goto_0

    .line 260
    .restart local p2
    :cond_1
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageChineseHkPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_2

    .line 261
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->SetLanguageChineseHk(Z)V

    .line 262
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->setLanguageSummary()V

    goto :goto_0

    .line 264
    .restart local p2
    :cond_2
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageChineseTwPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_3

    .line 265
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->SetLanguageChineseTw(Z)V

    .line 266
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->setLanguageSummary()V

    goto :goto_0

    .line 270
    .restart local p2
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 193
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 194
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->updateWidgets()V

    .line 195
    return-void
.end method

.method public setLanguageSummary()V
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageText:[Ljava/lang/CharSequence;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageSummary:Ljava/lang/CharSequence;

    .line 170
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChinese()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageText:[Ljava/lang/CharSequence;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageSummary:Ljava/lang/CharSequence;

    .line 173
    :cond_0
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageKorean()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageText:[Ljava/lang/CharSequence;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageSummary:Ljava/lang/CharSequence;

    .line 177
    :cond_1
    invoke-static {}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->imIsHKTWModel()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 178
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseTw()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageText:[Ljava/lang/CharSequence;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageSummary:Ljava/lang/CharSequence;

    .line 181
    :cond_2
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseHk()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageText:[Ljava/lang/CharSequence;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageSummary:Ljava/lang/CharSequence;

    .line 186
    :cond_3
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mInputLanguage:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsLanguage;->mLanguageSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 188
    return-void
.end method
