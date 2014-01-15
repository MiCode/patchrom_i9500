.class public Lcom/android/settings_ex/motion2013/SMotionSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "SMotionSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final AIR_MOTION_UNCHECK_MESSAGE:I = 0x0

.field private static final HAND_MOTION_UNCHECK_MESSAGE:I = 0x2

.field private static final KEY_AIR_MOTION:Ljava/lang/String; = "air_motion"

.field private static final KEY_G_SENSOR_CAL:Ljava/lang/String; = "g_sensor_cal"

.field private static final KEY_MOTION:Ljava/lang/String; = "motion"

.field private static final KEY_SURFACE:Ljava/lang/String; = "surface"

.field private static final MESSAGE_DELAY:I = 0xa

.field private static final MOTION_UNCHECK_MESSAGE:I = 0x1

.field private static final PREF_AIR_MOTION_SENSOR_NOTI:Ljava/lang/String; = "pref_air_motion_sensor_noti"

.field private static final TAG:Ljava/lang/String; = "SMotionSettings"


# instance fields
.field private mAirMotion:Landroid/preference/SwitchPreferenceScreen;

.field private mAirMotionObserver:Landroid/database/ContentObserver;

.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private mGSensorCal:Landroid/preference/PreferenceScreen;

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mHandMotionObserver:Landroid/database/ContentObserver;

.field private mMotion:Landroid/preference/SwitchPreferenceScreen;

.field private mMotionObserver:Landroid/database/ContentObserver;

.field private mMotionUnlockDialog:Landroid/app/AlertDialog;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSurface:Landroid/preference/SwitchPreferenceScreen;

.field protected mSwitchUncheckHandler:Landroid/os/Handler;

.field private mTalkbackDisableDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 57
    iput-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    .line 58
    iput-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 59
    iput-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 65
    new-instance v0, Lcom/android/settings_ex/motion2013/SMotionSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/motion2013/SMotionSettings$1;-><init>(Lcom/android/settings_ex/motion2013/SMotionSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mSwitchUncheckHandler:Landroid/os/Handler;

    .line 81
    new-instance v0, Lcom/android/settings_ex/motion2013/SMotionSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/motion2013/SMotionSettings$2;-><init>(Lcom/android/settings_ex/motion2013/SMotionSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mAirMotionObserver:Landroid/database/ContentObserver;

    .line 88
    new-instance v0, Lcom/android/settings_ex/motion2013/SMotionSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/motion2013/SMotionSettings$3;-><init>(Lcom/android/settings_ex/motion2013/SMotionSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mMotionObserver:Landroid/database/ContentObserver;

    .line 95
    new-instance v0, Lcom/android/settings_ex/motion2013/SMotionSettings$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/motion2013/SMotionSettings$4;-><init>(Lcom/android/settings_ex/motion2013/SMotionSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mHandMotionObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/motion2013/SMotionSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/motion2013/SMotionSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mMotion:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/motion2013/SMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/motion2013/SMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/motion2013/SMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/motion2013/SMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/motion2013/SMotionSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mSurface:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/motion2013/SMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/motion2013/SMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/motion2013/SMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/motion2013/SMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/motion2013/SMotionSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings_ex/motion2013/SMotionSettings;->broadcastAirMotionChanged(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings_ex/motion2013/SMotionSettings;IILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/motion2013/SMotionSettings;->showAllOptionDisabledDialog(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings_ex/motion2013/SMotionSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings_ex/motion2013/SMotionSettings;->showGuideDialog(Z)V

    return-void
.end method

.method private broadcastAirMotionChanged(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 417
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_MOTION_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 418
    .local v0, motion_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 419
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 420
    return-void
.end method

.method private broadcastMotionChanged(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 411
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 412
    .local v0, motion_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 413
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 414
    return-void
.end method

.method private dismissAllDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 338
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 340
    iput-object v1, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 344
    iput-object v1, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 347
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 348
    iput-object v1, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 350
    :cond_2
    return-void
.end method

.method private showAllOptionDisabledDialog(IILjava/lang/String;)V
    .locals 4
    .parameter "title_res_id"
    .parameter "message_res_id"
    .parameter "key"

    .prologue
    .line 306
    invoke-direct {p0}, Lcom/android/settings_ex/motion2013/SMotionSettings;->dismissAllDialog()V

    .line 308
    move-object v0, p3

    .line 309
    .local v0, motion_type:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings_ex/motion2013/SMotionSettings$9;

    invoke-direct {v3, p0, v0}, Lcom/android/settings_ex/motion2013/SMotionSettings$9;-><init>(Lcom/android/settings_ex/motion2013/SMotionSettings;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 334
    iget-object v1, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 335
    return-void
.end method

.method private showGuideDialog(Z)V
    .locals 15
    .parameter "showagain_checkbox_flag"

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/android/settings_ex/motion2013/SMotionSettings;->dismissAllDialog()V

    .line 220
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v0, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 222
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 223
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v10, 0x7f040060

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 224
    .local v4, layout:Landroid/view/View;
    const v10, 0x7f0b004a

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 225
    .local v5, message:Landroid/widget/TextView;
    const v10, 0x7f0b010c

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 226
    .local v2, image:Landroid/widget/ImageView;
    const v10, 0x7f0b010a

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 227
    .local v1, checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 228
    if-eqz p1, :cond_0

    .line 229
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 231
    :cond_0
    const v10, 0x7f020425

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 232
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/SMotionSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 233
    .local v9, res:Landroid/content/res/Resources;
    const v10, 0x7f0e0004

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 234
    .local v8, proper_distance:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const v11, 0x7f090c66

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ". "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v11, 0x7f090c68

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v11, 0x7f090c67

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 237
    .local v7, original_str:Ljava/lang/String;
    const-string v10, "ja"

    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/SMotionSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget-object v11, v11, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 238
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const v11, 0x7f090c66

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v11, 0x7f090c68

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v14, 0x7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v11, 0x7f090c67

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 242
    :cond_1
    const v10, 0x7f020026

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/android/settings_ex/Utils;->makeStringWithImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/text/SpannableString;

    move-result-object v6

    .line 243
    .local v6, message_str:Landroid/text/SpannableString;
    if-eqz v6, :cond_2

    .line 244
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    :goto_0
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 249
    const v10, 0x7f090c64

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 250
    const v10, 0x7f090699

    new-instance v11, Lcom/android/settings_ex/motion2013/SMotionSettings$5;

    invoke-direct {v11, p0, v1}, Lcom/android/settings_ex/motion2013/SMotionSettings$5;-><init>(Lcom/android/settings_ex/motion2013/SMotionSettings;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v0, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 260
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 261
    iget-object v10, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    .line 262
    return-void

    .line 246
    :cond_2
    const v10, 0x7f090c65

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private showTalkBackDisableDialog()V
    .locals 3

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/android/settings_ex/motion2013/SMotionSettings;->dismissAllDialog()V

    .line 268
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090c4d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090c4c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings_ex/motion2013/SMotionSettings$7;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/motion2013/SMotionSettings$7;-><init>(Lcom/android/settings_ex/motion2013/SMotionSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings_ex/motion2013/SMotionSettings$6;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/motion2013/SMotionSettings$6;-><init>(Lcom/android/settings_ex/motion2013/SMotionSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 294
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 296
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings_ex/motion2013/SMotionSettings$8;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/motion2013/SMotionSettings$8;-><init>(Lcom/android/settings_ex/motion2013/SMotionSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 303
    return-void
.end method

.method private showToast(I)V
    .locals 2
    .parameter "strResID"

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 408
    return-void
.end method


# virtual methods
.method public isAllAirMotionDisabled()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 353
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 354
    iget-object v8, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_glance_view"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 355
    .local v5, quickGlance:I
    iget-object v8, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_scroll"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 356
    .local v2, airScroll:I
    iget-object v8, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_turn"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 357
    .local v3, airTurn:I
    iget-object v8, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_item_move"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 358
    .local v0, airMove:I
    const/4 v1, 0x0

    .line 360
    .local v1, airPin:I
    iget-object v8, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_call_accept"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 362
    .local v4, callAccept:I
    or-int v8, v5, v2

    or-int/2addr v8, v3

    or-int/2addr v8, v0

    or-int/2addr v8, v1

    or-int/2addr v8, v4

    if-ge v8, v6, :cond_0

    :goto_0
    return v6

    :cond_0
    move v6, v7

    goto :goto_0
.end method

.method public isAllHandMotionDisabled()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 394
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 395
    iget-object v5, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "surface_tap_and_twist"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 396
    iget-object v5, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "surface_palm_swipe"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 398
    .local v0, palmSwipe:I
    iget-object v5, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "surface_palm_touch"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 400
    .local v1, palmTouch:I
    const/4 v2, 0x0

    .line 403
    .local v2, tapAndTwist:I
    or-int v5, v0, v1

    or-int/2addr v5, v2

    if-ge v5, v3, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method public isAllMotionDisabled()Z
    .locals 15

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 367
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    iput-object v13, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 368
    const/4 v13, 0x0

    invoke-static {v13}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    .line 369
    .local v2, isTablet:Z
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings_ex/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v3

    .line 371
    .local v3, isVoiceCapable:Z
    iget-object v13, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v14, "motion_zooming"

    invoke-static {v13, v14, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 373
    .local v9, tiltZoom:I
    const/4 v8, 0x0

    .line 375
    .local v8, tiltScroll:I
    const/4 v5, 0x0

    .line 377
    .local v5, panMove:I
    iget-object v13, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v14, "motion_pan_to_browse_image"

    invoke-static {v13, v14, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 379
    .local v4, panBrowse:I
    const/4 v6, 0x0

    .line 381
    .local v6, shake:I
    const/4 v1, 0x0

    .line 383
    .local v1, doubleTap:I
    if-eqz v3, :cond_0

    iget-object v13, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v14, "motion_pick_up"

    invoke-static {v13, v14, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 385
    .local v7, smartAlert:I
    :goto_0
    if-nez v2, :cond_1

    iget-object v13, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v14, "motion_pick_up_to_call_out"

    invoke-static {v13, v14, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 387
    .local v0, directCall:I
    :goto_1
    if-nez v2, :cond_2

    iget-object v13, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v14, "motion_overturn"

    invoke-static {v13, v14, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 390
    .local v10, turnover:I
    :goto_2
    or-int v13, v9, v8

    or-int/2addr v13, v5

    or-int/2addr v13, v4

    or-int/2addr v13, v6

    or-int/2addr v13, v1

    or-int/2addr v13, v7

    or-int/2addr v13, v0

    or-int/2addr v13, v10

    if-ge v13, v11, :cond_3

    :goto_3
    return v11

    .end local v0           #directCall:I
    .end local v7           #smartAlert:I
    .end local v10           #turnover:I
    :cond_0
    move v7, v12

    .line 383
    goto :goto_0

    .restart local v7       #smartAlert:I
    :cond_1
    move v0, v12

    .line 385
    goto :goto_1

    .restart local v0       #directCall:I
    :cond_2
    move v10, v12

    .line 387
    goto :goto_2

    .restart local v10       #turnover:I
    :cond_3
    move v11, v12

    .line 390
    goto :goto_3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 107
    const v1, 0x7f070061

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/motion2013/SMotionSettings;->addPreferencesFromResource(I)V

    .line 109
    const-string v1, "air_motion"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/motion2013/SMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    .line 110
    const-string v1, "motion"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/motion2013/SMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mMotion:Landroid/preference/SwitchPreferenceScreen;

    .line 111
    const-string v1, "surface"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/motion2013/SMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mSurface:Landroid/preference/SwitchPreferenceScreen;

    .line 112
    iget-object v1, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 113
    iget-object v1, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mMotion:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 114
    iget-object v1, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mSurface:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 116
    const-string v1, "g_sensor_cal"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/motion2013/SMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mGSensorCal:Landroid/preference/PreferenceScreen;

    .line 118
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/SMotionSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 136
    .local v0, ps:Landroid/preference/PreferenceScreen;
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const v8, 0x7f090c1f

    const/4 v6, 0x0

    const v7, 0x7f090c14

    const/4 v5, 0x1

    .line 164
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .local v1, key:Ljava/lang/String;
    move-object v4, p2

    .line 165
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v5

    .line 166
    .local v3, value:I
    :goto_0
    const-string v4, "air_motion"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 167
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings_ex/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, p2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 168
    invoke-direct {p0}, Lcom/android/settings_ex/motion2013/SMotionSettings;->showTalkBackDisableDialog()V

    .line 213
    .end local p2
    :cond_0
    :goto_1
    return v5

    .end local v3           #value:I
    .restart local p2
    :cond_1
    move v3, v6

    .line 165
    goto :goto_0

    .line 169
    .restart local v3       #value:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/SMotionSettings;->isAllAirMotionDisabled()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, p2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 174
    invoke-direct {p0, v7, v8, v1}, Lcom/android/settings_ex/motion2013/SMotionSettings;->showAllOptionDisabledDialog(IILjava/lang/String;)V

    goto :goto_1

    .line 176
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "air_motion_engine"

    invoke-static {v4, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object v4, p2

    .line 177
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings_ex/motion2013/SMotionSettings;->broadcastAirMotionChanged(Z)V

    .line 178
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 180
    .local v2, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v4, "pref_air_motion_sensor_noti"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 181
    .local v0, do_not_show_again:Z
    if-nez v0, :cond_0

    .line 182
    invoke-direct {p0, v5}, Lcom/android/settings_ex/motion2013/SMotionSettings;->showGuideDialog(Z)V

    goto :goto_1

    .line 186
    .end local v0           #do_not_show_again:Z
    .end local v2           #sharedPreferences:Landroid/content/SharedPreferences;
    .restart local p2
    :cond_4
    const-string v4, "motion"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 187
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 188
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/SMotionSettings;->isAllMotionDisabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 191
    const v4, 0x7f090bdc

    invoke-direct {p0, v7, v4, v1}, Lcom/android/settings_ex/motion2013/SMotionSettings;->showAllOptionDisabledDialog(IILjava/lang/String;)V

    goto :goto_1

    .line 193
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "master_motion"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 194
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings_ex/Utils;->turnOnMotionEngine(Landroid/content/Context;)V

    goto :goto_1

    .line 197
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "master_motion"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 198
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings_ex/Utils;->autoTurnOffMotionEngine(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 200
    .restart local p2
    :cond_7
    const-string v4, "surface"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/SMotionSettings;->isAllHandMotionDisabled()Z

    move-result v4

    if-eqz v4, :cond_8

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 207
    invoke-direct {p0, v7, v8, v1}, Lcom/android/settings_ex/motion2013/SMotionSettings;->showAllOptionDisabledDialog(IILjava/lang/String;)V

    goto/16 :goto_1

    .line 209
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "surface_motion_engine"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 140
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 141
    const-string v0, "SMotionSettings"

    const-string v3, "onResume()"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 145
    iget-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "air_motion_engine"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 146
    iget-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mMotion:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "master_motion"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 147
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mSurface:Landroid/preference/SwitchPreferenceScreen;

    iget-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "surface_motion_engine"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 149
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "air_motion_engine"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mAirMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 150
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "master_motion"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 151
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "surface_motion_engine"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mHandMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 153
    return-void

    :cond_1
    move v0, v2

    .line 145
    goto :goto_0

    :cond_2
    move v0, v2

    .line 146
    goto :goto_1
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 157
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onStop()V

    .line 158
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mAirMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 159
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mHandMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 161
    return-void
.end method
