.class public Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;
.super Landroid/preference/PreferenceActivity;
.source "SimeSwiftkeySettingsLanguage.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimeSwiftkeySettingsLanguage"

.field private static mInstance:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;


# instance fields
.field languagelistlistener:Lcom/touchtype_fluency/util/CompletionListener;

.field private mInputLanguage:Landroid/preference/PreferenceScreen;

.field private mIsCheckboxDontShowDownloadList:Z

.field private mLanguageChineseHkPref:Landroid/preference/Preference;

.field private mLanguageChinesePref:Landroid/preference/Preference;

.field private mLanguageChineseTwPref:Landroid/preference/Preference;

.field private mLanguageEnglishPref:Landroid/preference/Preference;

.field private mLanguageKoreanPref:Landroid/preference/Preference;

.field private mLanguageSummary:Ljava/lang/CharSequence;

.field private mLanguageText:[Ljava/lang/CharSequence;

.field public mPointerX:I

.field public mPointerY:I

.field private mSimeSettingActivity:Lcom/samsung/inputmethod/setting/SimeSettingActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->mInstance:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 63
    iput v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->mPointerY:I

    .line 64
    iput v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->mPointerX:I

    .line 185
    new-instance v0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage$1;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage$1;-><init>(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->languagelistlistener:Lcom/touchtype_fluency/util/CompletionListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->updateListComplete()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->updateListFail()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->mIsCheckboxDontShowDownloadList:Z

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->mIsCheckboxDontShowDownloadList:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->updateLPlist()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->mInstance:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

    invoke-direct {v0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;-><init>()V

    sput-object v0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->mInstance:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

    .line 121
    :cond_0
    sget-object v0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->mInstance:Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;

    return-object v0
.end method

.method private getListUpdateGuideCheckBoxRscId()I
    .locals 1

    .prologue
    .line 331
    const v0, 0x7f0c004b

    return v0
.end method

.method private getListUpdateGuideLayoutRscId()I
    .locals 1

    .prologue
    .line 335
    const v0, 0x7f030015

    return v0
.end method

.method private updateLPlist()V
    .locals 4

    .prologue
    .line 226
    const v1, 0x7f0b0264

    .line 227
    .local v1, resId:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->getLanguagePackManager(Ljava/lang/String;)Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v0

    .line 229
    .local v0, lpm:Lcom/touchtype_fluency/util/LanguagePackManager;
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->languagelistlistener:Lcom/touchtype_fluency/util/CompletionListener;

    invoke-virtual {v0, v2}, Lcom/touchtype_fluency/util/LanguagePackManager;->refresh(Lcom/touchtype_fluency/util/CompletionListener;)V

    .line 230
    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 231
    return-void
.end method

.method private updateListComplete()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, newlanguages:I
    const/4 v1, 0x0

    .line 241
    .local v1, resId:I
    const v1, 0x7f0b026a

    .line 242
    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 247
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->rebuildLanguageList()V

    .line 248
    return-void
.end method

.method private updateListFail()V
    .locals 3

    .prologue
    .line 253
    const v0, 0x7f0b0268

    .line 254
    .local v0, resId:I
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 255
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 259
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const v2, 0xff00

    and-int/2addr v1, v2

    div-int/lit16 v0, v1, 0xff

    .line 260
    .local v0, pointerID:I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->mPointerY:I

    .line 261
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->mPointerX:I

    .line 262
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public getLanguageSettingharedPreferencesEdit()Landroid/content/SharedPreferences$Editor;
    .locals 3

    .prologue
    .line 374
    const-string v1, "Language"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 375
    .local v0, pref:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    return-object v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    .line 79
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v5, 0x7f040007

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->addPreferencesFromResource(I)V

    .line 83
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 84
    .local v0, bar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 89
    .local v3, prefSet:Landroid/preference/PreferenceScreen;
    const v5, 0x7f0b016a

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->mInputLanguage:Landroid/preference/PreferenceScreen;

    .line 90
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->rebuildLanguageList()V

    .line 92
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060018

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->mLanguageText:[Ljava/lang/CharSequence;

    .line 94
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v5, v6, p0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/Context;)V

    .line 96
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/inputmethod/setting/SimeSetting;->getInstance(Landroid/content/SharedPreferences;)Lcom/samsung/inputmethod/setting/SimeSetting;

    .line 99
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 100
    .local v4, sp:Landroid/content/SharedPreferences;
    const-string v5, "first_swiftkey_download_list_execution"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 102
    .local v1, mIsCheckDontShowDownloadListGuide:Z
    const-string v5, "swiftkey_download_list_execution"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 106
    .local v2, mIsUpdateDownloadListGuide:Z
    if-eqz v1, :cond_2

    .line 107
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->showListUpdateGuideDialog()V

    .line 115
    :cond_1
    :goto_0
    return-void

    .line 110
    :cond_2
    if-eqz v2, :cond_1

    .line 111
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->updateLPlist()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 205
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 207
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 208
    const v0, 0x7f0b0262

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0201ce

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 209
    return v2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 128
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->releaseInstance()V

    .line 129
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getInstance()Lcom/samsung/inputmethod/setting/SimeSettingActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->mSimeSettingActivity:Lcom/samsung/inputmethod/setting/SimeSettingActivity;

    .line 130
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->mSimeSettingActivity:Lcom/samsung/inputmethod/setting/SimeSettingActivity;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->mSimeSettingActivity:Lcom/samsung/inputmethod/setting/SimeSettingActivity;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->displayInputModeList()V

    .line 132
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->mSimeSettingActivity:Lcom/samsung/inputmethod/setting/SimeSettingActivity;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->updateInputModeList()V

    .line 134
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 135
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 173
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 181
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 175
    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->finish()V

    goto :goto_0

    .line 178
    :sswitch_1
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->updateLPlist()V

    goto :goto_0

    .line 173
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 5

    .prologue
    .line 139
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 143
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.inputmethod.internal.message"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "SamsungIME_intent_msg"

    const-string v4, "swiftkey_update_lang"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 147
    const-string v3, "Language"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 148
    .local v2, pref:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 149
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->imIsHKTWModel()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 150
    const-string v3, "Language4"

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseHk()Z

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 151
    const-string v3, "Language5"

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseTw()Z

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 153
    :cond_0
    const-string v3, "Language1"

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChinese()Z

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 154
    const-string v3, "Language2"

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageKorean()Z

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 155
    const-string v3, "Language3"

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageEnglish()Z

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 157
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 158
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->writeBack()V

    .line 159
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 214
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 216
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 217
    const v0, 0x7f0b0262

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0201ce

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 218
    return v2
.end method

.method public onRestart()V
    .locals 0

    .prologue
    .line 165
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onRestart()V

    .line 166
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->rebuildLanguageList()V

    .line 167
    return-void
.end method

.method public rebuildLanguageList()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 339
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->mInputLanguage:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 341
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->getLanguagePackManager(Ljava/lang/String;)Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v3

    .line 343
    .local v3, lpm:Lcom/touchtype_fluency/util/LanguagePackManager;
    invoke-virtual {v3}, Lcom/touchtype_fluency/util/LanguagePackManager;->getAllLanguages()Ljava/util/List;

    move-result-object v0

    .line 345
    .local v0, availablelanguages:Ljava/util/List;,"Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/touchtype_fluency/util/LanguagePack;

    .line 347
    .local v2, lp:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->imIsHKTWModel()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v4

    const-string v5, "zh_TW"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v6, :cond_1

    .line 348
    new-instance v4, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;

    invoke-direct {v4, p0, v2}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;-><init>(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;Lcom/touchtype_fluency/util/LanguagePack;)V

    iput-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->mLanguageChineseTwPref:Landroid/preference/Preference;

    .line 349
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->mInputLanguage:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->mLanguageChineseTwPref:Landroid/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 351
    :cond_1
    invoke-static {}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->imIsHKTWModel()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v4

    const-string v5, "zh_HK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v6, :cond_2

    .line 352
    new-instance v4, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;

    invoke-direct {v4, p0, v2}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;-><init>(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;Lcom/touchtype_fluency/util/LanguagePack;)V

    iput-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->mLanguageChineseHkPref:Landroid/preference/Preference;

    .line 353
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->mInputLanguage:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->mLanguageChineseHkPref:Landroid/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 355
    :cond_2
    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v4

    const-string v5, "zh_CN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v6, :cond_3

    .line 356
    new-instance v4, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;

    invoke-direct {v4, p0, v2}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;-><init>(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;Lcom/touchtype_fluency/util/LanguagePack;)V

    iput-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->mLanguageChinesePref:Landroid/preference/Preference;

    .line 357
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->mInputLanguage:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->mLanguageChinesePref:Landroid/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 359
    :cond_3
    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ko_KR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v6, :cond_4

    .line 360
    new-instance v4, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;

    invoke-direct {v4, p0, v2}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;-><init>(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;Lcom/touchtype_fluency/util/LanguagePack;)V

    iput-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->mLanguageKoreanPref:Landroid/preference/Preference;

    .line 361
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->mInputLanguage:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->mLanguageKoreanPref:Landroid/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 364
    :cond_4
    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v4

    const-string v5, "en_US"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v6, :cond_0

    .line 365
    new-instance v4, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;

    invoke-direct {v4, p0, v2}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguagePreference;-><init>(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;Lcom/touchtype_fluency/util/LanguagePack;)V

    iput-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->mLanguageEnglishPref:Landroid/preference/Preference;

    .line 366
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->mLanguageEnglishPref:Landroid/preference/Preference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 367
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->mInputLanguage:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->mLanguageEnglishPref:Landroid/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 370
    .end local v2           #lp:Lcom/touchtype_fluency/util/LanguagePack;
    :cond_5
    return-void
.end method

.method public showListUpdateGuideDialog()V
    .locals 10

    .prologue
    .line 268
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 269
    .local v0, Dialog:Landroid/app/AlertDialog$Builder;
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->getListUpdateGuideLayoutRscId()I

    move-result v2

    .line 270
    .local v2, ListUpdateGuideLayoutRscId:I
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->getListUpdateGuideCheckBoxRscId()I

    move-result v1

    .line 273
    .local v1, ListUpdateGuideCheckBoxRscId:I
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 274
    const-string v8, "layout_inflater"

    invoke-virtual {p0, v8}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 276
    .local v6, inflater:Landroid/view/LayoutInflater;
    const/4 v8, 0x0

    invoke-virtual {v6, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 277
    .local v5, guideLayout:Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 278
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b007a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 279
    const v8, 0x7f0c004c

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 280
    .local v7, titleTextView:Landroid/widget/TextView;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f0b026c

    invoke-virtual {p0, v9}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v9, 0x7f0b0265

    invoke-virtual {p0, v9}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    const v8, 0x7f0b0263

    new-instance v9, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage$2;

    invoke-direct {v9, p0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage$2;-><init>(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 297
    const v8, 0x7f0b005d

    new-instance v9, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage$3;

    invoke-direct {v9, p0}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage$3;-><init>(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 315
    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 316
    .local v4, chkbox:Landroid/widget/CheckBox;
    if-eqz v4, :cond_0

    .line 317
    new-instance v8, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage$4;

    invoke-direct {v8, p0, v4}, Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage$4;-><init>(Lcom/samsung/inputmethod/setting/SimeSwiftkeySettingsLanguage;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v8}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 327
    .local v3, UpdateListDlg:Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 328
    return-void
.end method
