.class public Lcom/samsung/inputmethod/comm/SimeEnvironment;
.super Ljava/lang/Object;
.source "SimeEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;,
        Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;
    }
.end annotation


# static fields
.field public static final CANDIDATES_AREA_HEIGHT_RATIO_LANDSCAPE:F = 0.125f

.field public static final CANDIDATES_AREA_HEIGHT_RATIO_PORTRAIT:F = 0.085f

.field private static final COUNTRY_CODE:Ljava/lang/String; = null

.field private static final DEBUG:Z = false

.field private static final FUNCTION_BALLOON_TEXT_SIZE_RATIO:F = 0.085f

.field private static final FUNCTION_KEY_TEXT_SIZE_RATIO:F = 0.055f

.field public static final HW_EN_INPUT_RANGE_ALL:C = '\u00ff'

.field public static final HW_EN_INPUT_RANGE_DEFAULT:C = '\u00f7'

.field public static final HW_EN_INPUT_RANGE_EN:C = '\u00c3'

.field public static final HW_EN_INPUT_RANGE_GESTURE:C = ' '

.field public static final HW_EN_INPUT_RANGE_SYM:C = '\u0010'

.field public static final HW_INPUT_RANGE_NUM:C = '\u0004'

.field public static final HW_KO_INPUT_RANGE_ALL:C = '\u043c'

.field public static final HW_KO_INPUT_RANGE_DEFAULT:C = '\u0437'

.field public static final HW_KO_INPUT_RANGE_EN:C = '\u0003'

.field public static final HW_KO_INPUT_RANGE_GESTURE:C = ' '

.field public static final HW_KO_INPUT_RANGE_HANGUL:C = '\u0400'

.field public static final HW_KO_INPUT_RANGE_SYM:C = '\u0010'

.field public static final HW_ZH_CH_INPUT_RANGE_TR_CHAR:C = '\u4000'

.field public static final HW_ZH_HK_INPUT_RANGE_ALL:C = '\uebff'

.field public static final HW_ZH_HK_INPUT_RANGE_DEFAULT:C = '\ue0ff'

.field public static final HW_ZH_HK_INPUT_RANGE_DEFAULT_INC_CH:C = '\ue6ff'

.field public static final HW_ZH_HK_INPUT_RANGE_STROKE:C = '\ue000'

.field public static final HW_ZH_HK_INPUT_RANGE_STROKE_INC_CH:C = '\ue600'

.field public static final HW_ZH_INPUT_RANGE_ALL:C = '\u6eff'

.field public static final HW_ZH_INPUT_RANGE_DEFAULT:C = '\u06ff'

.field public static final HW_ZH_INPUT_RANGE_DEFAULT_INC_TR:C = '\u46ff'

.field public static final HW_ZH_INPUT_RANGE_EN:C = '\u0003'

.field public static final HW_ZH_INPUT_RANGE_GESTURE:C = '\u0080'

.field public static final HW_ZH_INPUT_RANGE_PINYIN:C = '\u2000'

.field public static final HW_ZH_INPUT_RANGE_STROKE:C = '\u0600'

.field public static final HW_ZH_INPUT_RANGE_STROKE_INC_TR:C = '\u4600'

.field public static final HW_ZH_INPUT_RANGE_SYM:C = 'x'

.field public static final HW_ZH_TR_INPUT_RANGE_CH_CHAR:C = '\u0600'

.field public static final HW_ZH_TR_INPUT_RANGE_EN:C = '\u0003'

.field public static final HW_ZH_TR_INPUT_RANGE_GESTURE:C = '\u0080'

.field public static final HW_ZH_TR_INPUT_RANGE_SYM:C = 'x'

.field public static final HW_ZH_TW_INPUT_RANGE_ALL:C = '\ucbff'

.field public static final HW_ZH_TW_INPUT_RANGE_DEFAULT:C = '\uc0ff'

.field public static final HW_ZH_TW_INPUT_RANGE_DEFAULT_INC_CH:C = '\uc6ff'

.field public static final HW_ZH_TW_INPUT_RANGE_STROKE:C = '\uc000'

.field public static final HW_ZH_TW_INPUT_RANGE_STROKE_INC_CH:C = '\uc600'

.field private static JNILibaryLoaded:Z = false

.field private static final KEY_BALLOON_HEIGHT_PLUS_RATIO:F = 0.05f

.field private static final KEY_BALLOON_WIDTH_PLUS_RATIO:F = 0.05f

.field public static final KEY_HEIGHT_RATIO_LANDSCAPE:F = 0.13f

.field public static final KEY_HEIGHT_RATIO_PORTRAIT:F = 0.1f

.field public static final MAX_DEFINE_POINT_NUMBER:I = 0xff

.field public static final MAX_DEFINE_TMP_NUMBER:I = 0x19

.field private static final NORMAL_BALLOON_TEXT_SIZE_RATIO:F = 0.14f

.field private static final NORMAL_KEY_TEXT_SIZE_RATIO:F = 0.075f

.field private static final TAG:Ljava/lang/String; = "SimeEnvironment"

.field private static mFilesDir:Ljava/lang/String;

.field private static mInstance:Lcom/samsung/inputmethod/comm/SimeEnvironment;

.field private static mlibDir:Ljava/lang/String;


# instance fields
.field private mCandidatesAreaHeight:I

.field private mConfig:Landroid/content/res/Configuration;

.field private mContext:Landroid/content/Context;

.field private mDebug:Z

.field private mDims:I

.field private mFloatingCandHeight:I

.field private mFloatingComposingWindowPadding:I

.field private mFloatingWindowHeight:I

.field private mFloatingWindowWidth:I

.field private mFunctionKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

.field private mFunctionKeyTextSize:I

.field private mHandwriteKeyHeight:I

.field private mImeService:Lcom/samsung/inputmethod/SamsungIME;

.field private mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

.field private mIsConfigureChanged:Z

.field private mKeyHeight:I

.field private mMoveHanderHeight:I

.field private mNormalKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

.field private mNormalKeyTextSize:I

.field private mOldLocale:Ljava/util/Locale;

.field private mOneHandKeyHeight:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSkbPaddingRect:Landroid/graphics/Rect;

.field private mTabAreaHeight:I

.field private mToolbarHeight:I

.field private mToolbarPageWidth:I

.field private mToolbarPageWidthFloating:I

.field private mToolbarSymbolsWidth:I

.field private mTypefaceHelve:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 173
    const-string v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->COUNTRY_CODE:Ljava/lang/String;

    .line 196
    sput-object v1, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mlibDir:Ljava/lang/String;

    .line 197
    sput-object v1, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFilesDir:Ljava/lang/String;

    .line 206
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->JNILibaryLoaded:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mConfig:Landroid/content/res/Configuration;

    .line 195
    iput-boolean v2, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mDebug:Z

    .line 201
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mSkbPaddingRect:Landroid/graphics/Rect;

    .line 216
    iput-boolean v2, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mIsConfigureChanged:Z

    .line 227
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v1, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mOldLocale:Ljava/util/Locale;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_0
    new-instance v1, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;-><init>(Lcom/samsung/inputmethod/comm/SimeEnvironment;)V

    iput-object v1, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mNormalKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    .line 232
    new-instance v1, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;-><init>(Lcom/samsung/inputmethod/comm/SimeEnvironment;)V

    iput-object v1, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFunctionKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    .line 233
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static LoadJNILibrary()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 830
    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeEnvironment;->JNILibaryLoaded:Z

    if-ne v3, v4, :cond_0

    .line 850
    .local v1, sysLibPath:Ljava/lang/String;
    :goto_0
    return-void

    .line 836
    .end local v1           #sysLibPath:Ljava/lang/String;
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getLibraryDir()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/lib/libjni_secime.so"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 837
    .restart local v1       #sysLibPath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 838
    .local v0, sysLibFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 839
    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 843
    :goto_1
    const/4 v3, 0x1

    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeEnvironment;->JNILibaryLoaded:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 845
    .end local v0           #sysLibFile:Ljava/io/File;
    :catch_0
    move-exception v2

    .line 846
    .local v2, ule:Ljava/lang/UnsatisfiedLinkError;
    const/4 v3, 0x0

    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeEnvironment;->JNILibaryLoaded:Z

    .line 847
    const-string v3, "LoadJNILibrary"

    const-string v4, "WARNING: Could not load libjni_secime natives"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 841
    .end local v2           #ule:Ljava/lang/UnsatisfiedLinkError;
    .restart local v0       #sysLibFile:Ljava/io/File;
    :cond_1
    :try_start_1
    const-string v3, "jni_secime"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static getFilesDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 648
    sget-object v0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFilesDir:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;
    .locals 1

    .prologue
    .line 236
    sget-object v0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mInstance:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-direct {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;-><init>()V

    sput-object v0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mInstance:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    .line 239
    :cond_0
    sget-object v0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mInstance:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    return-object v0
.end method

.method public static getLibraryDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 640
    sget-object v0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mlibDir:Ljava/lang/String;

    return-object v0
.end method

.method public static getSdkVersion()I
    .locals 1

    .prologue
    .line 738
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static isHKTWModelByCSC()Z
    .locals 2

    .prologue
    .line 779
    sget-object v0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->COUNTRY_CODE:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "CHINA"

    sget-object v1, Lcom/samsung/inputmethod/comm/SimeEnvironment;->COUNTRY_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 781
    const/4 v0, 0x0

    .line 783
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setFilesDir(Ljava/lang/String;)V
    .locals 0
    .parameter "filesDir"

    .prologue
    .line 652
    sput-object p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFilesDir:Ljava/lang/String;

    .line 653
    return-void
.end method

.method public static setLibraryDir(Ljava/lang/String;)V
    .locals 0
    .parameter "libDir"

    .prologue
    .line 644
    sput-object p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mlibDir:Ljava/lang/String;

    .line 645
    return-void
.end method


# virtual methods
.method public enableToolbarOrTab()Z
    .locals 1

    .prologue
    .line 700
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_TOOLBAR:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->isKeyGuardScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isTabletModel()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBalloonAttr(I)Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;
    .locals 1
    .parameter "keyTypeId"

    .prologue
    .line 609
    packed-switch p1, :pswitch_data_0

    .line 620
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mNormalKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    .line 623
    .local v0, skBalloonAtrr:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;
    :goto_0
    return-object v0

    .line 613
    .end local v0           #skBalloonAtrr:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mNormalKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    .line 614
    .restart local v0       #skBalloonAtrr:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;
    goto :goto_0

    .line 617
    .end local v0           #skBalloonAtrr:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFunctionKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    .line 618
    .restart local v0       #skBalloonAtrr:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;
    goto :goto_0

    .line 609
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mConfig:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public getConfigureState()Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mIsConfigureChanged:Z

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDensity()F
    .locals 2

    .prologue
    .line 813
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 814
    const-string v0, "SimeEnvironment"

    const-string v1, "getDensity() mContext == null !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    const/high16 v0, -0x4080

    .line 817
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    goto :goto_0
.end method

.method public getDims()I
    .locals 1

    .prologue
    .line 656
    iget v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mDims:I

    return v0
.end method

.method public getFloatingCandHeight()I
    .locals 1

    .prologue
    .line 498
    invoke-virtual {p0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXhSw400dpiScreen()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXXhSw360dpiScreen()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->ishSw360dpiScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 499
    :cond_0
    iget v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFloatingCandHeight:I

    .line 501
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mCandidatesAreaHeight:I

    goto :goto_0
.end method

.method public getFloatingComposingWindowPadding()I
    .locals 2

    .prologue
    .line 546
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFloatingComposingWindowPadding:I

    .line 547
    iget v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFloatingComposingWindowPadding:I

    return v0
.end method

.method public getFloatingCoreHeight()I
    .locals 1

    .prologue
    .line 538
    iget v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFloatingWindowHeight:I

    return v0
.end method

.method public getFloatingWindowHeight()I
    .locals 3

    .prologue
    .line 558
    invoke-virtual {p0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingCoreHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getFloatingWindowWidth()I
    .locals 1

    .prologue
    .line 505
    iget v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFloatingWindowWidth:I

    return v0
.end method

.method public getHeightForCandidates()I
    .locals 1

    .prologue
    .line 494
    iget v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mCandidatesAreaHeight:I

    return v0
.end method

.method public getHeightForTabBar()I
    .locals 1

    .prologue
    .line 466
    iget v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mTabAreaHeight:I

    return v0
.end method

.method public getHeightForToolBar()I
    .locals 3

    .prologue
    .line 470
    iget v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mToolbarHeight:I

    .line 471
    .local v0, toolbarHeight:I
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v1

    sget-object v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXhSw400dpiScreen()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXXhSw360dpiScreen()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->ishSw360dpiScreen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 473
    :cond_0
    iget v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFloatingCandHeight:I

    .line 475
    :cond_1
    sget-boolean v1, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_TOOLBAR:Z

    if-nez v1, :cond_2

    .line 476
    const/4 v0, 0x0

    .line 478
    :cond_2
    return v0
.end method

.method public getHelveFont()Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 788
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mTypefaceHelve:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mTypefaceHelve:Landroid/graphics/Typeface;

    .line 793
    :goto_0
    return-object v0

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/HelveticaNeueMedium.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mTypefaceHelve:Landroid/graphics/Typeface;

    .line 793
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mTypefaceHelve:Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method public getKeyHeight()I
    .locals 1

    .prologue
    .line 519
    iget v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mKeyHeight:I

    return v0
.end method

.method public getKeyTextSize(Z)I
    .locals 1
    .parameter "isFunctionKey"

    .prologue
    .line 600
    if-eqz p1, :cond_0

    .line 601
    iget v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFunctionKeyTextSize:I

    .line 603
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mNormalKeyTextSize:I

    goto :goto_0
.end method

.method public getKeyXMarginFactor()F
    .locals 1

    .prologue
    .line 508
    const/high16 v0, 0x3f80

    return v0
.end method

.method public getKeyYMarginFactor()F
    .locals 2

    .prologue
    .line 512
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mConfig:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 513
    const v0, 0x3f333333

    .line 515
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method public getMoveHandlerHeight()I
    .locals 1

    .prologue
    .line 542
    iget v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mMoveHanderHeight:I

    return v0
.end method

.method public getNotificationBarHeight()I
    .locals 2

    .prologue
    .line 574
    const/4 v0, 0x0

    .line 576
    .local v0, height:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 593
    const/16 v0, 0x35

    .line 596
    :goto_0
    return v0

    .line 578
    :sswitch_0
    const/16 v0, 0x49

    .line 579
    goto :goto_0

    .line 581
    :sswitch_1
    const/16 v0, 0x35

    .line 582
    goto :goto_0

    .line 584
    :sswitch_2
    const/16 v0, 0x26

    .line 585
    goto :goto_0

    .line 587
    :sswitch_3
    const/16 v0, 0x19

    .line 588
    goto :goto_0

    .line 590
    :sswitch_4
    const/16 v0, 0x13

    .line 591
    goto :goto_0

    .line 576
    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_4
        0xa0 -> :sswitch_3
        0xf0 -> :sswitch_2
        0x140 -> :sswitch_1
        0x1e0 -> :sswitch_0
    .end sparse-switch
.end method

.method public getOneHandCoreHeight(I)I
    .locals 1
    .parameter "rowNumber"

    .prologue
    .line 534
    iget v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mOneHandKeyHeight:I

    mul-int/2addr v0, p1

    return v0
.end method

.method public getQwertyKeyHGap()I
    .locals 2

    .prologue
    .line 826
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getQwertyKeyVGap()I
    .locals 2

    .prologue
    .line 822
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getScreenHeight()I
    .locals 1

    .prologue
    .line 463
    iget v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mScreenHeight:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .prologue
    .line 459
    iget v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mScreenWidth:I

    return v0
.end method

.method public getSkbCoreHeight(I)I
    .locals 1
    .parameter "rowNumber"

    .prologue
    .line 526
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 527
    iget v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mHandwriteKeyHeight:I

    mul-int/2addr v0, p1

    .line 529
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mKeyHeight:I

    mul-int/2addr v0, p1

    goto :goto_0
.end method

.method public getSkbHeight(I)I
    .locals 3
    .parameter "rowNumber"

    .prologue
    .line 552
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getSkbCoreHeight(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0095

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0096

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getSkbPaddingRect()Landroid/graphics/Rect;
    .locals 10

    .prologue
    .line 564
    iget-object v5, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 565
    .local v2, res:Landroid/content/res/Resources;
    const v5, 0x7f0a0097

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 566
    .local v1, left:F
    const v5, 0x7f0a0098

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 567
    .local v3, right:F
    const v5, 0x7f0a0095

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 568
    .local v4, top:F
    const v5, 0x7f0a0096

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 569
    .local v0, bottom:F
    iget-object v5, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mSkbPaddingRect:Landroid/graphics/Rect;

    float-to-int v6, v1

    float-to-int v7, v4

    float-to-int v8, v3

    float-to-int v9, v0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 570
    iget-object v5, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mSkbPaddingRect:Landroid/graphics/Rect;

    return-object v5
.end method

.method public getWidthForToolbarPage()I
    .locals 1

    .prologue
    .line 486
    iget v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mToolbarPageWidth:I

    return v0
.end method

.method public getWidthForToolbarPageFloating()I
    .locals 1

    .prologue
    .line 482
    iget v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mToolbarPageWidthFloating:I

    return v0
.end method

.method public getWidthForToolbarSymbols()I
    .locals 1

    .prologue
    .line 490
    iget v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mToolbarSymbolsWidth:I

    return v0
.end method

.method public hasHardKeyboard()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 627
    iget-object v1, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mConfig:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mConfig:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 629
    :cond_0
    const/4 v0, 0x0

    .line 631
    :cond_1
    return v0
.end method

.method public isHIGHDensity()Z
    .locals 2

    .prologue
    .line 712
    iget v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mDims:I

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_0

    .line 713
    const/4 v0, 0x1

    .line 715
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHSw240dpiScreen()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 440
    invoke-virtual {p0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v1

    const/16 v2, 0xf0

    if-eq v1, v2, :cond_1

    .line 445
    :cond_0
    :goto_0
    return v0

    .line 442
    :cond_1
    iget v1, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mScreenWidth:I

    rem-int/lit16 v1, v1, 0x1e0

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mScreenHeight:I

    rem-int/lit16 v1, v1, 0x1e0

    if-nez v1, :cond_0

    .line 443
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isHSw270dpiScreen()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 422
    invoke-virtual {p0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v1

    const/16 v2, 0xf0

    if-eq v1, v2, :cond_1

    .line 427
    :cond_0
    :goto_0
    return v0

    .line 424
    :cond_1
    iget v1, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mScreenWidth:I

    rem-int/lit16 v1, v1, 0x21c

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mScreenHeight:I

    rem-int/lit16 v1, v1, 0x21c

    if-nez v1, :cond_0

    .line 425
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isImeInputViewShown()Z
    .locals 2

    .prologue
    .line 431
    const/4 v0, 0x0

    .line 432
    .local v0, isShown:Z
    iget-object v1, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    if-eqz v1, :cond_0

    .line 433
    iget-object v1, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v0

    .line 435
    :cond_0
    return v0
.end method

.method public isLargeScreen()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 685
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_PHONEBLET_NOT_APPLY_LARGRE_SCREEN:Z

    if-eqz v2, :cond_1

    .line 689
    :cond_0
    :goto_0
    return v1

    .line 688
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mConfig:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v2, 0xf

    .line 689
    .local v0, screenType:I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isLocaleChanged()Z
    .locals 3

    .prologue
    .line 719
    const/4 v1, 0x0

    .line 721
    .local v1, newLocale:Ljava/util/Locale;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 725
    :goto_0
    iget-object v2, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mOldLocale:Ljava/util/Locale;

    invoke-virtual {v2, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 726
    iput-object v1, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mOldLocale:Ljava/util/Locale;

    .line 727
    const/4 v2, 0x1

    .line 729
    :goto_1
    return v2

    .line 722
    :catch_0
    move-exception v0

    .line 723
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 729
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isMSw320dpiScreen()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 450
    invoke-virtual {p0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v1

    const/16 v2, 0xa0

    if-eq v1, v2, :cond_1

    .line 455
    :cond_0
    :goto_0
    return v0

    .line 452
    :cond_1
    iget v1, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mScreenWidth:I

    rem-int/lit16 v1, v1, 0x140

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mScreenHeight:I

    rem-int/lit16 v1, v1, 0x140

    if-nez v1, :cond_0

    .line 453
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isNeedShadow()Z
    .locals 2

    .prologue
    .line 671
    iget v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mDims:I

    const/16 v1, 0x78

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mDims:I

    const/16 v1, 0xa0

    if-ne v0, v1, :cond_1

    .line 672
    :cond_0
    const/4 v0, 0x0

    .line 674
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPSeriesModel()Z
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 660
    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_PHONEBLET_NOT_APPLY_LARGRE_SCREEN:Z

    if-eqz v5, :cond_0

    .line 666
    :goto_0
    return v3

    .line 663
    :cond_0
    iget-object v5, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mConfig:Landroid/content/res/Configuration;

    iget v5, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v5, 0xf

    .line 664
    .local v2, screenType:I
    if-eq v2, v6, :cond_1

    if-ne v2, v6, :cond_2

    :cond_1
    move v1, v4

    .line 665
    .local v1, islargeScreen:Z
    :goto_1
    iget v5, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mDims:I

    const/16 v6, 0xa0

    if-ne v5, v6, :cond_3

    move v0, v4

    .line 666
    .local v0, isMediumDis:Z
    :goto_2
    and-int v3, v1, v0

    goto :goto_0

    .end local v0           #isMediumDis:Z
    .end local v1           #islargeScreen:Z
    :cond_2
    move v1, v3

    .line 664
    goto :goto_1

    .restart local v1       #islargeScreen:Z
    :cond_3
    move v0, v3

    .line 665
    goto :goto_2
.end method

.method public isPlatformKey()Z
    .locals 6

    .prologue
    .line 743
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    .line 744
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 746
    .local v2, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x40

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 748
    .local v1, pis:Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 749
    .local v3, sharedUserId:Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v4, "android.uid.system"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 751
    const/4 v4, 0x1

    .line 761
    .end local v1           #pis:Landroid/content/pm/PackageInfo;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    .end local v3           #sharedUserId:Ljava/lang/String;
    :goto_0
    return v4

    .line 754
    .restart local v2       #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 755
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 761
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isTVDensity()Z
    .locals 2

    .prologue
    .line 705
    iget v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mDims:I

    const/16 v1, 0xd5

    if-ne v0, v1, :cond_0

    .line 706
    const/4 v0, 0x1

    .line 708
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTabletModel()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 694
    sget-boolean v1, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_PHONEBLET_NOT_APPLY_LARGRE_SCREEN:Z

    if-eqz v1, :cond_1

    .line 697
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isLargeScreen()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXLargeScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isVoiceInstalled()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 765
    const/4 v2, 0x0

    .line 766
    .local v2, voiceInstalled:Z
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    .line 767
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 768
    .local v1, pm:Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 770
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    .line 772
    .end local v0           #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return v2

    .restart local v0       #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v1       #pm:Landroid/content/pm/PackageManager;
    :cond_1
    move v2, v3

    .line 770
    goto :goto_0
.end method

.method public isXLargeScreen()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 677
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_PHONEBLET_NOT_APPLY_LARGRE_SCREEN:Z

    if-eqz v2, :cond_1

    .line 681
    :cond_0
    :goto_0
    return v1

    .line 680
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mConfig:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v2, 0xf

    .line 681
    .local v0, screenType:I
    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isXXhSw360dpiScreen()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 412
    invoke-virtual {p0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v1

    const/16 v2, 0x1e0

    if-eq v1, v2, :cond_1

    .line 417
    :cond_0
    :goto_0
    return v0

    .line 414
    :cond_1
    iget v1, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mScreenWidth:I

    rem-int/lit16 v1, v1, 0x168

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mScreenHeight:I

    rem-int/lit16 v1, v1, 0x168

    if-nez v1, :cond_0

    .line 415
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isXhSw360dpiScreen()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 392
    invoke-virtual {p0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v1

    const/16 v2, 0x140

    if-eq v1, v2, :cond_1

    .line 397
    :cond_0
    :goto_0
    return v0

    .line 394
    :cond_1
    iget v1, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mScreenWidth:I

    rem-int/lit16 v1, v1, 0x168

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mScreenHeight:I

    rem-int/lit16 v1, v1, 0x168

    if-nez v1, :cond_0

    .line 395
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isXhSw400dpiScreen()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 382
    invoke-virtual {p0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v1

    const/16 v2, 0x140

    if-eq v1, v2, :cond_1

    .line 387
    :cond_0
    :goto_0
    return v0

    .line 384
    :cond_1
    iget v1, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mScreenWidth:I

    rem-int/lit16 v1, v1, 0x190

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mScreenHeight:I

    rem-int/lit16 v1, v1, 0x190

    if-nez v1, :cond_0

    .line 385
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public ishSw360dpiScreen()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 402
    invoke-virtual {p0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v1

    const/16 v2, 0xf0

    if-eq v1, v2, :cond_1

    .line 407
    :cond_0
    :goto_0
    return v0

    .line 404
    :cond_1
    iget v1, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mScreenWidth:I

    rem-int/lit16 v1, v1, 0x168

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mScreenHeight:I

    rem-int/lit16 v1, v1, 0x168

    if-nez v1, :cond_0

    .line 405
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public needDebug()Z
    .locals 1

    .prologue
    .line 635
    iget-boolean v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mDebug:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/Context;)V
    .locals 12
    .parameter "newConfig"
    .parameter "context"

    .prologue
    const/high16 v11, 0x3f40

    const v10, 0x3d4ccccd

    const v9, 0x3e0f5c29

    const v8, 0x3d99999a

    const v7, 0x3d6147ae

    .line 247
    iput-object p2, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mContext:Landroid/content/Context;

    .line 248
    instance-of v4, p2, Lcom/samsung/inputmethod/SamsungIME;

    if-eqz v4, :cond_0

    move-object v4, p2

    .line 250
    check-cast v4, Lcom/samsung/inputmethod/SamsungIME;

    iput-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    .line 252
    :cond_0
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mConfig:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    iget v5, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v4, v5, :cond_1

    .line 253
    const-string v4, "window"

    invoke-virtual {p2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 255
    .local v3, wm:Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 256
    .local v0, d:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mScreenWidth:I

    .line 257
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mScreenHeight:I

    .line 259
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 260
    .local v1, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 261
    iget v4, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mDims:I

    .line 262
    const-string v4, "SimeEnvironment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " dim is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mDims:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mScreenHeight:I

    iget v5, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mScreenWidth:I

    if-le v4, v5, :cond_5

    .line 267
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NUM_QWERTY_FEATURE:Z

    if-eqz v4, :cond_3

    .line 268
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0038

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mKeyHeight:I

    .line 269
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a003a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mHandwriteKeyHeight:I

    .line 276
    :goto_0
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NUM_QWERTY_FEATURE:Z

    if-eqz v4, :cond_4

    .line 277
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0050

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFloatingWindowHeight:I

    .line 280
    :goto_1
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a002f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mOneHandKeyHeight:I

    .line 281
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0052

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFloatingWindowWidth:I

    .line 282
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a003c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mCandidatesAreaHeight:I

    .line 283
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0071

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mTabAreaHeight:I

    .line 284
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a003c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mToolbarHeight:I

    .line 285
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0073

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mToolbarPageWidthFloating:I

    .line 286
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0074

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mToolbarPageWidth:I

    .line 287
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0077

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mToolbarSymbolsWidth:I

    .line 288
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a005a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFloatingCandHeight:I

    .line 290
    iget v2, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mScreenWidth:I

    .line 325
    .local v2, scale:I
    :goto_2
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0059

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mMoveHanderHeight:I

    .line 326
    int-to-float v4, v2

    mul-float/2addr v4, v8

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mNormalKeyTextSize:I

    .line 327
    int-to-float v4, v2

    mul-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFunctionKeyTextSize:I

    .line 329
    invoke-virtual {p0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXhSw400dpiScreen()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 330
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mNormalKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00a3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v4, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;->textSize:I

    .line 332
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFunctionKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00a4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v4, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;->textSize:I

    .line 334
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mNormalKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00a5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v4, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;->widthPlus:I

    .line 336
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mNormalKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00a6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v4, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;->heightPlus:I

    .line 338
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFunctionKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00a7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v4, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;->widthPlus:I

    .line 340
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFunctionKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00a8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v4, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;->heightPlus:I

    .line 366
    .end local v0           #d:Landroid/view/Display;
    .end local v1           #dm:Landroid/util/DisplayMetrics;
    .end local v2           #scale:I
    .end local v3           #wm:Landroid/view/WindowManager;
    :cond_1
    :goto_3
    if-eqz p1, :cond_2

    .line 367
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mConfig:Landroid/content/res/Configuration;

    invoke-virtual {v4, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 369
    :cond_2
    return-void

    .line 272
    .restart local v0       #d:Landroid/view/Display;
    .restart local v1       #dm:Landroid/util/DisplayMetrics;
    .restart local v3       #wm:Landroid/view/WindowManager;
    :cond_3
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0034

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mKeyHeight:I

    .line 273
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0036

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mHandwriteKeyHeight:I

    goto/16 :goto_0

    .line 279
    :cond_4
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a004e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFloatingWindowHeight:I

    goto/16 :goto_1

    .line 294
    :cond_5
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NUM_QWERTY_FEATURE:Z

    if-eqz v4, :cond_6

    .line 295
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0039

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mKeyHeight:I

    .line 296
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a003b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mHandwriteKeyHeight:I

    .line 303
    :goto_4
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NUM_QWERTY_FEATURE:Z

    if-eqz v4, :cond_7

    .line 304
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0051

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFloatingWindowHeight:I

    .line 307
    :goto_5
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0053

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFloatingWindowWidth:I

    .line 309
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NUM_QWERTY_FEATURE:Z

    if-eqz v4, :cond_8

    .line 310
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a003d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mCandidatesAreaHeight:I

    .line 311
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a003d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mToolbarHeight:I

    .line 312
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a005b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFloatingCandHeight:I

    .line 323
    :goto_6
    iget v2, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mScreenHeight:I

    .restart local v2       #scale:I
    goto/16 :goto_2

    .line 299
    .end local v2           #scale:I
    :cond_6
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0035

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mKeyHeight:I

    .line 300
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0037

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mHandwriteKeyHeight:I

    goto :goto_4

    .line 306
    :cond_7
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a004f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFloatingWindowHeight:I

    goto :goto_5

    .line 314
    :cond_8
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a003e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mCandidatesAreaHeight:I

    .line 315
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0072

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mTabAreaHeight:I

    .line 316
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a003e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mToolbarHeight:I

    .line 317
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0073

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mToolbarPageWidthFloating:I

    .line 318
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0075

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mToolbarPageWidth:I

    .line 319
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0078

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mToolbarSymbolsWidth:I

    .line 320
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a005b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFloatingCandHeight:I

    goto/16 :goto_6

    .line 343
    .restart local v2       #scale:I
    :cond_9
    invoke-virtual {p0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXhSw360dpiScreen()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 344
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mNormalKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    int-to-float v5, v2

    mul-float/2addr v5, v9

    const v6, 0x3f4ccccd

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;->textSize:I

    .line 345
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFunctionKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    int-to-float v5, v2

    mul-float/2addr v5, v9

    const v6, 0x3f4ccccd

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;->textSize:I

    .line 346
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mNormalKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    int-to-float v5, v2

    mul-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, v4, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;->widthPlus:I

    .line 347
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mNormalKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    int-to-float v5, v2

    mul-float/2addr v5, v8

    float-to-int v5, v5

    iput v5, v4, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;->heightPlus:I

    .line 348
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFunctionKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    int-to-float v5, v2

    mul-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, v4, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;->widthPlus:I

    .line 349
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFunctionKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    int-to-float v5, v2

    mul-float/2addr v5, v8

    float-to-int v5, v5

    iput v5, v4, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;->heightPlus:I

    goto/16 :goto_3

    .line 350
    :cond_a
    invoke-virtual {p0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXXhSw360dpiScreen()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 351
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mNormalKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    int-to-float v5, v2

    mul-float/2addr v5, v9

    mul-float/2addr v5, v11

    float-to-int v5, v5

    iput v5, v4, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;->textSize:I

    .line 352
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFunctionKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    int-to-float v5, v2

    mul-float/2addr v5, v9

    mul-float/2addr v5, v11

    float-to-int v5, v5

    iput v5, v4, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;->textSize:I

    .line 353
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mNormalKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    int-to-float v5, v2

    mul-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, v4, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;->widthPlus:I

    .line 354
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mNormalKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    int-to-float v5, v2

    mul-float/2addr v5, v8

    float-to-int v5, v5

    iput v5, v4, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;->heightPlus:I

    .line 355
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFunctionKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    int-to-float v5, v2

    mul-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, v4, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;->widthPlus:I

    .line 356
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFunctionKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    int-to-float v5, v2

    mul-float/2addr v5, v8

    float-to-int v5, v5

    iput v5, v4, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;->heightPlus:I

    goto/16 :goto_3

    .line 358
    :cond_b
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mNormalKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    int-to-float v5, v2

    mul-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, v4, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;->textSize:I

    .line 359
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFunctionKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    int-to-float v5, v2

    const v6, 0x3dae147b

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;->textSize:I

    .line 360
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mNormalKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    int-to-float v5, v2

    mul-float/2addr v5, v10

    float-to-int v5, v5

    iput v5, v4, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;->widthPlus:I

    .line 361
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mNormalKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    int-to-float v5, v2

    mul-float/2addr v5, v10

    float-to-int v5, v5

    iput v5, v4, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;->heightPlus:I

    .line 362
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFunctionKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    int-to-float v5, v2

    mul-float/2addr v5, v10

    float-to-int v5, v5

    iput v5, v4, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;->widthPlus:I

    .line 363
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mFunctionKeyBalloon:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    int-to-float v5, v2

    mul-float/2addr v5, v10

    float-to-int v5, v5

    iput v5, v4, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;->heightPlus:I

    goto/16 :goto_3
.end method

.method public setConfigureState(Z)V
    .locals 1
    .parameter "state"

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mIsConfigureChanged:Z

    if-eq v0, p1, :cond_0

    .line 219
    iput-boolean p1, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mIsConfigureChanged:Z

    .line 221
    :cond_0
    return-void
.end method

.method public setParams(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V
    .locals 0
    .parameter "inputModeSwitcher"

    .prologue
    .line 243
    iput-object p1, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    .line 244
    return-void
.end method
