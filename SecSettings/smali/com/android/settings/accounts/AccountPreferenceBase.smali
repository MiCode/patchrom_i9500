.class Lcom/android/settings_ex/accounts/AccountPreferenceBase;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "AccountPreferenceBase.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# static fields
.field public static final ACCOUNT_TYPES_FILTER_KEY:Ljava/lang/String; = "account_types"

.field public static final AUTHORITIES_FILTER_KEY:Ljava/lang/String; = "authorities"

.field protected static final TAG:Ljava/lang/String; = "AccountSettings"


# instance fields
.field private mAccountTypeToAuthorities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAuthenticatorHelper:Lcom/android/settings_ex/accounts/AuthenticatorHelper;

.field private mDateFormat:Ljava/text/DateFormat;

.field private final mHandler:Landroid/os/Handler;

.field private mStatusChangeListenerHandle:Ljava/lang/Object;

.field private mSyncStatusObserver:Landroid/content/SyncStatusObserver;

.field private mTimeFormat:Ljava/text/DateFormat;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->mHandler:Landroid/os/Handler;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    .line 63
    new-instance v0, Lcom/android/settings_ex/accounts/AuthenticatorHelper;

    invoke-direct {v0}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settings_ex/accounts/AuthenticatorHelper;

    .line 115
    new-instance v0, Lcom/android/settings_ex/accounts/AccountPreferenceBase$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/accounts/AccountPreferenceBase$1;-><init>(Lcom/android/settings_ex/accounts/AccountPreferenceBase;)V

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/accounts/AccountPreferenceBase;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addFacebookSSORetryPreference(Landroid/preference/PreferenceScreen;Landroid/content/Context;)V
    .locals 7
    .parameter "pref"
    .parameter "mContext"

    .prologue
    .line 257
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    const-string v5, "com.facebook.auth.login"

    invoke-virtual {v4, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 258
    .local v0, accounts:[Landroid/accounts/Account;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    const-string v5, "com.sec.android.app.sns3.facebook"

    invoke-virtual {v4, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 260
    .local v1, accounts2:[Landroid/accounts/Account;
    array-length v4, v0

    if-lez v4, :cond_0

    array-length v4, v1

    if-nez v4, :cond_0

    .line 261
    const-string v4, "AccountSettings"

    const-string v5, "Facebook SSO is Failed."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 264
    .local v2, facebookSSORetry:Landroid/preference/PreferenceScreen;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 265
    .local v3, mIntent:Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.sec.android.app.sns3"

    const-string v6, "com.sec.android.app.sns3.auth.sp.facebook.SnsAccountFbAuthSSOActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 266
    const-string v4, "facebookSSORetry"

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 267
    const v4, 0x7f091081

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 268
    const v4, 0x7f091082

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 269
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 270
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceGroup;->addItemFromInflater(Landroid/preference/Preference;)V

    .line 272
    .end local v2           #facebookSSORetry:Landroid/preference/PreferenceScreen;
    .end local v3           #mIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private addSamsungBackupPreference(Landroid/preference/PreferenceScreen;Landroid/content/Context;)V
    .locals 6
    .parameter "pref"
    .parameter "mContext"

    .prologue
    .line 152
    const-string v3, "com.sec.android.sCloudBackupApp"

    .line 155
    .local v3, samsungbackupPackage:Ljava/lang/String;
    const/4 v1, 0x0

    .line 156
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 157
    if-eqz v1, :cond_0

    .line 158
    const-string v4, "AccountSettings"

    const-string v5, "Samsung Backup is Installed."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 161
    .local v2, samsungBackup:Landroid/preference/PreferenceScreen;
    const-string v4, "samsungbackup"

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 162
    const v4, 0x7f090fa8

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 163
    new-instance v4, Lcom/android/settings_ex/accounts/AccountPreferenceBase$2;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/accounts/AccountPreferenceBase$2;-><init>(Lcom/android/settings_ex/accounts/AccountPreferenceBase;)V

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 173
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceGroup;->addItemFromInflater(Landroid/preference/Preference;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .end local v2           #samsungBackup:Landroid/preference/PreferenceScreen;
    :cond_0
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 177
    const-string v4, "AccountSettings"

    const-string v5, "Samsung Backup is NOT Installed"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private addSamsungRestorePreference(Landroid/preference/PreferenceScreen;Landroid/content/Context;)V
    .locals 6
    .parameter "pref"
    .parameter "mContext"

    .prologue
    .line 187
    const-string v3, "com.sec.android.sCloudBackupApp"

    .line 190
    .local v3, samsungbackupPackage:Ljava/lang/String;
    const/4 v1, 0x0

    .line 191
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 192
    if-eqz v1, :cond_0

    .line 193
    const-string v4, "AccountSettings"

    const-string v5, "Samsung Restore is Installed."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 196
    .local v2, samsungBackup:Landroid/preference/PreferenceScreen;
    const-string v4, "samsungrestore"

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 197
    const v4, 0x7f090fa9

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 198
    new-instance v4, Lcom/android/settings_ex/accounts/AccountPreferenceBase$3;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/accounts/AccountPreferenceBase$3;-><init>(Lcom/android/settings_ex/accounts/AccountPreferenceBase;)V

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 208
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceGroup;->addItemFromInflater(Landroid/preference/Preference;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .end local v2           #samsungBackup:Landroid/preference/PreferenceScreen;
    :cond_0
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 212
    const-string v4, "AccountSettings"

    const-string v5, "Samsung Restore is NOT Installed"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private addSamsungStorageUsagePreference(Landroid/preference/PreferenceScreen;Landroid/content/Context;)V
    .locals 6
    .parameter "pref"
    .parameter "mContext"

    .prologue
    .line 222
    const-string v3, "com.sec.android.scloud.quota"

    .line 225
    .local v3, samsungquotaPackage:Ljava/lang/String;
    const/4 v1, 0x0

    .line 226
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 227
    if-eqz v1, :cond_0

    .line 228
    const-string v4, "AccountSettings"

    const-string v5, "Samsung Storage usage is Installed."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 231
    .local v2, samsungQuota:Landroid/preference/PreferenceScreen;
    const-string v4, "samsungstorageusage"

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 232
    const v4, 0x7f090fa6

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 233
    new-instance v4, Lcom/android/settings_ex/accounts/AccountPreferenceBase$4;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/accounts/AccountPreferenceBase$4;-><init>(Lcom/android/settings_ex/accounts/AccountPreferenceBase;)V

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 243
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceGroup;->addItemFromInflater(Landroid/preference/Preference;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    .end local v2           #samsungQuota:Landroid/preference/PreferenceScreen;
    :cond_0
    :goto_0
    return-void

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 247
    const-string v4, "AccountSettings"

    const-string v5, "Samsung Storage usage is NOT Installed"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 17
    .parameter "accountType"
    .parameter "parent"

    .prologue
    .line 281
    const/4 v11, 0x0

    .line 282
    .local v11, prefs:Landroid/preference/PreferenceScreen;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settings_ex/accounts/AuthenticatorHelper;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;->containsAccountType(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 283
    const/4 v6, 0x0

    .line 285
    .local v6, desc:Landroid/accounts/AuthenticatorDescription;
    const/4 v2, 0x0

    .line 291
    .local v2, addFacebookSSO:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settings_ex/accounts/AuthenticatorHelper;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;->getAccountTypeDescription(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v6

    .line 294
    if-eqz v6, :cond_1

    iget v13, v6, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    if-eqz v13, :cond_1

    .line 295
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    iget-object v14, v6, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/ContextWrapper;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 298
    .local v3, authContext:Landroid/content/Context;
    const/4 v9, 0x1

    .line 299
    .local v9, isMatch:Z
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 300
    .local v10, preferenceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v13

    iget v14, v6, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v15

    invoke-virtual {v13, v3, v14, v15}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 303
    .local v4, authPrefScreen:Landroid/preference/PreferenceScreen;
    const/4 v8, 0x0

    .local v8, i:I
    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v5

    .local v5, count:I
    :goto_0
    if-ge v8, v5, :cond_4

    .line 304
    invoke-virtual {v4, v8}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 305
    .local v1, accountPref:Landroid/preference/Preference;
    instance-of v13, v1, Landroid/preference/PreferenceCategory;

    if-eqz v13, :cond_0

    .line 306
    new-instance v12, Landroid/preference/PreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 307
    .local v12, tmpPref:Landroid/preference/PreferenceCategory;
    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 308
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    .end local v12           #tmpPref:Landroid/preference/PreferenceCategory;
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 309
    :cond_0
    instance-of v13, v1, Landroid/preference/PreferenceScreen;

    if-eqz v13, :cond_2

    .line 310
    new-instance v12, Landroid/preference/PreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 311
    .local v12, tmpPref:Landroid/preference/PreferenceScreen;
    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 312
    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v1}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 314
    invoke-virtual {v1}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 315
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 353
    .end local v1           #accountPref:Landroid/preference/Preference;
    .end local v3           #authContext:Landroid/content/Context;
    .end local v4           #authPrefScreen:Landroid/preference/PreferenceScreen;
    .end local v5           #count:I
    .end local v8           #i:I
    .end local v9           #isMatch:Z
    .end local v10           #preferenceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    .end local v12           #tmpPref:Landroid/preference/PreferenceScreen;
    :catch_0
    move-exception v7

    .line 354
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v13, "AccountSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Couldn\'t load preferences.xml file from "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v6, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    .end local v2           #addFacebookSSO:Z
    .end local v6           #desc:Landroid/accounts/AuthenticatorDescription;
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    :goto_2
    return-object v11

    .line 316
    .restart local v1       #accountPref:Landroid/preference/Preference;
    .restart local v2       #addFacebookSSO:Z
    .restart local v3       #authContext:Landroid/content/Context;
    .restart local v4       #authPrefScreen:Landroid/preference/PreferenceScreen;
    .restart local v5       #count:I
    .restart local v6       #desc:Landroid/accounts/AuthenticatorDescription;
    .restart local v8       #i:I
    .restart local v9       #isMatch:Z
    .restart local v10       #preferenceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    :cond_2
    :try_start_1
    instance-of v13, v1, Landroid/preference/Preference;

    if-eqz v13, :cond_3

    .line 317
    new-instance v12, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 318
    .local v12, tmpPref:Landroid/preference/Preference;
    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 319
    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v1}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 321
    invoke-virtual {v1}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 322
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 355
    .end local v1           #accountPref:Landroid/preference/Preference;
    .end local v3           #authContext:Landroid/content/Context;
    .end local v4           #authPrefScreen:Landroid/preference/PreferenceScreen;
    .end local v5           #count:I
    .end local v8           #i:I
    .end local v9           #isMatch:Z
    .end local v10           #preferenceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    .end local v12           #tmpPref:Landroid/preference/Preference;
    :catch_1
    move-exception v7

    .line 356
    .local v7, e:Landroid/content/res/Resources$NotFoundException;
    const-string v13, "AccountSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Couldn\'t load preferences.xml file from "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v6, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 324
    .end local v7           #e:Landroid/content/res/Resources$NotFoundException;
    .restart local v1       #accountPref:Landroid/preference/Preference;
    .restart local v3       #authContext:Landroid/content/Context;
    .restart local v4       #authPrefScreen:Landroid/preference/PreferenceScreen;
    .restart local v5       #count:I
    .restart local v8       #i:I
    .restart local v9       #isMatch:Z
    .restart local v10       #preferenceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    :cond_3
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 328
    .end local v1           #accountPref:Landroid/preference/Preference;
    :cond_4
    const/4 v13, 0x1

    if-ne v9, v13, :cond_5

    .line 329
    move-object/from16 v11, p2

    .line 330
    const/4 v8, 0x0

    :try_start_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_3
    if-ge v8, v5, :cond_5

    .line 331
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 332
    .restart local v1       #accountPref:Landroid/preference/Preference;
    invoke-virtual {v11, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 330
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 338
    .end local v1           #accountPref:Landroid/preference/Preference;
    :cond_5
    const-string v13, "com.osp.app.signin"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 341
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v13}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->addSamsungStorageUsagePreference(Landroid/preference/PreferenceScreen;Landroid/content/Context;)V

    .line 342
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v13}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->addSamsungBackupPreference(Landroid/preference/PreferenceScreen;Landroid/content/Context;)V

    .line 343
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v13}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->addSamsungRestorePreference(Landroid/preference/PreferenceScreen;Landroid/content/Context;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2
.end method

.method protected formatSyncDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .parameter "date"

    .prologue
    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->mTimeFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v5, p0, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    if-nez v5, :cond_2

    .line 127
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    .line 128
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v4

    .line 129
    .local v4, syncAdapters:[Landroid/content/SyncAdapterType;
    const/4 v1, 0x0

    .local v1, i:I
    array-length v2, v4

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 130
    aget-object v3, v4, v1

    .line 131
    .local v3, sa:Landroid/content/SyncAdapterType;
    iget-object v5, p0, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 132
    .local v0, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .restart local v0       #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_0
    const-string v5, "AccountSettings"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 137
    const-string v5, "AccountSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "added authority "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to accountType "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_1
    iget-object v5, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    .end local v0           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #i:I
    .end local v2           #n:I
    .end local v3           #sa:Landroid/content/SyncAdapterType;
    .end local v4           #syncAdapters:[Landroid/content/SyncAdapterType;
    :cond_2
    iget-object v5, p0, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    return-object v5
.end method

.method protected getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "accountType"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settings_ex/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "accountType"

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settings_ex/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 0
    .parameter "accounts"

    .prologue
    .line 72
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 94
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->mDateFormat:Ljava/text/DateFormat;

    .line 95
    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->mTimeFormat:Ljava/text/DateFormat;

    .line 96
    return-void
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 112
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->mStatusChangeListenerHandle:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    .line 113
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 101
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->mStatusChangeListenerHandle:Ljava/lang/Object;

    .line 106
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onSyncStateUpdated()V

    .line 107
    return-void
.end method

.method protected onSyncStateUpdated()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public updateAuthDescriptions()V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settings_ex/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 364
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onAuthDescriptionsUpdated()V

    .line 365
    return-void
.end method
