.class public Lcom/android/settings_ex/SettingsTabActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsTabActivity.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;,
        Lcom/android/settings_ex/SettingsTabActivity$SettingsTabListener;
    }
.end annotation


# static fields
.field private static final EXTRA_CLEAR_UI_OPTIONS:Ljava/lang/String; = "settings:remove_ui_options"

.field private static final LOG_TAG:Ljava/lang/String; = "SettingsTabActivity"

.field private static mWifiSummaryId:I

.field private static sSalesCode:Ljava/lang/String;


# instance fields
.field private final MHS_REQUEST:I

.field private SETTINGS_FOR_RESTRICTED:[I

.field private edm:Landroid/app/enterprise/EnterpriseDeviceManager;

.field filter:Landroid/content/IntentFilter;

.field mAccountTabView:Landroid/view/View;

.field private mAuthenticatorHelper:Lcom/android/settings_ex/accounts/AuthenticatorHelper;

.field mConnectionTabView:Landroid/view/View;

.field private mDevelopmentPreferences:Landroid/content/SharedPreferences;

.field private mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field mDeviceTabView:Landroid/view/View;

.field private mFirstHeader:Landroid/preference/PreferenceActivity$Header;

.field protected mHeaderIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mListeningToAccountUpdates:Z

.field mMoreTabView:Landroid/view/View;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mTetheredData:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 132
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 146
    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity;->SETTINGS_FOR_RESTRICTED:[I

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity;->mHeaderIndexMap:Ljava/util/HashMap;

    .line 181
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity;->filter:Landroid/content/IntentFilter;

    .line 184
    iput v1, p0, Lcom/android/settings_ex/SettingsTabActivity;->MHS_REQUEST:I

    .line 185
    iput v1, p0, Lcom/android/settings_ex/SettingsTabActivity;->mTetheredData:I

    .line 193
    iput-object v2, p0, Lcom/android/settings_ex/SettingsTabActivity;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 194
    iput-object v2, p0, Lcom/android/settings_ex/SettingsTabActivity;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 1474
    new-instance v0, Lcom/android/settings_ex/SettingsTabActivity$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/SettingsTabActivity$3;-><init>(Lcom/android/settings_ex/SettingsTabActivity;)V

    iput-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void

    .line 146
    :array_0
    .array-data 0x4
        0xdet 0x4t 0xbt 0x7ft
        0xdft 0x4t 0xbt 0x7ft
        0xe1t 0x4t 0xbt 0x7ft
        0xe3t 0x4t 0xbt 0x7ft
        0xe8t 0x4t 0xbt 0x7ft
        0x2at 0x5t 0xbt 0x7ft
        0xf5t 0x4t 0xbt 0x7ft
        0xf3t 0x4t 0xbt 0x7ft
        0x12t 0x5t 0xbt 0x7ft
        0xft 0x5t 0xbt 0x7ft
        0x10t 0x5t 0xbt 0x7ft
        0x2et 0x5t 0xbt 0x7ft
        0xct 0x5t 0xbt 0x7ft
        0xdt 0x5t 0xbt 0x7ft
        0x3t 0x5t 0xbt 0x7ft
        0x2ct 0x5t 0xbt 0x7ft
        0xd7t 0x4t 0xbt 0x7ft
        0xd9t 0x4t 0xbt 0x7ft
        0x33t 0x5t 0xbt 0x7ft
        0x13t 0x5t 0xbt 0x7ft
        0x17t 0x5t 0xbt 0x7ft
        0x0t 0x5t 0xbt 0x7ft
    .end array-data
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/android/settings_ex/SettingsTabActivity;->sSalesCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 132
    sget v0, Lcom/android/settings_ex/SettingsTabActivity;->mWifiSummaryId:I

    return v0
.end method

.method static synthetic access$302(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 132
    sput p0, Lcom/android/settings_ex/SettingsTabActivity;->mWifiSummaryId:I

    return p0
.end method

.method private getVoiceControlIntent(Landroid/preference/PreferenceActivity$Header;)Z
    .locals 6
    .parameter "mHeader"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 765
    iget-object v2, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 766
    .local v2, voice_control_intent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 767
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 768
    .local v1, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 769
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v4, :cond_0

    .line 773
    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method private insertAccountsHeaders(Ljava/util/List;I)I
    .locals 17
    .parameter
    .parameter "headerIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 795
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/SettingsTabActivity;->mAuthenticatorHelper:Lcom/android/settings_ex/accounts/AuthenticatorHelper;

    invoke-virtual {v14}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;->getEnabledAccountTypes()[Ljava/lang/String;

    move-result-object v5

    .line 796
    .local v5, accountTypes:[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    array-length v14, v5

    invoke-direct {v3, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 797
    .local v3, accountHeaders:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    move-object v7, v5

    .local v7, arr$:[Ljava/lang/String;
    array-length v12, v7

    .local v12, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_0
    if-ge v10, v12, :cond_6

    aget-object v4, v7, v10

    .line 798
    .local v4, accountType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/SettingsTabActivity;->mAuthenticatorHelper:Lcom/android/settings_ex/accounts/AuthenticatorHelper;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0, v4}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 801
    .local v11, label:Ljava/lang/CharSequence;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v14

    const-string v15, "CscFeature_Common_MyPhonebookBrandName"

    invoke-virtual {v14, v15}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_0

    .line 802
    const-string v14, "com.android.tmo_myphonebook"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 803
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v14

    const-string v15, "CscFeature_Common_MyPhonebookBrandName"

    invoke-virtual {v14, v15}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 808
    :cond_0
    if-nez v11, :cond_1

    .line 797
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 812
    :cond_1
    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v6

    .line 813
    .local v6, accounts:[Landroid/accounts/Account;
    array-length v14, v6

    const/4 v15, 0x1

    if-ne v14, v15, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/SettingsTabActivity;->mAuthenticatorHelper:Lcom/android/settings_ex/accounts/AuthenticatorHelper;

    invoke-virtual {v14, v4}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;->hasAccountPreferences(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_4

    const/4 v13, 0x1

    .line 827
    .local v13, skipToAccount:Z
    :goto_2
    new-instance v2, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v2}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 828
    .local v2, accHeader:Landroid/preference/PreferenceActivity$Header;
    iput-object v11, v2, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 829
    iget-object v14, v2, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-nez v14, :cond_2

    .line 830
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    iput-object v14, v2, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    .line 832
    :cond_2
    if-eqz v13, :cond_5

    .line 833
    const v14, 0x7f09088c

    iput v14, v2, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 834
    const v14, 0x7f09088c

    iput v14, v2, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 835
    const-class v14, Lcom/android/settings_ex/accounts/AccountSyncSettings;

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v2, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 836
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    iput-object v14, v2, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 838
    iget-object v14, v2, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v15, "account_type"

    invoke-virtual {v14, v15, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    iget-object v14, v2, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v15, "account"

    const/16 v16, 0x0

    aget-object v16, v6, v16

    invoke-virtual/range {v14 .. v16}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 840
    iget-object v14, v2, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v15, "account"

    const/16 v16, 0x0

    aget-object v16, v6, v16

    invoke-virtual/range {v14 .. v16}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 855
    :cond_3
    :goto_3
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 813
    .end local v2           #accHeader:Landroid/preference/PreferenceActivity$Header;
    .end local v13           #skipToAccount:Z
    :cond_4
    const/4 v13, 0x0

    goto :goto_2

    .line 843
    .restart local v2       #accHeader:Landroid/preference/PreferenceActivity$Header;
    .restart local v13       #skipToAccount:Z
    :cond_5
    iput-object v11, v2, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    .line 844
    iput-object v11, v2, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    .line 845
    const-class v14, Lcom/android/settings_ex/accounts/ManageAccountsSettings;

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v2, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 846
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    iput-object v14, v2, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 847
    iget-object v14, v2, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v15, "account_type"

    invoke-virtual {v14, v15, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    iget-object v14, v2, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v15, "account_type"

    invoke-virtual {v14, v15, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsTabActivity;->isMultiPane()Z

    move-result v14

    if-nez v14, :cond_3

    .line 851
    iget-object v14, v2, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v15, "account_label"

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 859
    .end local v2           #accHeader:Landroid/preference/PreferenceActivity$Header;
    .end local v4           #accountType:Ljava/lang/String;
    .end local v6           #accounts:[Landroid/accounts/Account;
    .end local v11           #label:Ljava/lang/CharSequence;
    .end local v13           #skipToAccount:Z
    :cond_6
    new-instance v14, Lcom/android/settings_ex/SettingsTabActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/settings_ex/SettingsTabActivity$2;-><init>(Lcom/android/settings_ex/SettingsTabActivity;)V

    invoke-static {v3, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 866
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceActivity$Header;

    .line 867
    .local v8, header:Landroid/preference/PreferenceActivity$Header;
    add-int/lit8 v9, p2, 0x1

    .end local p2
    .local v9, headerIndex:I
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v0, v1, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move/from16 p2, v9

    .end local v9           #headerIndex:I
    .restart local p2
    goto :goto_4

    .line 869
    .end local v8           #header:Landroid/preference/PreferenceActivity$Header;
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings_ex/SettingsTabActivity;->mListeningToAccountUpdates:Z

    if-nez v14, :cond_8

    .line 870
    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v14, v0, v15, v1}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 871
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/settings_ex/SettingsTabActivity;->mListeningToAccountUpdates:Z

    .line 873
    :cond_8
    return p2
.end method

.method private isDocomoSettingsDisabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 777
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 779
    .local v0, packMgr:Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_1

    .line 780
    :try_start_0
    const-string v2, "com.nttdocomo.android.docomoset"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 782
    const-string v2, "com.nttdocomo.android.docomoset"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const-string v2, "com.nttdocomo.android.docomoset"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 791
    :cond_0
    :goto_0
    return v1

    .line 788
    :catch_0
    move-exception v1

    .line 791
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private needsDockSettings()Z
    .locals 2

    .prologue
    .line 877
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateHeaderList(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 449
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    iget-object v10, p0, Lcom/android/settings_ex/SettingsTabActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    const-string v11, "show"

    sget-object v12, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v13, "eng"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 452
    .local v9, showDev:Z
    const/4 v3, 0x0

    .line 454
    .local v3, i:I
    iget-object v10, p0, Lcom/android/settings_ex/SettingsTabActivity;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    .line 455
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_30

    .line 456
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    .line 458
    .local v1, header:Landroid/preference/PreferenceActivity$Header;
    iget-wide v10, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v4, v10

    .line 459
    .local v4, id:I
    const v10, 0x7f0b04ff

    if-ne v4, v10, :cond_4

    .line 460
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsTabActivity;->needsDockSettings()Z

    move-result v10

    if-nez v10, :cond_1

    .line 461
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 745
    :cond_1
    :goto_1
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/settings_ex/SettingsTabActivity;->SETTINGS_FOR_RESTRICTED:[I

    invoke-static {v10, v4}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v10

    if-nez v10, :cond_2

    .line 748
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 752
    :cond_2
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_0

    .line 754
    iget-object v10, p0, Lcom/android/settings_ex/SettingsTabActivity;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    if-nez v10, :cond_3

    invoke-static {v1}, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v10

    if-eqz v10, :cond_3

    .line 756
    iput-object v1, p0, Lcom/android/settings_ex/SettingsTabActivity;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    .line 758
    :cond_3
    iget-object v10, p0, Lcom/android/settings_ex/SettingsTabActivity;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 462
    :cond_4
    const v10, 0x7f0b0526

    if-eq v4, v10, :cond_5

    const v10, 0x7f0b052d

    if-ne v4, v10, :cond_6

    .line 463
    :cond_5
    invoke-static {p0, p1, v1}, Lcom/android/settings_ex/Utils;->updateHeaderToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Ljava/util/List;Landroid/preference/PreferenceActivity$Header;)Z

    goto :goto_1

    .line 464
    :cond_6
    const v10, 0x7f0b04df

    if-ne v4, v10, :cond_7

    .line 466
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "android.hardware.wifi"

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 467
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 469
    :cond_7
    const v10, 0x7f0b04e0

    if-ne v4, v10, :cond_8

    .line 483
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 485
    :cond_8
    const v10, 0x7f0b04e1

    if-ne v4, v10, :cond_9

    .line 487
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "android.hardware.bluetooth"

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 488
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 490
    :cond_9
    const v10, 0x7f0b04e3

    if-ne v4, v10, :cond_a

    .line 492
    const-string v10, "network_management"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v6

    .line 495
    .local v6, netManager:Landroid/os/INetworkManagementService;
    :try_start_0
    invoke-interface {v6}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v10

    if-nez v10, :cond_1

    .line 496
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 498
    :catch_0
    move-exception v10

    goto/16 :goto_1

    .line 501
    .end local v6           #netManager:Landroid/os/INetworkManagementService;
    :cond_a
    const v10, 0x7f0b04e5

    if-ne v4, v10, :cond_c

    .line 503
    const-string v10, "LGT"

    const-string v11, "ro.csc.sales_code"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-static {p0}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 505
    :cond_b
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 507
    :cond_c
    const v10, 0x7f0b04e6

    if-ne v4, v10, :cond_e

    .line 509
    const-string v10, "SKT"

    const-string v11, "ro.csc.sales_code"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-static {p0}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 511
    :cond_d
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 513
    :cond_e
    const v10, 0x7f0b04e7

    if-ne v4, v10, :cond_f

    .line 514
    const-string v10, "CTC"

    const-string v11, "ro.csc.sales_code"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 515
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 517
    :cond_f
    const v10, 0x7f0b0504

    if-eq v4, v10, :cond_1

    .line 521
    const v10, 0x7f0b0506

    if-eq v4, v10, :cond_1

    .line 525
    const v10, 0x7f0b0505

    if-eq v4, v10, :cond_1

    .line 530
    const v10, 0x7f0b04f4

    if-ne v4, v10, :cond_10

    .line 531
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 532
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 534
    :cond_10
    const v10, 0x7f0b04f6

    if-eq v4, v10, :cond_1

    .line 538
    const v10, 0x7f0b04fe

    if-eq v4, v10, :cond_1

    .line 542
    const v10, 0x7f0b0511

    if-ne v4, v10, :cond_11

    .line 544
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 546
    :cond_11
    const v10, 0x7f0b04d8

    if-ne v4, v10, :cond_12

    .line 553
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 573
    :cond_12
    const v10, 0x7f0b04d7

    if-ne v4, v10, :cond_13

    .line 575
    add-int/lit8 v2, v3, 0x1

    .line 576
    .local v2, headerIndex:I
    invoke-direct {p0, p1, v2}, Lcom/android/settings_ex/SettingsTabActivity;->insertAccountsHeaders(Ljava/util/List;I)I

    move-result v3

    .line 577
    goto/16 :goto_1

    .line 578
    .end local v2           #headerIndex:I
    :cond_13
    const v10, 0x7f0b0502

    if-ne v4, v10, :cond_14

    .line 580
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 582
    :cond_14
    const v10, 0x7f0b052c

    if-ne v4, v10, :cond_16

    .line 583
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v10

    if-eqz v10, :cond_15

    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 586
    :cond_15
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 588
    :cond_16
    const v10, 0x7f0b04dc

    if-ne v4, v10, :cond_18

    .line 589
    invoke-static {}, Lcom/android/settings_ex/Utils;->DisableCloud()Z

    move-result v10

    if-eqz v10, :cond_17

    .line 590
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 593
    :cond_17
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "com.sec.android.cloudagent"

    const/4 v12, 0x5

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 594
    :catch_1
    move-exception v0

    .line 595
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 598
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_18
    const v10, 0x7f0b0514

    if-ne v4, v10, :cond_19

    .line 599
    if-nez v9, :cond_1

    .line 600
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 602
    :cond_19
    const v10, 0x7f0b0516

    if-ne v4, v10, :cond_1a

    .line 603
    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 605
    .local v8, salesCode:Ljava/lang/String;
    const-string v10, "SPR"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "BST"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 607
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 609
    .end local v8           #salesCode:Ljava/lang/String;
    :cond_1a
    const v10, 0x7f0b0515

    if-ne v4, v10, :cond_1b

    .line 610
    const/4 v5, 0x1

    .line 612
    .local v5, isSprintDsa:Z
    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "com.sprint.dsa"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 618
    :goto_2
    if-nez v5, :cond_1

    .line 619
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 613
    :catch_2
    move-exception v0

    .line 614
    .restart local v0       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v5, 0x0

    goto :goto_2

    .line 621
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5           #isSprintDsa:Z
    :cond_1b
    const v10, 0x7f0b04f8

    if-ne v4, v10, :cond_1c

    .line 622
    const-string v10, "VZW"

    sget-object v11, Lcom/android/settings_ex/SettingsTabActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 624
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 626
    :cond_1c
    const v10, 0x7f0b04f7

    if-eq v4, v10, :cond_1

    .line 630
    const v10, 0x7f0b04fc

    if-ne v4, v10, :cond_1d

    .line 632
    :try_start_3
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "com.sec.android.app.safetyassurance"

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    .line 633
    :catch_3
    move-exception v0

    .line 634
    .restart local v0       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 636
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1d
    const v10, 0x7f0b04ea

    if-ne v4, v10, :cond_20

    .line 639
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "android.hardware.nfc"

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1e

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1f

    .line 641
    :cond_1e
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 643
    :cond_1f
    const/4 v7, 0x0

    .line 645
    .local v7, nfcsummary:Ljava/lang/CharSequence;
    :try_start_4
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "com.android.settings_ex.nfcsummary"

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getCSCPackageItemText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 646
    if-eqz v7, :cond_1

    .line 647
    iput-object v7, v1, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 648
    const/4 v10, 0x0

    iput v10, v1, Landroid/preference/PreferenceActivity$Header;->summaryRes:I
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_1

    .line 650
    :catch_4
    move-exception v0

    .line 651
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v10, "CSCAppRes"

    const-string v11, "No data for CSCAppResourceUri"

    invoke-static {v10, v11}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 654
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v7           #nfcsummary:Ljava/lang/CharSequence;
    :cond_20
    const v10, 0x7f0b04eb

    if-ne v4, v10, :cond_22

    .line 656
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "android.hardware.nfc"

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_21

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 660
    :cond_21
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 662
    :cond_22
    const v10, 0x7f0b04ed

    if-ne v4, v10, :cond_23

    .line 668
    iget-object v10, p0, Lcom/android/settings_ex/SettingsTabActivity;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/settings_ex/SettingsTabActivity;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v10}, Landroid/app/enterprise/RestrictionPolicy;->isWifiDirectAllowed()Z

    move-result v10

    if-nez v10, :cond_1

    .line 669
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 672
    :cond_23
    const v10, 0x7f0b04f0

    if-ne v4, v10, :cond_26

    .line 673
    const-string v10, "DCM"

    const-string v11, "ro.csc.sales_code"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_24

    invoke-direct {p0}, Lcom/android/settings_ex/SettingsTabActivity;->isDocomoSettingsDisabled()Z

    move-result v10

    if-eqz v10, :cond_25

    .line 674
    :cond_24
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 678
    :cond_25
    :try_start_5
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "com.nttdocomo.android.docomoset"

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_1

    .line 679
    :catch_5
    move-exception v0

    .line 680
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 683
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_26
    const v10, 0x7f0b04db

    if-ne v4, v10, :cond_28

    .line 684
    const-string v10, "DCM"

    const-string v11, "ro.csc.sales_code"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_27

    .line 685
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 689
    :cond_27
    :try_start_6
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "com.nttdocomo.android.cloudset"

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_1

    .line 690
    :catch_6
    move-exception v0

    .line 691
    .restart local v0       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 696
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_28
    const v10, 0x7f0b04e2

    if-ne v4, v10, :cond_29

    .line 697
    const-string v10, "VZW"

    sget-object v11, Lcom/android/settings_ex/SettingsTabActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 698
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 701
    :cond_29
    const v10, 0x7f0b04f1

    if-ne v4, v10, :cond_2a

    .line 704
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 706
    :cond_2a
    const v10, 0x7f0b0523

    if-ne v4, v10, :cond_2b

    .line 709
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 711
    :cond_2b
    const v10, 0x7f0b04fd

    if-ne v4, v10, :cond_2c

    .line 713
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 715
    :cond_2c
    const v10, 0x7f0b04e4

    if-ne v4, v10, :cond_2d

    .line 718
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 720
    :cond_2d
    const v10, 0x7f0b04fb

    if-ne v4, v10, :cond_2e

    .line 721
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 723
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 725
    :cond_2e
    const v10, 0x7f0b04fa

    if-ne v4, v10, :cond_2f

    .line 728
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 730
    :cond_2f
    const v10, 0x7f0b0507

    if-ne v4, v10, :cond_31

    .line 731
    invoke-direct {p0, v1}, Lcom/android/settings_ex/SettingsTabActivity;->getVoiceControlIntent(Landroid/preference/PreferenceActivity$Header;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 732
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 762
    .end local v1           #header:Landroid/preference/PreferenceActivity$Header;
    .end local v4           #id:I
    :cond_30
    return-void

    .line 735
    .restart local v1       #header:Landroid/preference/PreferenceActivity$Header;
    .restart local v4       #id:I
    :cond_31
    const v10, 0x7f0b052b

    if-ne v4, v10, :cond_32

    .line 736
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 737
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 739
    :cond_32
    const v10, 0x7f0b04ec

    if-ne v4, v10, :cond_1

    .line 740
    const-string v10, "ALL"

    const-string v11, "ALL"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 741
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 1376
    invoke-static {p0}, Lcom/android/settings_ex/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1379
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsTabActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "GuideFragment"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/guide/GuideFragmentCallback;

    .line 1382
    .local v0, guide:Lcom/android/settings_ex/guide/GuideFragmentCallback;
    if-eqz v0, :cond_2

    .line 1384
    invoke-interface {v0, p1}, Lcom/android/settings_ex/guide/GuideFragmentCallback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 1388
    .end local v0           #guide:Lcom/android/settings_ex/guide/GuideFragmentCallback;
    :goto_0
    return v1

    .line 1384
    .restart local v0       #guide:Lcom/android/settings_ex/guide/GuideFragmentCallback;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1388
    .end local v0           #guide:Lcom/android/settings_ex/guide/GuideFragmentCallback;
    :cond_2
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 1
    .parameter "accounts"

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity;->mAuthenticatorHelper:Lcom/android/settings_ex/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 1368
    iget-object v0, p0, Lcom/android/settings_ex/SettingsTabActivity;->mAuthenticatorHelper:Lcom/android/settings_ex/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    .line 1369
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsTabActivity;->invalidateHeaders()V

    .line 1370
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 1435
    if-nez p1, :cond_0

    .line 1436
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsTabActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1437
    .local v0, listAdapter:Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 1438
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 1439
    check-cast v0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;

    .end local v0           #listAdapter:Landroid/widget/ListAdapter;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->setSoftapEnabled(Z)V

    .line 1445
    :cond_0
    :goto_0
    return-void

    .line 1441
    .restart local v0       #listAdapter:Landroid/widget/ListAdapter;
    :cond_1
    check-cast v0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;

    .end local v0           #listAdapter:Landroid/widget/ListAdapter;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->setSoftapEnabled(Z)V

    goto :goto_0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .parameter "fragment"

    .prologue
    .line 1411
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onAttachFragment(Landroid/app/Fragment;)V

    .line 1414
    instance-of v0, p1, Lcom/android/settings_ex/guide/GuideFragment;

    if-eqz v0, :cond_0

    .line 1415
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsTabActivity;->setEnablerForGuide()V

    .line 1418
    :cond_0
    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, headers:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const v1, 0x7f07001f

    .line 428
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 442
    invoke-virtual {p0, v1, p1}, Lcom/android/settings_ex/SettingsTabActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 445
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settings_ex/SettingsTabActivity;->updateHeaderList(Ljava/util/List;)V

    .line 446
    return-void

    .line 430
    :pswitch_0
    invoke-virtual {p0, v1, p1}, Lcom/android/settings_ex/SettingsTabActivity;->loadHeadersFromResource(ILjava/util/List;)V

    goto :goto_0

    .line 433
    :pswitch_1
    const v0, 0x7f070026

    invoke-virtual {p0, v0, p1}, Lcom/android/settings_ex/SettingsTabActivity;->loadHeadersFromResource(ILjava/util/List;)V

    goto :goto_0

    .line 436
    :pswitch_2
    const v0, 0x7f070008

    invoke-virtual {p0, v0, p1}, Lcom/android/settings_ex/SettingsTabActivity;->loadHeadersFromResource(ILjava/util/List;)V

    goto :goto_0

    .line 439
    :pswitch_3
    const v0, 0x7f070047

    invoke-virtual {p0, v0, p1}, Lcom/android/settings_ex/SettingsTabActivity;->loadHeadersFromResource(ILjava/util/List;)V

    goto :goto_0

    .line 428
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 6
    .parameter "fragmentName"
    .parameter "args"
    .parameter "titleRes"
    .parameter "shortTitleRes"

    .prologue
    const/4 v5, 0x1

    .line 373
    invoke-super {p0, p1, p2, p3, p4}, Landroid/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v1

    .line 377
    .local v1, intent:Landroid/content/Intent;
    const-class v4, Lcom/android/settings_ex/DataUsageSummary;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lcom/android/settings_ex/UserDictionarySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lcom/android/settings_ex/deviceinfo/Memory;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lcom/android/settings_ex/WirelessSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lcom/android/settings_ex/SoundSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lcom/android/settings_ex/PrivacySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lcom/android/settings_ex/vpn2/VpnSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lcom/android/settings_ex/SecuritySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lcom/android/settings_ex/applications/InstalledAppDetails;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 391
    :cond_0
    const-string v4, "settings:remove_ui_options"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 395
    :cond_1
    invoke-static {p0}, Lcom/android/settings_ex/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 397
    const-class v4, Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 398
    .local v3, isWifiSettingsFragment:Z
    const-class v4, Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 400
    .local v2, isBtSettingsFragment:Z
    if-nez v3, :cond_2

    if-eqz v2, :cond_3

    .line 401
    :cond_2
    const-string v4, "settings:guide_is_on"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 404
    :cond_3
    const/4 v0, 0x0

    .line 406
    .local v0, guideExtra:Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 407
    const-string v0, "wifi"

    .line 415
    :cond_4
    :goto_0
    const-string v4, "settings:guide_mode"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    .end local v0           #guideExtra:Ljava/lang/String;
    .end local v2           #isBtSettingsFragment:Z
    .end local v3           #isWifiSettingsFragment:Z
    :cond_5
    const-class v4, Lcom/android/settings_ex/SubSettings;

    invoke-virtual {v1, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 420
    return-object v1

    .line 409
    .restart local v0       #guideExtra:Ljava/lang/String;
    .restart local v2       #isBtSettingsFragment:Z
    .restart local v3       #isWifiSettingsFragment:Z
    :cond_6
    if-nez v2, :cond_7

    const-class v4, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 411
    :cond_7
    const-string v0, "bt"

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const v3, 0x7f0b001e

    .line 294
    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/SettingsTabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 295
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    add-int/lit8 v1, v2, -0x3

    .line 296
    .local v1, mTextSize:I
    iget-object v2, p0, Lcom/android/settings_ex/SettingsTabActivity;->mConnectionTabView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 297
    iget-object v2, p0, Lcom/android/settings_ex/SettingsTabActivity;->mDeviceTabView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 298
    iget-object v2, p0, Lcom/android/settings_ex/SettingsTabActivity;->mAccountTabView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 299
    iget-object v2, p0, Lcom/android/settings_ex/SettingsTabActivity;->mMoreTabView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 301
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 302
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const v8, 0x7f0b001d

    const v7, 0x7f040008

    const v6, 0x7f0b001e

    const/4 v5, 0x0

    .line 200
    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings_ex/SettingsTabActivity;->sSalesCode:Ljava/lang/String;

    .line 201
    new-instance v3, Lcom/android/settings_ex/accounts/AuthenticatorHelper;

    invoke-direct {v3}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;-><init>()V

    iput-object v3, p0, Lcom/android/settings_ex/SettingsTabActivity;->mAuthenticatorHelper:Lcom/android/settings_ex/accounts/AuthenticatorHelper;

    .line 202
    iget-object v3, p0, Lcom/android/settings_ex/SettingsTabActivity;->mAuthenticatorHelper:Lcom/android/settings_ex/accounts/AuthenticatorHelper;

    invoke-virtual {v3, p0}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 203
    iget-object v3, p0, Lcom/android/settings_ex/SettingsTabActivity;->mAuthenticatorHelper:Lcom/android/settings_ex/accounts/AuthenticatorHelper;

    invoke-virtual {v3, p0, v5}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    .line 205
    const-string v3, "development"

    invoke-virtual {p0, v3, v4}, Lcom/android/settings_ex/SettingsTabActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/SettingsTabActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 218
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 222
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/settings_ex/guide/GuideFragment;->deployGuide(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 225
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 227
    .local v0, bar:Landroid/app/ActionBar;
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 228
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 229
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 231
    const-string v3, "window"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/SettingsTabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 232
    .local v1, display:Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    add-int/lit8 v2, v3, -0x3

    .line 234
    .local v2, mTextSize:I
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsTabActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/SettingsTabActivity;->mConnectionTabView:Landroid/view/View;

    .line 235
    iget-object v3, p0, Lcom/android/settings_ex/SettingsTabActivity;->mConnectionTabView:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f020225

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 236
    iget-object v3, p0, Lcom/android/settings_ex/SettingsTabActivity;->mConnectionTabView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090a7f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 237
    iget-object v3, p0, Lcom/android/settings_ex/SettingsTabActivity;->mConnectionTabView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 238
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v3

    new-instance v4, Lcom/android/settings_ex/SettingsTabActivity$SettingsTabListener;

    invoke-direct {v4, p0, v5}, Lcom/android/settings_ex/SettingsTabActivity$SettingsTabListener;-><init>(Lcom/android/settings_ex/SettingsTabActivity;Lcom/android/settings_ex/SettingsTabActivity$1;)V

    invoke-virtual {v3, v4}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/SettingsTabActivity;->mConnectionTabView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 242
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsTabActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/SettingsTabActivity;->mDeviceTabView:Landroid/view/View;

    .line 243
    iget-object v3, p0, Lcom/android/settings_ex/SettingsTabActivity;->mDeviceTabView:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f020226

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 244
    iget-object v3, p0, Lcom/android/settings_ex/SettingsTabActivity;->mDeviceTabView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0901f7

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 245
    iget-object v3, p0, Lcom/android/settings_ex/SettingsTabActivity;->mDeviceTabView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 246
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v3

    new-instance v4, Lcom/android/settings_ex/SettingsTabActivity$SettingsTabListener;

    invoke-direct {v4, p0, v5}, Lcom/android/settings_ex/SettingsTabActivity$SettingsTabListener;-><init>(Lcom/android/settings_ex/SettingsTabActivity;Lcom/android/settings_ex/SettingsTabActivity$1;)V

    invoke-virtual {v3, v4}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/SettingsTabActivity;->mDeviceTabView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 250
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsTabActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/SettingsTabActivity;->mAccountTabView:Landroid/view/View;

    .line 251
    iget-object v3, p0, Lcom/android/settings_ex/SettingsTabActivity;->mAccountTabView:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f020223

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 252
    iget-object v3, p0, Lcom/android/settings_ex/SettingsTabActivity;->mAccountTabView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0904d4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 253
    iget-object v3, p0, Lcom/android/settings_ex/SettingsTabActivity;->mAccountTabView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 254
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v3

    new-instance v4, Lcom/android/settings_ex/SettingsTabActivity$SettingsTabListener;

    invoke-direct {v4, p0, v5}, Lcom/android/settings_ex/SettingsTabActivity$SettingsTabListener;-><init>(Lcom/android/settings_ex/SettingsTabActivity;Lcom/android/settings_ex/SettingsTabActivity$1;)V

    invoke-virtual {v3, v4}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/SettingsTabActivity;->mAccountTabView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 258
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsTabActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/SettingsTabActivity;->mMoreTabView:Landroid/view/View;

    .line 259
    iget-object v3, p0, Lcom/android/settings_ex/SettingsTabActivity;->mMoreTabView:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f020228

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 260
    iget-object v3, p0, Lcom/android/settings_ex/SettingsTabActivity;->mMoreTabView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0902b9

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 261
    iget-object v3, p0, Lcom/android/settings_ex/SettingsTabActivity;->mMoreTabView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 262
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v3

    new-instance v4, Lcom/android/settings_ex/SettingsTabActivity$SettingsTabListener;

    invoke-direct {v4, p0, v5}, Lcom/android/settings_ex/SettingsTabActivity$SettingsTabListener;-><init>(Lcom/android/settings_ex/SettingsTabActivity;Lcom/android/settings_ex/SettingsTabActivity$1;)V

    invoke-virtual {v3, v4}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/SettingsTabActivity;->mMoreTabView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 266
    const-string v3, "enterprise_policy"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/SettingsTabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v3, p0, Lcom/android/settings_ex/SettingsTabActivity;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 267
    iget-object v3, p0, Lcom/android/settings_ex/SettingsTabActivity;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/SettingsTabActivity;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 269
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 350
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 351
    iget-boolean v0, p0, Lcom/android/settings_ex/SettingsTabActivity;->mListeningToAccountUpdates:Z

    if-eqz v0, :cond_0

    .line 352
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 354
    :cond_0
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1394
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1397
    .local v0, retval:Z
    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/settings_ex/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x6f

    if-ne p1, v1, :cond_0

    .line 1402
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsTabActivity;->finish()V

    .line 1403
    const/4 v0, 0x1

    .line 1406
    :cond_0
    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 358
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 361
    invoke-static {p0, p1}, Lcom/android/settings_ex/guide/GuideFragment;->deployGuide(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 363
    invoke-static {p0}, Lcom/android/settings_ex/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsTabActivity;->setEnablerForGuide()V

    .line 368
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 332
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 334
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsTabActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 335
    .local v0, listAdapter:Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 336
    check-cast v0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;

    .end local v0           #listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->pause()V

    .line 339
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/SettingsTabActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/settings_ex/SettingsTabActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 341
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/SettingsTabActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 346
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 306
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 308
    new-instance v1, Lcom/android/settings_ex/SettingsTabActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/SettingsTabActivity$1;-><init>(Lcom/android/settings_ex/SettingsTabActivity;)V

    iput-object v1, p0, Lcom/android/settings_ex/SettingsTabActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 314
    iget-object v1, p0, Lcom/android/settings_ex/SettingsTabActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/settings_ex/SettingsTabActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 317
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsTabActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 318
    .local v0, listAdapter:Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 319
    check-cast v0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;

    .end local v0           #listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->resume()V

    .line 321
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsTabActivity;->invalidateHeaders()V

    .line 328
    return-void
.end method

.method public setEnablerForGuide()V
    .locals 1

    .prologue
    .line 1426
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsTabActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsTabActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;

    if-eqz v0, :cond_0

    .line 1428
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsTabActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;->setEnablersForGuide(Lcom/android/settings_ex/SettingsTabActivity;)V

    .line 1430
    :cond_0
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .parameter "adapter"

    .prologue
    .line 1357
    if-nez p1, :cond_0

    .line 1358
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1362
    :goto_0
    return-void

    .line 1360
    :cond_0
    new-instance v0, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsTabActivity;->getHeaders()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/SettingsTabActivity;->mAuthenticatorHelper:Lcom/android/settings_ex/accounts/AuthenticatorHelper;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings_ex/SettingsTabActivity$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings_ex/accounts/AuthenticatorHelper;)V

    invoke-super {p0, v0}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public updateHotspotSSID()V
    .locals 10

    .prologue
    .line 1447
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1449
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    const-string v7, "wifi"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/SettingsTabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1451
    .local v0, TempWifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 1452
    const-string v7, ""

    iget-object v8, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1453
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1454
    .local v2, cr:Landroid/content/ContentResolver;
    const-string v7, "SettingsTabActivity"

    const-string v8, "updateHotspotS"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    const-string v7, "chameleon_ssid"

    invoke-static {v2, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1458
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    .line 1459
    .local v6, wifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {}, Landroid/net/wifi/WifiInfo;->getMacAddressFromFile()Ljava/lang/String;

    move-result-object v4

    .line 1460
    .local v4, mac:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 1461
    const-string v7, ":"

    const-string v8, ""

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1462
    .local v5, temp:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    .line 1463
    .local v3, len:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    add-int/lit8 v9, v3, -0x3

    invoke-virtual {v5, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1468
    .end local v3           #len:I
    .end local v5           #temp:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 1470
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v4           #mac:Ljava/lang/String;
    .end local v6           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_0
    return-void

    .line 1465
    .restart local v2       #cr:Landroid/content/ContentResolver;
    .restart local v4       #mac:Ljava/lang/String;
    .restart local v6       #wifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_1
    const-string v7, "SettingsTabActivity"

    const-string v8, "MAC read fail"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
