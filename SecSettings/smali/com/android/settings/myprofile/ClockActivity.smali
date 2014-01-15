.class public Lcom/android/settings_ex/myprofile/ClockActivity;
.super Landroid/app/Activity;
.source "ClockActivity.java"

# interfaces
.implements Lcom/android/settings_ex/myprofile/EditMyProfileDialog$OnProfileTextChangedListener;
.implements Lcom/android/settings_ex/myprofile/GradientColorPickerView$OnCustomColorSubmitListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/myprofile/ClockActivity$CustomSpinnerAdapter;
    }
.end annotation


# static fields
.field private static final DB_MY_PROFILE_INFORMATION:Ljava/lang/String; = "my_profile_information"

.field private static final DB_MY_PROFILE_TEXT_ALIGNMENT:Ljava/lang/String; = "lock_screen_clock_text_alignment"

.field private static final DB_MY_PROFILE_TEXT_COLOR:Ljava/lang/String; = "lock_screen_clock_text_color"

.field private static final DB_MY_PROFILE_TEXT_SIZE:Ljava/lang/String; = "lock_screen_clock_text_size"

.field private static final PROFILE_MAX_CHAR_LIMIT:I = 0x3c

.field private static final TEXT_ALIGN_CENTER:I = 0x1

.field private static final TEXT_ALIGN_LEFT:I = 0x0

.field private static final TEXT_ALIGN_RIGHT:I = 0x2


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBtnTextAlignCenter:Landroid/widget/Button;

.field private mBtnTextAlignLeft:Landroid/widget/Button;

.field private mBtnTextAlignRight:Landroid/widget/Button;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mEditmyProfileDialog:Lcom/android/settings_ex/myprofile/EditMyProfileDialog;

.field mFocusChangedListener:Landroid/view/View$OnFocusChangeListener;

.field private mFontSizeRangeArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGradientColorPickerView:Lcom/android/settings_ex/myprofile/GradientColorPickerView;

.field mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mResources:Landroid/content/res/Resources;

.field private mSpLitColorPickerView:Lcom/android/settings_ex/myprofile/SpLitColorPickerView;

.field private mSpinnerFontSize:Landroid/widget/Spinner;

.field private mTvEditProfileLabel:Landroid/widget/TextView;

.field private mTvPreviewText:Landroid/widget/TextView;

.field mViewOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->TAG:Ljava/lang/String;

    .line 266
    new-instance v0, Lcom/android/settings_ex/myprofile/ClockActivity$5;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/myprofile/ClockActivity$5;-><init>(Lcom/android/settings_ex/myprofile/ClockActivity;)V

    iput-object v0, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mFocusChangedListener:Landroid/view/View$OnFocusChangeListener;

    .line 284
    new-instance v0, Lcom/android/settings_ex/myprofile/ClockActivity$6;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/myprofile/ClockActivity$6;-><init>(Lcom/android/settings_ex/myprofile/ClockActivity;)V

    iput-object v0, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 295
    new-instance v0, Lcom/android/settings_ex/myprofile/ClockActivity$7;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/myprofile/ClockActivity$7;-><init>(Lcom/android/settings_ex/myprofile/ClockActivity;)V

    iput-object v0, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mViewOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/myprofile/ClockActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mFontSizeRangeArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/myprofile/ClockActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mTvPreviewText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/myprofile/ClockActivity;Landroid/view/View;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/myprofile/ClockActivity;->updateAlignButtonAndPreviewTextAlignment(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/myprofile/ClockActivity;)Lcom/android/settings_ex/myprofile/EditMyProfileDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mEditmyProfileDialog:Lcom/android/settings_ex/myprofile/EditMyProfileDialog;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/settings_ex/myprofile/ClockActivity;Lcom/android/settings_ex/myprofile/EditMyProfileDialog;)Lcom/android/settings_ex/myprofile/EditMyProfileDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mEditmyProfileDialog:Lcom/android/settings_ex/myprofile/EditMyProfileDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings_ex/myprofile/ClockActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings_ex/myprofile/ClockActivity;->saveTextSizeToDB(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/myprofile/ClockActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/myprofile/ClockActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings_ex/myprofile/ClockActivity;->reflectSelectedTextFontColor()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings_ex/myprofile/ClockActivity;)Lcom/android/settings_ex/myprofile/GradientColorPickerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mGradientColorPickerView:Lcom/android/settings_ex/myprofile/GradientColorPickerView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/myprofile/ClockActivity;)Lcom/android/settings_ex/myprofile/SpLitColorPickerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mSpLitColorPickerView:Lcom/android/settings_ex/myprofile/SpLitColorPickerView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/myprofile/ClockActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mBtnTextAlignLeft:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/myprofile/ClockActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mBtnTextAlignRight:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/myprofile/ClockActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mBtnTextAlignCenter:Landroid/widget/Button;

    return-object v0
.end method

.method private getDeviceOrientation()I
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method private getProfileTextFromDB()Ljava/lang/String;
    .locals 3

    .prologue
    .line 394
    iget-object v1, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "my_profile_information"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, dbString:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 396
    const-string v0, ""

    .line 398
    :cond_0
    return-object v0
.end method

.method private getTextAlignSettingsFromDB()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 355
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " -- TEXT ALIGNMENT SETTING value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "lock_screen_clock_text_alignment"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "lock_screen_clock_text_alignment"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getTextColorValueFromDB()I
    .locals 5

    .prologue
    .line 408
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " -------DB TEXT COLOR VALUE ----- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "lock_screen_clock_text_color"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v1, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "lock_screen_clock_text_color"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 413
    :goto_0
    return v1

    .line 410
    :catch_0
    move-exception v0

    .line 411
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    iget-object v1, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ------ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 413
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getTextSizeFromDB()Ljava/lang/String;
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "lock_screen_clock_text_size"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getViewID(I)I
    .locals 1
    .parameter "textAlignSettingsFromDB"

    .prologue
    .line 214
    if-nez p1, :cond_0

    .line 215
    const v0, 0x7f0b01e0

    .line 218
    :goto_0
    return v0

    .line 216
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 217
    const v0, 0x7f0b01df

    goto :goto_0

    .line 218
    :cond_1
    const v0, 0x7f0b01de

    goto :goto_0
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 99
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mResources:Landroid/content/res/Resources;

    .line 100
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 103
    const v3, 0x7f0b01db

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mTvEditProfileLabel:Landroid/widget/TextView;

    .line 104
    iget-object v3, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mTvEditProfileLabel:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mViewOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v3, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mTvEditProfileLabel:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f090d08

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/settings_ex/myprofile/ClockActivity;->getProfileTextFromDB()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v3, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mTvEditProfileLabel:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 109
    const v3, 0x7f0b01da

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mTvPreviewText:Landroid/widget/TextView;

    .line 112
    const v3, 0x7f0b01e0

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mBtnTextAlignLeft:Landroid/widget/Button;

    .line 113
    const v3, 0x7f0b01df

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mBtnTextAlignCenter:Landroid/widget/Button;

    .line 114
    const v3, 0x7f0b01de

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mBtnTextAlignRight:Landroid/widget/Button;

    .line 120
    iget-object v3, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mBtnTextAlignLeft:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 121
    iget-object v3, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mBtnTextAlignCenter:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 122
    iget-object v3, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mBtnTextAlignRight:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 124
    iget-object v3, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mBtnTextAlignLeft:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mFocusChangedListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 125
    iget-object v3, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mBtnTextAlignCenter:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mFocusChangedListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 126
    iget-object v3, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mBtnTextAlignRight:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mFocusChangedListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 129
    invoke-direct {p0}, Lcom/android/settings_ex/myprofile/ClockActivity;->getTextAlignSettingsFromDB()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings_ex/myprofile/ClockActivity;->getViewID(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, v7}, Lcom/android/settings_ex/myprofile/ClockActivity;->updateAlignButtonAndPreviewTextAlignment(Landroid/view/View;I)V

    .line 133
    const v3, 0x7f0b01dd

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mSpinnerFontSize:Landroid/widget/Spinner;

    .line 135
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0a0003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mFontSizeRangeArrayList:Ljava/util/ArrayList;

    .line 136
    new-instance v0, Lcom/android/settings_ex/myprofile/ClockActivity$CustomSpinnerAdapter;

    const v3, 0x7f040133

    iget-object v4, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mFontSizeRangeArrayList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p0, v3, v4}, Lcom/android/settings_ex/myprofile/ClockActivity$CustomSpinnerAdapter;-><init>(Lcom/android/settings_ex/myprofile/ClockActivity;Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 139
    .local v0, mSpinnerArrayAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mSpinnerFontSize:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 140
    iget-object v3, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mSpinnerFontSize:Landroid/widget/Spinner;

    new-instance v4, Lcom/android/settings_ex/myprofile/ClockActivity$1;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/myprofile/ClockActivity$1;-><init>(Lcom/android/settings_ex/myprofile/ClockActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 153
    invoke-direct {p0}, Lcom/android/settings_ex/myprofile/ClockActivity;->getTextSizeFromDB()Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, textSizeValue:Ljava/lang/String;
    const/4 v1, 0x0

    .line 155
    .local v1, selectionPosition:I
    if-eqz v2, :cond_0

    .line 156
    iget-object v3, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mFontSizeRangeArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 159
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mSpinnerFontSize:Landroid/widget/Spinner;

    invoke-virtual {v3, v1}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 164
    const v3, 0x7f0b01e1

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/myprofile/SpLitColorPickerView;

    iput-object v3, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mSpLitColorPickerView:Lcom/android/settings_ex/myprofile/SpLitColorPickerView;

    .line 165
    iget-object v3, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mSpLitColorPickerView:Lcom/android/settings_ex/myprofile/SpLitColorPickerView;

    invoke-direct {p0}, Lcom/android/settings_ex/myprofile/ClockActivity;->getDeviceOrientation()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/myprofile/SpLitColorPickerView;->setDeviceOrientation(I)V

    .line 167
    invoke-direct {p0}, Lcom/android/settings_ex/myprofile/ClockActivity;->restoreDBColorValue()V

    .line 170
    iget-object v3, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mSpLitColorPickerView:Lcom/android/settings_ex/myprofile/SpLitColorPickerView;

    invoke-virtual {v3}, Lcom/android/settings_ex/myprofile/SpLitColorPickerView;->getColorIndex()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mSpLitColorPickerView:Lcom/android/settings_ex/myprofile/SpLitColorPickerView;

    iget v4, v4, Lcom/android/settings_ex/myprofile/SpLitColorPickerView;->MAX_COLOR_INDEX:I

    if-ne v3, v4, :cond_1

    .line 172
    iget-object v3, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mSpLitColorPickerView:Lcom/android/settings_ex/myprofile/SpLitColorPickerView;

    invoke-virtual {v3, v7}, Lcom/android/settings_ex/myprofile/SpLitColorPickerView;->setKeepCustomColor(Z)V

    .line 175
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mSpLitColorPickerView:Lcom/android/settings_ex/myprofile/SpLitColorPickerView;

    new-instance v4, Lcom/android/settings_ex/myprofile/ClockActivity$2;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/myprofile/ClockActivity$2;-><init>(Lcom/android/settings_ex/myprofile/ClockActivity;)V

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/myprofile/SpLitColorPickerView;->setOnColorChangedListener(Lcom/android/settings_ex/myprofile/SpLitColorPickerView$OnColorChangedListener;)V

    .line 184
    iget-object v3, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mSpLitColorPickerView:Lcom/android/settings_ex/myprofile/SpLitColorPickerView;

    new-instance v4, Lcom/android/settings_ex/myprofile/ClockActivity$3;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/myprofile/ClockActivity$3;-><init>(Lcom/android/settings_ex/myprofile/ClockActivity;)V

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/myprofile/SpLitColorPickerView;->setOnSelectCustomColorListener(Lcom/android/settings_ex/myprofile/SpLitColorPickerView$OnSelectCustomColorListener;)V

    .line 197
    const v3, 0x7f0b01e2

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/myprofile/GradientColorPickerView;

    iput-object v3, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mGradientColorPickerView:Lcom/android/settings_ex/myprofile/GradientColorPickerView;

    .line 198
    iget-object v3, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mGradientColorPickerView:Lcom/android/settings_ex/myprofile/GradientColorPickerView;

    invoke-virtual {v3, p0}, Lcom/android/settings_ex/myprofile/GradientColorPickerView;->setOnCustomColorSubmitListener(Lcom/android/settings_ex/myprofile/GradientColorPickerView$OnCustomColorSubmitListener;)V

    .line 201
    iget-object v3, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mGradientColorPickerView:Lcom/android/settings_ex/myprofile/GradientColorPickerView;

    new-instance v4, Lcom/android/settings_ex/myprofile/ClockActivity$4;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/myprofile/ClockActivity$4;-><init>(Lcom/android/settings_ex/myprofile/ClockActivity;)V

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/myprofile/GradientColorPickerView;->setOnColorChangedListener(Lcom/android/settings_ex/myprofile/GradientColorPickerView$OnColorChangedListener;)V

    .line 211
    return-void
.end method

.method private reflectSelectedTextFontColor()V
    .locals 4

    .prologue
    .line 454
    iget-object v1, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->TAG:Ljava/lang/String;

    const-string v2, " --------- INSIDE REFLECT COLOR ---------"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v1, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mSpLitColorPickerView:Lcom/android/settings_ex/myprofile/SpLitColorPickerView;

    invoke-virtual {v1}, Lcom/android/settings_ex/myprofile/SpLitColorPickerView;->getColor()I

    move-result v0

    .line 459
    .local v0, textFontColor:I
    iget-object v1, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mTvPreviewText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 460
    iget-object v1, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->TAG:Ljava/lang/String;

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

    .line 463
    invoke-direct {p0, v0}, Lcom/android/settings_ex/myprofile/ClockActivity;->saveTextColorValueToDB(I)V

    .line 464
    return-void
.end method

.method private restoreDBColorValue()V
    .locals 2

    .prologue
    const/16 v1, 0x13

    .line 472
    invoke-direct {p0}, Lcom/android/settings_ex/myprofile/ClockActivity;->getTextColorValueFromDB()I

    move-result v0

    .line 473
    .local v0, colorValue:I
    if-nez v0, :cond_0

    .line 474
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 478
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mSpLitColorPickerView:Lcom/android/settings_ex/myprofile/SpLitColorPickerView;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/myprofile/SpLitColorPickerView;->setColor(I)V

    .line 481
    iget-object v1, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mTvPreviewText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 482
    return-void
.end method

.method private saveTextAlignSettingsToDB(I)V
    .locals 3
    .parameter "alignValue"

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "lock_screen_clock_text_alignment"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 366
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " --TEXT ALIGNMENT SETTING updated with value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    return-void
.end method

.method private saveTextColorValueToDB(I)V
    .locals 3
    .parameter "colorValue"

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "lock_screen_clock_text_color"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 424
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->TAG:Ljava/lang/String;

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

    .line 425
    return-void
.end method

.method private saveTextSizeToDB(Ljava/lang/String;)V
    .locals 2
    .parameter "textSizeValue"

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "lock_screen_clock_text_size"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 384
    return-void
.end method

.method private updateAlignButtonAndPreviewTextAlignment(Landroid/view/View;I)V
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/android/settings_ex/myprofile/ClockActivity;->setDefaultImage()V

    .line 317
    if-nez p1, :cond_1

    .line 347
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 320
    .restart local p1
    :cond_1
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 322
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mBtnTextAlignLeft:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 323
    check-cast p1, Landroid/widget/Button;

    .end local p1
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020387

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 324
    .restart local p1
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mBtnTextAlignRight:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 325
    check-cast p1, Landroid/widget/Button;

    .end local p1
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02038b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 326
    .restart local p1
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mBtnTextAlignCenter:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 327
    check-cast p1, Landroid/widget/Button;

    .end local p1
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020383

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 330
    .restart local p1
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mBtnTextAlignLeft:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 331
    check-cast p1, Landroid/widget/Button;

    .end local p1
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020388

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 332
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/myprofile/ClockActivity;->saveTextAlignSettingsToDB(I)V

    goto :goto_0

    .line 334
    .restart local p1
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mBtnTextAlignRight:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 335
    check-cast p1, Landroid/widget/Button;

    .end local p1
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02038c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 336
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings_ex/myprofile/ClockActivity;->saveTextAlignSettingsToDB(I)V

    goto/16 :goto_0

    .line 338
    .restart local p1
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mBtnTextAlignCenter:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 339
    check-cast p1, Landroid/widget/Button;

    .end local p1
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020384

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 340
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings_ex/myprofile/ClockActivity;->saveTextAlignSettingsToDB(I)V

    goto/16 :goto_0

    .line 320
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const v0, 0x7f0400a4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 93
    invoke-direct {p0}, Lcom/android/settings_ex/myprofile/ClockActivity;->init()V

    .line 94
    return-void
.end method

.method public onCustomColorSubmit()V
    .locals 2

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mSpLitColorPickerView:Lcom/android/settings_ex/myprofile/SpLitColorPickerView;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mSpLitColorPickerView:Lcom/android/settings_ex/myprofile/SpLitColorPickerView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mGradientColorPickerView:Lcom/android/settings_ex/myprofile/GradientColorPickerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mGradientColorPickerView:Lcom/android/settings_ex/myprofile/GradientColorPickerView;

    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mGradientColorPickerView:Lcom/android/settings_ex/myprofile/GradientColorPickerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 448
    :cond_1
    return-void
.end method

.method public onProfileTextChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "profileTextLabel"

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mTvEditProfileLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    return-void
.end method

.method public setDefaultImage()V
    .locals 3

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mBtnTextAlignLeft:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020385

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 263
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mBtnTextAlignRight:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020389

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 264
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/ClockActivity;->mBtnTextAlignCenter:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020381

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 265
    return-void
.end method
