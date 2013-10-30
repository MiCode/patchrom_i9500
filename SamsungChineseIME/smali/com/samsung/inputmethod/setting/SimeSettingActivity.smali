.class public Lcom/samsung/inputmethod/setting/SimeSettingActivity;
.super Landroid/preference/PreferenceActivity;
.source "SimeSettingActivity.java"

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

.field private static final TAG:Ljava/lang/String; = "SamsungIMESettingsActivity"

.field private static mInstance:Lcom/samsung/inputmethod/setting/SimeSettingActivity;


# instance fields
.field private final GET_CODE:I

.field advancedsettingsclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field dbUpdateclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field handwritesettingsclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field languagesettingsclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private mHWLineGradient:[I

.field private mHWLineProperty:[I

.field private mHWRecgType:I

.field private mInputLanguage:Landroid/preference/PreferenceScreen;

.field private mInputModePrefSet:Landroid/preference/PreferenceCategory;

.field private mInputModeType:I

.field private mIsLineGradient:Z

.field private mIsTabletModel:Z

.field private mLanguageSummary:Ljava/lang/CharSequence;

.field private mLanguageText:[Ljava/lang/CharSequence;

.field private mLinkToContactsPref:Landroid/preference/CheckBoxPreference;

.field private mOneHandModePref:Landroid/preference/CheckBoxPreference;

.field private mPointingKeyboardPref:Landroid/preference/CheckBoxPreference;

.field private mPortraitChineseInput:Landroid/preference/ListPreference;

.field private mPortraitEnglishInput:Landroid/preference/ListPreference;

.field private mPortraitHongkongInput:Landroid/preference/ListPreference;

.field private mPortraitKoreanInput:Landroid/preference/ListPreference;

.field private mPortraitTaiwanInput:Landroid/preference/ListPreference;

.field private mPreference:Landroid/preference/Preference;

.field private mResetSetting:Landroid/preference/Preference;

.field private mSwipePointkeyboard:Landroid/preference/Preference;

.field private mSwipePointkeyboardIndex:I

.field private mTabEditDialog:Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;

.field private mVoiceInputPref:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 77
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mHWLineProperty:[I

    .line 79
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mHWLineGradient:[I

    .line 120
    iput-boolean v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mIsTabletModel:Z

    .line 124
    iput v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->GET_CODE:I

    .line 325
    new-instance v0, Lcom/samsung/inputmethod/setting/SimeSettingActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity$1;-><init>(Lcom/samsung/inputmethod/setting/SimeSettingActivity;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->languagesettingsclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 338
    new-instance v0, Lcom/samsung/inputmethod/setting/SimeSettingActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity$2;-><init>(Lcom/samsung/inputmethod/setting/SimeSettingActivity;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->handwritesettingsclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 348
    new-instance v0, Lcom/samsung/inputmethod/setting/SimeSettingActivity$3;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity$3;-><init>(Lcom/samsung/inputmethod/setting/SimeSettingActivity;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->advancedsettingsclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 358
    new-instance v0, Lcom/samsung/inputmethod/setting/SimeSettingActivity$4;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity$4;-><init>(Lcom/samsung/inputmethod/setting/SimeSettingActivity;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->dbUpdateclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method private SetSwipeOnKeyboardSummary(Landroid/preference/Preference;I)V
    .locals 1
    .parameter "type"
    .parameter "id"

    .prologue
    .line 939
    packed-switch p2, :pswitch_data_0

    .line 955
    :goto_0
    return-void

    .line 941
    :pswitch_0
    const v0, 0x7f0b017a

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 944
    :pswitch_1
    const v0, 0x7f0b017b

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 947
    :pswitch_2
    const v0, 0x7f0b017c

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 950
    :pswitch_3
    const v0, 0x7f0b017d

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 939
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/samsung/inputmethod/setting/SimeSettingActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->setOneHandMode(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/inputmethod/setting/SimeSettingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->updateWidgets()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/inputmethod/setting/SimeSettingActivity;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mSwipePointkeyboard:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/inputmethod/setting/SimeSettingActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mSwipePointkeyboardIndex:I

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/inputmethod/setting/SimeSettingActivity;Landroid/preference/Preference;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->SetSwipeOnKeyboardSummary(Landroid/preference/Preference;I)V

    return-void
.end method

.method public static getInstance()Lcom/samsung/inputmethod/setting/SimeSettingActivity;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mInstance:Lcom/samsung/inputmethod/setting/SimeSettingActivity;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;

    invoke-direct {v0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;-><init>()V

    sput-object v0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mInstance:Lcom/samsung/inputmethod/setting/SimeSettingActivity;

    .line 146
    :cond_0
    sget-object v0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mInstance:Lcom/samsung/inputmethod/setting/SimeSettingActivity;

    return-object v0
.end method

.method private getOneHandMode()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 930
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "onehand_samsungkeypad_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 932
    .local v0, iOneHandMode:I
    if-ne v0, v1, :cond_0

    .line 935
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private selectInputModeList(Landroid/preference/ListPreference;)V
    .locals 9
    .parameter "list"

    .prologue
    const v8, 0x7f0b0183

    const v7, 0x7f0b0182

    const v6, 0x7f0b0181

    const v5, 0x7f0b0180

    const/4 v4, -0x1

    .line 391
    if-nez p1, :cond_1

    .line 392
    const-string v3, "SamsungIMESettingsActivity"

    const-string v4, "selectInputModeList() list is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 398
    .local v2, key:Ljava/lang/String;
    if-nez v2, :cond_2

    .line 399
    const-string v3, "SamsungIMESettingsActivity"

    const-string v4, "selectInputModeList() key is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 403
    :cond_2
    const/4 v0, -0x1

    .line 404
    .local v0, entriesResId:I
    const/4 v1, -0x1

    .line 406
    .local v1, entryValuesResId:I
    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    if-eqz v3, :cond_8

    .line 407
    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 408
    const v0, 0x7f06001e

    .line 409
    const v1, 0x7f06001f

    .line 443
    :cond_3
    :goto_1
    if-eq v0, v4, :cond_0

    if-eq v1, v4, :cond_0

    .line 444
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 445
    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    .line 410
    :cond_4
    invoke-virtual {p0, v7}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 411
    const v0, 0x7f060020

    .line 412
    const v1, 0x7f060021

    goto :goto_1

    .line 413
    :cond_5
    const v3, 0x7f0b0184

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 414
    const v0, 0x7f060022

    .line 415
    const v1, 0x7f060023

    goto :goto_1

    .line 416
    :cond_6
    invoke-virtual {p0, v8}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 417
    const v0, 0x7f060024

    .line 418
    const v1, 0x7f060025

    goto :goto_1

    .line 419
    :cond_7
    invoke-virtual {p0, v6}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 420
    const v0, 0x7f060026

    .line 421
    const v1, 0x7f060027

    goto :goto_1

    .line 425
    :cond_8
    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 426
    const v0, 0x7f060028

    .line 427
    const v1, 0x7f060029

    goto :goto_1

    .line 428
    :cond_9
    invoke-virtual {p0, v7}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 429
    const v0, 0x7f06002a

    .line 430
    const v1, 0x7f06002b

    goto :goto_1

    .line 431
    :cond_a
    const v3, 0x7f0b0184

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 432
    const v0, 0x7f06002c

    .line 433
    const v1, 0x7f06002d

    goto/16 :goto_1

    .line 434
    :cond_b
    invoke-virtual {p0, v8}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 435
    const v0, 0x7f06002e

    .line 436
    const v1, 0x7f06002f

    goto/16 :goto_1

    .line 437
    :cond_c
    invoke-virtual {p0, v6}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 438
    const v0, 0x7f060030

    .line 439
    const v1, 0x7f060031

    goto/16 :goto_1
.end method

.method private selectInputModeType(Landroid/preference/ListPreference;I)V
    .locals 5
    .parameter "list"
    .parameter "layoutId"

    .prologue
    .line 452
    if-nez p1, :cond_1

    .line 453
    const-string v3, "SamsungIMESettingsActivity"

    const-string v4, "selectInputModeType() list is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_0
    return-void

    .line 462
    :cond_1
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 463
    .local v0, entries:[Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 464
    .local v1, entryValues:[Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 465
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 466
    aget-object v3, v1, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne p2, v3, :cond_2

    .line 467
    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 472
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 465
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private setLanguageSummary()V
    .locals 3

    .prologue
    .line 368
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mLanguageText:[Ljava/lang/CharSequence;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mLanguageSummary:Ljava/lang/CharSequence;

    .line 369
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChinese()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mLanguageSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mLanguageText:[Ljava/lang/CharSequence;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mLanguageSummary:Ljava/lang/CharSequence;

    .line 372
    :cond_0
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageKorean()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mLanguageSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mLanguageText:[Ljava/lang/CharSequence;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mLanguageSummary:Ljava/lang/CharSequence;

    .line 376
    :cond_1
    invoke-static {}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->imIsHKTWModel()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 377
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseTw()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mLanguageSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mLanguageText:[Ljava/lang/CharSequence;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mLanguageSummary:Ljava/lang/CharSequence;

    .line 380
    :cond_2
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseHk()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mLanguageSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mLanguageText:[Ljava/lang/CharSequence;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mLanguageSummary:Ljava/lang/CharSequence;

    .line 385
    :cond_3
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mInputLanguage:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mLanguageSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 387
    return-void
.end method

.method private setOneHandMode(Z)V
    .locals 3
    .parameter "bUseOneHand"

    .prologue
    .line 925
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "onehand_samsungkeypad_enabled"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 927
    return-void

    .line 925
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateWidgets()V
    .locals 3

    .prologue
    .line 805
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mVoiceInputPref:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getVoiceInput()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 807
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mLinkToContactsPref:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLinkToContacts()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 809
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPointingKeyboardPref:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPointingKeyboard()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 810
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->GetSwipeOnKeyboard()I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mSwipePointkeyboardIndex:I

    .line 811
    iget v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mSwipePointkeyboardIndex:I

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->SetSwipeOnKeyboard(I)V

    .line 813
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mOneHandModePref:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getOneHandMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 815
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLayoutId(I)I

    move-result v0

    .line 817
    .local v0, layoutId:I
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitEnglishInput:Landroid/preference/ListPreference;

    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->selectInputModeList(Landroid/preference/ListPreference;)V

    .line 818
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitEnglishInput:Landroid/preference/ListPreference;

    invoke-direct {p0, v1, v0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->selectInputModeType(Landroid/preference/ListPreference;I)V

    .line 819
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitEnglishInput:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 820
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->updateInputModeList()V

    .line 821
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->setLanguageSummary()V

    .line 823
    return-void
.end method


# virtual methods
.method public colorChanged(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 643
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mHWLineProperty:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 644
    return-void
.end method

.method public displayInputModeList()V
    .locals 7

    .prologue
    const v6, 0x7f0b00e4

    const v5, 0x7f0b00e2

    const v4, 0x7f0b00e1

    const/4 v3, 0x0

    const v2, 0x7f030019

    .line 481
    invoke-static {}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->imIsHKTWModel()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 482
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitTaiwanInput:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mInputModePrefSet:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitTaiwanInput:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 484
    iput-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitTaiwanInput:Landroid/preference/ListPreference;

    .line 486
    :cond_0
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseTw()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 487
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitTaiwanInput:Landroid/preference/ListPreference;

    if-nez v0, :cond_1

    .line 488
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mInputModeType:I

    .line 492
    new-instance v0, Landroid/preference/ListPreference;

    invoke-direct {v0, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitTaiwanInput:Landroid/preference/ListPreference;

    .line 493
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitTaiwanInput:Landroid/preference/ListPreference;

    const v1, 0x7f0b0184

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitTaiwanInput:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setWidgetLayoutResource(I)V

    .line 500
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitTaiwanInput:Landroid/preference/ListPreference;

    const v1, 0x7f0b00e6

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 502
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitTaiwanInput:Landroid/preference/ListPreference;

    const v1, 0x7f0b00e6

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 504
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitTaiwanInput:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 505
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitTaiwanInput:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->selectInputModeList(Landroid/preference/ListPreference;)V

    .line 506
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mInputModePrefSet:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitTaiwanInput:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 510
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitHongkongInput:Landroid/preference/ListPreference;

    if-eqz v0, :cond_2

    .line 511
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mInputModePrefSet:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitHongkongInput:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 512
    iput-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitHongkongInput:Landroid/preference/ListPreference;

    .line 514
    :cond_2
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseHk()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 515
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitHongkongInput:Landroid/preference/ListPreference;

    if-nez v0, :cond_3

    .line 516
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mInputModeType:I

    .line 520
    new-instance v0, Landroid/preference/ListPreference;

    invoke-direct {v0, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitHongkongInput:Landroid/preference/ListPreference;

    .line 521
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitHongkongInput:Landroid/preference/ListPreference;

    const v1, 0x7f0b0182

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitHongkongInput:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setWidgetLayoutResource(I)V

    .line 528
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitHongkongInput:Landroid/preference/ListPreference;

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 530
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitHongkongInput:Landroid/preference/ListPreference;

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 532
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitHongkongInput:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 533
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitHongkongInput:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->selectInputModeList(Landroid/preference/ListPreference;)V

    .line 534
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mInputModePrefSet:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitHongkongInput:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 540
    :cond_3
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitChineseInput:Landroid/preference/ListPreference;

    if-eqz v0, :cond_4

    .line 541
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mInputModePrefSet:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitChineseInput:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 542
    iput-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitChineseInput:Landroid/preference/ListPreference;

    .line 544
    :cond_4
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChinese()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 545
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitChineseInput:Landroid/preference/ListPreference;

    if-nez v0, :cond_5

    .line 546
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mInputModeType:I

    .line 550
    new-instance v0, Landroid/preference/ListPreference;

    invoke-direct {v0, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitChineseInput:Landroid/preference/ListPreference;

    .line 551
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitChineseInput:Landroid/preference/ListPreference;

    const v1, 0x7f0b0180

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 553
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitChineseInput:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setWidgetLayoutResource(I)V

    .line 557
    invoke-static {}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->imIsHKTWModel()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 558
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitChineseInput:Landroid/preference/ListPreference;

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 560
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitChineseInput:Landroid/preference/ListPreference;

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 568
    :goto_0
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitChineseInput:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 569
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitChineseInput:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->selectInputModeList(Landroid/preference/ListPreference;)V

    .line 570
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mInputModePrefSet:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitChineseInput:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 574
    :cond_5
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitKoreanInput:Landroid/preference/ListPreference;

    if-eqz v0, :cond_6

    .line 575
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mInputModePrefSet:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitKoreanInput:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 576
    iput-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitKoreanInput:Landroid/preference/ListPreference;

    .line 578
    :cond_6
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageKorean()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 579
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitKoreanInput:Landroid/preference/ListPreference;

    if-nez v0, :cond_7

    .line 580
    new-instance v0, Landroid/preference/ListPreference;

    invoke-direct {v0, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitKoreanInput:Landroid/preference/ListPreference;

    .line 581
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitKoreanInput:Landroid/preference/ListPreference;

    const v1, 0x7f0b0183

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 583
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitKoreanInput:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setWidgetLayoutResource(I)V

    .line 587
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitKoreanInput:Landroid/preference/ListPreference;

    const v1, 0x7f0b00e5

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 588
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitKoreanInput:Landroid/preference/ListPreference;

    const v1, 0x7f0b00e5

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 590
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitKoreanInput:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 591
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitKoreanInput:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->selectInputModeList(Landroid/preference/ListPreference;)V

    .line 592
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mInputModePrefSet:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitKoreanInput:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 595
    :cond_7
    return-void

    .line 563
    :cond_8
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitChineseInput:Landroid/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 565
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitChineseInput:Landroid/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    goto :goto_0
.end method

.method public lineChanged(I)V
    .locals 2
    .parameter "line"

    .prologue
    .line 647
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mHWLineProperty:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 648
    return-void
.end method

.method public lineGradientChanged(III)V
    .locals 2
    .parameter "scolor"
    .parameter "mcolor"
    .parameter "ecolor"

    .prologue
    .line 651
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mHWLineGradient:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 652
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mHWLineGradient:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 653
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mHWLineGradient:[I

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 654
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const v10, 0x7f0b016a

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 151
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 152
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isTabletModel()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 153
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 154
    .local v1, intent:Landroid/content/Intent;
    const-class v5, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;

    invoke-virtual {v1, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 155
    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 323
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 158
    :cond_0
    const v5, 0x7f040003

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->addPreferencesFromResource(I)V

    .line 160
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 161
    .local v0, bar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 162
    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 165
    :cond_1
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFilesDir()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 166
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->setFilesDir(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->setLibraryDir(Ljava/lang/String;)V

    .line 174
    :cond_2
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->LoadJNILibrary()V

    .line 175
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isTabletModel()Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mIsTabletModel:Z

    .line 176
    invoke-static {}, Lcom/samsung/inputmethod/service/handwriting/SimeHWService;->isHandwriteInit()Z

    move-result v5

    if-nez v5, :cond_3

    .line 185
    sget-object v5, Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;->CHN:Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;

    const/16 v6, 0x6ff

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getConvert()I

    move-result v7

    int-to-short v7, v7

    invoke-static {v5, v6, v8, v7}, Lcom/samsung/inputmethod/service/handwriting/SimeHWService;->hwInitEngine(Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;CCI)V

    .line 211
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 213
    .local v3, prefSet:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0, v10}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPreference:Landroid/preference/Preference;

    .line 214
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPreference:Landroid/preference/Preference;

    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->languagesettingsclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 216
    const v5, 0x7f0b0172

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPreference:Landroid/preference/Preference;

    .line 217
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPreference:Landroid/preference/Preference;

    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->handwritesettingsclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 219
    const v5, 0x7f0b0143

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPreference:Landroid/preference/Preference;

    .line 220
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPreference:Landroid/preference/Preference;

    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->advancedsettingsclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 225
    const v5, 0x7f0b018f

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mVoiceInputPref:Landroid/preference/CheckBoxPreference;

    .line 228
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isVoiceInstalled()Z

    move-result v5

    if-nez v5, :cond_4

    .line 229
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mVoiceInputPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 232
    :cond_4
    const v5, 0x7f0b0178

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mSwipePointkeyboard:Landroid/preference/Preference;

    .line 233
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mSwipePointkeyboard:Landroid/preference/Preference;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 234
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->GetSwipeOnKeyboard()I

    move-result v5

    iput v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mSwipePointkeyboardIndex:I

    .line 235
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mSwipePointkeyboard:Landroid/preference/Preference;

    if-eqz v5, :cond_5

    .line 236
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mSwipePointkeyboard:Landroid/preference/Preference;

    iget v6, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mSwipePointkeyboardIndex:I

    invoke-direct {p0, v5, v6}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->SetSwipeOnKeyboardSummary(Landroid/preference/Preference;I)V

    .line 238
    :cond_5
    const v5, 0x7f0b0177

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    iput-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mInputModePrefSet:Landroid/preference/PreferenceCategory;

    .line 241
    invoke-virtual {p0, v10}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mInputLanguage:Landroid/preference/PreferenceScreen;

    .line 244
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060018

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mLanguageText:[Ljava/lang/CharSequence;

    .line 246
    const v5, 0x7f0b0188

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mResetSetting:Landroid/preference/Preference;

    .line 247
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mResetSetting:Landroid/preference/Preference;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 248
    const v5, 0x7f0b016b

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mLinkToContactsPref:Landroid/preference/CheckBoxPreference;

    .line 250
    const v5, 0x7f0b017f

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPointingKeyboardPref:Landroid/preference/CheckBoxPreference;

    .line 253
    const v5, 0x7f0b00dc

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mOneHandModePref:Landroid/preference/CheckBoxPreference;

    .line 255
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mOneHandModePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 257
    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_ONE_HAND_FEATURE:Z

    if-nez v5, :cond_6

    .line 258
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mOneHandModePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 261
    :cond_6
    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_CONTACT_ACCESS_FEATURE:Z

    if-nez v5, :cond_7

    .line 262
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mLinkToContactsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 266
    :cond_7
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPointingKeyboardPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 268
    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_POINTING_KEYBOARD_FEATURE:Z

    if-nez v5, :cond_8

    .line 270
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mSwipePointkeyboard:Landroid/preference/Preference;

    if-eqz v5, :cond_8

    .line 271
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mSwipePointkeyboard:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 275
    :cond_8
    const v5, 0x7f0b0181

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitEnglishInput:Landroid/preference/ListPreference;

    .line 278
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitEnglishInput:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 280
    invoke-virtual {v3, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 282
    const v5, 0x7f0b014b

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPreference:Landroid/preference/Preference;

    .line 283
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPreference:Landroid/preference/Preference;

    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->dbUpdateclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 285
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isHKTWModelByCSC()Z

    move-result v5

    if-nez v5, :cond_9

    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_DB_UPDATE_ONLINE:Z

    if-nez v5, :cond_a

    .line 286
    :cond_9
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 297
    :cond_a
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v5, v6, p0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/Context;)V

    .line 299
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/inputmethod/setting/SimeSetting;->getInstance(Landroid/content/SharedPreferences;)Lcom/samsung/inputmethod/setting/SimeSetting;

    .line 301
    const v5, 0x7f0b0142

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->updatePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)V

    .line 303
    invoke-static {v8}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLayoutId(I)I

    move-result v2

    .line 304
    .local v2, layoutId:I
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitEnglishInput:Landroid/preference/ListPreference;

    invoke-direct {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->selectInputModeList(Landroid/preference/ListPreference;)V

    .line 305
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitEnglishInput:Landroid/preference/ListPreference;

    invoke-direct {p0, v5, v2}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->selectInputModeType(Landroid/preference/ListPreference;I)V

    .line 306
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->displayInputModeList()V

    .line 308
    new-instance v4, Lcom/samsung/inputmethod/setting/SimeVersionInfo;

    invoke-direct {v4, p0}, Lcom/samsung/inputmethod/setting/SimeVersionInfo;-><init>(Landroid/content/Context;)V

    .line 309
    .local v4, versionInfo:Lcom/samsung/inputmethod/setting/SimeVersionInfo;
    const v5, 0x7f0b013f

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v4}, Lcom/samsung/inputmethod/setting/SimeVersionInfo;->getSimeVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 317
    new-instance v5, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;

    invoke-direct {v5, p0, v9}, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;-><init>(Landroid/content/Context;Z)V

    iput-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mTabEditDialog:Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;

    .line 318
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mHWLineProperty:[I

    invoke-static {v5}, Lcom/samsung/inputmethod/setting/SimeSetting;->getHandwriteLine([I)V

    .line 319
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mHWLineGradient:[I

    invoke-static {v5}, Lcom/samsung/inputmethod/setting/SimeSetting;->getHandwriteLineGradient([I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mIsLineGradient:Z

    .line 321
    sput-object p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mInstance:Lcom/samsung/inputmethod/setting/SimeSettingActivity;

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 11
    .parameter "id"

    .prologue
    const v1, 0x7f0b002c

    const/4 v9, 0x0

    const/4 v4, 0x0

    const v2, 0x7f0b004a

    const/4 v5, 0x1

    .line 827
    packed-switch p1, :pswitch_data_0

    .line 905
    :goto_0
    return-object v9

    .line 831
    :pswitch_0
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 832
    .local v7, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 833
    if-nez p1, :cond_1

    .line 834
    new-instance v1, Lcom/samsung/inputmethod/setting/SimeSettingActivity$5;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity$5;-><init>(Lcom/samsung/inputmethod/setting/SimeSettingActivity;)V

    invoke-virtual {v7, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 840
    const v1, 0x7f0b007c

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 878
    :cond_0
    :goto_1
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    goto :goto_0

    .line 841
    :cond_1
    if-ne v5, p1, :cond_2

    .line 842
    new-instance v1, Lcom/samsung/inputmethod/setting/SimeSettingActivity$6;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity$6;-><init>(Lcom/samsung/inputmethod/setting/SimeSettingActivity;)V

    invoke-virtual {v7, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 851
    const v1, 0x7f0b0045

    invoke-virtual {v7, v1, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 852
    const v1, 0x7f0b0089

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 854
    :cond_2
    const/4 v1, 0x6

    if-ne v1, p1, :cond_0

    .line 855
    new-instance v1, Lcom/samsung/inputmethod/setting/SimeSettingActivity$7;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity$7;-><init>(Lcom/samsung/inputmethod/setting/SimeSettingActivity;)V

    invoke-virtual {v7, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 873
    const v1, 0x7f0b0045

    invoke-virtual {v7, v1, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 874
    const v1, 0x7f0b00eb

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 880
    .end local v7           #builder:Landroid/app/AlertDialog$Builder;
    :pswitch_1
    new-instance v9, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mHWLineProperty:[I

    aget v1, v1, v5

    invoke-direct {v9, p0, p0, v1}, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$OnColorChangedListener;I)V

    .line 882
    .local v9, colorDialog:Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;
    goto :goto_0

    .line 884
    .end local v9           #colorDialog:Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;
    :pswitch_2
    new-instance v10, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mHWLineProperty:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mHWLineProperty:[I

    aget v2, v2, v5

    invoke-direct {v10, p0, p0, v1, v2}, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog;-><init>(Landroid/content/Context;Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$OnLineChangedListener;II)V

    .local v10, lineStyleDialog:Lcom/samsung/inputmethod/setting/SimeLineStyleDialog;
    move-object v9, v10

    .line 886
    goto :goto_0

    .line 888
    .end local v10           #lineStyleDialog:Lcom/samsung/inputmethod/setting/SimeLineStyleDialog;
    :pswitch_3
    new-instance v0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mHWLineProperty:[I

    aget v3, v1, v4

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mHWLineGradient:[I

    aget v4, v1, v4

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mHWLineGradient:[I

    aget v5, v1, v5

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mHWLineGradient:[I

    const/4 v2, 0x2

    aget v6, v1, v2

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;-><init>(Landroid/content/Context;Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$OnLineGradientChangedListener;IIII)V

    .local v0, lineGradientStyleDialog:Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;
    move-object v9, v0

    .line 891
    goto :goto_0

    .line 893
    .end local v0           #lineGradientStyleDialog:Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;
    :pswitch_4
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 894
    .local v8, builderLanguage:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 896
    new-instance v1, Lcom/samsung/inputmethod/setting/SimeSettingActivity$8;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity$8;-><init>(Lcom/samsung/inputmethod/setting/SimeSettingActivity;)V

    invoke-virtual {v8, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 901
    const v1, 0x7f0b005b

    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 903
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    goto/16 :goto_0

    .line 827
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
    .line 694
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->releaseInstance()V

    .line 695
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 696
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 959
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 964
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 961
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->finish()V

    .line 962
    const/4 v0, 0x1

    goto :goto_0

    .line 959
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 701
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 702
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isTabletModel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 756
    :goto_0
    return-void

    .line 705
    :cond_0
    const/4 v0, 0x0

    .line 707
    .local v0, layoutId:I
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mVoiceInputPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->SetVoiceInput(Z)V

    .line 708
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mLinkToContactsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->SetLinkToContacts(Z)V

    .line 709
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPointingKeyboardPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->SetPointingKeyboard(Z)V

    .line 710
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->GetSwipeOnKeyboard()I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mSwipePointkeyboardIndex:I

    .line 711
    iget v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mSwipePointkeyboardIndex:I

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->SetSwipeOnKeyboard(I)V

    .line 712
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mOneHandModePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->setOneHandMode(Z)V

    .line 713
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitEnglishInput:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 714
    invoke-static {v0, v3}, Lcom/samsung/inputmethod/setting/SimeSetting;->setPortraitInputMode(II)V

    .line 716
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitChineseInput:Landroid/preference/ListPreference;

    if-eqz v1, :cond_1

    .line 717
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitChineseInput:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 718
    invoke-static {v0, v4}, Lcom/samsung/inputmethod/setting/SimeSetting;->setPortraitInputMode(II)V

    .line 721
    :cond_1
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitKoreanInput:Landroid/preference/ListPreference;

    if-eqz v1, :cond_2

    .line 722
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitKoreanInput:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 723
    invoke-static {v0, v5}, Lcom/samsung/inputmethod/setting/SimeSetting;->setPortraitInputMode(II)V

    .line 726
    :cond_2
    invoke-static {}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->imIsHKTWModel()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 727
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitTaiwanInput:Landroid/preference/ListPreference;

    if-eqz v1, :cond_3

    .line 728
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitTaiwanInput:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 729
    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setPortraitInputMode(II)V

    .line 732
    :cond_3
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitHongkongInput:Landroid/preference/ListPreference;

    if-eqz v1, :cond_4

    .line 733
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitHongkongInput:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 734
    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setPortraitInputMode(II)V

    .line 737
    :cond_4
    iget-boolean v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mIsLineGradient:Z

    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mHWLineGradient:[I

    aget v2, v2, v3

    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mHWLineGradient:[I

    aget v3, v3, v4

    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mHWLineGradient:[I

    aget v4, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/inputmethod/setting/SimeSetting;->setHandwriteLineGradient(ZIII)V

    .line 739
    iget v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mHWRecgType:I

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setHandwriteRecgType(I)V

    .line 755
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->writeBack()V

    goto/16 :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 761
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mOneHandModePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 762
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->setOneHandMode(Z)V

    .line 796
    :cond_0
    :goto_0
    return v1

    .line 764
    .restart local p2
    :cond_1
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mSwipePointkeyboard:Landroid/preference/Preference;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 765
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mSwipePointkeyboardIndex:I

    .line 766
    iget v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mSwipePointkeyboardIndex:I

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->SetSwipeOnKeyboard(I)V

    .line 767
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mSwipePointkeyboard:Landroid/preference/Preference;

    if-eqz v2, :cond_0

    .line 768
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mSwipePointkeyboard:Landroid/preference/Preference;

    iget v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mSwipePointkeyboardIndex:I

    invoke-direct {p0, v2, v3}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->SetSwipeOnKeyboardSummary(Landroid/preference/Preference;I)V

    goto :goto_0

    .line 770
    .restart local p2
    :cond_2
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitEnglishInput:Landroid/preference/ListPreference;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 771
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 772
    .local v0, layoutId:I
    invoke-static {v0, v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setPortraitInputMode(II)V

    .line 773
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitEnglishInput:Landroid/preference/ListPreference;

    invoke-direct {p0, v2, v0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->selectInputModeType(Landroid/preference/ListPreference;I)V

    goto :goto_0

    .line 775
    .end local v0           #layoutId:I
    .restart local p2
    :cond_3
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitChineseInput:Landroid/preference/ListPreference;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 776
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 777
    .restart local v0       #layoutId:I
    invoke-static {v0, v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setPortraitInputMode(II)V

    .line 778
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitChineseInput:Landroid/preference/ListPreference;

    invoke-direct {p0, v2, v0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->selectInputModeType(Landroid/preference/ListPreference;I)V

    goto :goto_0

    .line 780
    .end local v0           #layoutId:I
    .restart local p2
    :cond_4
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitKoreanInput:Landroid/preference/ListPreference;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 781
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 782
    .restart local v0       #layoutId:I
    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setPortraitInputMode(II)V

    .line 783
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitKoreanInput:Landroid/preference/ListPreference;

    invoke-direct {p0, v2, v0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->selectInputModeType(Landroid/preference/ListPreference;I)V

    goto :goto_0

    .line 785
    .end local v0           #layoutId:I
    .restart local p2
    :cond_5
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitTaiwanInput:Landroid/preference/ListPreference;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 786
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 787
    .restart local v0       #layoutId:I
    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setPortraitInputMode(II)V

    .line 788
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitTaiwanInput:Landroid/preference/ListPreference;

    invoke-direct {p0, v2, v0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->selectInputModeType(Landroid/preference/ListPreference;I)V

    goto :goto_0

    .line 790
    .end local v0           #layoutId:I
    .restart local p2
    :cond_6
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitHongkongInput:Landroid/preference/ListPreference;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 791
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 792
    .restart local v0       #layoutId:I
    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setPortraitInputMode(II)V

    .line 793
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitHongkongInput:Landroid/preference/ListPreference;

    invoke-direct {p0, v2, v0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->selectInputModeType(Landroid/preference/ListPreference;I)V

    goto/16 :goto_0

    .end local v0           #layoutId:I
    .restart local p2
    :cond_7
    move v1, v2

    .line 796
    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x6

    const/4 v1, 0x1

    .line 658
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 659
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 660
    .local v0, keys:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 661
    const/4 v1, 0x0

    .line 674
    :cond_0
    :goto_0
    return v1

    .line 663
    :cond_1
    const v2, 0x7f0b0188

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 664
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->removeDialog(I)V

    .line 665
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->showDialog(I)V

    goto :goto_0

    .line 666
    :cond_2
    iget-boolean v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mIsTabletModel:Z

    if-eqz v2, :cond_3

    const v2, 0x7f0b02c3

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 668
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mTabEditDialog:Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;

    if-eqz v2, :cond_0

    .line 669
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mTabEditDialog:Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;->showDialog()V

    goto :goto_0

    .line 671
    :cond_3
    const v2, 0x7f0b0149

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 672
    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->showDialog(I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 681
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 682
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isTabletModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    :goto_0
    return-void

    .line 685
    :cond_0
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getHandwriteRecgType()I

    move-result v0

    iput v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mHWRecgType:I

    .line 686
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->updateWidgets()V

    .line 688
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->updateInputModeList()V

    .line 689
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->setLanguageSummary()V

    goto :goto_0
.end method

.method public updateInputModeList()V
    .locals 3

    .prologue
    .line 600
    invoke-static {}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->imIsHKTWModel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 601
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseTw()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 602
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitTaiwanInput:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 603
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLayoutId(I)I

    move-result v0

    .line 604
    .local v0, layoutId:I
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitTaiwanInput:Landroid/preference/ListPreference;

    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->selectInputModeList(Landroid/preference/ListPreference;)V

    .line 605
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitTaiwanInput:Landroid/preference/ListPreference;

    invoke-direct {p0, v1, v0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->selectInputModeType(Landroid/preference/ListPreference;I)V

    .line 606
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitTaiwanInput:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 610
    .end local v0           #layoutId:I
    :cond_0
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseHk()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 611
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitHongkongInput:Landroid/preference/ListPreference;

    if-eqz v1, :cond_1

    .line 612
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLayoutId(I)I

    move-result v0

    .line 613
    .restart local v0       #layoutId:I
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitHongkongInput:Landroid/preference/ListPreference;

    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->selectInputModeList(Landroid/preference/ListPreference;)V

    .line 614
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitHongkongInput:Landroid/preference/ListPreference;

    invoke-direct {p0, v1, v0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->selectInputModeType(Landroid/preference/ListPreference;I)V

    .line 615
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitHongkongInput:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 622
    .end local v0           #layoutId:I
    :cond_1
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChinese()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 623
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitChineseInput:Landroid/preference/ListPreference;

    if-eqz v1, :cond_2

    .line 624
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLayoutId(I)I

    move-result v0

    .line 625
    .restart local v0       #layoutId:I
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitChineseInput:Landroid/preference/ListPreference;

    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->selectInputModeList(Landroid/preference/ListPreference;)V

    .line 626
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitChineseInput:Landroid/preference/ListPreference;

    invoke-direct {p0, v1, v0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->selectInputModeType(Landroid/preference/ListPreference;I)V

    .line 627
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitChineseInput:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 631
    .end local v0           #layoutId:I
    :cond_2
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageKorean()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 632
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitKoreanInput:Landroid/preference/ListPreference;

    if-eqz v1, :cond_3

    .line 633
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLayoutId(I)I

    move-result v0

    .line 634
    .restart local v0       #layoutId:I
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitKoreanInput:Landroid/preference/ListPreference;

    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->selectInputModeList(Landroid/preference/ListPreference;)V

    .line 635
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitKoreanInput:Landroid/preference/ListPreference;

    invoke-direct {p0, v1, v0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->selectInputModeType(Landroid/preference/ListPreference;I)V

    .line 636
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->mPortraitKoreanInput:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 640
    .end local v0           #layoutId:I
    :cond_3
    return-void
.end method

.method public updatePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)V
    .locals 6
    .parameter "parentPref"
    .parameter "prefKey"

    .prologue
    .line 910
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 911
    .local v4, preference:Landroid/preference/Preference;
    if-nez v4, :cond_1

    .line 922
    :cond_0
    :goto_0
    return-void

    .line 914
    :cond_1
    invoke-virtual {v4}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 915
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 916
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 917
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 918
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 919
    .local v2, listSize:I
    if-nez v2, :cond_0

    .line 920
    invoke-virtual {p1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method
