.class public Lcom/android/settings_ex/ApnSettings;
.super Landroid/preference/PreferenceActivity;
.source "ApnSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/ApnSettings$4;,
        Lcom/android/settings_ex/ApnSettings$RestoreApnProcessHandler;,
        Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;
    }
.end annotation


# static fields
.field public static final APN_ID:Ljava/lang/String; = "apn_id"

.field private static final APN_INDEX:I = 0x2

.field private static final DB_VZW_DEFAULT_APN_NAME:Ljava/lang/String; = "db_vzw_default_apn_name"

.field private static final DEFAULTAPN_URI:Landroid/net/Uri; = null

.field private static final DIALOG_RESTORE_DEFAULTAPN:I = 0x3e9

.field private static final EVENT_RESTORE_DEFAULTAPN_COMPLETE:I = 0x2

.field private static final EVENT_RESTORE_DEFAULTAPN_START:I = 0x1

.field public static final EXTRA_POSITION:Ljava/lang/String; = "position"

.field private static final ID_INDEX:I = 0x0

.field private static final MENU_NEW:I = 0x1

.field private static final MENU_RESTORE:I = 0x2

.field private static final NAME_INDEX:I = 0x1

.field private static final PREFERAPN_URI:Landroid/net/Uri; = null

.field public static final PREFERRED_APN_URI:Ljava/lang/String; = "content://telephony/carriers/preferapn"

.field public static final RESTORE_CARRIERS_URI:Ljava/lang/String; = "content://telephony/carriers/restore"

.field static final TAG:Ljava/lang/String; = "ApnSettings"

.field private static final TYPES_INDEX:I = 0x3

.field private static final VERIZON_DEFAULT:Ljava/lang/String; = "LTE - Verizon Internet"

.field private static final VZW_DEFAULTAPN_URI:Landroid/net/Uri;

.field private static final is3LMAllowed:Z

.field private static mRestoreDefaultApnMode:Z


# instance fields
.field apnList:Landroid/preference/PreferenceGroup;

.field private hideApnList:[Ljava/lang/String;

.field private isEmptyApnlist:Z

.field private isSprHidden:Z

.field private isVzw:Z

.field private isVzwEditable:Z

.field private isVzwSimEnable:Z

.field private mAPNMenu:Landroid/view/Menu;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDelayHandler:Landroid/os/Handler;

.field private mDelayRunnable:Ljava/lang/Runnable;

.field private mMobileStateFilter:Landroid/content/IntentFilter;

.field private final mMobileStateReceiver:Landroid/content/BroadcastReceiver;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRestoreApnProcessHandler:Lcom/android/settings_ex/ApnSettings$RestoreApnProcessHandler;

.field private mRestoreApnUiHandler:Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;

.field private mRestoreDefaultApnThread:Landroid/os/HandlerThread;

.field private mSelectedKey:Ljava/lang/String;

.field private final mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherStateFilter:Landroid/content/IntentFilter;

.field pref_vzwdefault:Lcom/android/settings_ex/ApnPreference;

.field private vzwapn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const-string v0, "content://telephony/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    .line 96
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    .line 123
    const-string v0, "content://telephony/carriers/31"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/ApnSettings;->VZW_DEFAULTAPN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mDelayHandler:Landroid/os/Handler;

    .line 115
    iput-boolean v1, p0, Lcom/android/settings_ex/ApnSettings;->isVzw:Z

    .line 117
    iput-boolean v1, p0, Lcom/android/settings_ex/ApnSettings;->isVzwSimEnable:Z

    .line 119
    iput-boolean v1, p0, Lcom/android/settings_ex/ApnSettings;->isEmptyApnlist:Z

    .line 128
    iput-object v2, p0, Lcom/android/settings_ex/ApnSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 131
    iput-object v2, p0, Lcom/android/settings_ex/ApnSettings;->hideApnList:[Ljava/lang/String;

    .line 137
    new-instance v0, Lcom/android/settings_ex/ApnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ApnSettings$1;-><init>(Lcom/android/settings_ex/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    .line 181
    new-instance v0, Lcom/android/settings_ex/ApnSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ApnSettings$2;-><init>(Lcom/android/settings_ex/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 853
    return-void
.end method

.method static synthetic access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-static {p0}, Lcom/android/settings_ex/ApnSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 70
    sget-boolean v0, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnMode:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    sput-boolean p0, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnMode:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/ApnSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/settings_ex/ApnSettings;->fillList()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/ApnSettings;)Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings_ex/ApnSettings;Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;)Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings_ex/ApnSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/settings_ex/ApnSettings;->isVzw:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/ApnSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/settings_ex/ApnSettings;->isVzwSimEnable:Z

    return v0
.end method

.method static synthetic access$700()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/android/settings_ex/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    return-object v0
.end method

.method private addNewApn()V
    .locals 3

    .prologue
    .line 725
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 726
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "vzw"

    const-string v2, "editable"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 731
    :goto_0
    return-void

    .line 730
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private fillList()V
    .locals 18

    .prologue
    .line 411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numeric=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gsm.sim.operator.numeric"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 415
    .local v4, where:Ljava/lang/String;
    const-string v1, "LGT"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "3"

    const-string v2, "ril.simtype"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 416
    const-string v4, "numeric=\"45006\""

    .line 420
    const-string v1, "ApnSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fillList: where = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_0
    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Setting_FixApn4SpecificMccMnc"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 436
    const-string v1, "21405"

    const-string v2, "gsm.sim.operator.numeric"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 437
    const-string v4, "numeric=\"21405\""

    .line 442
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string v6, "name"

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string v6, "apn"

    aput-object v6, v3, v5

    const/4 v5, 0x3

    const-string v6, "type"

    aput-object v6, v3, v5

    const/4 v5, 0x0

    const-string v6, "name ASC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 446
    .local v8, cursor:Landroid/database/Cursor;
    const-string v1, "DCM"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "VAU"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "VHA"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 447
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string v6, "name"

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string v6, "apn"

    aput-object v6, v3, v5

    const/4 v5, 0x3

    const-string v6, "type"

    aput-object v6, v3, v5

    const/4 v5, 0x0

    const-string v6, "_id asc"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 452
    :cond_3
    const-string v1, "apn_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings_ex/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    .line 453
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 455
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 457
    .local v11, mmsApnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings_ex/ApnSettings;->isVzw:Z

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings_ex/ApnSettings;->isVzwSimEnable:Z

    if-nez v1, :cond_5

    .line 458
    new-instance v1, Lcom/android/settings_ex/ApnPreference;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/settings_ex/ApnPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings_ex/ApnSettings;->pref_vzwdefault:Lcom/android/settings_ex/ApnPreference;

    .line 459
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/ApnSettings;->pref_vzwdefault:Lcom/android/settings_ex/ApnPreference;

    const-string v2, "6"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 460
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/ApnSettings;->pref_vzwdefault:Lcom/android/settings_ex/ApnPreference;

    const-string v2, "LTE - Verizon Internet"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 461
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/ApnSettings;->pref_vzwdefault:Lcom/android/settings_ex/ApnPreference;

    const-string v2, "VZWINTERNET"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 462
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/ApnSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "db_vzw_default_apn_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings_ex/ApnSettings;->vzwapn:Ljava/lang/String;

    .line 463
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/ApnSettings;->vzwapn:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 464
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/ApnSettings;->pref_vzwdefault:Lcom/android/settings_ex/ApnPreference;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ApnSettings;->vzwapn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 466
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/ApnSettings;->pref_vzwdefault:Lcom/android/settings_ex/ApnPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 467
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/ApnSettings;->pref_vzwdefault:Lcom/android/settings_ex/ApnPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/ApnPreference;->setSelectable(Z)V

    .line 468
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/ApnSettings;->pref_vzwdefault:Lcom/android/settings_ex/ApnPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 469
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/ApnSettings;->pref_vzwdefault:Lcom/android/settings_ex/ApnPreference;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 470
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/ApnSettings;->pref_vzwdefault:Lcom/android/settings_ex/ApnPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 473
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/ApnSettings;->getSelectedApnKey()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings_ex/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 474
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 475
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_27

    .line 476
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 477
    .local v12, name:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 478
    .local v7, apn:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 479
    .local v10, key:Ljava/lang/String;
    const/4 v1, 0x3

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 497
    .local v17, type:Ljava/lang/String;
    const-string v1, "SKT"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "45005"

    const-string v2, "gsm.sim.operator.numeric"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "oversea"

    const-string v2, "ril.currentplmn"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "web.sktelecom.com"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "lte.sktelecom.com"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 501
    :cond_6
    const-string v7, "roaming.sktelecom.com"

    .line 505
    :cond_7
    const-string v1, "LGT"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "internet.lguplus.co.kr"

    invoke-virtual {v7, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_8

    .line 506
    const-string v1, "3"

    const-string v2, "ril.simtype"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "oversea"

    const-string v2, "ril.currentplmn"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 507
    const-string v12, "LG U+ Roaming"

    .line 508
    const-string v7, "wroaming.lguplus.co.kr"

    .line 515
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/settings_ex/ApnSettings;->isHideApn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 516
    const-string v1, "ApnSettings"

    const-string v2, "HideApnlist is not added"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_2

    .line 422
    .end local v7           #apn:Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v10           #key:Ljava/lang/String;
    .end local v11           #mmsApnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    .end local v12           #name:Ljava/lang/String;
    .end local v17           #type:Ljava/lang/String;
    :cond_9
    const-string v1, "SKT"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "45005"

    const-string v2, "gsm.sim.operator.numeric"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    const-string v4, "numeric=\"45005\""

    .line 429
    const-string v1, "ApnSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fillList: where = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 439
    :cond_a
    const-string v4, "numeric=\"21407\""

    goto/16 :goto_1

    .line 523
    .restart local v7       #apn:Ljava/lang/String;
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v10       #key:Ljava/lang/String;
    .restart local v11       #mmsApnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    .restart local v12       #name:Ljava/lang/String;
    .restart local v17       #type:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings_ex/ApnSettings;->isSprHidden:Z

    if-eqz v1, :cond_f

    .line 524
    new-instance v13, Lcom/android/settings_ex/ApnPreference;

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v1}, Lcom/android/settings_ex/ApnPreference;-><init>(Landroid/content/Context;I)V

    .line 531
    .local v13, pref:Lcom/android/settings_ex/ApnPreference;
    :goto_3
    invoke-virtual {v13, v10}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 532
    invoke-virtual {v13, v12}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 533
    invoke-virtual {v13, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 534
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 535
    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 537
    const/16 v16, 0x1

    .line 538
    .local v16, selectable:Z
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 539
    .local v15, sales_code:Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 540
    const-string v1, "ril.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 542
    :cond_c
    const-string v1, "VZW"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 543
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings_ex/ApnSettings;->isVzwEditable:Z

    if-eqz v1, :cond_12

    .line 544
    const/16 v16, 0x1

    .line 583
    :goto_4
    move/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/android/settings_ex/ApnPreference;->setSelectable(Z)V

    .line 584
    if-eqz v16, :cond_24

    .line 585
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/ApnSettings;->mSelectedKey:Ljava/lang/String;

    if-eqz v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 586
    invoke-virtual {v13}, Lcom/android/settings_ex/ApnPreference;->setChecked()V

    .line 589
    :cond_d
    if-eqz v17, :cond_21

    const-string v1, "cmdm"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "cmmm"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "cmmb"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "cmmail"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "cmpim"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 591
    :cond_e
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_2

    .line 525
    .end local v13           #pref:Lcom/android/settings_ex/ApnPreference;
    .end local v15           #sales_code:Ljava/lang/String;
    .end local v16           #selectable:Z
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings_ex/ApnSettings;->isVzwEditable:Z

    if-nez v1, :cond_10

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings_ex/ApnSettings;->isVzwSimEnable:Z

    if-nez v1, :cond_11

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings_ex/ApnSettings;->isVzw:Z

    if-eqz v1, :cond_11

    .line 526
    :cond_10
    new-instance v13, Lcom/android/settings_ex/ApnPreference;

    const/4 v1, 0x2

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v1}, Lcom/android/settings_ex/ApnPreference;-><init>(Landroid/content/Context;I)V

    .restart local v13       #pref:Lcom/android/settings_ex/ApnPreference;
    goto/16 :goto_3

    .line 528
    .end local v13           #pref:Lcom/android/settings_ex/ApnPreference;
    :cond_11
    new-instance v13, Lcom/android/settings_ex/ApnPreference;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/settings_ex/ApnPreference;-><init>(Landroid/content/Context;)V

    .restart local v13       #pref:Lcom/android/settings_ex/ApnPreference;
    goto/16 :goto_3

    .line 546
    .restart local v15       #sales_code:Ljava/lang/String;
    .restart local v16       #selectable:Z
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings_ex/ApnSettings;->isVzwSimEnable:Z

    if-eqz v1, :cond_17

    .line 548
    const-string v1, "LTE - Verizon Internet"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "VZW Roaming Internet"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 549
    :cond_13
    const/16 v16, 0x1

    .line 550
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/ApnSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "db_vzw_default_apn_name"

    invoke-static {v1, v2, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_4

    .line 552
    :cond_14
    const-string v1, "35"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "34"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "32"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "33"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "31"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "10"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "9"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "7"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "8"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 554
    :cond_15
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_2

    .line 557
    :cond_16
    const/16 v16, 0x0

    .line 558
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_4

    .line 563
    :cond_17
    const-string v1, "LTE - Verizon Internet"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 564
    const/16 v16, 0x0

    .line 565
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_4

    .line 567
    :cond_18
    const-string v1, "35"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "34"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "32"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "33"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "31"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "10"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "9"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "7"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "8"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "39"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "37"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "38"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "36"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "18"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "16"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "17"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "15"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 571
    :cond_19
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_2

    .line 574
    :cond_1a
    const/16 v16, 0x1

    goto/16 :goto_4

    .line 578
    :cond_1b
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Setting_BlockToSelectDunApnType"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 579
    if-eqz v17, :cond_1c

    const-string v1, "mms"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    const-string v1, "dun"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    :cond_1c
    const/16 v16, 0x1

    :goto_5
    goto/16 :goto_4

    :cond_1d
    const/16 v16, 0x0

    goto :goto_5

    .line 581
    :cond_1e
    if-eqz v17, :cond_1f

    const-string v1, "mms"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    :cond_1f
    const/16 v16, 0x1

    :goto_6
    goto/16 :goto_4

    :cond_20
    const/16 v16, 0x0

    goto :goto_6

    .line 594
    :cond_21
    const-string v1, "CHM"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string v1, "CMCC"

    const-string v2, "OPEN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    :cond_22
    const-string v1, "wap"

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v1, "CMWAP"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 597
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_2

    .line 600
    :cond_23
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v13}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 612
    :goto_7
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_2

    .line 603
    :cond_24
    const-string v1, "CHM"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    const-string v1, "CMCC"

    const-string v2, "OPEN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    :cond_25
    const-string v1, "CMMMS"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 606
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_2

    .line 610
    :cond_26
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 614
    .end local v7           #apn:Ljava/lang/String;
    .end local v10           #key:Ljava/lang/String;
    .end local v12           #name:Ljava/lang/String;
    .end local v13           #pref:Lcom/android/settings_ex/ApnPreference;
    .end local v15           #sales_code:Ljava/lang/String;
    .end local v16           #selectable:Z
    .end local v17           #type:Ljava/lang/String;
    :cond_27
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 616
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/preference/Preference;

    .line 617
    .local v14, preference:Landroid/preference/Preference;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v14}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_8

    .line 621
    .end local v14           #preference:Landroid/preference/Preference;
    :cond_28
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings_ex/ApnSettings;->isVzw:Z

    if-eqz v1, :cond_29

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings_ex/ApnSettings;->isVzwSimEnable:Z

    if-nez v1, :cond_29

    .line 622
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_29

    .line 623
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/settings_ex/ApnSettings;->isEmptyApnlist:Z

    .line 626
    :cond_29
    return-void
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 2
    .parameter "intent"

    .prologue
    .line 195
    const-string v1, "state"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 197
    const-class v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 199
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0
.end method

.method private getSelectedApnKey()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 791
    const/4 v7, 0x0

    .line 793
    .local v7, key:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings_ex/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v8

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 795
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 796
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 797
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 799
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 800
    return-object v7
.end method

.method private isHideApn(Ljava/lang/String;)Z
    .locals 7
    .parameter "apn"

    .prologue
    .line 327
    const/4 v4, 0x0

    .line 328
    .local v4, ret:Z
    iget-object v6, p0, Lcom/android/settings_ex/ApnSettings;->hideApnList:[Ljava/lang/String;

    if-nez v6, :cond_0

    move v5, v4

    .line 336
    .end local v4           #ret:Z
    .local v5, ret:I
    :goto_0
    return v5

    .line 330
    .end local v5           #ret:I
    .restart local v4       #ret:Z
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->hideApnList:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 331
    .local v2, item:Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 332
    const/4 v4, 0x1

    .end local v2           #item:Ljava/lang/String;
    :cond_1
    move v5, v4

    .line 336
    .restart local v5       #ret:I
    goto :goto_0

    .line 330
    .end local v5           #ret:I
    .restart local v2       #item:Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private isLTEMode()Z
    .locals 6

    .prologue
    .line 922
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 923
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 924
    .local v2, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v1

    .line 926
    .local v1, currentNetworkRat:Ljava/lang/String;
    const-string v3, "ApnSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " isLTEMode() network="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    const-string v3, "LTE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method private isTetheringEnabled()Z
    .locals 15

    .prologue
    .line 907
    const/4 v12, 0x0

    .line 908
    .local v12, usbTethered:Z
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    .line 909
    .local v3, context:Landroid/content/Context;
    const-string v14, "connectivity"

    invoke-virtual {v3, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 910
    .local v2, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v11

    .line 911
    .local v11, tethered:[Ljava/lang/String;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v8

    .line 912
    .local v8, mUsbRegexs:[Ljava/lang/String;
    move-object v0, v11

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    move v5, v4

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v10, v0, v5

    .line 913
    .local v10, s:Ljava/lang/String;
    move-object v1, v8

    .local v1, arr$:[Ljava/lang/String;
    array-length v7, v1

    .local v7, len$:I
    const/4 v4, 0x0

    .end local v5           #i$:I
    .restart local v4       #i$:I
    :goto_1
    if-ge v4, v7, :cond_1

    aget-object v9, v1, v4

    .line 914
    .local v9, regex:Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v12, 0x1

    .line 913
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 912
    .end local v9           #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4           #i$:I
    .restart local v5       #i$:I
    goto :goto_0

    .line 917
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v7           #len$:I
    .end local v10           #s:Ljava/lang/String;
    :cond_2
    const-string v14, "wifi"

    invoke-virtual {v3, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/WifiManager;

    .line 918
    .local v13, wifiManager:Landroid/net/wifi/WifiManager;
    if-nez v12, :cond_3

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v14

    if-eqz v14, :cond_4

    :cond_3
    const/4 v14, 0x1

    :goto_2
    return v14

    :cond_4
    const/4 v14, 0x0

    goto :goto_2
.end method

.method private restoreDefaultApn()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 804
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 805
    sput-boolean v3, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnMode:Z

    .line 807
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;

    if-nez v0, :cond_0

    .line 808
    new-instance v0, Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/settings_ex/ApnSettings;Lcom/android/settings_ex/ApnSettings$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;

    .line 811
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings_ex/ApnSettings$RestoreApnProcessHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_2

    .line 813
    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Restore default APN Handler: Process Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    .line 815
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 816
    new-instance v0, Lcom/android/settings_ex/ApnSettings$RestoreApnProcessHandler;

    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings_ex/ApnSettings$RestoreApnUiHandler;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings_ex/ApnSettings$RestoreApnProcessHandler;-><init>(Lcom/android/settings_ex/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings_ex/ApnSettings$RestoreApnProcessHandler;

    .line 820
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings_ex/ApnSettings$RestoreApnProcessHandler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 822
    return v3
.end method

.method private setSelectedApnKey(Ljava/lang/String;)V
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 782
    iput-object p1, p0, Lcom/android/settings_ex/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 783
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 785
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 786
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "apn_id"

    iget-object v3, p0, Lcom/android/settings_ex/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    sget-object v2, Lcom/android/settings_ex/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 788
    return-void
.end method


# virtual methods
.method public isCarrierEnabledOnHome(Ljava/lang/String;)Z
    .locals 9
    .parameter "apn"

    .prologue
    .line 350
    const/4 v6, 0x1

    .line 351
    .local v6, carrierEnabledOnHome:Z
    const/4 v7, 0x0

    .line 354
    .local v7, cursor:Landroid/database/Cursor;
    new-instance v3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(apn = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 357
    .local v3, selection:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://nwkinfo/nwkinfo/carriers"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 359
    if-eqz v7, :cond_1

    .line 360
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 361
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    :cond_0
    const-string v0, "1"

    const-string v1, "carrier_enabled"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 364
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 371
    :cond_1
    if-eqz v7, :cond_2

    .line 372
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 375
    :cond_2
    :goto_0
    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCarrierEnabledOnHome: apn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " carrierEnabledOnHome = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    return v6

    .line 368
    :catch_0
    move-exception v8

    .line 369
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCarrierEnabledOnHome: exception caught  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 371
    if-eqz v7, :cond_2

    .line 372
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 371
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 372
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public isCarrierEnabledOnRoaming(Ljava/lang/String;)Z
    .locals 9
    .parameter "apn"

    .prologue
    .line 381
    const/4 v6, 0x1

    .line 382
    .local v6, carrierEnabledOnRoaming:Z
    const/4 v7, 0x0

    .line 385
    .local v7, cursor:Landroid/database/Cursor;
    new-instance v3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(apn = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 388
    .local v3, selection:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://nwkinfo/nwkinfo/carriers"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 390
    if-eqz v7, :cond_1

    .line 391
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 392
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    :cond_0
    const-string v0, "1"

    const-string v1, "carrier_enabled_roaming"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 395
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 402
    :cond_1
    if-eqz v7, :cond_2

    .line 403
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 406
    :cond_2
    :goto_0
    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCarrierEnabledOnRoaming: apn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " carrierEnabledOnRoaming = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    return v6

    .line 399
    :catch_0
    move-exception v8

    .line 400
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCarrierEnabledOnRoaming: exception caught  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 402
    if-eqz v7, :cond_2

    .line 403
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 402
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 403
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public isRoamingArea()Z
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mDelayRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 323
    :goto_0
    return-void

    .line 322
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 205
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 207
    const v5, 0x7f070011

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 208
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 210
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/ApnSettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 212
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/settings_ex/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    .line 215
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/ApnSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 217
    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, sales_code:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 219
    const-string v5, "ril.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 220
    :cond_0
    const-string v5, "VZW"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 221
    iput-boolean v8, p0, Lcom/android/settings_ex/ApnSettings;->isVzw:Z

    .line 226
    :cond_1
    iget-object v5, p0, Lcom/android/settings_ex/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.SIM_PROFILE_UPDATE_DONE"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    iget-object v5, p0, Lcom/android/settings_ex/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.CSC_CONNECTION_RESET_DONE"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/settings_ex/ApnSettings;->mTetherStateFilter:Landroid/content/IntentFilter;

    .line 236
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 237
    .local v4, tempIntent:Landroid/content/Intent;
    const-string v5, "keyString"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 238
    .local v2, strName:Ljava/lang/String;
    const-string v5, "vzw"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 239
    .local v3, strNameVzw:Ljava/lang/String;
    if-nez v2, :cond_5

    .line 240
    iput-boolean v9, p0, Lcom/android/settings_ex/ApnSettings;->isSprHidden:Z

    .line 243
    :goto_0
    if-nez v3, :cond_6

    .line 244
    iput-boolean v9, p0, Lcom/android/settings_ex/ApnSettings;->isVzwEditable:Z

    .line 248
    :goto_1
    const-string v5, "311480"

    const-string v6, "gsm.sim.operator.numeric"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "20404"

    const-string v6, "gsm.sim.operator.numeric"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 250
    :cond_2
    iput-boolean v8, p0, Lcom/android/settings_ex/ApnSettings;->isVzwSimEnable:Z

    .line 254
    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Setting_HideApnList"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 255
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Setting_HideApnList"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, hideApnString:Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/ApnSettings;->hideApnList:[Ljava/lang/String;

    .line 257
    iget-object v5, p0, Lcom/android/settings_ex/ApnSettings;->hideApnList:[Ljava/lang/String;

    if-nez v5, :cond_4

    .line 258
    new-array v5, v8, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/settings_ex/ApnSettings;->hideApnList:[Ljava/lang/String;

    .line 259
    iget-object v5, p0, Lcom/android/settings_ex/ApnSettings;->hideApnList:[Ljava/lang/String;

    aput-object v0, v5, v9

    .line 263
    .end local v0           #hideApnString:Ljava/lang/String;
    :cond_4
    return-void

    .line 242
    :cond_5
    iput-boolean v8, p0, Lcom/android/settings_ex/ApnSettings;->isSprHidden:Z

    goto :goto_0

    .line 246
    :cond_6
    iput-boolean v8, p0, Lcom/android/settings_ex/ApnSettings;->isVzwEditable:Z

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 890
    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_0

    .line 891
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 892
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0905b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 893
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 896
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    const/4 v7, 0x2

    const v6, 0x7f0905b0

    const v5, 0x7f02019c

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 630
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 631
    iput-object p1, p0, Lcom/android/settings_ex/ApnSettings;->mAPNMenu:Landroid/view/Menu;

    .line 632
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 633
    .local v0, sales_code:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 634
    const-string v1, "ril.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 636
    :cond_0
    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 637
    iget-boolean v1, p0, Lcom/android/settings_ex/ApnSettings;->isVzwEditable:Z

    if-eqz v1, :cond_4

    .line 638
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 671
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/settings_ex/ApnSettings;->isEmptyApnlist:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/settings_ex/ApnSettings;->isVzw:Z

    if-nez v1, :cond_3

    :cond_2
    iget-boolean v1, p0, Lcom/android/settings_ex/ApnSettings;->isVzwSimEnable:Z

    if-eqz v1, :cond_9

    .line 672
    :cond_3
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0905b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v7, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02019f

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 680
    :goto_1
    return v4

    .line 642
    :cond_4
    iget-boolean v1, p0, Lcom/android/settings_ex/ApnSettings;->isVzwSimEnable:Z

    if-eqz v1, :cond_5

    .line 643
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02019d

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 646
    :cond_5
    invoke-static {p0}, Lcom/android/settings_ex/Utils;->isSimMissing(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 647
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02019d

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 652
    :cond_6
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 657
    :cond_7
    const-string v1, "LGT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 658
    const-string v1, "3"

    const-string v2, "ril.simtype"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 659
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0905af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 664
    :cond_8
    iget-boolean v1, p0, Lcom/android/settings_ex/ApnSettings;->isSprHidden:Z

    if-nez v1, :cond_1

    .line 665
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0905af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 676
    :cond_9
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0905b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v7, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02019e

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 309
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 311
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 314
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 712
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 721
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 714
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/ApnSettings;->addNewApn()V

    goto :goto_0

    .line 718
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings_ex/ApnSettings;->restoreDefaultApn()Z

    goto :goto_0

    .line 712
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 296
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 298
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 299
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 301
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mDelayRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mDelayHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings;->mDelayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mDelayRunnable:Ljava/lang/Runnable;

    .line 305
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 751
    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange(): Preference - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 755
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/settings_ex/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    .line 778
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 744
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 745
    .local v0, pos:I
    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, v0

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 746
    .local v1, url:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 747
    const/4 v2, 0x1

    return v2
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 901
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 902
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 904
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    const/4 v1, 0x2

    .line 685
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 686
    iget-boolean v0, p0, Lcom/android/settings_ex/ApnSettings;->isEmptyApnlist:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/ApnSettings;->isVzw:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/ApnSettings;->isVzwSimEnable:Z

    if-eqz v0, :cond_3

    .line 687
    :cond_1
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02019f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 700
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 689
    :cond_3
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02019e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 267
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 269
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 270
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings;->mTetherStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 272
    sget-boolean v0, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnMode:Z

    if-nez v0, :cond_1

    .line 273
    invoke-direct {p0}, Lcom/android/settings_ex/ApnSettings;->fillList()V

    .line 284
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings_ex/ApnSettings;->isVzw:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/ApnSettings;->isVzwSimEnable:Z

    if-nez v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 286
    iput-boolean v2, p0, Lcom/android/settings_ex/ApnSettings;->isEmptyApnlist:Z

    .line 292
    :cond_0
    :goto_1
    return-void

    .line 275
    :cond_1
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 289
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/ApnSettings;->isEmptyApnlist:Z

    goto :goto_1
.end method
