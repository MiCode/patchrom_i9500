.class public Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;
.super Landroid/preference/PreferenceActivity;
.source "SimeSettingsHandwrite.java"

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

.field private static final SUMMARY_COLOR_NUM:I = 0x2

.field private static final SUMMARY_CONVERT_NUM:I = 0x3

.field private static final SUMMARY_HANDWRITING_STYLE_NUM:I = 0x4

.field private static final SUMMARY_HWMODE_NUM:I = 0x5

.field private static final SUMMARY_LINE_NUM:I = 0x0

.field private static final SUMMARY_SPEED_NUM:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SimeSettingsHandwrite"


# instance fields
.field private colorPickerPreference:Landroid/preference/Preference;

.field private mAutoCapitalizationPref:Landroid/preference/CheckBoxPreference;

.field private mColorEntries:[Ljava/lang/CharSequence;

.field private mColorsIndex:I

.field private mConvert:I

.field private mConvertEntries:[Ljava/lang/CharSequence;

.field private mConvertPref:Landroid/preference/ListPreference;

.field private mHWLineGradient:[I

.field private mHWLineProperty:[I

.field private mHWMode:I

.field private mHWModeEntries:[Ljava/lang/CharSequence;

.field private mHWModePref:Landroid/preference/ListPreference;

.field private mHWRecgType:I

.field private mHandwriteColor:Landroid/preference/Preference;

.field private mHandwriteLine:Landroid/preference/Preference;

.field private mHandwriteLineGradient:Landroid/preference/CheckBoxPreference;

.field private mHandwriteSpeed:Landroid/preference/ListPreference;

.field private mHandwriteTypePref:Landroid/preference/ListPreference;

.field private mHandwritingStyle:I

.field private mHandwritingStyleEntries:[Ljava/lang/CharSequence;

.field private mHandwritingStylePref:Landroid/preference/ListPreference;

.field private mIsLineGradient:Z

.field private mLineEntries:[Ljava/lang/CharSequence;

.field private mSpeed:I

.field private mSpeedEntries:[Ljava/lang/CharSequence;

.field private mWidthIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHWLineProperty:[I

    .line 72
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHWLineGradient:[I

    return-void
.end method

.method private summaryChanged(I)V
    .locals 7
    .parameter "item"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 157
    packed-switch p1, :pswitch_data_0

    .line 270
    :goto_0
    return-void

    .line 159
    :pswitch_0
    iget v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mWidthIndex:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 161
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwriteLine:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mLineEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 164
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwriteLine:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mLineEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 167
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwriteLine:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mLineEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 170
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwriteLine:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mLineEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 173
    :pswitch_5
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwriteLine:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mLineEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 179
    :pswitch_6
    iget v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mSpeed:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 181
    :sswitch_0
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwriteSpeed:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mSpeedEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 184
    :sswitch_1
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwriteSpeed:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mSpeedEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 187
    :sswitch_2
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwriteSpeed:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mSpeedEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 190
    :sswitch_3
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwriteSpeed:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mSpeedEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 193
    :sswitch_4
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwriteSpeed:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mSpeedEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 198
    :pswitch_7
    iget v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mColorsIndex:I

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 200
    :pswitch_8
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwriteColor:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mColorEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 203
    :pswitch_9
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwriteColor:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mColorEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 206
    :pswitch_a
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwriteColor:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mColorEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 209
    :pswitch_b
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwriteColor:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mColorEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 221
    :pswitch_c
    iget v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mConvert:I

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_0

    .line 223
    :pswitch_d
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mConvertPref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mConvertEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 226
    :pswitch_e
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mConvertPref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mConvertEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 229
    :pswitch_f
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mConvertPref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mConvertEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 234
    :pswitch_10
    iget v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwritingStyle:I

    packed-switch v0, :pswitch_data_4

    goto/16 :goto_0

    .line 236
    :pswitch_11
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwritingStylePref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwritingStyleEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 239
    :pswitch_12
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwritingStylePref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwritingStyleEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 242
    :pswitch_13
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwritingStylePref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwritingStyleEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 245
    :pswitch_14
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwritingStylePref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwritingStyleEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 248
    :pswitch_15
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwritingStylePref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwritingStyleEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 251
    :pswitch_16
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwritingStylePref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwritingStyleEntries:[Ljava/lang/CharSequence;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_c
        :pswitch_10
    .end packed-switch

    .line 159
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 179
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x12c -> :sswitch_1
        0x1f4 -> :sswitch_2
        0x2bc -> :sswitch_3
        0x3e8 -> :sswitch_4
    .end sparse-switch

    .line 198
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 221
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    .line 234
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method private updateSettingsHandwriteWidget()V
    .locals 5

    .prologue
    .line 340
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mConvertPref:Landroid/preference/ListPreference;

    iget v4, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mConvert:I

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 341
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    .line 344
    .local v0, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    const/4 v3, 0x3

    new-array v2, v3, [I

    .line 345
    .local v2, pt:[I
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwriteSpeed:Landroid/preference/ListPreference;

    iget v4, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mSpeed:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 346
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwritingStylePref:Landroid/preference/ListPreference;

    iget v4, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwritingStyle:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 349
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChinese()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseHk()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseTw()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 351
    :cond_0
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mConvertPref:Landroid/preference/ListPreference;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 354
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/4 v3, 0x6

    if-ge v1, v3, :cond_1

    .line 355
    const/4 v3, 0x5

    if-ne v1, v3, :cond_3

    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_FULLSCREEN_FEATURE:Z

    if-nez v3, :cond_3

    .line 359
    :cond_1
    return-void

    .line 353
    .end local v1           #i:I
    :cond_2
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mConvertPref:Landroid/preference/ListPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0

    .line 357
    .restart local v1       #i:I
    :cond_3
    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->summaryChanged(I)V

    .line 354
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public colorChanged(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHWLineProperty:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 274
    return-void
.end method

.method public lineChanged(I)V
    .locals 2
    .parameter "line"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHWLineProperty:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 278
    return-void
.end method

.method public lineGradientChanged(III)V
    .locals 2
    .parameter "scolor"
    .parameter "mcolor"
    .parameter "ecolor"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHWLineGradient:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 282
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHWLineGradient:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 283
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHWLineGradient:[I

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 284
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    const v3, 0x7f040006

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->addPreferencesFromResource(I)V

    .line 99
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 100
    .local v0, bar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 101
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 106
    .local v2, prefSet:Landroid/preference/PreferenceScreen;
    const v3, 0x7f0b014a

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mConvertPref:Landroid/preference/ListPreference;

    .line 108
    const v3, 0x7f0b016e

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwriteLine:Landroid/preference/Preference;

    .line 109
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwriteLine:Landroid/preference/Preference;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 111
    const v3, 0x7f0b016c

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwriteColor:Landroid/preference/Preference;

    .line 112
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwriteColor:Landroid/preference/Preference;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 114
    const v3, 0x7f0b0171

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwriteSpeed:Landroid/preference/ListPreference;

    .line 115
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwriteSpeed:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 117
    const v3, 0x7f0b0175

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwritingStylePref:Landroid/preference/ListPreference;

    .line 118
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwritingStylePref:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 120
    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HANDWRITING_BEAUTIFY_FEATURE:Z

    if-nez v3, :cond_1

    .line 121
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwritingStylePref:Landroid/preference/ListPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 123
    :cond_1
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getConvert()I

    move-result v3

    iput v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mConvert:I

    .line 124
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mConvertPref:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 126
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v1

    .line 137
    .local v1, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mConvertEntries:[Ljava/lang/CharSequence;

    .line 138
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHWModeEntries:[Ljava/lang/CharSequence;

    .line 139
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mLineEntries:[Ljava/lang/CharSequence;

    .line 140
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mColorEntries:[Ljava/lang/CharSequence;

    .line 141
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mSpeedEntries:[Ljava/lang/CharSequence;

    .line 142
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwritingStyleEntries:[Ljava/lang/CharSequence;

    .line 144
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHWLineProperty:[I

    invoke-static {v3}, Lcom/samsung/inputmethod/setting/SimeSetting;->getHandwriteLine([I)V

    .line 145
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getHandwriteLineWidthIndex()I

    move-result v3

    iput v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mWidthIndex:I

    .line 146
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getHandwriteLineColorIndex()I

    move-result v3

    iput v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mColorsIndex:I

    .line 147
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getSpeed()I

    move-result v3

    iput v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mSpeed:I

    .line 148
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHWLineGradient:[I

    invoke-static {v3}, Lcom/samsung/inputmethod/setting/SimeSetting;->getHandwriteLineGradient([I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mIsLineGradient:Z

    .line 149
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getHandwriteRecgType()I

    move-result v3

    iput v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHWRecgType:I

    .line 150
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getHandwritingStyle()I

    move-result v3

    iput v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwritingStyle:I

    .line 151
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->summaryChanged(I)V

    .line 152
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 11
    .parameter "id"

    .prologue
    const v1, 0x7f0b002c

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v2, 0x7f0b004a

    const/4 v9, 0x0

    .line 409
    packed-switch p1, :pswitch_data_0

    .line 460
    :goto_0
    :pswitch_0
    return-object v9

    .line 412
    :pswitch_1
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 413
    .local v7, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 414
    if-nez p1, :cond_1

    .line 415
    new-instance v1, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite$1;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite$1;-><init>(Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;)V

    invoke-virtual {v7, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 419
    const v1, 0x7f0b007c

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 435
    :cond_0
    :goto_1
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 436
    .local v9, dialog:Landroid/app/AlertDialog;
    goto :goto_0

    .line 420
    .end local v9           #dialog:Landroid/app/AlertDialog;
    :cond_1
    if-ne v5, p1, :cond_0

    .line 421
    new-instance v1, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite$2;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite$2;-><init>(Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;)V

    invoke-virtual {v7, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 431
    const v1, 0x7f0b0045

    invoke-virtual {v7, v1, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 432
    const v1, 0x7f0b0089

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 446
    .end local v7           #builder:Landroid/app/AlertDialog$Builder;
    :pswitch_2
    new-instance v0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHWLineProperty:[I

    aget v3, v1, v4

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHWLineGradient:[I

    aget v4, v1, v4

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHWLineGradient:[I

    aget v5, v1, v5

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHWLineGradient:[I

    const/4 v2, 0x2

    aget v6, v1, v2

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;-><init>(Landroid/content/Context;Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$OnLineGradientChangedListener;IIII)V

    .local v0, lineGradientStyleDialog:Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;
    move-object v9, v0

    .line 448
    goto :goto_0

    .line 450
    .end local v0           #lineGradientStyleDialog:Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;
    :pswitch_3
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 451
    .local v8, builderLanguage:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 453
    new-instance v1, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite$3;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite$3;-><init>(Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;)V

    invoke-virtual {v8, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 456
    const v1, 0x7f0b005b

    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 457
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    .local v10, dialogLanguage:Landroid/app/AlertDialog;
    move-object v9, v10

    .line 458
    goto :goto_0

    .line 409
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 295
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 296
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 466
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 471
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 468
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->finish()V

    .line 469
    const/4 v0, 0x1

    goto :goto_0

    .line 466
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 5

    .prologue
    .line 300
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 303
    iget v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mColorsIndex:I

    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSetting;->setHandwriteLineColorIndex(I)V

    .line 304
    iget v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mWidthIndex:I

    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSetting;->setHandwriteLineWidthIndex(I)V

    .line 305
    iget v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mSpeed:I

    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSetting;->setSpeed(I)V

    .line 306
    iget-boolean v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mIsLineGradient:Z

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHWLineGradient:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHWLineGradient:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHWLineGradient:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/inputmethod/setting/SimeSetting;->setHandwriteLineGradient(ZIII)V

    .line 307
    iget v0, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHWRecgType:I

    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSetting;->setHandwriteRecgType(I)V

    .line 309
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->writeBack()V

    .line 310
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 362
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, keys:Ljava/lang/String;
    const v1, 0x7f0b014a

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 364
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mConvertPref:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v1, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mConvert:I

    .line 365
    iget v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mConvert:I

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setConvert(I)V

    .line 366
    iget v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mConvert:I

    if-gez v1, :cond_2

    .line 367
    iput v3, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mConvert:I

    .line 371
    :cond_0
    :goto_0
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->summaryChanged(I)V

    .line 372
    iget v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mConvert:I

    int-to-short v1, v1

    invoke-static {v1}, Lcom/samsung/inputmethod/service/handwriting/SimeHWService;->hwEnableTraSimConversion(I)I

    .line 403
    :cond_1
    :goto_1
    return v4

    .line 368
    :cond_2
    iget v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mConvert:I

    if-le v1, v2, :cond_0

    .line 369
    iput v2, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mConvert:I

    goto :goto_0

    .line 373
    .restart local p2
    :cond_3
    const v1, 0x7f0b0171

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 374
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mSpeed:I

    .line 375
    iget v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mSpeed:I

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setSpeed(I)V

    .line 376
    invoke-direct {p0, v4}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->summaryChanged(I)V

    goto :goto_1

    .line 377
    .restart local p2
    :cond_4
    const v1, 0x7f0b0170

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 378
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mIsLineGradient:Z

    goto :goto_1

    .line 379
    .restart local p2
    :cond_5
    const v1, 0x7f0b016c

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 380
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mColorsIndex:I

    .line 383
    iget v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mColorsIndex:I

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setHandwriteLineColorIndex(I)V

    .line 384
    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->summaryChanged(I)V

    goto :goto_1

    .line 386
    .restart local p2
    :cond_6
    const v1, 0x7f0b016e

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 387
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mWidthIndex:I

    .line 390
    iget v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mWidthIndex:I

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setHandwriteLineWidthIndex(I)V

    .line 391
    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->summaryChanged(I)V

    goto :goto_1

    .line 397
    .restart local p2
    :cond_7
    const v1, 0x7f0b0175

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 398
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwritingStyle:I

    .line 399
    iget v1, p0, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->mHandwritingStyle:I

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setHandwritingStyle(I)V

    .line 400
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->summaryChanged(I)V

    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x1

    .line 314
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 315
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, keys:Ljava/lang/String;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    .line 335
    :cond_0
    :goto_0
    return v1

    .line 319
    :cond_1
    const v2, 0x7f0b016c

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 323
    const v2, 0x7f0b016e

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 326
    const v2, 0x7f0b016f

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 327
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->removeDialog(I)V

    .line 328
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->showDialog(I)V

    goto :goto_0

    .line 330
    :cond_2
    const v2, 0x7f0b0149

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 331
    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->showDialog(I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 288
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 289
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSettingsHandwrite;->updateSettingsHandwriteWidget()V

    .line 290
    return-void
.end method
