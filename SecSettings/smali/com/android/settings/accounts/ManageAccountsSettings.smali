.class public Lcom/android/settings_ex/accounts/ManageAccountsSettings;
.super Lcom/android/settings_ex/accounts/AccountPreferenceBase;
.source "ManageAccountsSettings.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# static fields
.field private static final ACCOUNT_KEY:Ljava/lang/String; = "account"

.field private static final ALPHA_OF_DISABLED:I = 0x66

.field private static final ALPHA_OF_ENABLED:I = 0xff

.field public static final KEY_ACCOUNT_LABEL:Ljava/lang/String; = "account_label"

.field public static final KEY_ACCOUNT_TYPE:Ljava/lang/String; = "account_type"

.field public static final KEY_RETURN_TO_PREVIOUS:Ljava/lang/String; = "accountReturnToPrevious"

.field private static final MENU_SYNC_CANCEL_ID:I = 0x2

.field private static final MENU_SYNC_NOW_ID:I = 0x1

.field private static final REQUEST_SHOW_SYNC_SETTINGS:I = 0x1


# instance fields
.field private mAccountType:Ljava/lang/String;

.field private mAuthorities:[Ljava/lang/String;

.field private mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

.field private mErrorInfoView:Landroid/widget/TextView;

.field private mFirstAccount:Landroid/accounts/Account;

.field private mReturnToPrevious:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;-><init>()V

    return-void
.end method

.method private addAuthenticatorSettings()V
    .locals 3

    .prologue
    .line 466
    iget-object v1, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 467
    .local v0, prefs:Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 468
    invoke-direct {p0, v0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->updatePreferenceIntents(Landroid/preference/PreferenceScreen;)V

    .line 470
    :cond_0
    return-void
.end method

.method private requestOrCancelSyncForAccounts(Z)V
    .locals 10
    .parameter "sync"

    .prologue
    .line 283
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v7

    .line 284
    .local v7, syncAdapters:[Landroid/content/SyncAdapterType;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 285
    .local v2, extras:Landroid/os/Bundle;
    const-string v8, "force"

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 286
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 288
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 289
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    .line 290
    .local v5, pref:Landroid/preference/Preference;
    instance-of v8, v5, Lcom/android/settings_ex/AccountPreference;

    if-eqz v8, :cond_2

    .line 291
    check-cast v5, Lcom/android/settings_ex/AccountPreference;

    .end local v5           #pref:Landroid/preference/Preference;
    invoke-virtual {v5}, Lcom/android/settings_ex/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 293
    .local v0, account:Landroid/accounts/Account;
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    array-length v8, v7

    if-ge v4, v8, :cond_2

    .line 294
    aget-object v6, v7, v4

    .line 295
    .local v6, sa:Landroid/content/SyncAdapterType;
    aget-object v8, v7, v4

    iget-object v8, v8, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, v6, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v0, v8}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 297
    if-eqz p1, :cond_1

    .line 298
    iget-object v8, v6, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v0, v8, v2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 293
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 300
    :cond_1
    iget-object v8, v6, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v0, v8}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_2

    .line 288
    .end local v0           #account:Landroid/accounts/Account;
    .end local v4           #j:I
    .end local v6           #sa:Landroid/content/SyncAdapterType;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 307
    :cond_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 308
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x102000a

    invoke-virtual {v8, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 309
    return-void
.end method

.method private startAccountSettings(Lcom/android/settings_ex/AccountPreference;)V
    .locals 7
    .parameter "acctPref"

    .prologue
    .line 165
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 166
    .local v2, args:Landroid/os/Bundle;
    const-string v0, "account"

    invoke-virtual {p1}, Lcom/android/settings_ex/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 167
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings_ex/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f09088c

    invoke-virtual {p1}, Lcom/android/settings_ex/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 171
    return-void
.end method

.method private updatePreferenceIntents(Landroid/preference/PreferenceScreen;)V
    .locals 6
    .parameter "prefs"

    .prologue
    .line 473
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 474
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 475
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 476
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 477
    const/high16 v4, 0x1

    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 478
    .local v3, ri:Landroid/content/pm/ResolveInfo;
    if-nez v3, :cond_0

    .line 479
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 482
    :cond_0
    const-string v4, "account"

    iget-object v5, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 483
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x1000

    or-int/2addr v4, v5

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 486
    .end local v3           #ri:Landroid/content/pm/ResolveInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 487
    goto :goto_0

    .line 488
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    return-void
.end method


# virtual methods
.method public bridge synthetic addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 14
    .parameter "accounts"

    .prologue
    .line 418
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 463
    :goto_0
    return-void

    .line 419
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 420
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    .line 421
    const v1, 0x7f070046

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 422
    const/4 v7, 0x0

    .local v7, i:I
    array-length v10, p1

    .local v10, n:I
    :goto_1
    if-ge v7, v10, :cond_5

    .line 423
    aget-object v2, p1, v7

    .line 425
    .local v2, account:Landroid/accounts/Account;
    iget-object v1, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 422
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 426
    :cond_2
    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 428
    .local v4, auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v13, 0x1

    .line 429
    .local v13, showAccount:Z
    iget-object v1, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    if-eqz v1, :cond_3

    if-eqz v4, :cond_3

    .line 430
    const/4 v13, 0x0

    .line 431
    iget-object v6, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    .local v6, arr$:[Ljava/lang/String;
    array-length v9, v6

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_3
    if-ge v8, v9, :cond_3

    aget-object v11, v6, v8

    .line 432
    .local v11, requestedAuthority:Ljava/lang/String;
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 433
    const/4 v13, 0x1

    .line 439
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v11           #requestedAuthority:Ljava/lang/String;
    :cond_3
    if-eqz v13, :cond_1

    .line 440
    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 441
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    new-instance v0, Lcom/android/settings_ex/AccountPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/AccountPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;Z)V

    .line 443
    .local v0, preference:Lcom/android/settings_ex/AccountPreference;
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 444
    iget-object v1, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    if-nez v1, :cond_1

    .line 445
    iput-object v2, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    goto :goto_2

    .line 431
    .end local v0           #preference:Lcom/android/settings_ex/AccountPreference;
    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    .restart local v6       #arr$:[Ljava/lang/String;
    .restart local v8       #i$:I
    .restart local v9       #len$:I
    .restart local v11       #requestedAuthority:Ljava/lang/String;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 449
    .end local v2           #account:Landroid/accounts/Account;
    .end local v4           #auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v11           #requestedAuthority:Ljava/lang/String;
    .end local v13           #showAccount:Z
    :cond_5
    iget-object v1, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    if-eqz v1, :cond_6

    .line 450
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->addAuthenticatorSettings()V

    .line 462
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->onSyncStateUpdated()V

    goto :goto_0

    .line 452
    :cond_6
    iget-boolean v1, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mReturnToPrevious:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    const-string v5, "com.dropbox.android.account"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 454
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    goto :goto_4

    .line 457
    :cond_7
    new-instance v12, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v12, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 458
    .local v12, settingsTop:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v12, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 459
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_4
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 117
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 118
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    .line 120
    .local v2, view:Landroid/view/View;
    const v3, 0x7f0b0015

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    .line 121
    iget-object v3, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 123
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "authorities"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    .line 125
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 126
    .local v1, args:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    const-string v3, "account_label"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "account_label"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->updateAuthDescriptions()V

    .line 130
    return-void
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 4

    .prologue
    .line 493
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 494
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 495
    .local v2, pref:Landroid/preference/Preference;
    instance-of v3, v2, Lcom/android/settings_ex/AccountPreference;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 496
    check-cast v0, Lcom/android/settings_ex/AccountPreference;

    .line 497
    .local v0, accPref:Lcom/android/settings_ex/AccountPreference;
    invoke-virtual {v0}, Lcom/android/settings_ex/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 493
    .end local v0           #accPref:Lcom/android/settings_ex/AccountPreference;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 500
    .end local v2           #pref:Landroid/preference/Preference;
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 89
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    .line 92
    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "accountReturnToPrevious"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    const-string v1, "accountReturnToPrevious"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mReturnToPrevious:Z

    .line 95
    :cond_1
    const v1, 0x7f070046

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 96
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 97
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 9
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 183
    const v4, 0x7f090b55

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v7, v6, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    .line 184
    .local v3, syncNow:Landroid/view/MenuItem;
    const/4 v4, 0x2

    const v5, 0x7f090b57

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    .line 186
    .local v2, syncCancel:Landroid/view/MenuItem;
    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 187
    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 189
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-ne v4, v7, :cond_0

    .line 192
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings_ex/accounts/AccountCommon;->isActionbarLightTheme(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 193
    const v1, 0x7f020220

    .line 194
    .local v1, refreshResId:I
    const v0, 0x7f020218

    .line 200
    .local v0, cancelResId:I
    :goto_0
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 201
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 205
    .end local v0           #cancelResId:I
    .end local v1           #refreshResId:I
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 206
    return-void

    .line 196
    :cond_1
    const v1, 0x7f020221

    .line 197
    .restart local v1       #refreshResId:I
    const v0, 0x7f020219

    .restart local v0       #cancelResId:I
    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 109
    const v1, 0x7f0400ad

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 110
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 271
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 279
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 273
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->requestOrCancelSyncForAccounts(Z)V

    goto :goto_0

    .line 276
    :pswitch_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->requestOrCancelSyncForAccounts(Z)V

    goto :goto_0

    .line 271
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onPause()V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferences"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 143
    instance-of v3, p2, Lcom/android/settings_ex/AccountPreference;

    if-eqz v3, :cond_1

    .line 145
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Common_MyPhonebookBrandName"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v0, p2

    .line 146
    check-cast v0, Lcom/android/settings_ex/AccountPreference;

    .line 147
    .local v0, pref:Lcom/android/settings_ex/AccountPreference;
    invoke-virtual {v0}, Lcom/android/settings_ex/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v4, "com.android.tmo_myphonebook"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 148
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 149
    .local v1, syncmlDsIntent:Landroid/content/Intent;
    const-string v3, "android.intent.action.MYPHONEBOOK_SELECTED"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 151
    const-string v3, "AccountSettings"

    const-string v4, "android.intent.action.MYPHONEBOOK_SELECTED"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .end local v0           #pref:Lcom/android/settings_ex/AccountPreference;
    .end local v1           #syncmlDsIntent:Landroid/content/Intent;
    .end local p2
    :goto_0
    return v2

    .line 157
    .restart local p2
    :cond_0
    check-cast p2, Lcom/android/settings_ex/AccountPreference;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->startAccountSettings(Lcom/android/settings_ex/AccountPreference;)V

    goto :goto_0

    .line 159
    .restart local p2
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 13
    .parameter "menu"

    .prologue
    .line 210
    invoke-super {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 217
    const/4 v11, 0x1

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    .line 218
    .local v10, syncNow:Landroid/view/MenuItem;
    const/4 v11, 0x2

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    .line 220
    .local v9, syncCancel:Landroid/view/MenuItem;
    if-eqz v10, :cond_7

    if-eqz v9, :cond_7

    .line 221
    const/4 v3, 0x0

    .line 222
    .local v3, isSyncableAccount:Z
    const/4 v2, 0x0

    .line 223
    .local v2, isSyncEnabled:Z
    const/4 v4, 0x0

    .line 225
    .local v4, isSyncing:Z
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v8

    .line 226
    .local v8, syncAdapters:[Landroid/content/SyncAdapterType;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v11}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v11

    if-ge v1, v11, :cond_5

    .line 227
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v11, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v6

    .line 228
    .local v6, pref:Landroid/preference/Preference;
    instance-of v11, v6, Lcom/android/settings_ex/AccountPreference;

    if-nez v11, :cond_1

    .line 226
    .end local v6           #pref:Landroid/preference/Preference;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 232
    .restart local v6       #pref:Landroid/preference/Preference;
    :cond_1
    check-cast v6, Lcom/android/settings_ex/AccountPreference;

    .end local v6           #pref:Landroid/preference/Preference;
    invoke-virtual {v6}, Lcom/android/settings_ex/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 234
    .local v0, account:Landroid/accounts/Account;
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    array-length v11, v8

    if-ge v5, v11, :cond_0

    .line 235
    aget-object v7, v8, v5

    .line 236
    .local v7, sa:Landroid/content/SyncAdapterType;
    iget-object v11, v7, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v7}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v0, v11}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v11

    if-lez v11, :cond_4

    .line 237
    const/4 v3, 0x1

    .line 238
    iget-object v11, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v0, v11}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 239
    const/4 v2, 0x1

    .line 241
    :cond_2
    iget-object v11, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v0, v11}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    iget-object v11, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v0, v11}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 243
    :cond_3
    const/4 v4, 0x1

    .line 234
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 249
    .end local v0           #account:Landroid/accounts/Account;
    .end local v5           #j:I
    .end local v7           #sa:Landroid/content/SyncAdapterType;
    :cond_5
    if-eqz v3, :cond_6

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v11

    if-eqz v11, :cond_8

    if-nez v2, :cond_8

    .line 251
    :cond_6
    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 252
    const/4 v11, 0x0

    invoke-interface {v9, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 253
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 254
    invoke-interface {v10}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 255
    invoke-interface {v10}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const/16 v12, 0x66

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 267
    .end local v1           #i:I
    .end local v2           #isSyncEnabled:Z
    .end local v3           #isSyncableAccount:Z
    .end local v4           #isSyncing:Z
    .end local v8           #syncAdapters:[Landroid/content/SyncAdapterType;
    :cond_7
    :goto_2
    return-void

    .line 258
    .restart local v1       #i:I
    .restart local v2       #isSyncEnabled:Z
    .restart local v3       #isSyncableAccount:Z
    .restart local v4       #isSyncing:Z
    .restart local v8       #syncAdapters:[Landroid/content/SyncAdapterType;
    :cond_8
    if-nez v4, :cond_9

    const/4 v11, 0x1

    :goto_3
    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 259
    invoke-interface {v9, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 260
    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 261
    invoke-interface {v10}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 262
    invoke-interface {v10}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const/16 v12, 0xff

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_2

    .line 258
    :cond_9
    const/4 v11, 0x0

    goto :goto_3
.end method

.method public bridge synthetic onResume()V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 101
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 102
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 103
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v2, v3}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 104
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 134
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 135
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 136
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 137
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 138
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 139
    return-void
.end method

.method protected onSyncStateUpdated()V
    .locals 33

    .prologue
    .line 314
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    if-nez v29, :cond_0

    .line 414
    :goto_0
    return-void

    .line 317
    :cond_0
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSync()Landroid/content/SyncInfo;

    move-result-object v10

    .line 319
    .local v10, currentSync:Landroid/content/SyncInfo;
    const/4 v5, 0x0

    .line 320
    .local v5, anySyncFailed:Z
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    .line 323
    .local v11, date:Ljava/util/Date;
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v22

    .line 324
    .local v22, syncAdapters:[Landroid/content/SyncAdapterType;
    new-instance v28, Ljava/util/HashSet;

    invoke-direct/range {v28 .. v28}, Ljava/util/HashSet;-><init>()V

    .line 325
    .local v28, userFacing:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .local v14, k:I
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v18, v0

    .local v18, n:I
    :goto_1
    move/from16 v0, v18

    if-ge v14, v0, :cond_2

    .line 326
    aget-object v20, v22, v14

    .line 327
    .local v20, sa:Landroid/content/SyncAdapterType;
    invoke-virtual/range {v20 .. v20}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v29

    if-eqz v29, :cond_1

    .line 328
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 325
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 331
    .end local v20           #sa:Landroid/content/SyncAdapterType;
    :cond_2
    const/4 v12, 0x0

    .local v12, i:I
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v9

    .local v9, count:I
    :goto_2
    if-ge v12, v9, :cond_11

    .line 332
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v19

    .line 333
    .local v19, pref:Landroid/preference/Preference;
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/android/settings_ex/AccountPreference;

    move/from16 v29, v0

    if-nez v29, :cond_4

    .line 331
    :cond_3
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v3, v19

    .line 337
    check-cast v3, Lcom/android/settings_ex/AccountPreference;

    .line 338
    .local v3, accountPref:Lcom/android/settings_ex/AccountPreference;
    invoke-virtual {v3}, Lcom/android/settings_ex/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    .line 339
    .local v2, account:Landroid/accounts/Account;
    const/16 v23, 0x0

    .line 340
    .local v23, syncCount:I
    const-wide/16 v15, 0x0

    .line 341
    .local v15, lastSuccessTime:J
    const/16 v25, 0x0

    .line 342
    .local v25, syncIsFailing:Z
    invoke-virtual {v3}, Lcom/android/settings_ex/AccountPreference;->getAuthorities()Ljava/util/ArrayList;

    move-result-object v6

    .line 343
    .local v6, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v26, 0x0

    .line 344
    .local v26, syncingNow:Z
    if-eqz v6, :cond_b

    .line 345
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 346
    .local v7, authority:Ljava/lang/String;
    invoke-static {v2, v7}, Landroid/content/ContentResolver;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;

    move-result-object v21

    .line 347
    .local v21, status:Landroid/content/SyncStatusInfo;
    invoke-static {v2, v7}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_7

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v29

    if-eqz v29, :cond_7

    invoke-static {v2, v7}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v29

    if-lez v29, :cond_7

    const/16 v24, 0x1

    .line 350
    .local v24, syncEnabled:Z
    :goto_5
    invoke-static {v2, v7}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v8

    .line 351
    .local v8, authorityIsPending:Z
    if-eqz v10, :cond_8

    iget-object v0, v10, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_8

    new-instance v29, Landroid/accounts/Account;

    iget-object v0, v10, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v30, v0

    iget-object v0, v10, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-direct/range {v29 .. v31}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_8

    const/4 v4, 0x1

    .line 355
    .local v4, activelySyncing:Z
    :goto_6
    if-eqz v21, :cond_9

    if-eqz v24, :cond_9

    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v29, v0

    const-wide/16 v31, 0x0

    cmp-long v29, v29, v31

    if-eqz v29, :cond_9

    const/16 v29, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_9

    const/16 v17, 0x1

    .line 360
    .local v17, lastSyncFailed:Z
    :goto_7
    if-eqz v17, :cond_5

    if-nez v4, :cond_5

    if-nez v8, :cond_5

    .line 361
    const/16 v25, 0x1

    .line 362
    const/4 v5, 0x1

    .line 364
    :cond_5
    or-int v26, v26, v4

    .line 365
    if-eqz v21, :cond_6

    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v29, v0

    cmp-long v29, v15, v29

    if-gez v29, :cond_6

    .line 366
    move-object/from16 v0, v21

    iget-wide v15, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    .line 368
    :cond_6
    if-eqz v24, :cond_a

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_a

    const/16 v29, 0x1

    :goto_8
    add-int v23, v23, v29

    .line 369
    goto/16 :goto_4

    .line 347
    .end local v4           #activelySyncing:Z
    .end local v8           #authorityIsPending:Z
    .end local v17           #lastSyncFailed:Z
    .end local v24           #syncEnabled:Z
    :cond_7
    const/16 v24, 0x0

    goto/16 :goto_5

    .line 351
    .restart local v8       #authorityIsPending:Z
    .restart local v24       #syncEnabled:Z
    :cond_8
    const/4 v4, 0x0

    goto :goto_6

    .line 355
    .restart local v4       #activelySyncing:Z
    :cond_9
    const/16 v17, 0x0

    goto :goto_7

    .line 368
    .restart local v17       #lastSyncFailed:Z
    :cond_a
    const/16 v29, 0x0

    goto :goto_8

    .line 371
    .end local v4           #activelySyncing:Z
    .end local v7           #authority:Ljava/lang/String;
    .end local v8           #authorityIsPending:Z
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v17           #lastSyncFailed:Z
    .end local v21           #status:Landroid/content/SyncStatusInfo;
    .end local v24           #syncEnabled:Z
    :cond_b
    const-string v29, "AccountSettings"

    const/16 v30, 0x2

    invoke-static/range {v29 .. v30}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v29

    if-eqz v29, :cond_c

    .line 372
    const-string v29, "AccountSettings"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "no syncadapters found for "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_c
    if-eqz v25, :cond_d

    .line 391
    const/16 v29, 0x2

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v3, v0, v1}, Lcom/android/settings_ex/AccountPreference;->setSyncStatus(IZ)V

    goto/16 :goto_3

    .line 392
    :cond_d
    if-nez v23, :cond_e

    .line 393
    const/16 v29, 0x1

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v3, v0, v1}, Lcom/android/settings_ex/AccountPreference;->setSyncStatus(IZ)V

    goto/16 :goto_3

    .line 394
    :cond_e
    if-lez v23, :cond_10

    .line 395
    if-eqz v26, :cond_f

    .line 396
    const/16 v29, 0x3

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v3, v0, v1}, Lcom/android/settings_ex/AccountPreference;->setSyncStatus(IZ)V

    goto/16 :goto_3

    .line 398
    :cond_f
    const/16 v29, 0x0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v3, v0, v1}, Lcom/android/settings_ex/AccountPreference;->setSyncStatus(IZ)V

    .line 399
    const-wide/16 v29, 0x0

    cmp-long v29, v15, v29

    if-lez v29, :cond_3

    .line 400
    const/16 v29, 0x0

    const/16 v30, 0x0

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v3, v0, v1}, Lcom/android/settings_ex/AccountPreference;->setSyncStatus(IZ)V

    .line 401
    move-wide v0, v15

    invoke-virtual {v11, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 402
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->formatSyncDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v27

    .line 403
    .local v27, timeString:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f090897

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v27, v31, v32

    invoke-virtual/range {v29 .. v31}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 408
    .end local v27           #timeString:Ljava/lang/String;
    :cond_10
    const/16 v29, 0x1

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v3, v0, v1}, Lcom/android/settings_ex/AccountPreference;->setSyncStatus(IZ)V

    goto/16 :goto_3

    .line 412
    .end local v2           #account:Landroid/accounts/Account;
    .end local v3           #accountPref:Lcom/android/settings_ex/AccountPreference;
    .end local v6           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15           #lastSuccessTime:J
    .end local v19           #pref:Landroid/preference/Preference;
    .end local v23           #syncCount:I
    .end local v25           #syncIsFailing:Z
    .end local v26           #syncingNow:Z
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    move-object/from16 v30, v0

    if-eqz v5, :cond_12

    const/16 v29, 0x0

    :goto_9
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 413
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_0

    .line 412
    :cond_12
    const/16 v29, 0x8

    goto :goto_9
.end method

.method public bridge synthetic updateAuthDescriptions()V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->updateAuthDescriptions()V

    return-void
.end method
