.class public Lcom/android/settings_ex/myprofile/MyProfileActivity;
.super Landroid/app/Activity;
.source "MyProfileActivity.java"

# interfaces
.implements Lcom/android/settings_ex/myprofile/GradientColorPickerView$OnCustomColorSubmitListener;
.implements Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/myprofile/MyProfileActivity$FontStyleAdapter;,
        Lcom/android/settings_ex/myprofile/MyProfileActivity$CustomSpinnerAdapter;
    }
.end annotation


# static fields
.field public static final APPLE_MINT:Ljava/lang/String; = "Apple mint"

.field public static final CHOCO_COOKY:Ljava/lang/String; = "Choco cooky"

.field public static final COOL_JAZZ:Ljava/lang/String; = "Cool jazz"

.field private static final DB_MY_PROFILE_BACKGROUND_COLOR:Ljava/lang/String; = "my_profile_background_color"

.field private static final DB_MY_PROFILE_INFORMATION:Ljava/lang/String; = "my_profile_information"

.field private static final DB_MY_PROFILE_IS_DATE_SELECTED:Ljava/lang/String; = "lock_screen_date_and_year"

.field private static final DB_MY_PROFILE_IS_FONT_NAME:Ljava/lang/String; = "my_profile_font_filename"

.field private static final DB_MY_PROFILE_IS_FONT_PACKAGE:Ljava/lang/String; = "my_profile_font_package"

.field private static final DB_MY_PROFILE_IS_TEXT_BUTTON_SELECTED:Ljava/lang/String; = "my_profile_is_text_button_selected"

.field private static final DB_MY_PROFILE_IS_TIME_SELECTED:Ljava/lang/String; = "show_clock"

.field private static final DB_MY_PROFILE_TEXT_ALIGNMENT:Ljava/lang/String; = "my_profile_text_alignment"

.field private static final DB_MY_PROFILE_TEXT_COLOR:Ljava/lang/String; = "my_profile_text_color"

.field private static final DB_MY_PROFILE_TEXT_SIZE:Ljava/lang/String; = "my_profile_text_size"

.field public static final DROIDSERIF_ITALIC:Ljava/lang/String; = "DroidSerif-Italic"

.field public static final KAITI:Ljava/lang/String; = "Kaiti"

.field public static final MARUBERI:Ljava/lang/String; = "Maruberi"

.field public static final MIAO:Ljava/lang/String; = "Miao"

.field public static final MINCHO:Ljava/lang/String; = "Mincho"

.field public static final POP:Ljava/lang/String; = "Pop"

.field public static final PROFILE_MAX_CHAR_LIMIT:I = 0x17

.field public static final ROSE_MARY:Ljava/lang/String; = "Rosemary"

.field public static final SAMSUNG_SANS:Ljava/lang/String; = "Samsung Sans"

.field public static final SHAONV:Ljava/lang/String; = "Shao nv"

.field private static final TEXT_ALIGN_CENTER:I = 0x1

.field private static final TEXT_ALIGN_LEFT:I = 0x0

.field private static final TEXT_ALIGN_RIGHT:I = 0x2

.field public static final TINKER_BELL:Ljava/lang/String; = "Tinker bell"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private btnTextColor:Landroid/widget/Button;

.field private btnTextColorBackground:Landroid/widget/Button;

.field private chkDate:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private isFirstInstance:Z

.field isFromUnlock:Z

.field private isTextButtonSelected:Z

.field private mClockHour01:Landroid/widget/ImageView;

.field private mClockHour02:Landroid/widget/ImageView;

.field private mClockHourDot:Landroid/widget/ImageView;

.field private mClockMin01:Landroid/widget/ImageView;

.field private mClockMin02:Landroid/widget/ImageView;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mFontFileNames:[Ljava/lang/String;

.field private mFontNames:[Ljava/lang/String;

.field private mFontStylePackageName:[Ljava/lang/String;

.field private mGradientColorPickerView:Lcom/android/settings_ex/myprofile/GradientColorPickerView;

.field private mIsLiveWallpaper:Z

.field mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mResources:Landroid/content/res/Resources;

.field private mSpLitColorPickerView:Lcom/android/settings_ex/myprofile/SpLitColorPickerView;

.field private mSpinnerFontStyle:Landroid/widget/Spinner;

.field private mTvPreviewText:Lcom/android/settings_ex/myprofile/EllipsisEditText;

.field private mTypefaces:[Landroid/graphics/Typeface;

.field private selectodBackgroundColor:I

.field private selectodTextColor:I

.field private txtDate:Landroid/widget/TextView;

.field private txtTimeAmPm:Landroid/widget/TextView;

.field private txtTimeAmPmfirst:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 86
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    .line 132
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.monotype.android.font.chococooky"

    aput-object v1, v0, v2

    const-string v1, "com.monotype.android.font.cooljazz"

    aput-object v1, v0, v3

    const-string v1, "com.monotype.android.font.rosemary"

    aput-object v1, v0, v4

    const-string v1, "com.monotype.android.font.droidserifitalic"

    aput-object v1, v0, v5

    const-string v1, "com.monotype.android.font.samsungsans"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    .line 133
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "fonts/Chococooky.ttf"

    aput-object v1, v0, v2

    const-string v1, "fonts/Cooljazz.ttf"

    aput-object v1, v0, v3

    const-string v1, "fonts/Rosemary.ttf"

    aput-object v1, v0, v4

    const-string v1, "fonts/Droidserifitalic.ttf"

    aput-object v1, v0, v5

    const-string v1, "fonts/Samsungsans.ttf"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mFontFileNames:[Ljava/lang/String;

    .line 134
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Choco cooky"

    aput-object v1, v0, v2

    const-string v1, "Cool jazz"

    aput-object v1, v0, v3

    const-string v1, "Rosemary"

    aput-object v1, v0, v4

    const-string v1, "DroidSerif-Italic"

    aput-object v1, v0, v5

    const-string v1, "Samsung Sans"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    .line 530
    new-instance v0, Lcom/android/settings_ex/myprofile/MyProfileActivity$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity$4;-><init>(Lcom/android/settings_ex/myprofile/MyProfileActivity;)V

    iput-object v0, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 870
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/myprofile/MyProfileActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/myprofile/MyProfileActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->reflectSelectedTextFontColor(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/myprofile/MyProfileActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/myprofile/MyProfileActivity;)Lcom/android/settings_ex/myprofile/SpLitColorPickerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings_ex/myprofile/SpLitColorPickerView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/myprofile/MyProfileActivity;)[Landroid/graphics/Typeface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mTypefaces:[Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/myprofile/MyProfileActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->isFirstInstance:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings_ex/myprofile/MyProfileActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->isFirstInstance:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings_ex/myprofile/MyProfileActivity;)Lcom/android/settings_ex/myprofile/EllipsisEditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings_ex/myprofile/EllipsisEditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/myprofile/MyProfileActivity;Landroid/view/View;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->updateAlignButtonAndPreviewTextAlignment(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings_ex/myprofile/MyProfileActivity;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/myprofile/MyProfileActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getFontName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private convertClockTimeToImage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 10
    .parameter "hourTime"
    .parameter "minTime"

    .prologue
    const/16 v9, 0xb

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 962
    const/16 v5, 0xc

    new-array v4, v5, [I

    fill-array-data v4, :array_0

    .line 972
    .local v4, unlock_clock_normal_drawables:[I
    move-object v3, v4

    .line 974
    .local v3, target_resources:[I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    new-array v0, v5, [I

    .line 975
    .local v0, choiceHourNumber:[I
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    new-array v1, v5, [I

    .line 976
    .local v1, choiceMinNumber:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 977
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v0, v2

    .line 976
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 979
    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 980
    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v1, v2

    .line 979
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 983
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ne v5, v8, :cond_3

    .line 984
    iget-object v5, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mClockHour01:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 985
    aget v5, v0, v7

    if-ne v5, v8, :cond_2

    .line 986
    iget-object v5, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mClockHour02:Landroid/widget/ImageView;

    aget v6, v3, v9

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 999
    :goto_2
    iget-object v5, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mClockHourDot:Landroid/widget/ImageView;

    const/16 v6, 0xa

    aget v6, v3, v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1000
    iget-object v5, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mClockMin01:Landroid/widget/ImageView;

    aget v6, v1, v7

    aget v6, v3, v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1001
    iget-object v5, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mClockMin02:Landroid/widget/ImageView;

    aget v6, v1, v8

    aget v6, v3, v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1002
    return-void

    .line 988
    :cond_2
    iget-object v5, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mClockHour02:Landroid/widget/ImageView;

    aget v6, v0, v7

    aget v6, v3, v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 991
    :cond_3
    iget-object v5, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mClockHour01:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 992
    aget v5, v0, v7

    if-ne v5, v8, :cond_4

    .line 993
    iget-object v5, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mClockHour01:Landroid/widget/ImageView;

    aget v6, v3, v9

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 997
    :goto_3
    iget-object v5, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mClockHour02:Landroid/widget/ImageView;

    aget v6, v0, v8

    aget v6, v3, v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 995
    :cond_4
    iget-object v5, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mClockHour01:Landroid/widget/ImageView;

    aget v6, v0, v7

    aget v6, v3, v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 962
    :array_0
    .array-data 0x4
        0x1at 0x3t 0x2t 0x7ft
        0x1bt 0x3t 0x2t 0x7ft
        0x1dt 0x3t 0x2t 0x7ft
        0x1et 0x3t 0x2t 0x7ft
        0x1ft 0x3t 0x2t 0x7ft
        0x20t 0x3t 0x2t 0x7ft
        0x21t 0x3t 0x2t 0x7ft
        0x22t 0x3t 0x2t 0x7ft
        0x23t 0x3t 0x2t 0x7ft
        0x24t 0x3t 0x2t 0x7ft
        0x25t 0x3t 0x2t 0x7ft
        0x1ct 0x3t 0x2t 0x7ft
    .end array-data
.end method

.method private getBackgroundColorValueFromDB()I
    .locals 5

    .prologue
    .line 729
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " -------DB BACKGROUND COLOR VALUE ----- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "my_profile_background_color"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    iget-object v1, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "my_profile_background_color"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 734
    :goto_0
    return v1

    .line 731
    :catch_0
    move-exception v0

    .line 732
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    iget-object v1, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ------ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 734
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDeviceOrientation()I
    .locals 1

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method private getDimension(I)F
    .locals 1
    .parameter "dim"

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method private getFontName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "fontName"

    .prologue
    .line 915
    const-string v0, "Rosemary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 916
    invoke-virtual {p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090994

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .line 957
    .restart local p1
    :cond_0
    :goto_0
    return-object p1

    .line 918
    :cond_1
    const-string v0, "Choco cooky"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 919
    invoke-virtual {p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090995

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .restart local p1
    goto :goto_0

    .line 921
    :cond_2
    const-string v0, "Cool jazz"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 922
    invoke-virtual {p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090993

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .restart local p1
    goto :goto_0

    .line 924
    :cond_3
    const-string v0, "DroidSerif-Italic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 925
    const-string p1, "DroidSerif-Italic"

    goto :goto_0

    .line 928
    :cond_4
    const-string v0, "Maruberi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 929
    invoke-virtual {p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090998

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .restart local p1
    goto :goto_0

    .line 931
    :cond_5
    const-string v0, "Mincho"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 932
    invoke-virtual {p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090999

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .restart local p1
    goto :goto_0

    .line 934
    :cond_6
    const-string v0, "Pop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 935
    invoke-virtual {p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09099a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .restart local p1
    goto :goto_0

    .line 938
    :cond_7
    const-string v0, "Shao nv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 939
    invoke-virtual {p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090efa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .restart local p1
    goto/16 :goto_0

    .line 941
    :cond_8
    const-string v0, "Kaiti"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 942
    invoke-virtual {p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090efb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .restart local p1
    goto/16 :goto_0

    .line 944
    :cond_9
    const-string v0, "Miao"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 945
    invoke-virtual {p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090efc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .restart local p1
    goto/16 :goto_0

    .line 948
    :cond_a
    const-string v0, "Apple mint"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 949
    invoke-virtual {p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090996

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .restart local p1
    goto/16 :goto_0

    .line 951
    :cond_b
    const-string v0, "Tinker bell"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 952
    invoke-virtual {p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090997

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .restart local p1
    goto/16 :goto_0
.end method

.method private getGravity()I
    .locals 3

    .prologue
    const/16 v1, 0x11

    .line 496
    invoke-direct {p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getTextAlignSettingsFromDB()I

    move-result v0

    .line 497
    .local v0, textAlignValue:I
    if-nez v0, :cond_1

    const/4 v1, 0x3

    .line 501
    :cond_0
    :goto_0
    return v1

    .line 498
    :cond_1
    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 499
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x5

    goto :goto_0
.end method

.method private getProfileTextFromDB()Ljava/lang/String;
    .locals 4

    .prologue
    const v3, 0x7f090d10

    .line 686
    iget-object v1, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "my_profile_information"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 687
    .local v0, dbString:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 688
    const-string v0, ""

    .line 692
    :cond_0
    const-string v1, "DCM"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 693
    const-string v1, "Always with you\u200b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 694
    invoke-virtual {p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 703
    :cond_1
    :goto_0
    return-object v0

    .line 698
    :cond_2
    const-string v1, "Life companion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 699
    invoke-virtual {p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getTextAlignSettingsFromDB()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 657
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " -- TEXT ALIGNMENT SETTING value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "my_profile_text_alignment"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "my_profile_text_alignment"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getTextColorValueFromDB()I
    .locals 5

    .prologue
    .line 713
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " -------DB TEXT COLOR VALUE ----- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "my_profile_text_color"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget-object v1, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "my_profile_text_color"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 718
    :goto_0
    return v1

    .line 715
    :catch_0
    move-exception v0

    .line 716
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    iget-object v1, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ------ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 718
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getTextSizeFromDB()Ljava/lang/String;
    .locals 2

    .prologue
    .line 667
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "my_profile_text_size"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getValueFromDB(Ljava/lang/String;)Z
    .locals 4
    .parameter "key"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 841
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v3, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 845
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 841
    goto :goto_0

    .line 842
    :catch_0
    move-exception v0

    .line 843
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    move v1, v2

    .line 845
    goto :goto_0
.end method

.method private getViewID(Z)I
    .locals 1
    .parameter "isTextButtonSelected"

    .prologue
    .line 422
    if-eqz p1, :cond_0

    .line 423
    const v0, 0x7f0b021f

    .line 425
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0b0220

    goto :goto_0
.end method

.method private init()V
    .locals 5

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    .line 302
    invoke-virtual {p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 305
    const v2, 0x7f0b01da

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/myprofile/EllipsisEditText;

    iput-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings_ex/myprofile/EllipsisEditText;

    .line 306
    iget-boolean v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->isFromUnlock:Z

    if-eqz v2, :cond_0

    .line 307
    iget-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings_ex/myprofile/EllipsisEditText;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/settings_ex/myprofile/EllipsisEditText;->setNewActionPopupMenu(IZ)V

    .line 311
    :cond_0
    const v2, 0x7f0b021f

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->btnTextColor:Landroid/widget/Button;

    .line 312
    const v2, 0x7f0b0220

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->btnTextColorBackground:Landroid/widget/Button;

    .line 313
    iget-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->btnTextColorBackground:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 314
    iget-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->btnTextColor:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 318
    const v2, 0x7f0b01e1

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/myprofile/SpLitColorPickerView;

    iput-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings_ex/myprofile/SpLitColorPickerView;

    .line 319
    iget-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings_ex/myprofile/SpLitColorPickerView;

    invoke-direct {p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getDeviceOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/myprofile/SpLitColorPickerView;->setDeviceOrientation(I)V

    .line 322
    invoke-direct {p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->restoreDBColorValue()V

    .line 323
    invoke-direct {p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->setPreviewTextView()V

    .line 324
    const-string v2, "my_profile_is_text_button_selected"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getValueFromDB(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    .line 325
    iget-boolean v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    invoke-direct {p0, v2}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getViewID(Z)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->updateAlignButtonAndPreviewTextAlignment(Landroid/view/View;I)V

    .line 327
    const v2, 0x7f0b0214

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mClockHour01:Landroid/widget/ImageView;

    .line 328
    const v2, 0x7f0b0215

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mClockHour02:Landroid/widget/ImageView;

    .line 329
    const v2, 0x7f0b0216

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mClockHourDot:Landroid/widget/ImageView;

    .line 330
    const v2, 0x7f0b0217

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mClockMin01:Landroid/widget/ImageView;

    .line 331
    const v2, 0x7f0b0218

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mClockMin02:Landroid/widget/ImageView;

    .line 333
    const v2, 0x7f0b0219

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->txtTimeAmPm:Landroid/widget/TextView;

    .line 334
    const v2, 0x7f0b0213

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->txtTimeAmPmfirst:Landroid/widget/TextView;

    .line 335
    iget-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->txtTimeAmPmfirst:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 336
    const v2, 0x7f0b021c

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->txtDate:Landroid/widget/TextView;

    .line 337
    const v2, 0x7f0b021a

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 338
    const v2, 0x7f0b021d

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->chkDate:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 340
    iget-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const-string v3, "show_clock"

    invoke-direct {p0, v3}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getValueFromDB(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 341
    iget-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->chkDate:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const-string v3, "lock_screen_date_and_year"

    invoke-direct {p0, v3}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getValueFromDB(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 342
    iget-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    .line 343
    iget-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->chkDate:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    .line 345
    invoke-direct {p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->setTimeAndDateIntoTextFields()V

    .line 346
    iget-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings_ex/myprofile/SpLitColorPickerView;

    new-instance v3, Lcom/android/settings_ex/myprofile/MyProfileActivity$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity$1;-><init>(Lcom/android/settings_ex/myprofile/MyProfileActivity;)V

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/myprofile/SpLitColorPickerView;->setOnColorChangedListener(Lcom/android/settings_ex/myprofile/SpLitColorPickerView$OnColorChangedListener;)V

    .line 358
    const v2, 0x7f0b01e2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/myprofile/GradientColorPickerView;

    iput-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mGradientColorPickerView:Lcom/android/settings_ex/myprofile/GradientColorPickerView;

    .line 361
    iget-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mGradientColorPickerView:Lcom/android/settings_ex/myprofile/GradientColorPickerView;

    new-instance v3, Lcom/android/settings_ex/myprofile/MyProfileActivity$2;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity$2;-><init>(Lcom/android/settings_ex/myprofile/MyProfileActivity;)V

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/myprofile/GradientColorPickerView;->setOnColorChangedListener(Lcom/android/settings_ex/myprofile/GradientColorPickerView$OnColorChangedListener;)V

    .line 374
    invoke-direct {p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->setTextOpecity()V

    .line 376
    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    .line 378
    invoke-direct {p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->loadTypeFaces()V

    .line 380
    const v2, 0x7f0b0221

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mSpinnerFontStyle:Landroid/widget/Spinner;

    .line 381
    iget-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mSpinnerFontStyle:Landroid/widget/Spinner;

    new-instance v3, Lcom/android/settings_ex/myprofile/MyProfileActivity$FontStyleAdapter;

    invoke-direct {v3, p0, p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity$FontStyleAdapter;-><init>(Lcom/android/settings_ex/myprofile/MyProfileActivity;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 383
    iget-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "my_profile_font_package"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, selectedFontPackage:Ljava/lang/String;
    const/4 v0, 0x0

    .line 385
    .local v0, position:I
    if-eqz v1, :cond_1

    .line 386
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 387
    iget-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 392
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_2

    const/4 v0, 0x0

    .line 393
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mSpinnerFontStyle:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 395
    iget-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mSpinnerFontStyle:Landroid/widget/Spinner;

    new-instance v3, Lcom/android/settings_ex/myprofile/MyProfileActivity$3;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity$3;-><init>(Lcom/android/settings_ex/myprofile/MyProfileActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 419
    return-void

    .line 386
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private loadTypeFaces()V
    .locals 6

    .prologue
    .line 851
    iget-object v4, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    array-length v4, v4

    new-array v4, v4, [Landroid/graphics/Typeface;

    iput-object v4, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mTypefaces:[Landroid/graphics/Typeface;

    .line 853
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    array-length v4, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v2, v4, :cond_0

    .line 854
    const/4 v3, 0x0

    .line 856
    .local v3, otherContext:Landroid/content/Context;
    :try_start_1
    iget-object v4, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    aget-object v4, v4, v2

    const/4 v5, 0x2

    invoke-virtual {p0, v4, v5}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 860
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 861
    .local v0, am:Landroid/content/res/AssetManager;
    iget-object v4, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mFontFileNames:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 862
    .local v1, fontTypeface:Landroid/graphics/Typeface;
    iget-object v4, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mTypefaces:[Landroid/graphics/Typeface;

    aput-object v1, v4, v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 853
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 864
    .end local v0           #am:Landroid/content/res/AssetManager;
    .end local v1           #fontTypeface:Landroid/graphics/Typeface;
    .end local v3           #otherContext:Landroid/content/Context;
    :catch_0
    move-exception v4

    .line 868
    :cond_0
    return-void

    .line 857
    .restart local v3       #otherContext:Landroid/content/Context;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method private refereshTextAndBackGroundColor(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 615
    if-eqz p1, :cond_0

    .line 616
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings_ex/myprofile/EllipsisEditText;

    invoke-virtual {p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getSelectodTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/myprofile/EllipsisEditText;->setTextColor(I)V

    .line 620
    :goto_0
    return-void

    .line 618
    :cond_0
    const v0, 0x7f0b01da

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getSelectodBackGroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private reflectSelectedTextFontColor(I)V
    .locals 4
    .parameter "color"

    .prologue
    .line 777
    iget-object v1, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    const-string v2, " --------- INSIDE REFLECT COLOR ---------"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    move v0, p1

    .line 779
    .local v0, colorValue:I
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->setSelectodColor(I)V

    .line 781
    iget-boolean v1, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    invoke-direct {p0, v1}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->refereshTextAndBackGroundColor(Z)V

    .line 783
    iget-object v1, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ***&&&&%%%### COLOR VALUE --- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    return-void
.end method

.method private restoreDBColorValue()V
    .locals 3

    .prologue
    .line 794
    iget-boolean v1, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getTextColorValueFromDB()I

    move-result v0

    .line 795
    .local v0, colorValue:I
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getBackgroundColorValueFromDB()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->setBackgroundColor(I)V

    .line 796
    invoke-direct {p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getTextColorValueFromDB()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->setTextColor(I)V

    .line 799
    iget-object v1, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings_ex/myprofile/SpLitColorPickerView;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/myprofile/SpLitColorPickerView;->setColor(I)V

    .line 803
    iget-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings_ex/myprofile/EllipsisEditText;

    invoke-direct {p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getTextColorValueFromDB()I

    move-result v1

    if-nez v1, :cond_1

    const/high16 v1, -0x100

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/settings_ex/myprofile/EllipsisEditText;->setTextColor(I)V

    .line 804
    const v1, 0x7f0b01da

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getBackgroundColorValueFromDB()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 805
    return-void

    .line 794
    .end local v0           #colorValue:I
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getBackgroundColorValueFromDB()I

    move-result v0

    goto :goto_0

    .line 803
    .restart local v0       #colorValue:I
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getTextColorValueFromDB()I

    move-result v1

    goto :goto_1

    .line 804
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getBackgroundColorValueFromDB()I

    move-result v2

    goto :goto_2
.end method

.method private saveBackgroundColorValueToDB(I)V
    .locals 3
    .parameter "colorValue"

    .prologue
    .line 754
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "my_profile_background_color"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 755
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " --BACKFROUND COLOR SETTING updated with value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    return-void
.end method

.method private saveProfileTextToDB(Ljava/lang/String;)V
    .locals 2
    .parameter "profileText"

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "my_profile_information"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 516
    return-void
.end method

.method private saveTextColorValueToDB(I)V
    .locals 3
    .parameter "colorValue"

    .prologue
    .line 744
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "my_profile_text_color"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 745
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " --TEXT COLOR SETTING updated with value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    return-void
.end method

.method private saveTextSizeToDB(Ljava/lang/String;)V
    .locals 2
    .parameter "textSizeValue"

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "my_profile_text_size"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 676
    return-void
.end method

.method private setAmPm(Ljava/util/Calendar;)V
    .locals 4
    .parameter "calendar"

    .prologue
    const/16 v3, 0x8

    .line 1005
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    .line 1006
    .local v1, b24HourFormat:Z
    if-nez v1, :cond_1

    .line 1009
    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 1010
    const v2, 0x7f091003

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 1014
    .local v0, ampmStr:Ljava/lang/CharSequence;
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->txtTimeAmPm:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1015
    iget-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->txtTimeAmPmfirst:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1020
    .end local v0           #ampmStr:Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 1012
    :cond_0
    const v2, 0x7f091004

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #ampmStr:Ljava/lang/CharSequence;
    goto :goto_0

    .line 1017
    .end local v0           #ampmStr:Ljava/lang/CharSequence;
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->txtTimeAmPm:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1018
    iget-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->txtTimeAmPmfirst:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private setPreviewTextView()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 468
    const/4 v2, 0x1

    new-array v0, v2, [Landroid/text/InputFilter;

    .line 469
    .local v0, FilterArray:[Landroid/text/InputFilter;
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x17

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v7

    .line 470
    iget-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings_ex/myprofile/EllipsisEditText;

    invoke-virtual {v2, v0}, Lcom/android/settings_ex/myprofile/EllipsisEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 471
    iget-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings_ex/myprofile/EllipsisEditText;

    iget-object v3, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/myprofile/EllipsisEditText;->setScaledDensity(F)V

    .line 472
    iget-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings_ex/myprofile/EllipsisEditText;

    invoke-direct {p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getProfileTextFromDB()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/myprofile/EllipsisEditText;->setText(Ljava/lang/CharSequence;)V

    .line 473
    invoke-direct {p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getTextSizeFromDB()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings_ex/myprofile/EllipsisEditText;

    invoke-virtual {v2}, Lcom/android/settings_ex/myprofile/EllipsisEditText;->getMaxTextSize()F

    move-result v1

    .line 474
    .local v1, txtSize:F
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings_ex/myprofile/EllipsisEditText;

    const v3, 0x7f0f00bf

    invoke-direct {p0, v3}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/myprofile/EllipsisEditText;->setMaxTextSize(F)V

    .line 476
    iget-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings_ex/myprofile/EllipsisEditText;

    const/high16 v3, 0x40a0

    const/4 v4, 0x0

    const/high16 v5, 0x4040

    const/high16 v6, -0x6700

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/settings_ex/myprofile/EllipsisEditText;->setShadowLayer(FFFI)V

    .line 477
    iget-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings_ex/myprofile/EllipsisEditText;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/myprofile/EllipsisEditText;->setTextSize(F)V

    .line 478
    iget-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings_ex/myprofile/EllipsisEditText;

    invoke-direct {p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getProfileTextFromDB()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v7, v3}, Lcom/android/settings_ex/myprofile/EllipsisEditText;->setSelection(II)V

    .line 479
    iget-boolean v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->isFromUnlock:Z

    if-eqz v2, :cond_0

    .line 480
    iget-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings_ex/myprofile/EllipsisEditText;

    const-string v3, "inputType=option"

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/myprofile/EllipsisEditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 482
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings_ex/myprofile/EllipsisEditText;

    invoke-virtual {v2}, Lcom/android/settings_ex/myprofile/EllipsisEditText;->requestFocus()Z

    .line 483
    invoke-virtual {p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 484
    return-void

    .line 473
    .end local v1           #txtSize:F
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getTextSizeFromDB()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    goto :goto_0
.end method

.method private setTextOpecity()V
    .locals 4

    .prologue
    const/high16 v1, 0x3f80

    const/high16 v2, 0x3f00

    .line 823
    iget-object v3, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mClockHour01:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 824
    iget-object v3, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mClockHour02:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 825
    iget-object v3, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mClockHourDot:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 826
    iget-object v3, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mClockMin01:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 827
    iget-object v3, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mClockMin02:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 828
    iget-object v3, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->txtTimeAmPmfirst:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 829
    iget-object v3, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->txtTimeAmPm:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 830
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->txtDate:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->chkDate:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 831
    return-void

    :cond_0
    move v0, v2

    .line 823
    goto :goto_0

    :cond_1
    move v0, v2

    .line 824
    goto :goto_1

    :cond_2
    move v0, v2

    .line 825
    goto :goto_2

    :cond_3
    move v0, v2

    .line 826
    goto :goto_3

    :cond_4
    move v0, v2

    .line 827
    goto :goto_4

    :cond_5
    move v0, v2

    .line 828
    goto :goto_5

    :cond_6
    move v0, v2

    .line 829
    goto :goto_6

    :cond_7
    move v1, v2

    .line 830
    goto :goto_7
.end method

.method private setTimeAndDateIntoTextFields()V
    .locals 11

    .prologue
    .line 428
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 429
    .local v1, calendar:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v1, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 430
    const-string v3, ""

    .line 431
    .local v3, dateFormat:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "date_format"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 433
    .local v4, dateFormatSetting:Ljava/lang/String;
    const-string v9, "yyyy-MM-dd"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "MM-dd-yyyy"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 434
    :cond_0
    const v9, 0x7f091002

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 438
    :cond_1
    :goto_0
    invoke-static {v3, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 439
    .local v2, date:Ljava/lang/CharSequence;
    iget-object v9, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->txtDate:Landroid/widget/TextView;

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v1, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 443
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v5, "kk"

    .line 444
    .local v5, hourFormat:Ljava/lang/String;
    :goto_1
    invoke-static {v5, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 445
    .local v6, hourTime:Ljava/lang/CharSequence;
    const-string v9, "mm"

    invoke-static {v9, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 446
    .local v7, minTime:Ljava/lang/CharSequence;
    invoke-direct {p0, v6, v7}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->convertClockTimeToImage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 450
    :try_start_0
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v9

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 451
    .local v8, time:Ljava/lang/String;
    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 452
    .local v0, ampm:Ljava/lang/String;
    const v9, 0x7f091003

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const v9, 0x7f091003

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 453
    :cond_2
    iget-object v9, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->txtTimeAmPm:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 454
    iget-object v9, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->txtTimeAmPmfirst:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    .end local v0           #ampm:Ljava/lang/String;
    .end local v8           #time:Ljava/lang/String;
    :goto_2
    invoke-direct {p0, v1}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->setAmPm(Ljava/util/Calendar;)V

    .line 465
    return-void

    .line 435
    .end local v2           #date:Ljava/lang/CharSequence;
    .end local v5           #hourFormat:Ljava/lang/String;
    .end local v6           #hourTime:Ljava/lang/CharSequence;
    .end local v7           #minTime:Ljava/lang/CharSequence;
    :cond_3
    const-string v9, "dd-MM-yyyy"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 436
    const v9, 0x7f091001

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 443
    .restart local v2       #date:Ljava/lang/CharSequence;
    :cond_4
    const-string v5, "h"

    goto :goto_1

    .line 456
    .restart local v0       #ampm:Ljava/lang/String;
    .restart local v5       #hourFormat:Ljava/lang/String;
    .restart local v6       #hourTime:Ljava/lang/CharSequence;
    .restart local v7       #minTime:Ljava/lang/CharSequence;
    .restart local v8       #time:Ljava/lang/String;
    :cond_5
    :try_start_1
    iget-object v9, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->txtTimeAmPm:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 457
    iget-object v9, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->txtTimeAmPmfirst:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 459
    .end local v0           #ampm:Ljava/lang/String;
    .end local v8           #time:Ljava/lang/String;
    :catch_0
    move-exception v9

    goto :goto_2
.end method

.method private setValueIntoDatabase(Ljava/lang/String;Z)V
    .locals 3
    .parameter "key"
    .parameter "isChecked"

    .prologue
    .line 834
    iget-object v1, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 835
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -- : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    return-void

    .line 834
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setWalllpaper()V
    .locals 6

    .prologue
    .line 239
    const v4, 0x7f0b020f

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 240
    .local v0, background:Landroid/widget/ImageView;
    const/4 v1, 0x0

    .line 241
    .local v1, mDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {p0}, Lcom/android/settings_ex/myprofile/LockscreenWallpaper;->isLiveWallpaper(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mIsLiveWallpaper:Z

    .line 242
    iget-boolean v4, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mIsLiveWallpaper:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 243
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 244
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    .line 245
    .local v3, wallpaperManager:Landroid/app/WallpaperManager;
    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v2

    .line 246
    .local v2, wallpaperInfo:Landroid/app/WallpaperInfo;
    if-eqz v2, :cond_1

    .line 247
    invoke-virtual {v2}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    .line 248
    invoke-virtual {p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/WallpaperInfo;->loadThumbnail(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 249
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 260
    .end local v0           #background:Landroid/widget/ImageView;
    .end local v1           #mDrawable:Landroid/graphics/drawable/Drawable;
    .end local v2           #wallpaperInfo:Landroid/app/WallpaperInfo;
    .end local v3           #wallpaperManager:Landroid/app/WallpaperManager;
    :cond_0
    :goto_0
    return-void

    .line 254
    .restart local v0       #background:Landroid/widget/ImageView;
    .restart local v1       #mDrawable:Landroid/graphics/drawable/Drawable;
    :cond_1
    new-instance v4, Lcom/android/settings_ex/myprofile/MyProfileWallpaper;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/myprofile/MyProfileWallpaper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/android/settings_ex/myprofile/MyProfileWallpaper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 255
    if-eqz v1, :cond_0

    .line 256
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 257
    .end local v0           #background:Landroid/widget/ImageView;
    .end local v1           #mDrawable:Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private showOnScreenKeyPad()V
    .locals 3

    .prologue
    .line 491
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 492
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings_ex/myprofile/EllipsisEditText;

    invoke-virtual {v1}, Lcom/android/settings_ex/myprofile/EllipsisEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 493
    return-void
.end method

.method private updateAlignButtonAndPreviewTextAlignment(Landroid/view/View;I)V
    .locals 8
    .parameter "v"
    .parameter "event"

    .prologue
    const v7, 0x7f020376

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v4, 0x7f0b0220

    const v3, 0x7f0b021f

    .line 550
    if-nez p1, :cond_0

    .line 611
    :goto_0
    return-void

    .line 553
    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 555
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 557
    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f020377

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 558
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f020379

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 561
    :pswitch_2
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 562
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f02037a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 571
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    .line 584
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_3

    .line 604
    :goto_2
    invoke-direct {p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->showOnScreenKeyPad()V

    goto :goto_0

    .line 573
    :pswitch_4
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f020378

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 574
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f020379

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 577
    :pswitch_5
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f02037b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 578
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 586
    :pswitch_6
    iput-boolean v6, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    .line 588
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings_ex/myprofile/SpLitColorPickerView;

    invoke-virtual {p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getSelectodTextColor()I

    move-result v1

    invoke-virtual {v0, v1, v6}, Lcom/android/settings_ex/myprofile/SpLitColorPickerView;->setLastIndexColorValue(IZ)V

    .line 589
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings_ex/myprofile/SpLitColorPickerView;

    invoke-virtual {p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getSelectodTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/myprofile/SpLitColorPickerView;->setColor(I)V

    .line 590
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings_ex/myprofile/SpLitColorPickerView;

    invoke-virtual {v0}, Lcom/android/settings_ex/myprofile/SpLitColorPickerView;->invalidate()V

    goto :goto_2

    .line 594
    :pswitch_7
    iput-boolean v5, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    .line 596
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings_ex/myprofile/SpLitColorPickerView;

    invoke-virtual {v0, v5, v5}, Lcom/android/settings_ex/myprofile/SpLitColorPickerView;->setLastIndexColorValue(IZ)V

    .line 597
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings_ex/myprofile/SpLitColorPickerView;

    invoke-virtual {p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getSelectodBackGroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/myprofile/SpLitColorPickerView;->setColor(I)V

    .line 598
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings_ex/myprofile/SpLitColorPickerView;

    invoke-virtual {v0}, Lcom/android/settings_ex/myprofile/SpLitColorPickerView;->invalidate()V

    goto :goto_2

    .line 553
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 555
    :pswitch_data_1
    .packed-switch 0x7f0b021f
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 571
    :pswitch_data_2
    .packed-switch 0x7f0b021f
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 584
    :pswitch_data_3
    .packed-switch 0x7f0b021f
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public getSelectodBackGroundColor()I
    .locals 1

    .prologue
    .line 630
    iget v0, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->selectodBackgroundColor:I

    return v0
.end method

.method public getSelectodTextColor()I
    .locals 1

    .prologue
    .line 626
    iget v0, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->selectodTextColor:I

    return v0
.end method

.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 809
    invoke-direct {p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->setTextOpecity()V

    .line 810
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 820
    :pswitch_0
    return-void

    .line 810
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b021a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    .line 170
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 172
    const/4 v11, 0x0

    invoke-static {v11}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 173
    const/4 v11, 0x4

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->setRequestedOrientation(I)V

    .line 175
    :cond_0
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->isFirstInstance:Z

    .line 177
    invoke-virtual {p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 178
    .local v0, intent:Landroid/content/Intent;
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->isFromUnlock:Z

    .line 179
    const-string v11, "direct_lockscren"

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->isFromUnlock:Z

    .line 182
    iget-boolean v11, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->isFromUnlock:Z

    if-eqz v11, :cond_1

    .line 183
    invoke-virtual {p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/high16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/Window;->addFlags(I)V

    .line 184
    new-instance v11, Landroid/content/Intent;

    const-string v12, "intent.stop.app-in-app"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 187
    :cond_1
    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v10

    .line 189
    .local v10, sales_code:Ljava/lang/String;
    const-string v11, "DCM"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 190
    const/4 v11, 0x3

    new-array v6, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "com.monotype.android.font.maruberi"

    aput-object v12, v6, v11

    const/4 v11, 0x1

    const-string v12, "com.monotype.android.font.mincho"

    aput-object v12, v6, v11

    const/4 v11, 0x2

    const-string v12, "com.monotype.android.font.arjpopb"

    aput-object v12, v6, v11

    .line 191
    .local v6, mJFontStylePackageName:[Ljava/lang/String;
    const/4 v11, 0x3

    new-array v4, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "fonts/Maruberi.ttf"

    aput-object v12, v4, v11

    const/4 v11, 0x1

    const-string v12, "fonts/Mincho.ttf"

    aput-object v12, v4, v11

    const/4 v11, 0x2

    const-string v12, "fonts/arjpopb.ttf"

    aput-object v12, v4, v11

    .line 192
    .local v4, mJFontFileNames:[Ljava/lang/String;
    const/4 v11, 0x3

    new-array v5, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "Maruberi"

    aput-object v12, v5, v11

    const/4 v11, 0x1

    const-string v12, "Mincho"

    aput-object v12, v5, v11

    const/4 v11, 0x2

    const-string v12, "Pop"

    aput-object v12, v5, v11

    .line 194
    .local v5, mJFontNames:[Ljava/lang/String;
    iput-object v6, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    .line 195
    iput-object v4, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mFontFileNames:[Ljava/lang/String;

    .line 196
    iput-object v5, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    .line 223
    .end local v4           #mJFontFileNames:[Ljava/lang/String;
    .end local v5           #mJFontNames:[Ljava/lang/String;
    .end local v6           #mJFontStylePackageName:[Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/android/settings_ex/myprofile/LockscreenWallpaper;->isLiveWallpaper(Landroid/content/Context;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mIsLiveWallpaper:Z

    .line 224
    iget-boolean v11, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mIsLiveWallpaper:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 225
    const v11, 0x103013c

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->setTheme(I)V

    .line 228
    :cond_3
    const v11, 0x7f0400c0

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->setContentView(I)V

    .line 231
    invoke-direct {p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->setWalllpaper()V

    .line 234
    invoke-direct {p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->init()V

    .line 235
    return-void

    .line 197
    :cond_4
    const-string v11, "CHN"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "CHM"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "CHU"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 198
    :cond_5
    const/4 v11, 0x3

    new-array v3, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "com.monotype.android.font.shaonv"

    aput-object v12, v3, v11

    const/4 v11, 0x1

    const-string v12, "com.monotype.android.font.kaiti"

    aput-object v12, v3, v11

    const/4 v11, 0x2

    const-string v12, "com.monotype.android.font.miao"

    aput-object v12, v3, v11

    .line 199
    .local v3, mCFontStylePackageName:[Ljava/lang/String;
    const/4 v11, 0x3

    new-array v1, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "fonts/Shaonv.ttf"

    aput-object v12, v1, v11

    const/4 v11, 0x1

    const-string v12, "fonts/Kaiti.ttf"

    aput-object v12, v1, v11

    const/4 v11, 0x2

    const-string v12, "fonts/Miao.ttf"

    aput-object v12, v1, v11

    .line 200
    .local v1, mCFontFileNames:[Ljava/lang/String;
    const/4 v11, 0x3

    new-array v2, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "Shao nv"

    aput-object v12, v2, v11

    const/4 v11, 0x1

    const-string v12, "Kaiti"

    aput-object v12, v2, v11

    const/4 v11, 0x2

    const-string v12, "Miao"

    aput-object v12, v2, v11

    .line 202
    .local v2, mCFontNames:[Ljava/lang/String;
    iput-object v3, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    .line 203
    iput-object v1, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mFontFileNames:[Ljava/lang/String;

    .line 204
    iput-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    goto :goto_0

    .line 205
    .end local v1           #mCFontFileNames:[Ljava/lang/String;
    .end local v2           #mCFontNames:[Ljava/lang/String;
    .end local v3           #mCFontStylePackageName:[Ljava/lang/String;
    :cond_6
    const-string v11, "CTC"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    const-string v11, "TGY"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    const-string v11, "BRI"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 206
    :cond_7
    const/4 v11, 0x2

    new-array v3, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "com.monotype.android.font.shaonv"

    aput-object v12, v3, v11

    const/4 v11, 0x1

    const-string v12, "com.monotype.android.font.kaiti"

    aput-object v12, v3, v11

    .line 207
    .restart local v3       #mCFontStylePackageName:[Ljava/lang/String;
    const/4 v11, 0x2

    new-array v1, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "fonts/Shaonv.ttf"

    aput-object v12, v1, v11

    const/4 v11, 0x1

    const-string v12, "fonts/Kaiti.ttf"

    aput-object v12, v1, v11

    .line 208
    .restart local v1       #mCFontFileNames:[Ljava/lang/String;
    const/4 v11, 0x2

    new-array v2, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "Shao nv"

    aput-object v12, v2, v11

    const/4 v11, 0x1

    const-string v12, "Kaiti"

    aput-object v12, v2, v11

    .line 210
    .restart local v2       #mCFontNames:[Ljava/lang/String;
    iput-object v3, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    .line 211
    iput-object v1, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mFontFileNames:[Ljava/lang/String;

    .line 212
    iput-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    goto/16 :goto_0

    .line 213
    .end local v1           #mCFontFileNames:[Ljava/lang/String;
    .end local v2           #mCFontNames:[Ljava/lang/String;
    .end local v3           #mCFontStylePackageName:[Ljava/lang/String;
    :cond_8
    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticModel()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 214
    const/4 v11, 0x4

    new-array v9, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "com.monotype.android.font.chococooky"

    aput-object v12, v9, v11

    const/4 v11, 0x1

    const-string v12, "com.monotype.android.font.cooljazz"

    aput-object v12, v9, v11

    const/4 v11, 0x2

    const-string v12, "com.monotype.android.font.applemint"

    aput-object v12, v9, v11

    const/4 v11, 0x3

    const-string v12, "com.monotype.android.font.tinkerbell"

    aput-object v12, v9, v11

    .line 215
    .local v9, mKFontStylePackageName:[Ljava/lang/String;
    const/4 v11, 0x4

    new-array v7, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "fonts/Chococooky.ttf"

    aput-object v12, v7, v11

    const/4 v11, 0x1

    const-string v12, "fonts/Cooljazz.ttf"

    aput-object v12, v7, v11

    const/4 v11, 0x2

    const-string v12, "fonts/Applemint.ttf"

    aput-object v12, v7, v11

    const/4 v11, 0x3

    const-string v12, "fonts/Tinkerbell.ttf"

    aput-object v12, v7, v11

    .line 216
    .local v7, mKFontFileNames:[Ljava/lang/String;
    const/4 v11, 0x4

    new-array v8, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "Choco cooky"

    aput-object v12, v8, v11

    const/4 v11, 0x1

    const-string v12, "Cool jazz"

    aput-object v12, v8, v11

    const/4 v11, 0x2

    const-string v12, "Apple mint"

    aput-object v12, v8, v11

    const/4 v11, 0x3

    const-string v12, "Tinker bell"

    aput-object v12, v8, v11

    .line 218
    .local v8, mKFontNames:[Ljava/lang/String;
    iput-object v9, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    .line 219
    iput-object v7, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mFontFileNames:[Ljava/lang/String;

    .line 220
    iput-object v8, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 265
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f120004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 266
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onCustomColorSubmit()V
    .locals 2

    .prologue
    .line 766
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings_ex/myprofile/SpLitColorPickerView;

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings_ex/myprofile/SpLitColorPickerView;

    invoke-virtual {v0}, Lcom/android/settings_ex/myprofile/SpLitColorPickerView;->requestFocus()Z

    .line 768
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mGradientColorPickerView:Lcom/android/settings_ex/myprofile/GradientColorPickerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mGradientColorPickerView:Lcom/android/settings_ex/myprofile/GradientColorPickerView;

    invoke-virtual {v0}, Lcom/android/settings_ex/myprofile/GradientColorPickerView;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 769
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mGradientColorPickerView:Lcom/android/settings_ex/myprofile/GradientColorPickerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/myprofile/GradientColorPickerView;->setFocusable(Z)V

    .line 770
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    .line 271
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 289
    :goto_0
    :pswitch_0
    iget-boolean v1, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->isFromUnlock:Z

    if-eqz v1, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 291
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 292
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings_ex/myprofile/EllipsisEditText;

    invoke-virtual {v1}, Lcom/android/settings_ex/myprofile/EllipsisEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 294
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->finish()V

    .line 295
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 275
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings_ex/myprofile/EllipsisEditText;

    invoke-virtual {v1}, Lcom/android/settings_ex/myprofile/EllipsisEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->saveProfileTextToDB(Ljava/lang/String;)V

    .line 276
    iget-object v1, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings_ex/myprofile/EllipsisEditText;

    invoke-virtual {v1}, Lcom/android/settings_ex/myprofile/EllipsisEditText;->getTextSize()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->saveTextSizeToDB(Ljava/lang/String;)V

    .line 277
    const-string v1, "my_profile_is_text_button_selected"

    iget-boolean v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->setValueIntoDatabase(Ljava/lang/String;Z)V

    .line 278
    const-string v1, "lock_screen_date_and_year"

    iget-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->chkDate:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->setValueIntoDatabase(Ljava/lang/String;Z)V

    .line 279
    const-string v1, "show_clock"

    iget-object v2, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->setValueIntoDatabase(Ljava/lang/String;Z)V

    .line 280
    invoke-virtual {p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getSelectodBackGroundColor()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->saveBackgroundColorValueToDB(I)V

    .line 281
    invoke-virtual {p0}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->getSelectodTextColor()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->saveTextColorValueToDB(I)V

    .line 283
    iget-object v1, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "my_profile_font_filename"

    iget-object v3, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mFontFileNames:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mSpinnerFontStyle:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    aget-object v3, v3, v4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 284
    iget-object v1, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "my_profile_font_package"

    iget-object v3, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mSpinnerFontStyle:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    aget-object v3, v3, v4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 285
    iget-object v1, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "my_profile_font_filename : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "my_profile_font_filename"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", my_profile_font_package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "my_profile_font_package"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 271
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0543
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 507
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 508
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 638
    iput p1, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->selectodBackgroundColor:I

    .line 639
    return-void
.end method

.method public setSelectodColor(I)V
    .locals 1
    .parameter "selectodColor"

    .prologue
    .line 644
    iget-boolean v0, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    if-eqz v0, :cond_0

    .line 645
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->setTextColor(I)V

    .line 649
    :goto_0
    return-void

    .line 647
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public setTextColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 634
    iput p1, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity;->selectodTextColor:I

    .line 635
    return-void
.end method
