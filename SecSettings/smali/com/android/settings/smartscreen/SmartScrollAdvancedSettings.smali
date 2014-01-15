.class public Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "SmartScrollAdvancedSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final KEY_RADIO_SCROLL_MODE_0:Ljava/lang/String; = "radio_scroll_mode_0"

.field private static final KEY_RADIO_SCROLL_MODE_1:Ljava/lang/String; = "radio_scroll_mode_1"

.field private static final KEY_SMART_SCROLL_ACCELERATION:Ljava/lang/String; = "smart_scroll_acceleration"

.field private static final KEY_SMART_SCROLL_ADV_CATEGORY:Ljava/lang/String; = "smartscreen_advanced_setting_category"

.field private static final KEY_SMART_SCROLL_ADV_CHROME:Ljava/lang/String; = "smart_scroll_adv_chrome"

.field private static final KEY_SMART_SCROLL_ADV_EMAIL_BODY:Ljava/lang/String; = "smart_scroll_adv_email_body"

.field private static final KEY_SMART_SCROLL_ADV_EMAIL_LIST:Ljava/lang/String; = "smart_scroll_adv_email_list"

.field private static final KEY_SMART_SCROLL_ADV_GMAIL_BODY:Ljava/lang/String; = "smart_scroll_adv_gmail_body"

.field private static final KEY_SMART_SCROLL_ADV_READERS_HUB:Ljava/lang/String; = "smart_scroll_adv_readers_hub"

.field private static final KEY_SMART_SCROLL_ADV_WEB:Ljava/lang/String; = "smart_scroll_adv_web"

.field private static final KEY_SMART_SCROLL_SENSITIVITY:Ljava/lang/String; = "smart_scroll_sensitivity"

.field private static final KEY_SMART_SCROLL_TYPE:Ljava/lang/String; = "smart_scroll_type"

.field private static final KEY_SMART_SCROLL_UNIT:Ljava/lang/String; = "smart_scroll_unit"

.field private static final KEY_SMART_SCROLL_VISUAL_FEEDBACK_ICON:Ljava/lang/String; = "smart_scroll_visual_feedback_icon"

.field private static final TAG:Ljava/lang/String; = "SmartScrollAdvancedSettings"


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private mFaceScrollObserver:Landroid/database/ContentObserver;

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mRadioScrollMode0:Lcom/android/settings_ex/RadioPreference;

.field private mRadioScrollMode1:Lcom/android/settings_ex/RadioPreference;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSmartScrollAcceleration:Landroid/preference/Preference;

.field private mSmartScrollAdvCategory:Landroid/preference/PreferenceCategory;

.field private mSmartScrollChrome:Landroid/preference/CheckBoxPreference;

.field private mSmartScrollEmailBody:Landroid/preference/CheckBoxPreference;

.field private mSmartScrollEmailList:Landroid/preference/CheckBoxPreference;

.field private mSmartScrollGmailBody:Landroid/preference/CheckBoxPreference;

.field private mSmartScrollObserver:Landroid/database/ContentObserver;

.field private mSmartScrollReadersHub:Landroid/preference/CheckBoxPreference;

.field private mSmartScrollSensitivity:Landroid/preference/Preference;

.field private mSmartScrollType:Landroid/preference/Preference;

.field private mSmartScrollUnit:Landroid/preference/Preference;

.field private mSmartScrollVisualFeedbackIcon:Landroid/preference/CheckBoxPreference;

.field private mSmartScrollWeb:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 90
    iput-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 91
    iput-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 94
    new-instance v0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings$1;-><init>(Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mFaceScrollObserver:Landroid/database/ContentObserver;

    .line 354
    new-instance v0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings$2;-><init>(Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->updateSmartScrollMode(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollWeb:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollEmailList:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollEmailBody:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollReadersHub:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollChrome:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollGmailBody:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;)Lcom/android/settings_ex/RadioPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mRadioScrollMode0:Lcom/android/settings_ex/RadioPreference;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;)Lcom/android/settings_ex/RadioPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mRadioScrollMode1:Lcom/android/settings_ex/RadioPreference;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->showAllOptionDisabledDialog(II)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->broadcastStatusChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollType:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollSensitivity:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollUnit:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollAcceleration:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollVisualFeedbackIcon:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private broadcastStatusChanged(Ljava/lang/String;Z)V
    .locals 2
    .parameter "intent_type"
    .parameter "isEnable"

    .prologue
    .line 518
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 519
    .local v0, motion_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 520
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 521
    return-void
.end method

.method private makeTalkBackDisablePopup()V
    .locals 3

    .prologue
    .line 362
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090e47

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090e03

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090677

    new-instance v2, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings$5;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings$5;-><init>(Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings$4;-><init>(Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings$3;-><init>(Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 407
    return-void
.end method

.method private showAllOptionDisabledDialog(II)V
    .locals 3
    .parameter "title_res_id"
    .parameter "message_res_id"

    .prologue
    .line 500
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings$8;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings$8;-><init>(Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 514
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 515
    return-void
.end method

.method private updateSmartScrollMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 344
    if-nez p1, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mRadioScrollMode0:Lcom/android/settings_ex/RadioPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/RadioPreference;->setChecked(Z)V

    .line 346
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mRadioScrollMode1:Lcom/android/settings_ex/RadioPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/RadioPreference;->setChecked(Z)V

    .line 351
    :goto_0
    return-void

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mRadioScrollMode0:Lcom/android/settings_ex/RadioPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/RadioPreference;->setChecked(Z)V

    .line 349
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mRadioScrollMode1:Lcom/android/settings_ex/RadioPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/RadioPreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public isAllOptionDisabled()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 410
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    .line 412
    iget-object v6, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "smart_scroll_adv_web"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 413
    .local v3, internet:I
    iget-object v6, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "smart_scroll_adv_chrome"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 414
    .local v0, chrome:I
    iget-object v6, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "smart_scroll_adv_email_body"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 415
    .local v1, email:I
    iget-object v6, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "smart_scroll_adv_gmail_body"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 417
    .local v2, gmail:I
    or-int v6, v3, v1

    if-ge v6, v4, :cond_0

    :goto_0
    return v4

    :cond_0
    move v4, v5

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 266
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    invoke-direct {p0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->makeTalkBackDisablePopup()V

    .line 294
    :goto_0
    return-void

    .line 269
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "smart_scroll"

    if-eqz p2, :cond_2

    move v2, v3

    :goto_1
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 270
    if-ne p2, v3, :cond_1

    .line 271
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 272
    .local v1, mSharedPreferences:Landroid/content/SharedPreferences;
    const-string v2, "pref_smart_scroll_noti"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 273
    .local v0, do_not_show_again:Z
    if-nez v0, :cond_1

    .line 274
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->showGuideDialogForScroll()V

    .line 277
    .end local v0           #do_not_show_again:Z
    .end local v1           #mSharedPreferences:Landroid/content/SharedPreferences;
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollType:Landroid/preference/Preference;

    invoke-virtual {v2, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 278
    iget-object v2, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollSensitivity:Landroid/preference/Preference;

    invoke-virtual {v2, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 279
    iget-object v2, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollUnit:Landroid/preference/Preference;

    invoke-virtual {v2, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 280
    iget-object v2, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollAcceleration:Landroid/preference/Preference;

    invoke-virtual {v2, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 282
    iget-object v2, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollVisualFeedbackIcon:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 283
    iget-object v2, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollWeb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 284
    iget-object v2, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollEmailList:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 285
    iget-object v2, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollEmailBody:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 286
    iget-object v2, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollReadersHub:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 287
    iget-object v2, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollChrome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 288
    iget-object v2, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollGmailBody:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 290
    iget-object v2, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mRadioScrollMode0:Lcom/android/settings_ex/RadioPreference;

    invoke-virtual {v2, p2}, Lcom/android/settings_ex/RadioPreference;->setEnabled(Z)V

    .line 291
    iget-object v2, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mRadioScrollMode1:Lcom/android/settings_ex/RadioPreference;

    invoke-virtual {v2, p2}, Lcom/android/settings_ex/RadioPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    move v2, v4

    .line 269
    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0x10

    const/4 v6, -0x2

    const/4 v1, 0x0

    .line 103
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 105
    const v2, 0x7f07007c

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->addPreferencesFromResource(I)V

    .line 108
    const-string v2, "radio_scroll_mode_0"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/RadioPreference;

    iput-object v2, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mRadioScrollMode0:Lcom/android/settings_ex/RadioPreference;

    .line 109
    const-string v2, "radio_scroll_mode_1"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/RadioPreference;

    iput-object v2, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mRadioScrollMode1:Lcom/android/settings_ex/RadioPreference;

    .line 110
    iget-object v2, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mRadioScrollMode0:Lcom/android/settings_ex/RadioPreference;

    invoke-virtual {v2, p0}, Lcom/android/settings_ex/RadioPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 111
    iget-object v2, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mRadioScrollMode1:Lcom/android/settings_ex/RadioPreference;

    invoke-virtual {v2, p0}, Lcom/android/settings_ex/RadioPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 114
    const-string v2, "smart_scroll_type"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollType:Landroid/preference/Preference;

    .line 115
    const-string v2, "smart_scroll_sensitivity"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollSensitivity:Landroid/preference/Preference;

    .line 116
    const-string v2, "smart_scroll_unit"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollUnit:Landroid/preference/Preference;

    .line 117
    const-string v2, "smart_scroll_acceleration"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollAcceleration:Landroid/preference/Preference;

    .line 119
    const-string v2, "smart_scroll_visual_feedback_icon"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollVisualFeedbackIcon:Landroid/preference/CheckBoxPreference;

    .line 120
    const-string v2, "smart_scroll_adv_web"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollWeb:Landroid/preference/CheckBoxPreference;

    .line 121
    const-string v2, "smart_scroll_adv_email_list"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollEmailList:Landroid/preference/CheckBoxPreference;

    .line 122
    const-string v2, "smart_scroll_adv_email_body"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollEmailBody:Landroid/preference/CheckBoxPreference;

    .line 123
    const-string v2, "smart_scroll_adv_readers_hub"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollReadersHub:Landroid/preference/CheckBoxPreference;

    .line 124
    const-string v2, "smart_scroll_adv_chrome"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollChrome:Landroid/preference/CheckBoxPreference;

    .line 125
    const-string v2, "smart_scroll_adv_gmail_body"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollGmailBody:Landroid/preference/CheckBoxPreference;

    .line 126
    const-string v2, "smartscreen_advanced_setting_category"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollAdvCategory:Landroid/preference/PreferenceCategory;

    .line 128
    iget-object v2, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollSensitivity:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 130
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mActivity:Landroid/app/Activity;

    .line 131
    new-instance v2, Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 132
    iget-object v2, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mActivity:Landroid/app/Activity;

    instance-of v2, v2, Landroid/preference/PreferenceActivity;

    if-eqz v2, :cond_0

    .line 133
    iget-object v2, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 135
    .local v0, padding:I
    iget-object v2, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v1, v1, v0, v1}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 136
    iget-object v2, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 138
    iget-object v2, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const/16 v5, 0x15

    invoke-direct {v4, v6, v6, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 142
    iget-object v2, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mActionBarLayout:Landroid/view/View;

    .line 145
    .end local v0           #padding:I
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "smart_scroll"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 146
    .local v1, smartScrollState:Z
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 148
    iget-object v2, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 151
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollType:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 152
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollUnit:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 153
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollEmailList:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 154
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollReadersHub:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 155
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollAcceleration:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 156
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollGmailBody:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 157
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollChrome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 158
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollEmailBody:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 159
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollWeb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 160
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollAdvCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 167
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 222
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 223
    iget-object v1, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 225
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->isAllOptionDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "smart_scroll"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090e14

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 227
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "smart_scroll"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 228
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.SMART_SCROLL_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 229
    .local v0, smart_scroll_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 230
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 232
    .end local v0           #smart_scroll_changed:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 248
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, key:Ljava/lang/String;
    const-string v1, "radio_scroll_mode_0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 252
    const-string v1, "SmartScrollAdvancedSettings"

    const-string v2, "onPreferenceChange : radio_scroll_mode_0"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "face_smart_scroll"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 254
    invoke-direct {p0, v3}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->updateSmartScrollMode(I)V

    .line 261
    :cond_0
    :goto_0
    return v3

    .line 255
    :cond_1
    const-string v1, "radio_scroll_mode_1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "face_smart_scroll"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 257
    invoke-direct {p0, v4}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->updateSmartScrollMode(I)V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preference"

    .prologue
    .line 298
    iget-object v2, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollSensitivity:Landroid/preference/Preference;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 300
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.sbrowsertry.SETTING_SCROLL_SENSITIVITY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 301
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "SmartScrollAdvancedSettings"

    const-string v3, "Cannot find intent : com.sec.android.app.sbrowsertry.SETTING_SCROLL_SENSITIVITY"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const-string v2, "SmartScrollAdvancedSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find intent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 313
    iget-object v3, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollWeb:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_3

    .line 314
    iget-object v3, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollWeb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 315
    .local v0, value:Z
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "smart_scroll_adv_web"

    if-eqz v0, :cond_2

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 336
    .end local v0           #value:Z
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->isAllOptionDisabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 337
    iget-object v1, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 339
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .restart local v0       #value:Z
    :cond_2
    move v1, v2

    .line 315
    goto :goto_0

    .line 316
    .end local v0           #value:Z
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollEmailList:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_5

    .line 317
    iget-object v3, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollEmailList:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 318
    .restart local v0       #value:Z
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "smart_scroll_adv_email_list"

    if-eqz v0, :cond_4

    :goto_2
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    .line 319
    .end local v0           #value:Z
    :cond_5
    iget-object v3, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollEmailBody:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_7

    .line 320
    iget-object v3, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollEmailBody:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 321
    .restart local v0       #value:Z
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "smart_scroll_adv_email_body"

    if-eqz v0, :cond_6

    :goto_3
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_3

    .line 322
    .end local v0           #value:Z
    :cond_7
    iget-object v3, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollReadersHub:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_9

    .line 323
    iget-object v3, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollReadersHub:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 324
    .restart local v0       #value:Z
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "smart_scroll_adv_readers_hub"

    if-eqz v0, :cond_8

    :goto_4
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_8
    move v1, v2

    goto :goto_4

    .line 325
    .end local v0           #value:Z
    :cond_9
    iget-object v3, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollChrome:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_b

    .line 326
    iget-object v3, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollChrome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 327
    .restart local v0       #value:Z
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "smart_scroll_adv_chrome"

    if-eqz v0, :cond_a

    :goto_5
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_a
    move v1, v2

    goto :goto_5

    .line 328
    .end local v0           #value:Z
    :cond_b
    iget-object v3, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollGmailBody:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_d

    .line 329
    iget-object v3, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollGmailBody:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 330
    .restart local v0       #value:Z
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "smart_scroll_adv_gmail_body"

    if-eqz v0, :cond_c

    :goto_6
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_c
    move v1, v2

    goto :goto_6

    .line 331
    .end local v0           #value:Z
    :cond_d
    iget-object v3, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollVisualFeedbackIcon:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_0

    .line 332
    iget-object v3, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollVisualFeedbackIcon:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 333
    .restart local v0       #value:Z
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "smart_scroll_visual_feedback_icon"

    if-eqz v0, :cond_e

    :goto_7
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_e
    move v1, v2

    goto :goto_7
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 171
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 172
    const-string v1, "SmartScrollAdvancedSettings"

    const-string v4, "onResume()"

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v1, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    .line 181
    const-string v1, "DCM"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    iget-object v1, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "face_smart_scroll"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mFaceScrollObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 186
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "face_smart_scroll"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->updateSmartScrollMode(I)V

    .line 189
    iget-object v4, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollVisualFeedbackIcon:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "smart_scroll_visual_feedback_icon"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 190
    iget-object v4, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollWeb:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "smart_scroll_adv_web"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 191
    iget-object v4, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollEmailList:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "smart_scroll_adv_email_list"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 192
    iget-object v4, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollEmailBody:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "smart_scroll_adv_email_body"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 193
    iget-object v4, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollReadersHub:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "smart_scroll_adv_readers_hub"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 194
    iget-object v4, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollChrome:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "smart_scroll_adv_chrome"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_7

    move v1, v2

    :goto_5
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 195
    iget-object v4, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollGmailBody:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "smart_scroll_adv_gmail_body"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_8

    move v1, v2

    :goto_6
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 197
    iget-object v1, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "smart_scroll"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    move v0, v2

    .line 199
    .local v0, smartScrollState:Z
    :goto_7
    iget-object v1, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 200
    iget-object v1, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "smart_scroll"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 202
    iget-object v1, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollType:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 203
    iget-object v1, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollSensitivity:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 204
    iget-object v1, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollUnit:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 205
    iget-object v1, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollAcceleration:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 207
    iget-object v1, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollVisualFeedbackIcon:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 208
    iget-object v1, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollWeb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 209
    iget-object v1, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollEmailList:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 210
    iget-object v1, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollEmailBody:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 211
    iget-object v1, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollReadersHub:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 212
    iget-object v1, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollChrome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 213
    iget-object v1, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollGmailBody:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 215
    iget-object v1, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mRadioScrollMode0:Lcom/android/settings_ex/RadioPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/RadioPreference;->setEnabled(Z)V

    .line 216
    iget-object v1, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mRadioScrollMode1:Lcom/android/settings_ex/RadioPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/RadioPreference;->setEnabled(Z)V

    .line 218
    return-void

    .end local v0           #smartScrollState:Z
    :cond_2
    move v1, v3

    .line 189
    goto/16 :goto_0

    :cond_3
    move v1, v3

    .line 190
    goto/16 :goto_1

    :cond_4
    move v1, v3

    .line 191
    goto/16 :goto_2

    :cond_5
    move v1, v3

    .line 192
    goto/16 :goto_3

    :cond_6
    move v1, v3

    .line 193
    goto/16 :goto_4

    :cond_7
    move v1, v3

    .line 194
    goto/16 :goto_5

    :cond_8
    move v1, v3

    .line 195
    goto :goto_6

    :cond_9
    move v0, v3

    .line 197
    goto :goto_7
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 236
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onStop()V

    .line 237
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 242
    :cond_0
    const-string v0, "DCM"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mFaceScrollObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 245
    :cond_1
    return-void
.end method

.method public showGuideDialogForScroll()V
    .locals 14

    .prologue
    .line 422
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v0, v12}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 424
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 425
    .local v8, mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 427
    .local v1, edit:Landroid/content/SharedPreferences$Editor;
    iget-object v12, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v12, :cond_0

    .line 428
    iget-object v12, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v12}, Landroid/app/AlertDialog;->dismiss()V

    .line 429
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 432
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const-string v13, "layout_inflater"

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 433
    .local v6, inflater:Landroid/view/LayoutInflater;
    const v12, 0x7f040132

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 434
    .local v7, layout:Landroid/view/View;
    const v12, 0x7f0b038a

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 436
    .local v5, helpTextTop:Landroid/widget/TextView;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const v12, 0x7f090e23

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 437
    .local v10, s:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const v12, 0x7f090e24

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 438
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "- "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f090e25

    invoke-virtual {p0, v13}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 439
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "- "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f090e26

    invoke-virtual {p0, v13}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 440
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const v12, 0x7f090e27

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 441
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f090e28

    invoke-virtual {p0, v13}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 442
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    const v12, 0x7f0b038b

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 446
    .local v3, helpContent:Landroid/widget/LinearLayout;
    new-instance v2, Lcom/android/settings_ex/HelpItem;

    invoke-direct {v2, v6}, Lcom/android/settings_ex/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 447
    .local v2, first:Lcom/android/settings_ex/HelpItem;
    const v12, 0x7f090e32

    invoke-virtual {v2, v12}, Lcom/android/settings_ex/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 448
    const v12, 0x7f090e29

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v2, v12}, Lcom/android/settings_ex/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 449
    const v12, 0x7f0203dc

    invoke-virtual {v2, v12}, Lcom/android/settings_ex/HelpItem;->setContentImage(I)V

    .line 450
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Lcom/android/settings_ex/HelpItem;->usePlayButton(Z)V

    .line 451
    invoke-virtual {v2}, Lcom/android/settings_ex/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 453
    new-instance v11, Lcom/android/settings_ex/HelpItem;

    invoke-direct {v11, v6}, Lcom/android/settings_ex/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 454
    .local v11, second:Lcom/android/settings_ex/HelpItem;
    const v12, 0x7f090e31

    invoke-virtual {v11, v12}, Lcom/android/settings_ex/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 455
    const v12, 0x7f090e2a

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/android/settings_ex/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 456
    const v12, 0x7f0203db

    invoke-virtual {v11, v12}, Lcom/android/settings_ex/HelpItem;->setContentImage(I)V

    .line 457
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/settings_ex/HelpItem;->usePlayButton(Z)V

    .line 458
    invoke-virtual {v11}, Lcom/android/settings_ex/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 460
    const v12, 0x7f0b038c

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 462
    .local v4, helpTextBottom:Landroid/widget/TextView;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const v12, 0x7f090e2b

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 463
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "- "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f090e2c

    invoke-virtual {p0, v13}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 464
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "- "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f090e2d

    invoke-virtual {p0, v13}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 465
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f090e2e

    invoke-virtual {p0, v13}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 466
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    const v12, 0x7f0b038d

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 470
    .local v9, mcheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 471
    const v12, 0x7f090e03

    invoke-virtual {v0, v12}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 473
    const v12, 0x104000a

    new-instance v13, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings$6;

    invoke-direct {v13, p0, v1, v9}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings$6;-><init>(Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;Landroid/content/SharedPreferences$Editor;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v0, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 485
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 486
    iget-object v12, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v12}, Landroid/app/AlertDialog;->show()V

    .line 487
    iget-object v12, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mGuideDialog:Landroid/app/AlertDialog;

    new-instance v13, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings$7;

    invoke-direct {v13, p0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings$7;-><init>(Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;)V

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 496
    return-void
.end method
