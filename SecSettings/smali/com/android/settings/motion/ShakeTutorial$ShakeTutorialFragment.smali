.class public Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "ShakeTutorial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/motion/ShakeTutorial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShakeTutorialFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;
    }
.end annotation


# static fields
.field private static final AFTER_SHAKE_1:I = 0x1e1

.field private static final AFTER_SHAKE_2:I = 0x1e2

.field private static final ANIMATION_DEALY:I = 0x1f4

.field private static final CHANGE_ANIMATION:I = 0x66

.field private static final LAST_ANIMATION_DEALY:I = 0x7d0

.field private static final LAST_ANIMATION_INDEX:I = 0x0

.field private static final MAX_ANIMATION_INDEX:I = 0x4

.field private static final MENU_ID_INFORMATION:I = 0x1

.field private static final RESULT_INFORMATION:I = 0x64

.field private static final SHAKE_TUTORIAL_SUCCEED:I = 0x1e0

.field private static final TAG:Ljava/lang/String; = "ShakeTutorial"

.field private static final mAnimationImage:[I

.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;


# instance fields
.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationIndex:I

.field private mAnimationView:Landroid/widget/ImageView;

.field private mAvailableDevicesCategory:Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;

.field private mBTdevice1:Landroid/preference/Preference;

.field private mBTdevice2:Landroid/preference/Preference;

.field private mCanShake:Z

.field private mContext:Landroid/content/Context;

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mRetryDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 76
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationImage:[I

    return-void

    :array_0
    .array-data 0x4
        0xbat 0x2t 0x2t 0x7ft
        0xbbt 0x2t 0x2t 0x7ft
        0xbat 0x2t 0x2t 0x7ft
        0xbbt 0x2t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mCanShake:Z

    .line 68
    iput-object v1, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mRetryDialog:Landroid/app/AlertDialog;

    .line 71
    iput-object v1, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mContext:Landroid/content/Context;

    .line 73
    iput-object v1, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mGuideDialog:Landroid/app/AlertDialog;

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationIndex:I

    .line 75
    iput-object v1, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationView:Landroid/widget/ImageView;

    .line 80
    new-instance v0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment$1;-><init>(Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationHandler:Landroid/os/Handler;

    .line 90
    new-instance v0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment$2;-><init>(Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mHandler:Landroid/os/Handler;

    .line 119
    new-instance v0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment$3;-><init>(Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 360
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->updateAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mCanShake:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mCanShake:Z

    return p1
.end method

.method static synthetic access$200()Landroid/hardware/motion/MotionRecognitionManager;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;)Landroid/hardware/motion/MRListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionListener:Landroid/hardware/motion/MRListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->removeBTPreference()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;)Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mAvailableDevicesCategory:Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->addBTPreference()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->stopAnimation()V

    return-void
.end method

.method private addBTPreference()V
    .locals 2

    .prologue
    .line 240
    new-instance v0, Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mBTdevice1:Landroid/preference/Preference;

    .line 242
    iget-object v0, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mBTdevice1:Landroid/preference/Preference;

    const-string v1, "BT device 1"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v0, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mBTdevice1:Landroid/preference/Preference;

    const v1, 0x7f020149

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 244
    new-instance v0, Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mBTdevice2:Landroid/preference/Preference;

    .line 246
    iget-object v0, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mBTdevice2:Landroid/preference/Preference;

    const-string v1, "BT device 2"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v0, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mBTdevice2:Landroid/preference/Preference;

    const v1, 0x7f02014f

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 248
    iget-object v0, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mAvailableDevicesCategory:Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;

    iget-object v1, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mBTdevice1:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 249
    iget-object v0, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mAvailableDevicesCategory:Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;

    iget-object v1, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mBTdevice2:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 250
    return-void
.end method

.method private removeBTPreference()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mAvailableDevicesCategory:Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 254
    return-void
.end method

.method private showRetryDialog()V
    .locals 3

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mRetryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mRetryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 259
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mRetryDialog:Landroid/app/AlertDialog;

    .line 262
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090c12

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090c0f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090c10

    new-instance v2, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment$5;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment$5;-><init>(Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090c11

    new-instance v2, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment$4;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment$4;-><init>(Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mRetryDialog:Landroid/app/AlertDialog;

    .line 280
    return-void
.end method

.method private startAnimation()V
    .locals 2

    .prologue
    .line 346
    const-string v0, "ShakeTutorial"

    const-string v1, "startAnimation()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v0, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 348
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationIndex:I

    .line 349
    invoke-direct {p0}, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->updateAnimation()V

    .line 351
    :cond_0
    return-void
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    .line 354
    const-string v0, "ShakeTutorial"

    const-string v1, "stopAnimation()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v0, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 358
    :cond_0
    return-void
.end method

.method private updateAnimation()V
    .locals 4

    .prologue
    const/16 v3, 0x66

    .line 326
    const-string v0, "ShakeTutorial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHANGE_ANIMATION : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v0, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationView:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationImage:[I

    iget v2, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 329
    iget v0, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationIndex:I

    .line 332
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationIndex:I

    rem-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationIndex:I

    .line 334
    iget-object v0, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 335
    invoke-direct {p0}, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->stopAnimation()V

    .line 336
    iget v0, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationIndex:I

    if-nez v0, :cond_2

    .line 337
    iget-object v0, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 343
    :cond_1
    :goto_0
    return-void

    .line 339
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 160
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 162
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 165
    .local v0, activity:Landroid/app/Activity;
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 166
    .local v1, myDevicePreference:Landroid/preference/Preference;
    const v2, 0x7f0900a4

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 167
    const v2, 0x7f0900a8

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 168
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    const v2, 0x7f020149

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setIcon(I)V

    .line 173
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 174
    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 175
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 178
    new-instance v2, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;-><init>(Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mAvailableDevicesCategory:Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;

    .line 179
    iget-object v2, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mAvailableDevicesCategory:Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;

    const v3, 0x7f090217

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 180
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mAvailableDevicesCategory:Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 182
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "motion_recognition"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v2, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 183
    iput-boolean v5, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mCanShake:Z

    .line 184
    return-void

    .line 171
    :cond_0
    const v2, 0x7f020156

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setIcon(I)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 140
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 142
    iget-object v0, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 143
    iput-object p1, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mContext:Landroid/content/Context;

    .line 144
    const-string v0, "ShakeTutorial"

    const-string v1, "context is assigned"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    .line 150
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 152
    const v0, 0x7f070019

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 153
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 154
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 155
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 156
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 211
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 212
    const v1, 0x7f090021

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0202a7

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 214
    .local v0, information:Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 215
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 217
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 221
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 230
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 223
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    .line 226
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->showGuideDialog()V

    goto :goto_0

    .line 221
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 196
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 197
    invoke-direct {p0}, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->stopAnimation()V

    .line 198
    sget-object v0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 199
    sget-object v0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 200
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 188
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 189
    invoke-direct {p0}, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->updateAnimation()V

    .line 190
    sget-object v0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mCanShake:Z

    if-eqz v0, :cond_0

    .line 191
    sget-object v0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionListener:Landroid/hardware/motion/MRListener;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 192
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 204
    const-string v0, "ShakeTutorial"

    const-string v1, "onStop : remove handler message"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 206
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 207
    return-void
.end method

.method public showGuideDialog()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 284
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 285
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v6, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_0

    .line 286
    iget-object v6, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->dismiss()V

    .line 287
    iput-object v9, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mGuideDialog:Landroid/app/AlertDialog;

    .line 290
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 291
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f04005f

    invoke-virtual {v2, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 292
    .local v4, layout:Landroid/view/View;
    const v6, 0x7f0b004a

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 293
    .local v5, message:Landroid/widget/TextView;
    const v6, 0x7f0b010c

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationView:Landroid/widget/ImageView;

    .line 295
    const/4 v3, 0x1

    .line 297
    .local v3, isKiesAirInstalled:Z
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.samsung.swift.app.kiesair"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :goto_0
    const v6, 0x7f090c05

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 303
    if-nez v3, :cond_2

    .line 304
    const-string v6, "CMCC"

    const-string v7, "OPEN"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "CHM"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 306
    :cond_1
    const v6, 0x7f090c08

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 312
    :cond_2
    :goto_1
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 313
    const v6, 0x7f090bfc

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 314
    const v6, 0x7f090699

    invoke-virtual {v0, v6, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 315
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mGuideDialog:Landroid/app/AlertDialog;

    .line 316
    iget-object v6, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 317
    iget-object v6, p0, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->mGuideDialog:Landroid/app/AlertDialog;

    new-instance v7, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment$6;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment$6;-><init>(Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;)V

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 322
    invoke-direct {p0}, Lcom/android/settings_ex/motion/ShakeTutorial$ShakeTutorialFragment;->startAnimation()V

    .line 323
    return-void

    .line 298
    :catch_0
    move-exception v1

    .line 299
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    goto :goto_0

    .line 308
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    const v6, 0x7f090c07

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method
