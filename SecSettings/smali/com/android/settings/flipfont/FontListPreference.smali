.class public Lcom/android/settings_ex/flipfont/FontListPreference;
.super Landroid/preference/ListPreference;
.source "FontListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/flipfont/FontListPreference$LoadListTask;
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field public static final KEY_PREFERENCE:Ljava/lang/String; = "MONOTYPE"

.field public static NO_CANCEL:Z = false

.field public static NO_WARNING_DIALOG:Z = false

.field public static final PRIVATE_PREFERENCES:Ljava/lang/String; = "prefs"

.field public static REBOOT:Z = false

.field public static final TAG:Ljava/lang/String; = "FontListPreference"

.field private static final apkNameList:[Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private isWidget:Ljava/lang/Boolean;

.field private mBuyButtonClicked:Z

.field private mCheckBadFont:Z

.field private mClickedItem:I

.field private mDefaultUseHelvetica:Z

.field private mDialogBottomPadding:I

.field private mDialogLeftPadding:I

.field private mDialogRightPadding:I

.field private mDialogTopPadding:I

.field private mDisplaySettings:Lcom/android/settings_ex/DisplaySettings;

.field private mFileCopying:Z

.field private mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

.field private mListDialogIsActive:Z

.field private mPreviousFont:I

.field private mQuestionDialogFontSize:I

.field private mRebootDialogIsActive:Z

.field private mSavedClickedItem:I

.field private mSelectDialogIsActive:Z

.field mSetFontToAlert:Landroid/app/AlertDialog;

.field mState:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    sput-boolean v2, Lcom/android/settings_ex/flipfont/FontListPreference;->REBOOT:Z

    .line 78
    sput-boolean v3, Lcom/android/settings_ex/flipfont/FontListPreference;->NO_WARNING_DIALOG:Z

    .line 81
    sput-boolean v2, Lcom/android/settings_ex/flipfont/FontListPreference;->NO_CANCEL:Z

    .line 83
    sput-boolean v2, Lcom/android/settings_ex/flipfont/FontListPreference;->DEBUG:Z

    .line 989
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    const-string v1, "com.monotype.android.font.chococooky"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "com.monotype.android.font.cooljazz"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.monotype.android.font.helvneuelt"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.monotype.android.font.samsungsans"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.monotype.android.font.rosemary"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.monotype.android.font.applemint"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.monotype.android.font.tinkerbell"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.monotype.android.font.maruberi"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.monotype.android.font.mincho"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.monotype.android.font.arjpopb"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.monotype.android.font.kaiti"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.monotype.android.font.shaonv"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.monotype.android.font.miao"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/flipfont/FontListPreference;->apkNameList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 272
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/flipfont/FontListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 273
    sget-boolean v0, Lcom/android/settings_ex/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 274
    const-string v0, "FlipFont"

    const-string v1, "FontListPreference(Context context)"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f090988

    const/16 v5, 0x14

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 147
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    iput-object v7, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->context:Landroid/content/Context;

    .line 94
    iput-boolean v3, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mDefaultUseHelvetica:Z

    .line 97
    iput-object v7, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    .line 101
    iput v4, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mPreviousFont:I

    .line 104
    iput v4, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mClickedItem:I

    .line 107
    iput-boolean v3, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mBuyButtonClicked:Z

    .line 110
    iput-boolean v3, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mFileCopying:Z

    .line 113
    iput v5, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mQuestionDialogFontSize:I

    .line 116
    iput v5, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mDialogLeftPadding:I

    .line 118
    const/16 v2, 0xa

    iput v2, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mDialogTopPadding:I

    .line 120
    iput v5, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mDialogRightPadding:I

    .line 122
    const/16 v2, 0xa

    iput v2, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mDialogBottomPadding:I

    .line 127
    iput-boolean v3, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 129
    iput v4, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mSavedClickedItem:I

    .line 132
    iput-boolean v3, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    .line 133
    iput-boolean v3, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mListDialogIsActive:Z

    .line 134
    iput-boolean v3, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mCheckBadFont:Z

    .line 138
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->isWidget:Ljava/lang/Boolean;

    .line 141
    iput-object v7, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mState:Landroid/os/Bundle;

    .line 149
    sget-boolean v2, Lcom/android/settings_ex/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 150
    const-string v2, "FlipFont"

    const-string v3, "FontListPreference(Context context, AttributeSet attrs)"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    iput-object p1, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->context:Landroid/content/Context;

    .line 153
    const-string v2, "MONOTYPE"

    invoke-virtual {p0, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 170
    const-string v2, "MONOTYPE"

    invoke-virtual {p0, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 172
    const/4 v2, 0x1

    invoke-static {v2}, Landroid/graphics/Typeface;->getFontPathFlipFont(I)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, sName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 174
    .local v1, temp:[Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 175
    if-eqz v1, :cond_1

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-lez v2, :cond_1

    .line 176
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v1, v2

    .line 180
    :goto_0
    if-nez v0, :cond_2

    .line 181
    const v2, 0x7f090989

    invoke-virtual {p0, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 191
    :goto_1
    invoke-virtual {p0, v6}, Landroid/preference/DialogPreference;->setDialogTitle(I)V

    .line 192
    sget-boolean v2, Lcom/android/settings_ex/flipfont/FontListPreference;->NO_CANCEL:Z

    if-eqz v2, :cond_5

    .line 198
    :goto_2
    const v2, 0x7f0200bf

    invoke-virtual {p0, v2}, Landroid/preference/DialogPreference;->setDialogIcon(I)V

    .line 199
    return-void

    .line 178
    :cond_1
    const/4 v2, 0x1

    invoke-static {v2}, Landroid/graphics/Typeface;->getFontNameFlipFont(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 183
    :cond_2
    const-string v2, "default"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 184
    :cond_3
    const v2, 0x7f09099b

    invoke-virtual {p0, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 187
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/settings_ex/flipfont/FontListPreference;->getFontName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 195
    :cond_5
    const/high16 v2, 0x104

    invoke-virtual {p0, v2}, Landroid/preference/DialogPreference;->setNegativeButtonText(I)V

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/settings_ex/flipfont/FontListPreference;)Lcom/android/settings_ex/flipfont/FontListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/flipfont/FontListPreference;Lcom/android/settings_ex/flipfont/FontListAdapter;)Lcom/android/settings_ex/flipfont/FontListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/settings_ex/flipfont/FontListPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mBuyButtonClicked:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings_ex/flipfont/FontListPreference;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings_ex/flipfont/FontListPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/settings_ex/flipfont/FontListPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings_ex/flipfont/FontListPreference;)Lcom/android/settings_ex/DisplaySettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mDisplaySettings:Lcom/android/settings_ex/DisplaySettings;

    return-object v0
.end method

.method private deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "str"

    .prologue
    .line 202
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 203
    .local v1, sbf:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 204
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    .line 205
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 203
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getFontName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "fontName"

    .prologue
    const v3, 0x7f090995

    const v2, 0x7f090994

    const v1, 0x7f090993

    .line 214
    const-string v0, "Rosemary"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .line 265
    .restart local p1
    :goto_0
    return-object p1

    .line 217
    :cond_0
    const-string v0, "Choco cooky"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .restart local p1
    goto :goto_0

    .line 220
    :cond_1
    const-string v0, "Cool jazz"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 221
    iget-object v0, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .restart local p1
    goto :goto_0

    .line 223
    :cond_2
    const-string v0, "HelveticaNeueRegular"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 224
    const-string p1, "Helvetica S"

    goto :goto_0

    .line 226
    :cond_3
    const-string v0, "Samsung sans"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 227
    const-string p1, "Samsung Sans"

    goto :goto_0

    .line 229
    :cond_4
    const-string v0, "Apple mint"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 230
    iget-object v0, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090996

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .restart local p1
    goto :goto_0

    .line 232
    :cond_5
    const-string v0, "Tinker bell"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 233
    iget-object v0, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090997

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .restart local p1
    goto/16 :goto_0

    .line 235
    :cond_6
    const-string v0, "Shao nv"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 236
    iget-object v0, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090efa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .restart local p1
    goto/16 :goto_0

    .line 238
    :cond_7
    const-string v0, "Kaiti"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 239
    iget-object v0, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090efb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .restart local p1
    goto/16 :goto_0

    .line 241
    :cond_8
    const-string v0, "Miao"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 242
    iget-object v0, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090efc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .restart local p1
    goto/16 :goto_0

    .line 244
    :cond_9
    const-string v0, "Maruberi"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 245
    iget-object v0, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090998

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .restart local p1
    goto/16 :goto_0

    .line 247
    :cond_a
    const-string v0, "Mincho"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 248
    iget-object v0, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090999

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .restart local p1
    goto/16 :goto_0

    .line 250
    :cond_b
    const-string v0, "Pop"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 251
    iget-object v0, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09099a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .restart local p1
    goto/16 :goto_0

    .line 253
    :cond_c
    const-string v0, "Cool"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 254
    iget-object v0, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .restart local p1
    goto/16 :goto_0

    .line 256
    :cond_d
    const-string v0, "Rose"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 257
    iget-object v0, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .restart local p1
    goto/16 :goto_0

    .line 259
    :cond_e
    const-string v0, "Choco"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 260
    iget-object v0, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .restart local p1
    goto/16 :goto_0

    .line 263
    :cond_f
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/graphics/Typeface;->getFontNameFlipFont(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0
.end method


# virtual methods
.method protected RebootDialog()V
    .locals 6

    .prologue
    .line 916
    sget-boolean v3, Lcom/android/settings_ex/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 917
    const-string v3, "FlipFont"

    const-string v4, "RebootDialog()"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    :cond_0
    iget-boolean v3, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    if-eqz v3, :cond_1

    .line 963
    :goto_0
    return-void

    .line 926
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    .line 927
    invoke-virtual {p0}, Lcom/android/settings_ex/flipfont/FontListPreference;->savePreferences()V

    .line 929
    invoke-virtual {p0}, Lcom/android/settings_ex/flipfont/FontListPreference;->hideList()V

    .line 931
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 932
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09099d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 934
    .local v2, s:Ljava/lang/String;
    const v3, 0x1080027

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f09099c

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f09099e

    new-instance v5, Lcom/android/settings_ex/flipfont/FontListPreference$10;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/flipfont/FontListPreference$10;-><init>(Lcom/android/settings_ex/flipfont/FontListPreference;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    new-instance v5, Lcom/android/settings_ex/flipfont/FontListPreference$9;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/flipfont/FontListPreference$9;-><init>(Lcom/android/settings_ex/flipfont/FontListPreference;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 953
    new-instance v3, Lcom/android/settings_ex/flipfont/FontListPreference$11;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/flipfont/FontListPreference$11;-><init>(Lcom/android/settings_ex/flipfont/FontListPreference;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 961
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 962
    .local v1, rebootDialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method protected badFontDialog(Ljava/lang/String;)V
    .locals 5
    .parameter "apkName"

    .prologue
    .line 1075
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1078
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    move-object v2, p1

    .line 1081
    .local v2, deletePackageName:Ljava/lang/String;
    const v3, 0x7f0909a3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1084
    const v3, 0x7f0909a4

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1087
    const v3, 0x1080027

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1090
    const v3, 0x104000a

    new-instance v4, Lcom/android/settings_ex/flipfont/FontListPreference$12;

    invoke-direct {v4, p0, v2}, Lcom/android/settings_ex/flipfont/FontListPreference$12;-><init>(Lcom/android/settings_ex/flipfont/FontListPreference;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1107
    const/high16 v3, 0x104

    new-instance v4, Lcom/android/settings_ex/flipfont/FontListPreference$13;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/flipfont/FontListPreference$13;-><init>(Lcom/android/settings_ex/flipfont/FontListPreference;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1114
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1115
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1116
    return-void
.end method

.method protected checkFont(Ljava/lang/String;)Z
    .locals 15
    .parameter "apkname"

    .prologue
    const/4 v12, 0x0

    .line 1008
    sget-boolean v11, Lcom/android/settings_ex/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v11, :cond_0

    .line 1009
    const-string v11, "FlipFont"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "checkFont - checking apkname"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    :cond_0
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    sget-object v11, Lcom/android/settings_ex/flipfont/FontListPreference;->apkNameList:[Ljava/lang/String;

    array-length v11, v11

    if-ge v6, v11, :cond_3

    .line 1014
    sget-object v11, Lcom/android/settings_ex/flipfont/FontListPreference;->apkNameList:[Ljava/lang/String;

    aget-object v11, v11, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1015
    sget-boolean v11, Lcom/android/settings_ex/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v11, :cond_1

    .line 1016
    const-string v11, "FlipFont"

    const-string v13, "**Apk name matches list**"

    invoke-static {v11, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v11, v12

    .line 1070
    :goto_1
    return v11

    .line 1013
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1023
    :cond_3
    sget-boolean v11, Lcom/android/settings_ex/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v11, :cond_4

    .line 1024
    const-string v11, "FlipFont"

    const-string v13, "checkFont - check if valid certificate"

    invoke-static {v11, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    :cond_4
    const/4 v9, 0x0

    .line 1028
    .local v9, packageInfo:Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v11, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    iget-object v11, v11, Lcom/android/settings_ex/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v13, 0x40

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v9

    .line 1032
    :goto_2
    iget-object v10, v9, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 1035
    .local v10, signatures:[Landroid/content/pm/Signature;
    aget-object v11, v10, v12

    invoke-virtual {v11}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    .line 1036
    .local v2, cert:[B
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1037
    .local v7, input:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 1039
    .local v4, cf:Ljava/security/cert/CertificateFactory;
    :try_start_1
    const-string v11, "X509"

    invoke-static {v11}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 1044
    :goto_3
    const/4 v1, 0x0

    .line 1046
    .local v1, c:Ljava/security/cert/X509Certificate;
    :try_start_2
    invoke-virtual {v4, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v1, v0
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1051
    :goto_4
    sget-boolean v11, Lcom/android/settings_ex/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v11, :cond_5

    .line 1052
    const-string v11, "Example"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "APK name: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    const-string v11, "Example"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Certificate for: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    const-string v11, "Example"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Certificate issued by: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    const-string v11, "Example"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "The certificate is valid from "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    const-string v11, "Example"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Certificate SN# "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    const-string v11, "Example"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Generated with "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :cond_5
    const-string v3, "CN=Ed Platz, OU=Display Imaging, O=Monotype Imanging Inc., L=Woburn, ST=MA, C=US"

    .line 1062
    .local v3, certIssuedByString:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1064
    .local v8, issuerDNString:Ljava/lang/String;
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1065
    sget-boolean v11, Lcom/android/settings_ex/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v11, :cond_6

    .line 1066
    const-string v11, "FlipFont"

    const-string v13, "**Certificate data is correct**"

    invoke-static {v11, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v11, v12

    .line 1068
    goto/16 :goto_1

    .line 1040
    .end local v1           #c:Ljava/security/cert/X509Certificate;
    .end local v3           #certIssuedByString:Ljava/lang/String;
    .end local v8           #issuerDNString:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 1042
    .local v5, e:Ljava/security/cert/CertificateException;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    .line 1047
    .end local v5           #e:Ljava/security/cert/CertificateException;
    .restart local v1       #c:Ljava/security/cert/X509Certificate;
    :catch_1
    move-exception v5

    .line 1049
    .restart local v5       #e:Ljava/security/cert/CertificateException;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_4

    .line 1070
    .end local v5           #e:Ljava/security/cert/CertificateException;
    .restart local v3       #certIssuedByString:Ljava/lang/String;
    .restart local v8       #issuerDNString:Ljava/lang/String;
    :cond_7
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 1030
    .end local v1           #c:Ljava/security/cert/X509Certificate;
    .end local v2           #cert:[B
    .end local v3           #certIssuedByString:Ljava/lang/String;
    .end local v4           #cf:Ljava/security/cert/CertificateFactory;
    .end local v7           #input:Ljava/io/InputStream;
    .end local v8           #issuerDNString:Ljava/lang/String;
    .end local v10           #signatures:[Landroid/content/pm/Signature;
    :catch_2
    move-exception v11

    goto/16 :goto_2
.end method

.method public directFontList()V
    .locals 1

    .prologue
    .line 280
    invoke-super {p0}, Landroid/preference/DialogPreference;->onClick()V

    .line 281
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->isWidget:Ljava/lang/Boolean;

    .line 282
    return-void
.end method

.method protected dismissApp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 830
    sget-boolean v0, Lcom/android/settings_ex/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 831
    const-string v0, "FlipFont"

    const-string v1, "dismissApp()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    :cond_0
    iput-boolean v2, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    .line 836
    iput-boolean v2, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 837
    invoke-virtual {p0}, Lcom/android/settings_ex/flipfont/FontListPreference;->savePreferences()V

    .line 838
    invoke-virtual {p0}, Lcom/android/settings_ex/flipfont/FontListPreference;->dismissList()V

    .line 839
    return-void
.end method

.method protected dismissList()V
    .locals 3

    .prologue
    .line 965
    sget-boolean v1, Lcom/android/settings_ex/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 966
    const-string v1, "FlipFont"

    const-string v2, "dismissList()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 976
    :cond_1
    :goto_0
    return-void

    .line 971
    :catch_0
    move-exception v0

    .line 972
    .local v0, ex:Ljava/lang/Exception;
    sget-boolean v1, Lcom/android/settings_ex/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 973
    const-string v1, "FlipFont"

    const-string v2, "dismissList() - catch (Exception ex)"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSavedSelectedFontStringPreference()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1120
    const/4 v0, 0x0

    .line 1121
    .local v0, mode:I
    iget-object v2, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v3, "prefs"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1123
    .local v1, mySharedPreference:Landroid/content/SharedPreferences;
    const-string v2, "selectedFont"

    const-string v3, "MONOTYPE"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected hideList()V
    .locals 3

    .prologue
    .line 980
    :try_start_0
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->hide()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 987
    :cond_0
    :goto_0
    return-void

    .line 982
    :catch_0
    move-exception v0

    .line 983
    .local v0, ex:Ljava/lang/Exception;
    sget-boolean v1, Lcom/android/settings_ex/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 984
    const-string v1, "FlipFont"

    const-string v2, "hideList() - catch (Exception ex)"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public loadPreferences()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 907
    const/4 v0, 0x0

    .line 908
    .local v0, mode:I
    iget-object v2, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v3, "prefs"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 911
    .local v1, mySharedPreference:Landroid/content/SharedPreferences;
    const-string v2, "SelectDialogIsActive"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 912
    const-string v2, "RebootDialogIsActive"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    .line 913
    const-string v2, "SavedClickedItem"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mSavedClickedItem:I

    .line 914
    return-void
.end method

.method public onCancelButtonPressed()V
    .locals 4

    .prologue
    .line 640
    sget-boolean v2, Lcom/android/settings_ex/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 641
    const-string v2, "FlipFont"

    const-string v3, "onCancelButtonPressed() "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_0
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 644
    .local v0, d:Landroid/app/Dialog;
    if-eqz v0, :cond_1

    .line 645
    invoke-virtual {v0}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 646
    .local v1, v:Landroid/widget/ListView;
    if-eqz v1, :cond_1

    .line 647
    iget v2, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mPreviousFont:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 651
    .end local v1           #v:Landroid/widget/ListView;
    :cond_1
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 661
    sget-boolean v5, Lcom/android/settings_ex/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 662
    const-string v5, "FlipFont"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onClick(DialogInterface dialog, int which) - which = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/DialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 666
    iget v5, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mPreviousFont:I

    if-ne p2, v5, :cond_2

    .line 667
    sget-boolean v5, Lcom/android/settings_ex/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 668
    const-string v5, "FlipFont"

    const-string v6, "onClick(DialogInterface dialog, int which) - exit "

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :cond_1
    :goto_0
    return-void

    .line 672
    :cond_2
    sget-boolean v5, Lcom/android/settings_ex/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v5, :cond_3

    .line 673
    const-string v5, "FlipFont"

    const-string v6, "onClick(DialogInterface dialog, int which) after (which == mPreviousFont) "

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :cond_3
    const/4 v5, -0x2

    if-ne p2, v5, :cond_6

    .line 677
    sget-boolean v5, Lcom/android/settings_ex/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v5, :cond_4

    .line 678
    const-string v5, "FlipFont"

    const-string v6, "onClick(DialogInterface dialog, int which) after (which == -2) "

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_4
    iget-object v5, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    if-eqz v5, :cond_5

    .line 681
    iget-object v5, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 682
    iget-object v5, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->cancel()V

    .line 683
    iput-object v10, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    .line 686
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings_ex/flipfont/FontListPreference;->dismissApp()V

    .line 687
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 688
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 693
    :cond_6
    const/4 v3, 0x0

    .line 694
    .local v3, question:Ljava/lang/String;
    const/4 v1, 0x0

    .line 695
    .local v1, fontName:Ljava/lang/String;
    iput-object v10, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    .line 696
    iput p2, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mClickedItem:I

    .line 697
    iget-object v5, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    iget-object v5, v5, Lcom/android/settings_ex/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget v6, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v5, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 698
    .local v2, press_apkname:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/flipfont/FontListPreference;->checkFont(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mCheckBadFont:Z

    .line 699
    iget-boolean v5, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mCheckBadFont:Z

    if-eqz v5, :cond_7

    .line 700
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/flipfont/FontListPreference;->badFontDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 704
    :cond_7
    if-ge p2, v8, :cond_8

    .line 705
    iget-object v5, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09098e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 707
    .local v4, s:Ljava/lang/String;
    move-object v3, v4

    .line 718
    :goto_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 719
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f090047

    new-instance v6, Lcom/android/settings_ex/flipfont/FontListPreference$4;

    invoke-direct {v6, p0}, Lcom/android/settings_ex/flipfont/FontListPreference$4;-><init>(Lcom/android/settings_ex/flipfont/FontListPreference;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f090048

    new-instance v7, Lcom/android/settings_ex/flipfont/FontListPreference$3;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/flipfont/FontListPreference$3;-><init>(Lcom/android/settings_ex/flipfont/FontListPreference;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 732
    new-instance v5, Lcom/android/settings_ex/flipfont/FontListPreference$5;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/flipfont/FontListPreference$5;-><init>(Lcom/android/settings_ex/flipfont/FontListPreference;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 739
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 740
    iget-object v5, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09098f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 741
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 743
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    .line 744
    iget-object v5, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 746
    iget v5, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mClickedItem:I

    iput v5, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mSavedClickedItem:I

    .line 747
    iput-boolean v8, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 749
    invoke-virtual {p0}, Lcom/android/settings_ex/flipfont/FontListPreference;->savePreferences()V

    .line 750
    sget-boolean v5, Lcom/android/settings_ex/flipfont/FontListPreference;->REBOOT:Z

    if-eqz v5, :cond_a

    .line 751
    invoke-virtual {p0}, Lcom/android/settings_ex/flipfont/FontListPreference;->RebootDialog()V

    goto/16 :goto_0

    .line 709
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v4           #s:Ljava/lang/String;
    :cond_8
    iget-object v5, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09098d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 711
    .restart local v4       #s:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    if-nez v5, :cond_9

    .line 712
    new-instance v5, Lcom/android/settings_ex/flipfont/FontListAdapter;

    iget-object v6, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/settings_ex/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    .line 713
    iget-object v5, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    invoke-virtual {v5}, Lcom/android/settings_ex/flipfont/FontListAdapter;->loadTypefaces()V

    .line 715
    :cond_9
    iget-object v5, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    iget v6, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v5, v6}, Lcom/android/settings_ex/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v1

    .line 716
    new-array v5, v8, [Ljava/lang/Object;

    aput-object v1, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 754
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings_ex/flipfont/FontListPreference;->selectDialog()V

    goto/16 :goto_0
.end method

.method public onDialogClosed(Z)V
    .locals 5
    .parameter "positiveResult"

    .prologue
    const/4 v4, 0x0

    .line 847
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 850
    iget-object v2, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->isWidget:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 851
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->isWidget:Ljava/lang/Boolean;

    .line 852
    iget-object v2, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mDisplaySettings:Lcom/android/settings_ex/DisplaySettings;

    if-eqz v2, :cond_0

    .line 853
    iget-object v2, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mDisplaySettings:Lcom/android/settings_ex/DisplaySettings;

    invoke-virtual {v2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    .line 858
    :cond_0
    iget-boolean v2, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mBuyButtonClicked:Z

    if-eqz v2, :cond_2

    .line 860
    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticModel()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "CHN"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "CU"

    const-string v3, "OPEN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "CHU"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "CTC"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 865
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090991

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 867
    .local v1, uri:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 868
    .local v0, intent:Landroid/content/Intent;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 869
    const v2, 0x14000020

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 870
    iget-object v2, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 871
    iput-boolean v4, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mBuyButtonClicked:Z

    .line 880
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #uri:Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 873
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090990

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 875
    .restart local v1       #uri:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 876
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 877
    iput-boolean v4, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mBuyButtonClicked:Z

    goto :goto_0
.end method

.method public onOkButtonPressed()Z
    .locals 32

    .prologue
    .line 498
    const-string v27, "FontListPreference"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "onOkButtonPressed : mClickedItem : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/flipfont/FontListPreference;->mClickedItem:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/settings_ex/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/flipfont/FontListPreference;->mClickedItem:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 501
    .local v7, apkname:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/settings_ex/flipfont/FontListPreference;->checkFont(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_1

    .line 502
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/flipfont/FontListPreference;->mSavedClickedItem:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/flipfont/FontListPreference;->mClickedItem:I

    .line 503
    invoke-virtual/range {p0 .. p0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v11

    .line 504
    .local v11, d:Landroid/app/Dialog;
    invoke-virtual {v11}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/ListView;

    .line 505
    .local v26, v:Landroid/widget/ListView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/flipfont/FontListPreference;->mPreviousFont:I

    move/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v26 .. v28}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 506
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/flipfont/FontListPreference;->savePreferences()V

    .line 507
    sget-boolean v27, Lcom/android/settings_ex/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v27, :cond_0

    .line 508
    const-string v27, "FlipFont"

    const-string v28, "**onOkButtonPressed - bad font**"

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_0
    const/16 v27, 0x0

    .line 633
    .end local v11           #d:Landroid/app/Dialog;
    .end local v26           #v:Landroid/widget/ListView;
    :goto_0
    return v27

    .line 512
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/flipfont/FontListPreference;->mClickedItem:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_4

    .line 513
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/flipfont/FontListPreference;->mSavedClickedItem:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/flipfont/FontListPreference;->mClickedItem:I

    .line 517
    :goto_1
    const-string v27, "FontListPreference"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "onOkButtonPressed : mSavedClickedItem : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/flipfont/FontListPreference;->mSavedClickedItem:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/flipfont/FontListPreference;->savePreferences()V

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    move-object/from16 v27, v0

    if-nez v27, :cond_2

    .line 521
    new-instance v27, Lcom/android/settings_ex/flipfont/FontListAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/flipfont/FontListPreference;->context:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-direct/range {v27 .. v28}, Lcom/android/settings_ex/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings_ex/flipfont/FontListAdapter;->loadTypefaces()V

    .line 525
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/settings_ex/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/flipfont/FontListPreference;->mClickedItem:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 528
    .local v24, selectedFont:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/flipfont/FontListPreference;->saveSelectedFontStringPreferences(Ljava/lang/String;)V

    .line 531
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/flipfont/FontListPreference;->mClickedItem:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/flipfont/FontListPreference;->mPreviousFont:I

    .line 533
    new-instance v15, Lcom/android/settings_ex/flipfont/FontWriter;

    invoke-direct {v15}, Lcom/android/settings_ex/flipfont/FontWriter;-><init>()V

    .line 534
    .local v15, fontWriter:Lcom/android/settings_ex/flipfont/FontWriter;
    if-eqz v24, :cond_3

    const-string v27, "default"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_5

    .line 536
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/flipfont/FontListPreference;->context:Landroid/content/Context;

    move-object/from16 v27, v0

    const-string v28, "sans.loc"

    const-string v29, "default#default"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/settings_ex/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    if-nez v24, :cond_5

    .line 539
    const-string v27, "FontListPreference"

    const-string v28, "onOkButtonPressed() : selectedFont == null "

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 515
    .end local v15           #fontWriter:Lcom/android/settings_ex/flipfont/FontWriter;
    .end local v24           #selectedFont:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/flipfont/FontListPreference;->mClickedItem:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/flipfont/FontListPreference;->mSavedClickedItem:I

    goto/16 :goto_1

    .line 544
    .restart local v15       #fontWriter:Lcom/android/settings_ex/flipfont/FontWriter;
    .restart local v24       #selectedFont:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/settings_ex/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/android/settings_ex/flipfont/TypefaceFinder;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/flipfont/TypefaceFinder;->findMatchingTypeface(Ljava/lang/String;)Lcom/android/settings_ex/flipfont/Typeface;

    move-result-object v23

    .line 547
    .local v23, sansTypeface:Lcom/android/settings_ex/flipfont/Typeface;
    const-string v27, ".xml"

    const-string v28, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 548
    .local v16, fontdir:Ljava/lang/String;
    const-string v27, " "

    const-string v28, "-"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/flipfont/FontListPreference;->context:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lcom/android/settings_ex/flipfont/FontWriter;->createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    .line 551
    .local v14, fontDir:Ljava/io/File;
    const/16 v25, 0x0

    .line 552
    .local v25, tpf:Lcom/android/settings_ex/flipfont/TypefaceFile;
    if-eqz v23, :cond_6

    .line 553
    const/16 v17, 0x0

    .local v17, i:I
    :goto_2
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/settings_ex/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v0, v17

    move/from16 v1, v27

    if-ge v0, v1, :cond_6

    .line 554
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/settings_ex/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    .end local v25           #tpf:Lcom/android/settings_ex/flipfont/TypefaceFile;
    check-cast v25, Lcom/android/settings_ex/flipfont/TypefaceFile;

    .line 557
    .restart local v25       #tpf:Lcom/android/settings_ex/flipfont/TypefaceFile;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/settings_ex/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/flipfont/FontListPreference;->mClickedItem:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    .line 558
    .local v20, press_apkname:Ljava/lang/String;
    const-string v27, "FontListPreference"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "onOkButtonPressed : Application name, "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/settings_ex/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v27, v0

    const/16 v28, 0x80

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 560
    .local v8, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v0, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iput-object v0, v8, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/settings_ex/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v21

    .line 563
    .local v21, res:Landroid/content/res/Resources;
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    .line 564
    .local v9, assetManager:Landroid/content/res/AssetManager;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "fonts/"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v25 .. v25}, Lcom/android/settings_ex/flipfont/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v19

    .line 566
    .local v19, in:Ljava/io/InputStream;
    invoke-virtual/range {v25 .. v25}, Lcom/android/settings_ex/flipfont/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v15, v14, v0, v1}, Lcom/android/settings_ex/flipfont/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    .end local v8           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v9           #assetManager:Landroid/content/res/AssetManager;
    .end local v19           #in:Ljava/io/InputStream;
    .end local v20           #press_apkname:Ljava/lang/String;
    .end local v21           #res:Landroid/content/res/Resources;
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .line 567
    :catch_0
    move-exception v13

    .line 568
    .local v13, ex:Ljava/lang/Exception;
    const-string v27, "FontListPreference"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Exception in file operation, "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 574
    .end local v13           #ex:Ljava/lang/Exception;
    .end local v17           #i:I
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/flipfont/FontListPreference;->context:Landroid/content/Context;

    move-object/from16 v27, v0

    const-string v28, "sans.loc"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "#"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/flipfont/FontListPreference;->mClickedItem:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lcom/android/settings_ex/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/settings_ex/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 579
    :goto_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    .line 582
    .local v6, am:Landroid/app/IActivityManager;
    sget-boolean v27, Lcom/android/settings_ex/flipfont/FontListPreference;->REBOOT:Z

    if-nez v27, :cond_a

    .line 585
    const-wide/16 v27, 0x64

    :try_start_2
    invoke-static/range {v27 .. v28}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 592
    :goto_5
    :try_start_3
    invoke-interface {v6}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    .line 599
    .local v10, config:Landroid/content/res/Configuration;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->hashCode()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(I)I

    move-result v27

    add-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    iput v0, v10, Landroid/content/res/Configuration;->FlipFont:I

    .line 601
    invoke-interface {v6, v10}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 610
    .end local v10           #config:Landroid/content/res/Configuration;
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/flipfont/FontListPreference;->context:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/flipfont/FontListPreference;->context:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string v28, "activity"

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 611
    .local v4, activityManager:Landroid/app/ActivityManager;
    const/16 v27, 0x32

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    .line 612
    .local v5, allTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/16 v17, 0x1

    .line 613
    .restart local v17       #i:I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :cond_7
    :goto_7
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_a

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 614
    .local v3, aTask:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v0, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v22

    .line 616
    .local v22, s:Ljava/lang/String;
    const-string v27, "com.android.settings_ex"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v27

    if-eqz v27, :cond_7

    const-string v27, "com.samsung.music"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v27

    if-eqz v27, :cond_7

    const-string v27, "com.sec.android.app.music"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v27

    if-eqz v27, :cond_7

    .line 617
    const-string v27, "com.infraware.polarisoffice"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v27

    if-eqz v27, :cond_8

    const-string v27, "com.infraware.polarisoffice4"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v27

    if-eqz v27, :cond_8

    const-string v27, "com.infraware.polarisviewer4"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v27

    if-eqz v27, :cond_8

    const-string v27, "com.infraware.PolarisOfficeStdForTablet"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v27

    if-nez v27, :cond_9

    .line 619
    :cond_8
    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_7

    .line 575
    .end local v3           #aTask:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v4           #activityManager:Landroid/app/ActivityManager;
    .end local v5           #allTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v6           #am:Landroid/app/IActivityManager;
    .end local v17           #i:I
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v22           #s:Ljava/lang/String;
    :catch_1
    move-exception v12

    .line 576
    .local v12, e:Ljava/lang/RuntimeException;
    const-string v27, "FontListPreference"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "fontWriter.writeLoc() : RuntimeException occured. "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 586
    .end local v12           #e:Ljava/lang/RuntimeException;
    .restart local v6       #am:Landroid/app/IActivityManager;
    :catch_2
    move-exception v12

    .line 588
    .local v12, e:Ljava/lang/InterruptedException;
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_5

    .line 604
    .end local v12           #e:Ljava/lang/InterruptedException;
    :catch_3
    move-exception v12

    .line 606
    .local v12, e:Landroid/os/RemoteException;
    const-string v27, "FontListPreference"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Intentionally left blank, "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 621
    .end local v12           #e:Landroid/os/RemoteException;
    .restart local v3       #aTask:Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v4       #activityManager:Landroid/app/ActivityManager;
    .restart local v5       #allTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v17       #i:I
    .restart local v18       #i$:Ljava/util/Iterator;
    .restart local v22       #s:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 630
    .end local v3           #aTask:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v4           #activityManager:Landroid/app/ActivityManager;
    .end local v5           #allTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v17           #i:I
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v22           #s:Ljava/lang/String;
    :cond_a
    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Ljava/lang/System;->exit(I)V

    .line 631
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/flipfont/FontListPreference;->restartLater()V

    .line 633
    const/16 v27, 0x1

    goto/16 :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 6
    .parameter "builder"

    .prologue
    const v5, 0x7f09098b

    .line 296
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 298
    invoke-virtual {p0}, Lcom/android/settings_ex/flipfont/FontListPreference;->getSavedSelectedFontStringPreference()Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, selectedFont:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticModel()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 301
    iget-object v2, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09098c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 307
    .local v0, okButton:Ljava/lang/String;
    :goto_0
    const-string v2, "FontListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : selectedFont : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const-string v2, "FontListPreference"

    const-string v3, "onPrepareDialogBuilder : KEY_PREFERENCE : MONOTYPE"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const-string v2, "MONOTYPE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 313
    const-string v2, "FontListPreference"

    const-string v3, "onPrepareDialogBuilder : selectedFont == KEY_PREFERENCE"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-boolean v2, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mDefaultUseHelvetica:Z

    if-eqz v2, :cond_3

    .line 316
    const-string v1, "HelveticaNeueRegular.xml"

    .line 317
    iget-object v2, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings_ex/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mPreviousFont:I

    .line 318
    const-string v2, "FontListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : Use Helvetica by default. selectedFont : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const-string v2, "FontListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : Helvetica index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mPreviousFont:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :goto_1
    iget v2, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mPreviousFont:I

    if-gez v2, :cond_0

    .line 338
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mPreviousFont:I

    .line 340
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    iget v3, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mPreviousFont:I

    invoke-virtual {p1, v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 341
    const-string v2, "CHM"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "CMCC"

    const-string v3, "OPEN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 343
    sget-boolean v2, Lcom/android/settings_ex/flipfont/FontListPreference;->NO_CANCEL:Z

    if-eqz v2, :cond_5

    .line 344
    new-instance v2, Lcom/android/settings_ex/flipfont/FontListPreference$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/flipfont/FontListPreference$1;-><init>(Lcom/android/settings_ex/flipfont/FontListPreference;)V

    invoke-virtual {p1, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 374
    :cond_1
    :goto_2
    return-void

    .line 304
    .end local v0           #okButton:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .restart local v0       #okButton:Ljava/lang/String;
    goto/16 :goto_0

    .line 323
    :cond_3
    const-string v1, "default"

    .line 324
    iget-object v2, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings_ex/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mPreviousFont:I

    .line 325
    const-string v2, "FontListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : Use Android DroidSans by default. selectedFont : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const-string v2, "FontListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : Android DroidSans index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mPreviousFont:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 331
    :cond_4
    const-string v2, "FontListPreference"

    const-string v3, "onPrepareDialogBuilder : selectedFont != KEY_PREFERENCE"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v2, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings_ex/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mPreviousFont:I

    .line 333
    const-string v2, "FontListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : selectedFont : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const-string v2, "FontListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : selectedFont index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mPreviousFont:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 358
    :cond_5
    new-instance v2, Lcom/android/settings_ex/flipfont/FontListPreference$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/flipfont/FontListPreference$2;-><init>(Lcom/android/settings_ex/flipfont/FontListPreference;)V

    invoke-virtual {p1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_2
.end method

.method public restartLater()V
    .locals 1

    .prologue
    .line 481
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 490
    :cond_0
    return-void
.end method

.method public restartNow()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 454
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.REBOOT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 455
    .local v1, i:Landroid/content/Intent;
    const-string v3, "nowait"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 456
    const-string v3, "interval"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 457
    const-string v3, "window"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 460
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    const/16 v3, 0x14

    if-ge v2, v3, :cond_0

    .line 462
    iget-boolean v3, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mFileCopying:Z

    if-nez v3, :cond_1

    .line 473
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 474
    return-void

    .line 465
    :cond_1
    const-wide/16 v3, 0x1f4

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 467
    :catch_0
    move-exception v0

    .line 469
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method protected savePreferences()V
    .locals 5

    .prologue
    .line 892
    const/4 v1, 0x0

    .line 893
    .local v1, mode:I
    iget-object v3, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v4, "prefs"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 896
    .local v2, mySharedPreference:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 898
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "SelectDialogIsActive"

    iget-boolean v4, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 899
    const-string v3, "RebootDialogIsActive"

    iget-boolean v4, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 900
    const-string v3, "SavedClickedItem"

    iget v4, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mSavedClickedItem:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 902
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 903
    return-void
.end method

.method public saveSelectedFontStringPreferences(Ljava/lang/String;)V
    .locals 5
    .parameter "selectedFont"

    .prologue
    .line 1128
    const/4 v1, 0x0

    .line 1129
    .local v1, mode:I
    iget-object v3, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v4, "prefs"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1131
    .local v2, mySharedPreference:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1133
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "selectedFont"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1135
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1136
    return-void
.end method

.method public selectDialog()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 759
    iget-boolean v6, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    if-eqz v6, :cond_1

    .line 827
    :cond_0
    :goto_0
    return-void

    .line 762
    :cond_1
    iput-boolean v9, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 763
    const/4 v3, 0x0

    .line 764
    .local v3, question:Ljava/lang/String;
    const/4 v2, 0x0

    .line 765
    .local v2, fontName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/flipfont/FontListPreference;->loadPreferences()V

    .line 766
    iget v6, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mSavedClickedItem:I

    iput v6, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mClickedItem:I

    .line 767
    iget v6, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mClickedItem:I

    if-ge v6, v9, :cond_3

    .line 768
    iget-object v6, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09098e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 770
    .local v4, s:Ljava/lang/String;
    move-object v3, v4

    .line 777
    :goto_1
    sget-boolean v6, Lcom/android/settings_ex/flipfont/FontListPreference;->NO_WARNING_DIALOG:Z

    if-eqz v6, :cond_2

    .line 778
    iput-boolean v10, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 779
    invoke-virtual {p0}, Lcom/android/settings_ex/flipfont/FontListPreference;->savePreferences()V

    .line 780
    invoke-virtual {p0}, Lcom/android/settings_ex/flipfont/FontListPreference;->onOkButtonPressed()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 783
    invoke-virtual {p0}, Lcom/android/settings_ex/flipfont/FontListPreference;->dismissApp()V

    .line 787
    :cond_2
    sget-boolean v6, Lcom/android/settings_ex/flipfont/FontListPreference;->REBOOT:Z

    if-eqz v6, :cond_4

    .line 788
    iget-object v6, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040013

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 794
    .local v5, setFontString:Ljava/lang/String;
    :goto_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 795
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    new-instance v6, Lcom/android/settings_ex/flipfont/FontListPreference$7;

    invoke-direct {v6, p0}, Lcom/android/settings_ex/flipfont/FontListPreference$7;-><init>(Lcom/android/settings_ex/flipfont/FontListPreference;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x1040009

    new-instance v8, Lcom/android/settings_ex/flipfont/FontListPreference$6;

    invoke-direct {v8, p0}, Lcom/android/settings_ex/flipfont/FontListPreference$6;-><init>(Lcom/android/settings_ex/flipfont/FontListPreference;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 811
    new-instance v6, Lcom/android/settings_ex/flipfont/FontListPreference$8;

    invoke-direct {v6, p0}, Lcom/android/settings_ex/flipfont/FontListPreference$8;-><init>(Lcom/android/settings_ex/flipfont/FontListPreference;)V

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 818
    invoke-virtual {p0}, Lcom/android/settings_ex/flipfont/FontListPreference;->hideList()V

    .line 819
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 820
    iget-object v6, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09098f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 821
    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 822
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 823
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 824
    iget v6, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mClickedItem:I

    iput v6, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mSavedClickedItem:I

    .line 825
    iput-boolean v9, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 826
    invoke-virtual {p0}, Lcom/android/settings_ex/flipfont/FontListPreference;->savePreferences()V

    goto/16 :goto_0

    .line 772
    .end local v0           #alert:Landroid/app/AlertDialog;
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    .end local v4           #s:Ljava/lang/String;
    .end local v5           #setFontString:Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09098d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 774
    .restart local v4       #s:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    iget v7, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v2

    .line 775
    new-array v6, v9, [Ljava/lang/Object;

    aput-object v2, v6, v10

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 791
    :cond_4
    iget-object v6, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09099e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .restart local v5       #setFontString:Ljava/lang/String;
    goto :goto_2
.end method

.method public setObject(Lcom/android/settings_ex/DisplaySettings;)V
    .locals 0
    .parameter "displaySettings"

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mDisplaySettings:Lcom/android/settings_ex/DisplaySettings;

    .line 286
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    .line 419
    sget-boolean v0, Lcom/android/settings_ex/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 420
    const-string v0, "FlipFont"

    const-string v1, "showDialog  (AlertDialog.Builder builder)"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    if-nez v0, :cond_2

    .line 422
    iput-object p1, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mState:Landroid/os/Bundle;

    .line 423
    new-instance v0, Lcom/android/settings_ex/flipfont/FontListPreference$LoadListTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/flipfont/FontListPreference$LoadListTask;-><init>(Lcom/android/settings_ex/flipfont/FontListPreference;Lcom/android/settings_ex/flipfont/FontListPreference$1;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 447
    :cond_1
    :goto_0
    return-void

    .line 427
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    if-nez v0, :cond_3

    .line 428
    iget-object v0, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/android/settings_ex/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    iget-object v1, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    iget-object v1, v1, Lcom/android/settings_ex/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 429
    iget-object v0, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/android/settings_ex/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    iget-object v1, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    iget-object v1, v1, Lcom/android/settings_ex/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 432
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ex/flipfont/FontListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_4

    .line 433
    const v0, 0x7f090992

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->setDialogTitle(I)V

    .line 435
    :cond_4
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 436
    invoke-virtual {p0}, Lcom/android/settings_ex/flipfont/FontListPreference;->loadPreferences()V

    .line 437
    iget-boolean v0, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    .line 438
    iput-boolean v2, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 439
    invoke-virtual {p0}, Lcom/android/settings_ex/flipfont/FontListPreference;->savePreferences()V

    .line 440
    invoke-virtual {p0}, Lcom/android/settings_ex/flipfont/FontListPreference;->selectDialog()V

    .line 442
    :cond_5
    iget-boolean v0, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 443
    iput-boolean v2, p0, Lcom/android/settings_ex/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    .line 444
    invoke-virtual {p0}, Lcom/android/settings_ex/flipfont/FontListPreference;->savePreferences()V

    .line 445
    invoke-virtual {p0}, Lcom/android/settings_ex/flipfont/FontListPreference;->RebootDialog()V

    goto :goto_0
.end method

.method public showFontListDialog()V
    .locals 0

    .prologue
    .line 887
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->onClick()V

    .line 888
    return-void
.end method
