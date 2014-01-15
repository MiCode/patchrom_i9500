.class public Lcom/android/settings_ex/fulllocalepickertest/FullLocalePickerTest;
.super Landroid/app/ListActivity;
.source "FullLocalePickerTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/fulllocalepickertest/FullLocalePickerTest$LocaleInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FullLocalePickerTest"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 42
    return-void
.end method

.method public static constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/settings_ex/fulllocalepickertest/FullLocalePickerTest$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    const v0, 0x7f040077

    .line 74
    .local v0, itemLayout:I
    const v1, 0x7f0b0176

    invoke-static {p0, v0, v1}, Lcom/android/settings_ex/fulllocalepickertest/FullLocalePickerTest;->constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v1

    return-object v1
.end method

.method public static constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;
    .locals 20
    .parameter "context"
    .parameter "layoutId"
    .parameter "fieldId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/settings_ex/fulllocalepickertest/FullLocalePickerTest$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    const/16 v17, 0x44

    move/from16 v0, v17

    new-array v13, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "en_GB"

    aput-object v18, v13, v17

    const/16 v17, 0x1

    const-string v18, "en_US"

    aput-object v18, v13, v17

    const/16 v17, 0x2

    const-string v18, "en_AU"

    aput-object v18, v13, v17

    const/16 v17, 0x3

    const-string v18, "en_IE"

    aput-object v18, v13, v17

    const/16 v17, 0x4

    const-string v18, "en_NZ"

    aput-object v18, v13, v17

    const/16 v17, 0x5

    const-string v18, "en_ZA"

    aput-object v18, v13, v17

    const/16 v17, 0x6

    const-string v18, "ko_KR"

    aput-object v18, v13, v17

    const/16 v17, 0x7

    const-string v18, "de_DE"

    aput-object v18, v13, v17

    const/16 v17, 0x8

    const-string v18, "de_AT"

    aput-object v18, v13, v17

    const/16 v17, 0x9

    const-string v18, "de_CH"

    aput-object v18, v13, v17

    const/16 v17, 0xa

    const-string v18, "fr_FR"

    aput-object v18, v13, v17

    const/16 v17, 0xb

    const-string v18, "fr_BE"

    aput-object v18, v13, v17

    const/16 v17, 0xc

    const-string v18, "fr_CH"

    aput-object v18, v13, v17

    const/16 v17, 0xd

    const-string v18, "bg_BG"

    aput-object v18, v13, v17

    const/16 v17, 0xe

    const-string v18, "cs_CZ"

    aput-object v18, v13, v17

    const/16 v17, 0xf

    const-string v18, "da_DK"

    aput-object v18, v13, v17

    const/16 v17, 0x10

    const-string v18, "el_GR"

    aput-object v18, v13, v17

    const/16 v17, 0x11

    const-string v18, "es_ES"

    aput-object v18, v13, v17

    const/16 v17, 0x12

    const-string v18, "et_EE"

    aput-object v18, v13, v17

    const/16 v17, 0x13

    const-string v18, "fi_FI"

    aput-object v18, v13, v17

    const/16 v17, 0x14

    const-string v18, "ga_IE"

    aput-object v18, v13, v17

    const/16 v17, 0x15

    const-string v18, "hr_HR"

    aput-object v18, v13, v17

    const/16 v17, 0x16

    const-string v18, "hu_HU"

    aput-object v18, v13, v17

    const/16 v17, 0x17

    const-string v18, "is_IS"

    aput-object v18, v13, v17

    const/16 v17, 0x18

    const-string v18, "it_IT"

    aput-object v18, v13, v17

    const/16 v17, 0x19

    const-string v18, "lt_LT"

    aput-object v18, v13, v17

    const/16 v17, 0x1a

    const-string v18, "lv_LV"

    aput-object v18, v13, v17

    const/16 v17, 0x1b

    const-string v18, "mk_MK"

    aput-object v18, v13, v17

    const/16 v17, 0x1c

    const-string v18, "nb_NO"

    aput-object v18, v13, v17

    const/16 v17, 0x1d

    const-string v18, "nl_NL"

    aput-object v18, v13, v17

    const/16 v17, 0x1e

    const-string v18, "nl_BE"

    aput-object v18, v13, v17

    const/16 v17, 0x1f

    const-string v18, "pl_PL"

    aput-object v18, v13, v17

    const/16 v17, 0x20

    const-string v18, "pt_PT"

    aput-object v18, v13, v17

    const/16 v17, 0x21

    const-string v18, "ro_RO"

    aput-object v18, v13, v17

    const/16 v17, 0x22

    const-string v18, "sr_RS"

    aput-object v18, v13, v17

    const/16 v17, 0x23

    const-string v18, "sv_SE"

    aput-object v18, v13, v17

    const/16 v17, 0x24

    const-string v18, "tr_TR"

    aput-object v18, v13, v17

    const/16 v17, 0x25

    const-string v18, "ca_ES"

    aput-object v18, v13, v17

    const/16 v17, 0x26

    const-string v18, "eu_ES"

    aput-object v18, v13, v17

    const/16 v17, 0x27

    const-string v18, "gl_ES"

    aput-object v18, v13, v17

    const/16 v17, 0x28

    const-string v18, "kk_KZ"

    aput-object v18, v13, v17

    const/16 v17, 0x29

    const-string v18, "ru_RU"

    aput-object v18, v13, v17

    const/16 v17, 0x2a

    const-string v18, "sk_SK"

    aput-object v18, v13, v17

    const/16 v17, 0x2b

    const-string v18, "sl_SI"

    aput-object v18, v13, v17

    const/16 v17, 0x2c

    const-string v18, "uk_UA"

    aput-object v18, v13, v17

    const/16 v17, 0x2d

    const-string v18, "uz_UZ"

    aput-object v18, v13, v17

    const/16 v17, 0x2e

    const-string v18, "az_AZ"

    aput-object v18, v13, v17

    const/16 v17, 0x2f

    const-string v18, "hy_AM"

    aput-object v18, v13, v17

    const/16 v17, 0x30

    const-string v18, "ka_GE"

    aput-object v18, v13, v17

    const/16 v17, 0x31

    const-string v18, "zh_CN"

    aput-object v18, v13, v17

    const/16 v17, 0x32

    const-string v18, "zh_HK"

    aput-object v18, v13, v17

    const/16 v17, 0x33

    const-string v18, "zh_TW"

    aput-object v18, v13, v17

    const/16 v17, 0x34

    const-string v18, "ja_JP"

    aput-object v18, v13, v17

    const/16 v17, 0x35

    const-string v18, "en_PH"

    aput-object v18, v13, v17

    const/16 v17, 0x36

    const-string v18, "in_ID"

    aput-object v18, v13, v17

    const/16 v17, 0x37

    const-string v18, "ms_MY"

    aput-object v18, v13, v17

    const/16 v17, 0x38

    const-string v18, "th_TH"

    aput-object v18, v13, v17

    const/16 v17, 0x39

    const-string v18, "vi_VN"

    aput-object v18, v13, v17

    const/16 v17, 0x3a

    const-string v18, "zh_SG"

    aput-object v18, v13, v17

    const/16 v17, 0x3b

    const-string v18, "ar_AE"

    aput-object v18, v13, v17

    const/16 v17, 0x3c

    const-string v18, "fa_FA"

    aput-object v18, v13, v17

    const/16 v17, 0x3d

    const-string v18, "ur_PK"

    aput-object v18, v13, v17

    const/16 v17, 0x3e

    const-string v18, "ar_IL"

    aput-object v18, v13, v17

    const/16 v17, 0x3f

    const-string v18, "iw_IL"

    aput-object v18, v13, v17

    const/16 v17, 0x40

    const-string v18, "es_US"

    aput-object v18, v13, v17

    const/16 v17, 0x41

    const-string v18, "pt_BR"

    aput-object v18, v13, v17

    const/16 v17, 0x42

    const-string v18, "en_CA"

    aput-object v18, v13, v17

    const/16 v17, 0x43

    const-string v18, "fr_CA"

    aput-object v18, v13, v17

    .line 95
    .local v13, locales:[Ljava/lang/String;
    invoke-static {v13}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 96
    array-length v14, v13

    .line 97
    .local v14, origSize:I
    new-array v15, v14, [Lcom/android/settings_ex/fulllocalepickertest/FullLocalePickerTest$LocaleInfo;

    .line 98
    .local v15, preprocess:[Lcom/android/settings_ex/fulllocalepickertest/FullLocalePickerTest$LocaleInfo;
    const/4 v6, 0x0

    .line 99
    .local v6, finalSize:I
    const-string v17, "FullLocalePickerTest"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " FullLocalePickerTest origSize"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v8, 0x0

    .local v8, i:I
    move v7, v6

    .end local v6           #finalSize:I
    .local v7, finalSize:I
    :goto_0
    if-ge v8, v14, :cond_2

    .line 101
    aget-object v16, v13, v8

    .line 102
    .local v16, s:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v11

    .line 103
    .local v11, len:I
    const/16 v17, 0x5

    move/from16 v0, v17

    if-ne v11, v0, :cond_4

    .line 104
    const/16 v17, 0x0

    const/16 v18, 0x2

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 105
    .local v10, language:Ljava/lang/String;
    const/16 v17, 0x3

    const/16 v18, 0x5

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, country:Ljava/lang/String;
    new-instance v9, Ljava/util/Locale;

    invoke-direct {v9, v10, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .local v9, l:Ljava/util/Locale;
    if-nez v7, :cond_0

    .line 109
    const-string v17, "FullLocalePickerTest"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "adding initial "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9, v9}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/settings_ex/fulllocalepickertest/FullLocalePickerTest;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    add-int/lit8 v6, v7, 0x1

    .end local v7           #finalSize:I
    .restart local v6       #finalSize:I
    new-instance v17, Lcom/android/settings_ex/fulllocalepickertest/FullLocalePickerTest$LocaleInfo;

    invoke-virtual {v9, v9}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings_ex/fulllocalepickertest/FullLocalePickerTest;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v9}, Lcom/android/settings_ex/fulllocalepickertest/FullLocalePickerTest$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v17, v15, v7

    .line 100
    .end local v4           #country:Ljava/lang/String;
    .end local v9           #l:Ljava/util/Locale;
    .end local v10           #language:Ljava/lang/String;
    :goto_1
    add-int/lit8 v8, v8, 0x1

    move v7, v6

    .end local v6           #finalSize:I
    .restart local v7       #finalSize:I
    goto :goto_0

    .line 114
    .restart local v4       #country:Ljava/lang/String;
    .restart local v9       #l:Ljava/util/Locale;
    .restart local v10       #language:Ljava/lang/String;
    :cond_0
    const-string v17, "zz_ZZ"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 115
    const-string v5, "Pseudo..."

    .line 119
    .local v5, displayName:Ljava/lang/String;
    :goto_2
    const-string v17, "FullLocalePickerTest"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "adding "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    add-int/lit8 v6, v7, 0x1

    .end local v7           #finalSize:I
    .restart local v6       #finalSize:I
    new-instance v17, Lcom/android/settings_ex/fulllocalepickertest/FullLocalePickerTest$LocaleInfo;

    move-object/from16 v0, v17

    invoke-direct {v0, v5, v9}, Lcom/android/settings_ex/fulllocalepickertest/FullLocalePickerTest$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v17, v15, v7

    goto :goto_1

    .line 117
    .end local v5           #displayName:Ljava/lang/String;
    .end local v6           #finalSize:I
    .restart local v7       #finalSize:I
    :cond_1
    invoke-virtual {v9, v9}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings_ex/fulllocalepickertest/FullLocalePickerTest;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #displayName:Ljava/lang/String;
    goto :goto_2

    .line 125
    .end local v4           #country:Ljava/lang/String;
    .end local v5           #displayName:Ljava/lang/String;
    .end local v9           #l:Ljava/util/Locale;
    .end local v10           #language:Ljava/lang/String;
    .end local v11           #len:I
    .end local v16           #s:Ljava/lang/String;
    :cond_2
    new-array v12, v7, [Lcom/android/settings_ex/fulllocalepickertest/FullLocalePickerTest$LocaleInfo;

    .line 126
    .local v12, localeInfos:[Lcom/android/settings_ex/fulllocalepickertest/FullLocalePickerTest$LocaleInfo;
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_3

    .line 127
    aget-object v17, v15, v8

    aput-object v17, v12, v8

    .line 126
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 129
    :cond_3
    invoke-static {v12}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 130
    new-instance v17, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v12}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-object v17

    .end local v12           #localeInfos:[Lcom/android/settings_ex/fulllocalepickertest/FullLocalePickerTest$LocaleInfo;
    .restart local v11       #len:I
    .restart local v16       #s:Ljava/lang/String;
    :cond_4
    move v6, v7

    .end local v7           #finalSize:I
    .restart local v6       #finalSize:I
    goto :goto_1
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 134
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 138
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static updateLocale(Ljava/util/Locale;)V
    .locals 4
    .parameter "locale"

    .prologue
    .line 165
    :try_start_0
    const-string v2, "FullLocalePickerTest"

    const-string v3, " FullLocalePickerTest updateLocale"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 167
    .local v0, am:Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 169
    .local v1, config:Landroid/content/res/Configuration;
    iput-object p0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 170
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 171
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 172
    const-string v2, "com.android.providers.settings"

    invoke-static {v2}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v1           #config:Landroid/content/res/Configuration;
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 143
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 144
    invoke-static {p0}, Lcom/android/settings_ex/fulllocalepickertest/FullLocalePickerTest;->constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 145
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/settings_ex/fulllocalepickertest/FullLocalePickerTest$LocaleInfo;>;"
    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 146
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 157
    const-string v1, "FullLocalePickerTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " FullLocalePickerTest onListItemClick position : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/fulllocalepickertest/FullLocalePickerTest$LocaleInfo;

    iget-object v0, v1, Lcom/android/settings_ex/fulllocalepickertest/FullLocalePickerTest$LocaleInfo;->locale:Ljava/util/Locale;

    .line 159
    .local v0, locale:Ljava/util/Locale;
    invoke-static {v0}, Lcom/android/settings_ex/fulllocalepickertest/FullLocalePickerTest;->updateLocale(Ljava/util/Locale;)V

    .line 160
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 161
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 150
    const-string v0, "FullLocalePickerTest"

    const-string v1, " FullLocalePickerTest onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 152
    return-void
.end method
