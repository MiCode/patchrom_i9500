.class public Lcom/android/settings_ex/smartscreen/SmartScreenSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "SmartScreenSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final ANIMATION_DEALY:I = 0x1f4

.field private static final CHANGE_ANIMATION:I = 0x66

.field private static final KEY_SMART_PAUSE:Ljava/lang/String; = "smartscreen_pause"

.field private static final KEY_SMART_ROTATION:Ljava/lang/String; = "smartscreen_rotation"

.field private static final KEY_SMART_SCROLL:Ljava/lang/String; = "smartscreen_scroll"

.field private static final KEY_SMART_STAY:Ljava/lang/String; = "smartscreen_stay"

.field private static final LAST_ANIMATION_DEALY:I = 0x7d0

.field private static final LAST_ANIMATION_INDEX:I = 0x0

.field private static final MENU_ID_HELP:I = 0x1

.field public static final PREF_SMART_PAUSE_NOTI:Ljava/lang/String; = "pref_smart_pause_noti"

.field public static final PREF_SMART_ROTATION_NOTI:Ljava/lang/String; = "pref_smart_rotation_noti"

.field public static final PREF_SMART_SCROLL_NOTI:Ljava/lang/String; = "pref_smart_scroll_noti"

.field public static final PREF_SMART_STAY_NOTI:Ljava/lang/String; = "pref_smart_stay_noti"

.field private static final TAG:Ljava/lang/String; = "SmartScreenSettings"

.field private static final mSmartRotationHelpText:[I

.field private static final mSmartScreenHelpID:[I

.field private static final mSmartStayHelpText:[I


# instance fields
.field private dialogTitle:I

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationImage:[I

.field private mAnimationIndex:I

.field private mAnimationView:Landroid/widget/ImageView;

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mHelp:Landroid/view/MenuItem;

.field private mResolver:Landroid/content/ContentResolver;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mSmartHelpText:[I

.field private mSmartPause:Landroid/preference/CheckBoxPreference;

.field private mSmartPauseAnimationImage:[I

.field private mSmartRotation:Landroid/preference/CheckBoxPreference;

.field private mSmartRotationAnimationImage:[I

.field private mSmartScreenObserver:Landroid/database/ContentObserver;

.field private mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

.field private mSmartStay:Landroid/preference/CheckBoxPreference;

.field private mSmartStayAnimationImage:[I

.field public pref_common_noti:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 91
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mSmartScreenHelpID:[I

    .line 92
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mSmartStayHelpText:[I

    .line 93
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mSmartRotationHelpText:[I

    return-void

    .line 91
    :array_0
    .array-data 0x4
        0x88t 0x3t 0xbt 0x7ft
        0x89t 0x3t 0xbt 0x7ft
    .end array-data

    .line 92
    :array_1
    .array-data 0x4
        0xf8t 0xdt 0x9t 0x7ft
        0xf9t 0xdt 0x9t 0x7ft
        0xfat 0xdt 0x9t 0x7ft
        0xfbt 0xdt 0x9t 0x7ft
        0xfct 0xdt 0x9t 0x7ft
    .end array-data

    .line 93
    :array_2
    .array-data 0x4
        0x0t 0xet 0x9t 0x7ft
        0xfdt 0xdt 0x9t 0x7ft
        0xfat 0xdt 0x9t 0x7ft
        0xfbt 0xdt 0x9t 0x7ft
        0xfct 0xdt 0x9t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 77
    iput-object v1, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 78
    iput-object v1, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mAnimationIndex:I

    .line 84
    iput-object v1, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mAnimationView:Landroid/widget/ImageView;

    .line 86
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mSmartStayAnimationImage:[I

    .line 87
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mSmartRotationAnimationImage:[I

    .line 88
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mSmartPauseAnimationImage:[I

    .line 102
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    .line 238
    new-instance v0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings$1;-><init>(Lcom/android/settings_ex/smartscreen/SmartScreenSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mAnimationHandler:Landroid/os/Handler;

    .line 481
    new-instance v0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings$6;-><init>(Lcom/android/settings_ex/smartscreen/SmartScreenSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mSmartScreenObserver:Landroid/database/ContentObserver;

    .line 589
    new-instance v0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings$11;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings$11;-><init>(Lcom/android/settings_ex/smartscreen/SmartScreenSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    return-void

    .line 86
    nop

    :array_0
    .array-data 0x4
        0x39t 0x4t 0x2t 0x7ft
        0x3at 0x4t 0x2t 0x7ft
        0x3bt 0x4t 0x2t 0x7ft
        0x3ct 0x4t 0x2t 0x7ft
    .end array-data

    .line 87
    :array_1
    .array-data 0x4
        0xcft 0x3t 0x2t 0x7ft
        0xd0t 0x3t 0x2t 0x7ft
        0xd1t 0x3t 0x2t 0x7ft
        0xd2t 0x3t 0x2t 0x7ft
    .end array-data

    .line 88
    :array_2
    .array-data 0x4
        0x2bt 0x4t 0x2t 0x7ft
        0x2ct 0x4t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings_ex/smartscreen/SmartScreenSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->updateAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/smartscreen/SmartScreenSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->stopAnimation()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/smartscreen/SmartScreenSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings_ex/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/smartscreen/SmartScreenSettings;IILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->showAllOptionDisabledDialog(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/smartscreen/SmartScreenSettings;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->broadcastStatusChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings_ex/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/smartscreen/SmartScreenSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mSmartStay:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/smartscreen/SmartScreenSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mSmartRotation:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/smartscreen/SmartScreenSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mSmartPause:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private broadcastStatusChanged(Ljava/lang/String;Z)V
    .locals 2
    .parameter "intent_type"
    .parameter "isEnable"

    .prologue
    .line 573
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 574
    .local v0, motion_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 575
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 576
    return-void
.end method

.method private makeTalkBackDisablePopup()V
    .locals 3

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v1, "pref_smart_stay_noti"

    if-ne v0, v1, :cond_1

    .line 494
    const v0, 0x7f090df4

    iput v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->dialogTitle:I

    .line 503
    :cond_0
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090e47

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->dialogTitle:I

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090677

    new-instance v2, Lcom/android/settings_ex/smartscreen/SmartScreenSettings$9;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings$9;-><init>(Lcom/android/settings_ex/smartscreen/SmartScreenSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings_ex/smartscreen/SmartScreenSettings$8;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings$8;-><init>(Lcom/android/settings_ex/smartscreen/SmartScreenSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings_ex/smartscreen/SmartScreenSettings$7;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings$7;-><init>(Lcom/android/settings_ex/smartscreen/SmartScreenSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 548
    return-void

    .line 495
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v1, "pref_smart_rotation_noti"

    if-ne v0, v1, :cond_2

    .line 496
    const v0, 0x7f090df6

    iput v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->dialogTitle:I

    goto :goto_0

    .line 497
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v1, "pref_smart_pause_noti"

    if-ne v0, v1, :cond_3

    .line 498
    const v0, 0x7f090e01

    iput v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->dialogTitle:I

    goto :goto_0

    .line 499
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v1, "pref_smart_scroll_noti"

    if-ne v0, v1, :cond_0

    .line 500
    const v0, 0x7f090e03

    iput v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->dialogTitle:I

    goto :goto_0
.end method

.method private showAllOptionDisabledDialog(IILjava/lang/String;)V
    .locals 4
    .parameter "title_res_id"
    .parameter "message_res_id"
    .parameter "key"

    .prologue
    .line 552
    move-object v0, p3

    .line 553
    .local v0, motion_type:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

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

    new-instance v3, Lcom/android/settings_ex/smartscreen/SmartScreenSettings$10;

    invoke-direct {v3, p0, v0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings$10;-><init>(Lcom/android/settings_ex/smartscreen/SmartScreenSettings;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 569
    iget-object v1, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 570
    return-void
.end method

.method private startAnimation()V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    const-string v0, "SmartScreenSettings"

    const-string v1, "startAnimation()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 274
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mAnimationIndex:I

    .line 275
    invoke-direct {p0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->updateAnimation()V

    goto :goto_0
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    const-string v0, "SmartScreenSettings"

    const-string v1, "stopAnimation()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private updateAnimation()V
    .locals 4

    .prologue
    const/16 v3, 0x66

    .line 249
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 267
    :goto_0
    return-void

    .line 250
    :cond_0
    const-string v0, "SmartScreenSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHANGE_ANIMATION : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mAnimationIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mAnimationView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mAnimationImage:[I

    iget v2, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mAnimationIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 253
    iget v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mAnimationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mAnimationIndex:I

    .line 256
    :cond_1
    iget v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mAnimationIndex:I

    iget-object v1, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mAnimationImage:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mAnimationIndex:I

    .line 258
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v1, "pref_smart_pause_noti"

    if-ne v0, v1, :cond_2

    .line 259
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 261
    :cond_2
    iget v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mAnimationIndex:I

    if-nez v0, :cond_3

    .line 262
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 264
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public createGuideDialog(Ljava/lang/String;)V
    .locals 3
    .parameter "pref_noti"

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 226
    .local v1, mSharedPreferences:Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 227
    .local v0, do_not_show_again:Z
    if-nez v0, :cond_0

    .line 228
    const-string v2, "pref_smart_scroll_noti"

    if-ne p1, v2, :cond_1

    .line 229
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->showGuideDialogForScroll()V

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->showGuideDialog()V

    goto :goto_0
.end method

.method public isAllOptionDisabled()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 579
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    .line 581
    iget-object v6, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "smart_scroll_adv_web"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 582
    .local v3, internet:I
    iget-object v6, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "smart_scroll_adv_chrome"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 583
    .local v0, chrome:I
    iget-object v6, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "smart_scroll_adv_email_body"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 584
    .local v1, email:I
    iget-object v6, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "smart_scroll_adv_gmail_body"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 586
    .local v2, gmail:I
    or-int v6, v3, v1

    if-ge v6, v4, :cond_0

    :goto_0
    return v4

    :cond_0
    move v4, v5

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 108
    const v0, 0x7f07007b

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->addPreferencesFromResource(I)V

    .line 110
    const-string v0, "smartscreen_stay"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mSmartStay:Landroid/preference/CheckBoxPreference;

    .line 111
    const-string v0, "smartscreen_rotation"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mSmartRotation:Landroid/preference/CheckBoxPreference;

    .line 112
    const-string v0, "smartscreen_pause"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mSmartPause:Landroid/preference/CheckBoxPreference;

    .line 113
    const-string v0, "smartscreen_scroll"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreferenceScreen;

    iput-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    .line 115
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

 #   invoke-virtual {v0, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 135
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->setHasOptionsMenu(Z)V

    .line 136
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 455
    const v0, 0x7f090f77

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02017d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mHelp:Landroid/view/MenuItem;

    .line 459
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mHelp:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 461
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 462
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 467
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 474
    const/4 v1, 0x0

    .line 477
    :goto_0
    return v1

    .line 469
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 470
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "helphub:section"

    const-string v2, "smart_screen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->startActivity(Landroid/content/Intent;)V

    .line 477
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0

    .line 467
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 162
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 163
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mSmartScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 164
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 166
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 169
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, key:Ljava/lang/String;
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v3

    .line 173
    .local v1, value:I
    :goto_0
    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings_ex/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 174
    const-string v2, "pref_smart_scroll_noti"

    iput-object v2, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    .line 175
    invoke-direct {p0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->makeTalkBackDisablePopup()V

    .line 185
    :cond_0
    :goto_1
    return v3

    .end local v1           #value:I
    :cond_1
    move v1, v2

    .line 171
    goto :goto_0

    .line 176
    .restart local v1       #value:I
    :cond_2
    const-string v4, "smartscreen_scroll"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 177
    const-string v4, "pref_smart_scroll_noti"

    iput-object v4, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    .line 178
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "smart_scroll"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 179
    const-string v4, "com.sec.SMART_SCROLL_CHANGED"

    if-ne v1, v3, :cond_3

    move v2, v3

    :cond_3
    invoke-direct {p0, v4, v2}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->broadcastStatusChanged(Ljava/lang/String;Z)V

    .line 181
    if-ne v1, v3, :cond_0

    .line 182
    iget-object v2, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->createGuideDialog(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 190
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, key:Ljava/lang/String;
    const/4 v1, 0x0

    .line 193
    .local v1, value:Z
    const-string v4, "smartscreen_stay"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 194
    iget-object v4, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mSmartStay:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 195
    const-string v4, "pref_smart_stay_noti"

    iput-object v4, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    .line 204
    :cond_0
    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings_ex/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 205
    invoke-direct {p0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->makeTalkBackDisablePopup()V

    .line 220
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    .line 196
    :cond_2
    const-string v4, "smartscreen_rotation"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 197
    iget-object v4, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mSmartRotation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 198
    const-string v4, "pref_smart_rotation_noti"

    iput-object v4, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    goto :goto_0

    .line 199
    :cond_3
    const-string v4, "smartscreen_pause"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 200
    iget-object v4, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mSmartPause:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 201
    const-string v4, "pref_smart_pause_noti"

    iput-object v4, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    goto :goto_0

    .line 207
    :cond_4
    iget-object v4, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mSmartStay:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_7

    .line 208
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "intelligent_sleep_mode"

    if-eqz v1, :cond_6

    :goto_2
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 216
    :cond_5
    :goto_3
    if-eqz v1, :cond_1

    .line 217
    iget-object v2, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->createGuideDialog(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move v2, v3

    .line 208
    goto :goto_2

    .line 209
    :cond_7
    iget-object v4, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mSmartRotation:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_9

    .line 210
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "intelligent_rotation_mode"

    if-eqz v1, :cond_8

    :goto_4
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_8
    move v2, v3

    goto :goto_4

    .line 211
    :cond_9
    iget-object v4, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mSmartPause:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_5

    .line 212
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "smart_pause"

    if-eqz v1, :cond_a

    :goto_5
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 213
    const-string v2, "com.sec.SMART_PAUSE_CHANGED"

    invoke-direct {p0, v2, v1}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->broadcastStatusChanged(Ljava/lang/String;Z)V

    goto :goto_3

    :cond_a
    move v2, v3

    .line 212
    goto :goto_5
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 140
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 141
    const-string v0, "SmartScreenSettings"

    const-string v3, "onResume()"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    .line 144
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v3}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 147
    iget-object v3, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mSmartStay:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "intelligent_sleep_mode"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 148
    iget-object v3, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mSmartRotation:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "intelligent_rotation_mode"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 149
    iget-object v3, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mSmartPause:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "smart_pause"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
#    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 150
    iget-object v3, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "smart_scroll"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
#    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 152
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mSmartRotation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    move v2, v1

    :cond_0
#    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 154
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "intelligent_sleep_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mSmartScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 155
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "intelligent_rotation_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mSmartScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 156
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "smart_pause"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mSmartScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 157
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "smart_scroll"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mSmartScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 158
    return-void

    :cond_1
    move v0, v2

    .line 147
    goto :goto_0

    :cond_2
    move v0, v2

    .line 148
    goto :goto_1

    :cond_3
    move v0, v2

    .line 149
    goto :goto_2

    :cond_4
    move v0, v2

    .line 150
    goto :goto_3
.end method

.method public showGuideDialog()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 290
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 293
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 294
    .local v6, mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 296
    .local v2, edit:Landroid/content/SharedPreferences$Editor;
    iget-object v9, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v9, :cond_0

    .line 297
    iget-object v9, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->dismiss()V

    .line 298
    iput-object v13, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 302
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v9, 0x7f040131

    invoke-virtual {v4, v9, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 303
    .local v5, layout:Landroid/view/View;
    const v9, 0x7f0b010a

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 305
    .local v7, mcheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    sget-object v9, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mSmartScreenHelpID:[I

    array-length v9, v9

    new-array v8, v9, [Landroid/widget/TextView;

    .line 307
    .local v8, tvList:[Landroid/widget/TextView;
    iget-object v9, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v10, "pref_smart_stay_noti"

    if-ne v9, v10, :cond_3

    .line 308
    iget-object v9, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mSmartStayAnimationImage:[I

    iput-object v9, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mAnimationImage:[I

    .line 309
    sget-object v9, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mSmartStayHelpText:[I

    iput-object v9, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mSmartHelpText:[I

    .line 310
    const v9, 0x7f090df4

    iput v9, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->dialogTitle:I

    .line 320
    :cond_1
    :goto_0
    iget-object v9, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v10, "pref_smart_stay_noti"

    if-eq v9, v10, :cond_2

    iget-object v9, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v10, "pref_smart_rotation_noti"

    if-ne v9, v10, :cond_8

    .line 322
    :cond_2
    sget-object v9, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mSmartScreenHelpID:[I

    aget v9, v9, v11

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    aput-object v9, v8, v11

    .line 323
    aget-object v9, v8, v11

    iget-object v10, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mSmartHelpText:[I

    aget v10, v10, v11

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    sget-object v9, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mSmartScreenHelpID:[I

    aget v9, v9, v12

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    aput-object v9, v8, v12

    .line 326
    const-string v1, ""

    .line 327
    .local v1, description:Ljava/lang/String;
    const/4 v3, 0x1

    .local v3, i:I
    :goto_1
    iget-object v9, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mSmartHelpText:[I

    array-length v9, v9

    if-ge v3, v9, :cond_6

    .line 328
    if-ne v3, v12, :cond_5

    .line 329
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mSmartHelpText:[I

    aget v10, v10, v3

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 327
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 311
    .end local v1           #description:Ljava/lang/String;
    .end local v3           #i:I
    :cond_3
    iget-object v9, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v10, "pref_smart_rotation_noti"

    if-ne v9, v10, :cond_4

    .line 312
    iget-object v9, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mSmartRotationAnimationImage:[I

    iput-object v9, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mAnimationImage:[I

    .line 313
    sget-object v9, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mSmartRotationHelpText:[I

    iput-object v9, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mSmartHelpText:[I

    .line 314
    const v9, 0x7f090df6

    iput v9, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->dialogTitle:I

    goto :goto_0

    .line 315
    :cond_4
    iget-object v9, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v10, "pref_smart_pause_noti"

    if-ne v9, v10, :cond_1

    .line 316
    iget-object v9, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mSmartPauseAnimationImage:[I

    iput-object v9, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mAnimationImage:[I

    .line 317
    const v9, 0x7f090e01

    iput v9, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->dialogTitle:I

    goto :goto_0

    .line 331
    .restart local v1       #description:Ljava/lang/String;
    .restart local v3       #i:I
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "- "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mSmartHelpText:[I

    aget v10, v10, v3

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 334
    :cond_6
    aget-object v9, v8, v12

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    .end local v1           #description:Ljava/lang/String;
    .end local v3           #i:I
    :cond_7
    :goto_3
    const v9, 0x7f0b010c

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mAnimationView:Landroid/widget/ImageView;

    .line 353
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 354
    iget v9, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->dialogTitle:I

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 356
    const v9, 0x104000a

    new-instance v10, Lcom/android/settings_ex/smartscreen/SmartScreenSettings$2;

    invoke-direct {v10, p0, v2, v7}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings$2;-><init>(Lcom/android/settings_ex/smartscreen/SmartScreenSettings;Landroid/content/SharedPreferences$Editor;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v0, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 363
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 364
    iget-object v9, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 365
    iget-object v9, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    new-instance v10, Lcom/android/settings_ex/smartscreen/SmartScreenSettings$3;

    invoke-direct {v10, p0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings$3;-><init>(Lcom/android/settings_ex/smartscreen/SmartScreenSettings;)V

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 370
    invoke-direct {p0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->startAnimation()V

    .line 371
    return-void

    .line 336
    :cond_8
    iget-object v9, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v10, "pref_smart_pause_noti"

    if-ne v9, v10, :cond_7

    .line 338
    sget-object v9, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mSmartScreenHelpID:[I

    aget v9, v9, v11

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    aput-object v9, v8, v11

    .line 339
    aget-object v9, v8, v11

    const v10, 0x7f090e1b

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    sget-object v9, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mSmartScreenHelpID:[I

    aget v9, v9, v12

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    aput-object v9, v8, v12

    .line 342
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f090e1c

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 343
    .restart local v1       #description:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "- "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v9, 0x7f090e1d

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 344
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "- "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v9, 0x7f090e1e

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 345
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v9, 0x7f090e1f

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 346
    aget-object v9, v8, v12

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method public showGuideDialogForScroll()V
    .locals 14

    .prologue
    .line 375
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v0, v12}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 377
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 378
    .local v8, mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 380
    .local v1, edit:Landroid/content/SharedPreferences$Editor;
    iget-object v12, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v12, :cond_0

    .line 381
    iget-object v12, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v12}, Landroid/app/AlertDialog;->dismiss()V

    .line 382
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 385
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const-string v13, "layout_inflater"

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 386
    .local v6, inflater:Landroid/view/LayoutInflater;
    const v12, 0x7f040132

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 387
    .local v7, layout:Landroid/view/View;
    const v12, 0x7f0b038a

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 389
    .local v5, helpTextTop:Landroid/widget/TextView;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const v12, 0x7f090e23

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 390
    .local v10, s:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const v12, 0x7f090e24

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 391
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "- "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f090e25

    invoke-virtual {p0, v13}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 392
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "- "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f090e26

    invoke-virtual {p0, v13}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 393
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const v12, 0x7f090e27

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 394
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f090e28

    invoke-virtual {p0, v13}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 395
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    const v12, 0x7f0b038b

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 399
    .local v3, helpContent:Landroid/widget/LinearLayout;
    new-instance v2, Lcom/android/settings_ex/HelpItem;

    invoke-direct {v2, v6}, Lcom/android/settings_ex/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 400
    .local v2, first:Lcom/android/settings_ex/HelpItem;
    const v12, 0x7f090e32

    invoke-virtual {v2, v12}, Lcom/android/settings_ex/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 401
    const v12, 0x7f090e29

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v2, v12}, Lcom/android/settings_ex/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 402
    const v12, 0x7f0203dc

    invoke-virtual {v2, v12}, Lcom/android/settings_ex/HelpItem;->setContentImage(I)V

    .line 403
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Lcom/android/settings_ex/HelpItem;->usePlayButton(Z)V

    .line 404
    invoke-virtual {v2}, Lcom/android/settings_ex/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 406
    new-instance v11, Lcom/android/settings_ex/HelpItem;

    invoke-direct {v11, v6}, Lcom/android/settings_ex/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 407
    .local v11, second:Lcom/android/settings_ex/HelpItem;
    const v12, 0x7f090e31

    invoke-virtual {v11, v12}, Lcom/android/settings_ex/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 408
    const v12, 0x7f090e2a

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/android/settings_ex/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 409
    const v12, 0x7f0203db

    invoke-virtual {v11, v12}, Lcom/android/settings_ex/HelpItem;->setContentImage(I)V

    .line 410
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/settings_ex/HelpItem;->usePlayButton(Z)V

    .line 411
    invoke-virtual {v11}, Lcom/android/settings_ex/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 413
    const v12, 0x7f0b038c

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 415
    .local v4, helpTextBottom:Landroid/widget/TextView;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const v12, 0x7f090e2b

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 416
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "- "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f090e2c

    invoke-virtual {p0, v13}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 417
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "- "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f090e2d

    invoke-virtual {p0, v13}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 418
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f090e2e

    invoke-virtual {p0, v13}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 419
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    const v12, 0x7f0b038d

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 423
    .local v9, mcheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 424
    const v12, 0x7f090e03

    invoke-virtual {v0, v12}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 426
    const v12, 0x104000a

    new-instance v13, Lcom/android/settings_ex/smartscreen/SmartScreenSettings$4;

    invoke-direct {v13, p0, v1, v9}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings$4;-><init>(Lcom/android/settings_ex/smartscreen/SmartScreenSettings;Landroid/content/SharedPreferences$Editor;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v0, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 438
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 439
    iget-object v12, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v12}, Landroid/app/AlertDialog;->show()V

    .line 440
    iget-object v12, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    new-instance v13, Lcom/android/settings_ex/smartscreen/SmartScreenSettings$5;

    invoke-direct {v13, p0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings$5;-><init>(Lcom/android/settings_ex/smartscreen/SmartScreenSettings;)V

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 450
    return-void
.end method
