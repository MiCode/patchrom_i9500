.class public Lcom/android/settings_ex/BrightnessPreference;
.super Landroid/preference/SeekBarDialogPreference;
.source "BrightnessPreference.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;
.implements Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/BrightnessPreference$SavedState;,
        Lcom/android/settings_ex/BrightnessPreference$Listener;
    }
.end annotation


# static fields
.field private static final BRIGHTNESS_NORMAL_VALUE:I = 0xff

.field private static final PREF_SIOP_BRIGHTNESS:Ljava/lang/String; = "pref_siop_brightness"

.field private static final SEEK_BAR_RANGE:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "BrightnessPreference"

.field private static final USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z


# instance fields
.field auto_detail_custom_layout:Landroid/widget/LinearLayout;

.field auto_detail_seekbar_layout:Landroid/widget/LinearLayout;

.field private currentLevel:I

.field private dissmissflag:Z

.field private isWidget:Ljava/lang/Boolean;

.field private mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

.field private mAutoDetailSeekBar:Landroid/widget/SeekBar;

.field private mAutoNotiTextView:Landroid/widget/TextView;

.field private mAutomaticAvailable:Z

.field private mAutomaticMode:Z

.field private mBrightness:Lcom/android/settings_ex/DisplaySettings;

.field private mBrightnessModeObserver:Landroid/database/ContentObserver;

.field private mBrightnessObserver:Landroid/database/ContentObserver;

.field private mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mCurBrightness:I

.field private mCustomBar:[Landroid/widget/ImageView;

.field private mFlipCloseStatus:Z

.field private mListener:Lcom/android/settings_ex/BrightnessPreference$Listener;

.field private mMaxBrightness:I

.field private mOldAutoDetailLevel:I

.field private mOldAutomatic:I

.field private mOldBrightness:I

.field private mOldBrightness_DB:I

.field private mRestoredOldState:Z

.field private final mScreenBrightnessMaximum:I

.field private final mScreenBrightnessMinimum:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field mSharedPreference:Landroid/content/SharedPreferences;

.field private mSupportFolderType:Z

.field private mTextView:Landroid/widget/TextView;

.field private mTracking:Z

.field private mTwSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

.field private mTwSeekBarLayout:Landroid/widget/LinearLayout;

.field private mTwSeekBarText:Landroid/widget/TextView;

.field seekbar_layout:Landroid/widget/LinearLayout;

.field supportAutoBrightnessDetail:Z

.field supportDA:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    invoke-static {}, Landroid/os/PowerManager;->useScreenAutoBrightnessAdjustmentFeature()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings_ex/BrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v8, -0x1

    const/4 v6, 0x0

    .line 167
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    iput-boolean v6, p0, Lcom/android/settings_ex/BrightnessPreference;->dissmissflag:Z

    .line 97
    iput-boolean v6, p0, Lcom/android/settings_ex/BrightnessPreference;->mAutomaticAvailable:Z

    .line 98
    iput-boolean v6, p0, Lcom/android/settings_ex/BrightnessPreference;->mFlipCloseStatus:Z

    .line 103
    iput v8, p0, Lcom/android/settings_ex/BrightnessPreference;->mCurBrightness:I

    .line 120
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/BrightnessPreference;->isWidget:Ljava/lang/Boolean;

    .line 123
    iput v6, p0, Lcom/android/settings_ex/BrightnessPreference;->currentLevel:I

    .line 125
    iput-boolean v6, p0, Lcom/android/settings_ex/BrightnessPreference;->supportDA:Z

    .line 126
    iput-boolean v6, p0, Lcom/android/settings_ex/BrightnessPreference;->supportAutoBrightnessDetail:Z

    .line 132
    new-instance v5, Lcom/android/settings_ex/BrightnessPreference$1;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/android/settings_ex/BrightnessPreference$1;-><init>(Lcom/android/settings_ex/BrightnessPreference;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/settings_ex/BrightnessPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    .line 140
    new-instance v5, Lcom/android/settings_ex/BrightnessPreference$2;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/android/settings_ex/BrightnessPreference$2;-><init>(Lcom/android/settings_ex/BrightnessPreference;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/settings_ex/BrightnessPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    .line 147
    new-instance v5, Lcom/android/settings_ex/BrightnessPreference$3;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/android/settings_ex/BrightnessPreference$3;-><init>(Lcom/android/settings_ex/BrightnessPreference;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/settings_ex/BrightnessPreference;->mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

    .line 169
    const-string v5, "power"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 170
    .local v1, pm:Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v5

    iput v5, p0, Lcom/android/settings_ex/BrightnessPreference;->mScreenBrightnessMinimum:I

    .line 171
    invoke-virtual {v1}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v5

    iput v5, p0, Lcom/android/settings_ex/BrightnessPreference;->mScreenBrightnessMaximum:I

    .line 175
    const-string v5, "BrightnessPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "min Brightness : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/settings_ex/BrightnessPreference;->mScreenBrightnessMinimum:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const-string v5, "BrightnessPreference"

    const-string v6, "getSensorMgr"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const-string v5, "sensor"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    .line 179
    .local v3, sensorMgr:Landroid/hardware/SensorManager;
    const-string v5, "BrightnessPreference"

    const-string v6, "getsensorList"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {v3, v8}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    .line 181
    .local v2, sensorList:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 182
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    .line 184
    .local v4, sensorType:I
    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    .line 186
    const-string v5, "BrightnessPreference"

    const-string v6, "EnableAuto"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings_ex/BrightnessPreference;->mAutomaticAvailable:Z

    .line 181
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    .end local v4           #sensorType:I
    :cond_1
    const v5, 0x7f0400e0

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/BrightnessPreference;->setDialogLayoutResource(I)V

    .line 195
    invoke-direct {p0}, Lcom/android/settings_ex/BrightnessPreference;->isSupportAutoBrightnessDetail()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings_ex/BrightnessPreference;->supportAutoBrightnessDetail:Z

    .line 196
    invoke-direct {p0}, Lcom/android/settings_ex/BrightnessPreference;->isSupportDA()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings_ex/BrightnessPreference;->supportDA:Z

    .line 197
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings_ex/BrightnessPreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/android/settings_ex/BrightnessPreference;->mCurBrightness:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/BrightnessPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings_ex/BrightnessPreference;->onBrightnessChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/BrightnessPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings_ex/BrightnessPreference;->onBrightnessModeChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/BrightnessPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings_ex/BrightnessPreference;->onAutoBrightnessDetailChanged()V

    return-void
.end method

.method private getBrightness()I
    .locals 5

    .prologue
    .line 468
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/settings_ex/BrightnessPreference;->getBrightnessMode(I)I

    move-result v1

    .line 469
    .local v1, mode:I
    const/4 v0, 0x0

    .line 470
    .local v0, brightness:F
    sget-boolean v2, Lcom/android/settings_ex/BrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 472
    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_auto_brightness_adj"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 474
    const/high16 v2, 0x3f80

    add-float/2addr v2, v0

    const/high16 v3, 0x4000

    div-float v0, v2, v3

    .line 485
    :goto_0
    const v2, 0x461c4000

    mul-float/2addr v2, v0

    float-to-int v2, v2

    return v2

    .line 476
    :cond_0
    iget v2, p0, Lcom/android/settings_ex/BrightnessPreference;->mCurBrightness:I

    if-gez v2, :cond_1

    .line 477
    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    const/16 v4, 0x64

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    int-to-float v0, v2

    .line 482
    :goto_1
    iget v2, p0, Lcom/android/settings_ex/BrightnessPreference;->mScreenBrightnessMinimum:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    iget v3, p0, Lcom/android/settings_ex/BrightnessPreference;->mScreenBrightnessMaximum:I

    iget v4, p0, Lcom/android/settings_ex/BrightnessPreference;->mScreenBrightnessMinimum:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v0, v2, v3

    goto :goto_0

    .line 480
    :cond_1
    iget v2, p0, Lcom/android/settings_ex/BrightnessPreference;->mCurBrightness:I

    int-to-float v0, v2

    goto :goto_1
.end method

.method private getBrightnessMode(I)I
    .locals 3
    .parameter "defaultValue"

    .prologue
    .line 489
    move v0, p1

    .line 491
    .local v0, brightnessMode:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 495
    :goto_0
    return v0

    .line 493
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private isSupportAutoBrightnessDetail()Z
    .locals 1

    .prologue
    .line 500
    const/4 v0, 0x1

    return v0
.end method

.method private isSupportDA()Z
    .locals 1

    .prologue
    .line 505
    const/4 v0, 0x0

    return v0
.end method

.method private onAutoBrightnessDetailChanged()V
    .locals 6

    .prologue
    .line 513
    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_brightness_detail"

    const/16 v5, 0x64

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    div-int/lit8 v2, v3, 0x14

    .line 514
    .local v2, value:I
    iget-object v3, p0, Lcom/android/settings_ex/BrightnessPreference;->mTwSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    if-eqz v3, :cond_0

    .line 515
    iget-object v3, p0, Lcom/android/settings_ex/BrightnessPreference;->mTwSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v3, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setProgress(I)V

    .line 516
    move v1, v2

    .line 517
    .local v1, val:I
    const-string v0, ""

    .line 518
    .local v0, progressValue:Ljava/lang/String;
    add-int/lit8 v3, v1, -0x5

    if-lez v3, :cond_1

    .line 519
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, -0x5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 523
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/BrightnessPreference;->mTwSeekBarText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    iget-boolean v3, p0, Lcom/android/settings_ex/BrightnessPreference;->supportDA:Z

    if-eqz v3, :cond_0

    .line 526
    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessPreference;->updateCustomBar()V

    .line 528
    .end local v0           #progressValue:Ljava/lang/String;
    .end local v1           #val:I
    :cond_0
    return-void

    .line 521
    .restart local v0       #progressValue:Ljava/lang/String;
    .restart local v1       #val:I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, -0x5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private onBrightnessChanged()V
    .locals 2

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/settings_ex/BrightnessPreference;->getBrightness()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 510
    return-void
.end method

.method private onBrightnessModeChanged()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/16 v5, 0x8

    const/4 v2, 0x0

    .line 539
    invoke-direct {p0, v2}, Lcom/android/settings_ex/BrightnessPreference;->getBrightnessMode(I)I

    move-result v3

    if-ne v3, v1, :cond_2

    move v0, v1

    .line 541
    .local v0, checked:Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/BrightnessPreference;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 542
    iget-object v3, p0, Lcom/android/settings_ex/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/settings_ex/BrightnessPreference;->getBrightness()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 543
    iget-object v3, p0, Lcom/android/settings_ex/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    sget-boolean v4, Lcom/android/settings_ex/BrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v4, :cond_3

    :cond_0
    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 545
    if-eqz v0, :cond_5

    .line 546
    iget-boolean v1, p0, Lcom/android/settings_ex/BrightnessPreference;->supportAutoBrightnessDetail:Z

    if-eqz v1, :cond_1

    .line 547
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference;->seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 548
    iget-boolean v1, p0, Lcom/android/settings_ex/BrightnessPreference;->supportDA:Z

    if-nez v1, :cond_4

    .line 549
    const-string v1, "BrightnessPreference"

    const-string v3, "setMode : mTwSeekBarLayout.setVisibility(View.VISIBLE)"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference;->mTwSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 583
    :cond_1
    :goto_2
    return-void

    .end local v0           #checked:Z
    :cond_2
    move v0, v2

    .line 539
    goto :goto_0

    .restart local v0       #checked:Z
    :cond_3
    move v1, v2

    .line 543
    goto :goto_1

    .line 553
    :cond_4
    const-string v1, "BrightnessPreference"

    const-string v3, "setMode : auto_detail_custom_layout.setVisibility(View.VISIBLE)"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    const/4 v3, -0x2

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 557
    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const v3, 0x7f09034e

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 561
    :goto_3
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference;->auto_detail_custom_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 565
    :cond_5
    iget-boolean v1, p0, Lcom/android/settings_ex/BrightnessPreference;->supportAutoBrightnessDetail:Z

    if-eqz v1, :cond_1

    .line 566
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference;->seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 567
    iget-boolean v1, p0, Lcom/android/settings_ex/BrightnessPreference;->supportDA:Z

    if-nez v1, :cond_6

    .line 568
    const-string v1, "BrightnessPreference"

    const-string v2, "setMode : auto_detail_seekbar_layout.setVisibility(View.GONE)"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference;->mTwSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 572
    :cond_6
    const-string v1, "BrightnessPreference"

    const-string v2, "setMode : auto_detaauto_detail_custom_layoutil_seekbar_layout.setVisibility(View.GONE)"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 575
    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f090699

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 579
    :goto_4
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference;->auto_detail_custom_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 576
    :catch_0
    move-exception v1

    goto :goto_4

    .line 558
    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method private restoreOldState()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 611
    iget-boolean v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mRestoredOldState:Z

    if-eqz v0, :cond_0

    .line 628
    :goto_0
    return-void

    .line 613
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v0, :cond_1

    .line 614
    iget v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mOldAutomatic:I

    invoke-direct {p0, v0}, Lcom/android/settings_ex/BrightnessPreference;->setMode(I)V

    .line 616
    :cond_1
    iget v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mOldBrightness:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/BrightnessPreference;->setBrightness(IZ)V

    .line 618
    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    iget v2, p0, Lcom/android/settings_ex/BrightnessPreference;->mOldBrightness_DB:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 621
    iget-boolean v0, p0, Lcom/android/settings_ex/BrightnessPreference;->supportAutoBrightnessDetail:Z

    if-eqz v0, :cond_2

    .line 622
    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_brightness_detail"

    iget v2, p0, Lcom/android/settings_ex/BrightnessPreference;->mOldAutoDetailLevel:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 625
    :cond_2
    iput-boolean v3, p0, Lcom/android/settings_ex/BrightnessPreference;->mRestoredOldState:Z

    .line 626
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mCurBrightness:I

    .line 627
    iput-boolean v3, p0, Lcom/android/settings_ex/BrightnessPreference;->dissmissflag:Z

    goto :goto_0
.end method

.method private setBrightness(IZ)V
    .locals 7
    .parameter "brightness"
    .parameter "write"

    .prologue
    const v6, 0x461c4000

    .line 631
    iget-boolean v4, p0, Lcom/android/settings_ex/BrightnessPreference;->mAutomaticMode:Z

    if-eqz v4, :cond_2

    .line 632
    sget-boolean v4, Lcom/android/settings_ex/BrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v4, :cond_1

    .line 633
    int-to-float v4, p1

    const/high16 v5, 0x4000

    mul-float/2addr v4, v5

    div-float/2addr v4, v6

    const/high16 v5, 0x3f80

    sub-float v3, v4, v5

    .line 635
    .local v3, valf:F
    :try_start_0
    const-string v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 637
    .local v0, power:Landroid/os/IPowerManager;
    if-eqz v0, :cond_0

    .line 638
    invoke-interface {v0, v3}, Landroid/os/IPowerManager;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V

    .line 640
    :cond_0
    if-eqz p2, :cond_1

    .line 641
    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 642
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v4, "screen_auto_brightness_adj"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 668
    .end local v0           #power:Landroid/os/IPowerManager;
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v3           #valf:F
    :cond_1
    :goto_0
    return-void

    .line 649
    :cond_2
    iget v4, p0, Lcom/android/settings_ex/BrightnessPreference;->mScreenBrightnessMaximum:I

    iget v5, p0, Lcom/android/settings_ex/BrightnessPreference;->mScreenBrightnessMinimum:I

    sub-int v1, v4, v5

    .line 650
    .local v1, range:I
    mul-int v4, p1, v1

    int-to-float v4, v4

    div-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, p0, Lcom/android/settings_ex/BrightnessPreference;->mScreenBrightnessMinimum:I

    add-int p1, v4, v5

    .line 652
    :try_start_1
    const-string v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 654
    .restart local v0       #power:Landroid/os/IPowerManager;
    if-eqz v0, :cond_3

    .line 655
    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V

    .line 657
    :cond_3
    if-eqz p2, :cond_4

    .line 658
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/settings_ex/BrightnessPreference;->mCurBrightness:I

    .line 659
    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 660
    .restart local v2       #resolver:Landroid/content/ContentResolver;
    const-string v4, "screen_brightness"

    invoke-static {v2, v4, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 665
    .end local v0           #power:Landroid/os/IPowerManager;
    .end local v2           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 663
    .restart local v0       #power:Landroid/os/IPowerManager;
    :cond_4
    iput p1, p0, Lcom/android/settings_ex/BrightnessPreference;->mCurBrightness:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 645
    .end local v0           #power:Landroid/os/IPowerManager;
    .end local v1           #range:I
    .restart local v3       #valf:F
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v1, 0x1

    .line 671
    if-ne p1, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mAutomaticMode:Z

    .line 672
    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "screen_brightness_mode"

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 675
    iget-boolean v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mSupportFolderType:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mFlipCloseStatus:Z

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 678
    :cond_0
    return-void

    .line 671
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public directBrightness()V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->isWidget:Ljava/lang/Boolean;

    .line 157
    invoke-super {p0}, Landroid/preference/SeekBarDialogPreference;->onClick()V

    .line 158
    return-void
.end method

.method initCustomBar(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 340
    const/16 v0, 0xa

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    .line 341
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/4 v2, 0x0

    const v0, 0x7f0b02a6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 342
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/4 v2, 0x1

    const v0, 0x7f0b02a7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 343
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/4 v2, 0x2

    const v0, 0x7f0b02a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 344
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/4 v2, 0x3

    const v0, 0x7f0b02a9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 345
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/4 v2, 0x4

    const v0, 0x7f0b02aa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 346
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/4 v2, 0x5

    const v0, 0x7f0b02ab

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 347
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/4 v2, 0x6

    const v0, 0x7f0b02ac

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 348
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/4 v2, 0x7

    const v0, 0x7f0b02ad

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 349
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/16 v2, 0x8

    const v0, 0x7f0b02ae

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 350
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/16 v2, 0x9

    const v0, 0x7f0b02af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 351
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 11
    .parameter "view"

    .prologue
    const/4 v10, -0x1

    const/16 v9, 0x64

    const/4 v5, 0x1

    const/16 v8, 0x8

    const/4 v6, 0x0

    .line 224
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 225
    invoke-direct {p0}, Lcom/android/settings_ex/BrightnessPreference;->isSupportAutoBrightnessDetail()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 226
    iput v10, p0, Lcom/android/settings_ex/BrightnessPreference;->mCurBrightness:I

    .line 228
    :cond_0
    iput-boolean v6, p0, Lcom/android/settings_ex/BrightnessPreference;->dissmissflag:Z

    .line 229
    invoke-static {p1}, Lcom/android/settings_ex/BrightnessPreference;->getSeekBar(Landroid/view/View;)Landroid/widget/SeekBar;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 231
    iget-object v4, p0, Lcom/android/settings_ex/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v7, 0x2710

    invoke-virtual {v4, v7}, Landroid/widget/SeekBar;->setMax(I)V

    .line 233
    iget-boolean v4, p0, Lcom/android/settings_ex/BrightnessPreference;->supportAutoBrightnessDetail:Z

    if-eqz v4, :cond_1

    .line 234
    const v4, 0x7f0b02a2

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/settings_ex/BrightnessPreference;->mTwSeekBarLayout:Landroid/widget/LinearLayout;

    .line 235
    const v4, 0x7f0b02a4

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/BrightnessPreference;->mTwSeekBarText:Landroid/widget/TextView;

    .line 237
    const v4, 0x7f0b02a5

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/settings_ex/BrightnessPreference;->auto_detail_custom_layout:Landroid/widget/LinearLayout;

    .line 238
    const v4, 0x7f0b02a0

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/settings_ex/BrightnessPreference;->seekbar_layout:Landroid/widget/LinearLayout;

    .line 239
    iget-object v4, p0, Lcom/android/settings_ex/BrightnessPreference;->mTwSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 240
    iget-object v4, p0, Lcom/android/settings_ex/BrightnessPreference;->auto_detail_custom_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 242
    invoke-direct {p0, v6}, Lcom/android/settings_ex/BrightnessPreference;->getBrightnessMode(I)I

    move-result v4

    if-eqz v4, :cond_5

    .line 243
    iget-object v4, p0, Lcom/android/settings_ex/BrightnessPreference;->seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 244
    iget-boolean v4, p0, Lcom/android/settings_ex/BrightnessPreference;->supportDA:Z

    if-nez v4, :cond_4

    .line 245
    const-string v4, "BrightnessPreference"

    const-string v7, "onBindDialogView : auto_detail_seekbar_layout.setVisibility(View.VISIBLE)"

    invoke-static {v4, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v4, p0, Lcom/android/settings_ex/BrightnessPreference;->mTwSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 254
    :goto_0
    const v4, 0x7f0b02a3

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    iput-object v4, p0, Lcom/android/settings_ex/BrightnessPreference;->mTwSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    .line 255
    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "auto_brightness_detail"

    invoke-static {v4, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings_ex/BrightnessPreference;->mOldAutoDetailLevel:I

    .line 256
    iget v4, p0, Lcom/android/settings_ex/BrightnessPreference;->mOldAutoDetailLevel:I

    div-int/lit8 v4, v4, 0x14

    add-int/lit8 v2, v4, -0x5

    .line 257
    .local v2, defaultProgress:I
    const-string v3, ""

    .line 258
    .local v3, progressValue:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ex/BrightnessPreference;->mTwSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v4, p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;)V

    .line 259
    iget-object v4, p0, Lcom/android/settings_ex/BrightnessPreference;->mTwSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    const/16 v7, 0xa

    invoke-virtual {v4, v7}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setRange(I)V

    .line 260
    iget-object v4, p0, Lcom/android/settings_ex/BrightnessPreference;->mTwSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v4, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setProgress(I)V

    .line 261
    const/16 v4, 0xa

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/BrightnessPreference;->setSplitMax(I)V

    .line 262
    add-int/lit8 v4, v2, 0x5

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/BrightnessPreference;->setSplitValue(I)V

    .line 263
    if-lez v2, :cond_6

    .line 264
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "+"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 269
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/BrightnessPreference;->mTwSeekBarText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-boolean v4, p0, Lcom/android/settings_ex/BrightnessPreference;->supportDA:Z

    if-eqz v4, :cond_1

    .line 273
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 274
    invoke-virtual {p1, v5}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 275
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 276
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/BrightnessPreference;->initCustomBar(Landroid/view/View;)V

    .line 277
    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessPreference;->updateCustomBar()V

    .line 281
    .end local v2           #defaultProgress:I
    .end local v3           #progressValue:Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/BrightnessPreference;->getBrightness()I

    move-result v4

    iput v4, p0, Lcom/android/settings_ex/BrightnessPreference;->mOldBrightness:I

    .line 283
    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "screen_brightness"

    invoke-static {v4, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings_ex/BrightnessPreference;->mOldBrightness_DB:I

    .line 288
    const v4, 0x7f0b02b1

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/BrightnessPreference;->mTextView:Landroid/widget/TextView;

    .line 289
    const v4, 0x7f0b029f

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/BrightnessPreference;->mAutoNotiTextView:Landroid/widget/TextView;

    .line 291
    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/BrightnessPreference;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 293
    iget-object v4, p0, Lcom/android/settings_ex/BrightnessPreference;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v7, "pref_siop_brightness"

    invoke-interface {v4, v7, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings_ex/BrightnessPreference;->mMaxBrightness:I

    .line 295
    iget v4, p0, Lcom/android/settings_ex/BrightnessPreference;->mMaxBrightness:I

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/BrightnessPreference;->returnMaxBrightness(I)I

    move-result v4

    iput v4, p0, Lcom/android/settings_ex/BrightnessPreference;->mMaxBrightness:I

    .line 296
    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "screen_brightness"

    invoke-static {v4, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iget v7, p0, Lcom/android/settings_ex/BrightnessPreference;->mMaxBrightness:I

    if-le v4, v7, :cond_7

    .line 298
    iget-object v4, p0, Lcom/android/settings_ex/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v7, 0x2710

    invoke-virtual {v4, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 301
    :goto_2
    iget v4, p0, Lcom/android/settings_ex/BrightnessPreference;->mMaxBrightness:I

    const/16 v7, 0xff

    if-ne v4, v7, :cond_2

    .line 302
    iget-object v4, p0, Lcom/android/settings_ex/BrightnessPreference;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 305
    :cond_2
    const v4, 0x7f0b029e

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v4, p0, Lcom/android/settings_ex/BrightnessPreference;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 306
    iget-boolean v4, p0, Lcom/android/settings_ex/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v4, :cond_a

    .line 307
    iget-object v4, p0, Lcom/android/settings_ex/BrightnessPreference;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    .line 308
    invoke-direct {p0, v6}, Lcom/android/settings_ex/BrightnessPreference;->getBrightnessMode(I)I

    move-result v4

    iput v4, p0, Lcom/android/settings_ex/BrightnessPreference;->mOldAutomatic:I

    .line 309
    iget v4, p0, Lcom/android/settings_ex/BrightnessPreference;->mOldAutomatic:I

    if-ne v4, v5, :cond_8

    move v4, v5

    :goto_3
    iput-boolean v4, p0, Lcom/android/settings_ex/BrightnessPreference;->mAutomaticMode:Z

    .line 310
    iget-object v4, p0, Lcom/android/settings_ex/BrightnessPreference;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-boolean v7, p0, Lcom/android/settings_ex/BrightnessPreference;->mAutomaticMode:Z

    invoke-virtual {v4, v7}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 311
    iget-object v7, p0, Lcom/android/settings_ex/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-boolean v4, p0, Lcom/android/settings_ex/BrightnessPreference;->mAutomaticMode:Z

    if-eqz v4, :cond_3

    sget-boolean v4, Lcom/android/settings_ex/BrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v4, :cond_9

    :cond_3
    move v4, v5

    :goto_4
    invoke-virtual {v7, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 318
    :goto_5
    iget-object v4, p0, Lcom/android/settings_ex/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 321
    iget-boolean v4, p0, Lcom/android/settings_ex/BrightnessPreference;->mSupportFolderType:Z

    if-eqz v4, :cond_c

    .line 323
    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 324
    .local v1, config:Landroid/content/res/Configuration;
    iget v4, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_b

    .line 325
    iput-boolean v5, p0, Lcom/android/settings_ex/BrightnessPreference;->mFlipCloseStatus:Z

    .line 329
    :goto_6
    iget-boolean v4, p0, Lcom/android/settings_ex/BrightnessPreference;->mFlipCloseStatus:Z

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/BrightnessPreference;->setFlipCloseStatus(Z)V

    .line 330
    const v4, 0x7f0b02a1

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 331
    .local v0, bright_level:Landroid/widget/TextView;
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 336
    .end local v0           #bright_level:Landroid/widget/TextView;
    .end local v1           #config:Landroid/content/res/Configuration;
    :goto_7
    return-void

    .line 249
    :cond_4
    iget-object v4, p0, Lcom/android/settings_ex/BrightnessPreference;->auto_detail_custom_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 252
    :cond_5
    iget-object v4, p0, Lcom/android/settings_ex/BrightnessPreference;->seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 266
    .restart local v2       #defaultProgress:I
    .restart local v3       #progressValue:Ljava/lang/String;
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 300
    .end local v2           #defaultProgress:I
    .end local v3           #progressValue:Ljava/lang/String;
    :cond_7
    iget-object v4, p0, Lcom/android/settings_ex/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v7, p0, Lcom/android/settings_ex/BrightnessPreference;->mOldBrightness:I

    invoke-virtual {v4, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_2

    :cond_8
    move v4, v6

    .line 309
    goto :goto_3

    :cond_9
    move v4, v6

    .line 311
    goto :goto_4

    .line 314
    :cond_a
    iget-object v4, p0, Lcom/android/settings_ex/BrightnessPreference;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4, v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 316
    iget-object v4, p0, Lcom/android/settings_ex/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_5

    .line 327
    .restart local v1       #config:Landroid/content/res/Configuration;
    :cond_b
    iput-boolean v6, p0, Lcom/android/settings_ex/BrightnessPreference;->mFlipCloseStatus:Z

    goto :goto_6

    .line 334
    .end local v1           #config:Landroid/content/res/Configuration;
    :cond_c
    iget-object v4, p0, Lcom/android/settings_ex/BrightnessPreference;->mAutoNotiTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7
.end method

.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
    .locals 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 450
    iget-boolean v0, p0, Lcom/android/settings_ex/BrightnessPreference;->dissmissflag:Z

    if-nez v0, :cond_1

    .line 451
    if-eqz p2, :cond_2

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings_ex/BrightnessPreference;->setMode(I)V

    .line 455
    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "screen_brightness"

    const/16 v4, 0x64

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget v3, p0, Lcom/android/settings_ex/BrightnessPreference;->mMaxBrightness:I

    if-le v0, v3, :cond_3

    .line 457
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v3, 0x2710

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 462
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-boolean v3, p0, Lcom/android/settings_ex/BrightnessPreference;->mAutomaticMode:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/settings_ex/BrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v3, :cond_4

    :cond_0
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 463
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/android/settings_ex/BrightnessPreference;->setBrightness(IZ)V

    .line 465
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 451
    goto :goto_0

    .line 459
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/settings_ex/BrightnessPreference;->getBrightness()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    :cond_4
    move v1, v2

    .line 462
    goto :goto_2
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .parameter "positiveResult"

    .prologue
    .line 587
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onDialogClosed(Z)V

    .line 589
    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 591
    .local v0, resolver:Landroid/content/ContentResolver;
    if-eqz p1, :cond_1

    .line 592
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/BrightnessPreference;->setBrightness(IZ)V

    .line 597
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 598
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 599
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference;->mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 602
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference;->isWidget:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 603
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/BrightnessPreference;->isWidget:Ljava/lang/Boolean;

    .line 604
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference;->mBrightness:Lcom/android/settings_ex/DisplaySettings;

    if-eqz v1, :cond_0

    .line 605
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference;->mBrightness:Lcom/android/settings_ex/DisplaySettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/DisplaySettings;->finish()V

    .line 608
    :cond_0
    return-void

    .line 594
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/BrightnessPreference;->restoreOldState()V

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 366
    iget-boolean v3, p0, Lcom/android/settings_ex/BrightnessPreference;->supportDA:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/BrightnessPreference;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 388
    :cond_1
    :goto_0
    return v1

    .line 369
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    .line 370
    .local v0, isdown:Z
    :goto_1
    packed-switch p2, :pswitch_data_0

    move v1, v2

    .line 388
    goto :goto_0

    .end local v0           #isdown:Z
    :cond_3
    move v0, v2

    .line 369
    goto :goto_1

    .line 372
    .restart local v0       #isdown:Z
    :pswitch_0
    if-eqz v0, :cond_1

    iget v2, p0, Lcom/android/settings_ex/BrightnessPreference;->currentLevel:I

    if-lez v2, :cond_1

    .line 373
    iget v2, p0, Lcom/android/settings_ex/BrightnessPreference;->currentLevel:I

    add-int/lit8 v2, v2, -0x14

    iput v2, p0, Lcom/android/settings_ex/BrightnessPreference;->currentLevel:I

    .line 374
    iget-object v2, p0, Lcom/android/settings_ex/BrightnessPreference;->mAutoDetailSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/settings_ex/BrightnessPreference;->currentLevel:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 375
    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_brightness_detail"

    iget v4, p0, Lcom/android/settings_ex/BrightnessPreference;->currentLevel:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 376
    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessPreference;->updateCustomBar()V

    goto :goto_0

    .line 380
    :pswitch_1
    if-eqz v0, :cond_1

    iget v2, p0, Lcom/android/settings_ex/BrightnessPreference;->currentLevel:I

    const/16 v3, 0xc8

    if-ge v2, v3, :cond_1

    .line 381
    iget v2, p0, Lcom/android/settings_ex/BrightnessPreference;->currentLevel:I

    add-int/lit8 v2, v2, 0x14

    iput v2, p0, Lcom/android/settings_ex/BrightnessPreference;->currentLevel:I

    .line 382
    iget-object v2, p0, Lcom/android/settings_ex/BrightnessPreference;->mAutoDetailSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/settings_ex/BrightnessPreference;->currentLevel:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 383
    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_brightness_detail"

    iget v4, p0, Lcom/android/settings_ex/BrightnessPreference;->currentLevel:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 384
    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessPreference;->updateCustomBar()V

    goto :goto_0

    .line 370
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-ne p1, v0, :cond_0

    .line 406
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/settings_ex/BrightnessPreference;->setBrightness(IZ)V

    .line 408
    :cond_0
    return-void
.end method

.method public onProgressChanged(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;IZ)V
    .locals 5
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 410
    const-string v2, "BrightnessPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTwSeekBarSplitProgressChanged progress = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const-string v0, ""

    .line 412
    .local v0, progressValue:Ljava/lang/String;
    add-int/lit8 v2, p2, -0x5

    if-lez v2, :cond_0

    .line 413
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p2, -0x5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 417
    :goto_0
    mul-int/lit8 v1, p2, 0x14

    .line 418
    .local v1, val:I
    new-instance v2, Lcom/android/settings_ex/BrightnessPreference$4;

    invoke-direct {v2, p0, v1}, Lcom/android/settings_ex/BrightnessPreference$4;-><init>(Lcom/android/settings_ex/BrightnessPreference;I)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 424
    iget-object v2, p0, Lcom/android/settings_ex/BrightnessPreference;->mTwSeekBarText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    return-void

    .line 415
    .end local v1           #val:I
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p2, -0x5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 719
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v4, Lcom/android/settings_ex/BrightnessPreference$SavedState;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 721
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 732
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 725
    check-cast v0, Lcom/android/settings_ex/BrightnessPreference$SavedState;

    .line 726
    .local v0, myState:Lcom/android/settings_ex/BrightnessPreference$SavedState;
    invoke-virtual {v0}, Lcom/android/settings_ex/BrightnessPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 727
    iget v1, v0, Lcom/android/settings_ex/BrightnessPreference$SavedState;->oldProgress:I

    iput v1, p0, Lcom/android/settings_ex/BrightnessPreference;->mOldBrightness:I

    .line 728
    iget-boolean v1, v0, Lcom/android/settings_ex/BrightnessPreference$SavedState;->oldAutomatic:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    iput v1, p0, Lcom/android/settings_ex/BrightnessPreference;->mOldAutomatic:I

    .line 729
    iget-boolean v1, v0, Lcom/android/settings_ex/BrightnessPreference$SavedState;->automatic:Z

    if-eqz v1, :cond_3

    :goto_2
    invoke-direct {p0, v2}, Lcom/android/settings_ex/BrightnessPreference;->setMode(I)V

    .line 730
    iget v1, v0, Lcom/android/settings_ex/BrightnessPreference$SavedState;->progress:I

    invoke-direct {p0, v1, v3}, Lcom/android/settings_ex/BrightnessPreference;->setBrightness(IZ)V

    .line 731
    iget v1, v0, Lcom/android/settings_ex/BrightnessPreference$SavedState;->curBrightness:I

    iput v1, p0, Lcom/android/settings_ex/BrightnessPreference;->mCurBrightness:I

    goto :goto_0

    :cond_2
    move v1, v3

    .line 728
    goto :goto_1

    :cond_3
    move v2, v3

    .line 729
    goto :goto_2
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 699
    invoke-super {p0}, Landroid/preference/SeekBarDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 700
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v0, v1

    .line 714
    :goto_0
    return-object v0

    .line 703
    :cond_1
    new-instance v0, Lcom/android/settings_ex/BrightnessPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/android/settings_ex/BrightnessPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 704
    .local v0, myState:Lcom/android/settings_ex/BrightnessPreference$SavedState;
    iget-object v3, p0, Lcom/android/settings_ex/BrightnessPreference;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/settings_ex/BrightnessPreference$SavedState;->automatic:Z

    .line 705
    iget-object v3, p0, Lcom/android/settings_ex/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    iput v3, v0, Lcom/android/settings_ex/BrightnessPreference$SavedState;->progress:I

    .line 706
    iget v3, p0, Lcom/android/settings_ex/BrightnessPreference;->mOldAutomatic:I

    if-ne v3, v2, :cond_2

    :goto_1
    iput-boolean v2, v0, Lcom/android/settings_ex/BrightnessPreference$SavedState;->oldAutomatic:Z

    .line 707
    iget v2, p0, Lcom/android/settings_ex/BrightnessPreference;->mOldBrightness:I

    iput v2, v0, Lcom/android/settings_ex/BrightnessPreference$SavedState;->oldProgress:I

    .line 708
    iget v2, p0, Lcom/android/settings_ex/BrightnessPreference;->mCurBrightness:I

    iput v2, v0, Lcom/android/settings_ex/BrightnessPreference$SavedState;->curBrightness:I

    goto :goto_0

    .line 706
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 429
    return-void
.end method

.method public onStartTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 436
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mTracking:Z

    .line 437
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mListener:Lcom/android/settings_ex/BrightnessPreference$Listener;

    if-eqz v0, :cond_0

    .line 440
    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 433
    return-void
.end method

.method public onStopTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 443
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mTracking:Z

    .line 444
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mListener:Lcom/android/settings_ex/BrightnessPreference$Listener;

    if-eqz v0, :cond_0

    .line 447
    :cond_0
    return-void
.end method

.method public returnMaxBrightness(I)I
    .locals 1
    .parameter "max"

    .prologue
    .line 395
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 398
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    const/16 p1, 0xff

    goto :goto_0
.end method

.method public setFlipCloseStatus(Z)V
    .locals 4
    .parameter "status"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 681
    iput-boolean p1, p0, Lcom/android/settings_ex/BrightnessPreference;->mFlipCloseStatus:Z

    .line 682
    iget-object v3, p0, Lcom/android/settings_ex/BrightnessPreference;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v3, :cond_0

    .line 683
    iget-object v3, p0, Lcom/android/settings_ex/BrightnessPreference;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 685
    .local v0, mode:I
    :goto_0
    if-ne v0, v1, :cond_3

    .line 686
    iget-boolean v3, p0, Lcom/android/settings_ex/BrightnessPreference;->mSupportFolderType:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/settings_ex/BrightnessPreference;->mFlipCloseStatus:Z

    if-eqz v3, :cond_2

    .line 687
    iget-object v2, p0, Lcom/android/settings_ex/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 695
    .end local v0           #mode:I
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 683
    goto :goto_0

    .line 689
    .restart local v0       #mode:I
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_1

    .line 692
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_1
.end method

.method public setObject(Lcom/android/settings_ex/DisplaySettings;)V
    .locals 0
    .parameter "displaySettings"

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/settings_ex/BrightnessPreference;->mBrightness:Lcom/android/settings_ex/DisplaySettings;

    .line 163
    return-void
.end method

.method public setSplitMax(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mTwSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setRange(I)V

    .line 532
    return-void
.end method

.method public setSplitValue(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 535
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mTwSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setProgress(I)V

    .line 536
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 201
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 203
    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/BrightnessPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 207
    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/BrightnessPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 210
    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_brightness_detail"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/BrightnessPreference;->mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 214
    iput-boolean v4, p0, Lcom/android/settings_ex/BrightnessPreference;->mRestoredOldState:Z

    .line 216
    invoke-direct {p0, v4}, Lcom/android/settings_ex/BrightnessPreference;->getBrightnessMode(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/BrightnessPreference;->supportDA:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/BrightnessPreference;->supportAutoBrightnessDetail:Z

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 218
    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f09034e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 220
    :cond_0
    return-void
.end method

.method updateCustomBar()V
    .locals 4

    .prologue
    .line 354
    const-string v1, "BrightnessPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCustomBar(),  currentLevel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings_ex/BrightnessPreference;->currentLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 357
    iget v1, p0, Lcom/android/settings_ex/BrightnessPreference;->currentLevel:I

    mul-int/lit8 v2, v0, 0x14

    if-gt v1, v2, :cond_0

    .line 358
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020054

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 356
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 360
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020053

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 363
    :cond_1
    return-void
.end method
