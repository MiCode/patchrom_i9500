.class public Lcom/android/settings_ex/accounts/SyncSettings;
.super Lcom/android/settings_ex/accounts/AccountPreferenceBase;
.source "SyncSettings.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Lcom/android/settings_ex/DialogCreatable;


# instance fields
.field private mAuthorities:[Ljava/lang/String;

.field private mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/accounts/SyncSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/SyncSettings;->startAddAccountSettings()V

    return-void
.end method

.method private removeAccountPreferences()V
    .locals 3

    .prologue
    .line 202
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 203
    .local v1, parent:Landroid/preference/PreferenceScreen;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 204
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings_ex/AccountPreference;

    if-eqz v2, :cond_0

    .line 205
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 207
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    :cond_1
    return-void
.end method

.method private startAccountSettings(Lcom/android/settings_ex/AccountPreference;)V
    .locals 3
    .parameter "acctPref"

    .prologue
    .line 176
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACCOUNT_SYNC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {p1}, Lcom/android/settings_ex/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 178
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 179
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 180
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 181
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    .line 182
    return-void
.end method

.method private startAddAccountSettings()V
    .locals 3

    .prologue
    .line 185
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "authorities"

    iget-object v2, p0, Lcom/android/settings_ex/accounts/SyncSettings;->mAuthorities:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 188
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 189
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    .line 190
    return-void
.end method


# virtual methods
.method public bridge synthetic addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 17
    .parameter "accounts"

    .prologue
    .line 214
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/accounts/SyncSettings;->removeAccountPreferences()V

    .line 217
    const/4 v12, 0x0

    .line 218
    .local v12, isShownFacebook:Z
    const/4 v10, 0x0

    .local v10, i:I
    move-object/from16 v0, p1

    array-length v14, v0

    .local v14, n:I
    :goto_1
    if-ge v10, v14, :cond_6

    .line 219
    aget-object v7, p1, v10

    .line 220
    .local v7, account:Landroid/accounts/Account;
    iget-object v2, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/accounts/SyncSettings;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 222
    .local v5, auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v16, 0x1

    .line 223
    .local v16, showAccount:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/accounts/SyncSettings;->mAuthorities:[Ljava/lang/String;

    if-eqz v2, :cond_2

    if-eqz v5, :cond_2

    .line 224
    const/16 v16, 0x0

    .line 225
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings_ex/accounts/SyncSettings;->mAuthorities:[Ljava/lang/String;

    .local v9, arr$:[Ljava/lang/String;
    array-length v13, v9

    .local v13, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_2
    if-ge v11, v13, :cond_2

    aget-object v15, v9, v11

    .line 226
    .local v15, requestedAuthority:Ljava/lang/String;
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 227
    const/16 v16, 0x1

    .line 242
    .end local v9           #arr$:[Ljava/lang/String;
    .end local v11           #i$:I
    .end local v13           #len$:I
    .end local v15           #requestedAuthority:Ljava/lang/String;
    :cond_2
    if-eqz v16, :cond_3

    .line 244
    const/4 v8, 0x0

    .line 253
    .local v8, accountToReplace:Landroid/accounts/Account;
    iget-object v2, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 254
    .local v4, icon:Landroid/graphics/drawable/Drawable;
    new-instance v1, Lcom/android/settings_ex/AccountPreference;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v8, :cond_5

    move-object v3, v7

    :goto_3
    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/android/settings_ex/AccountPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;Z)V

    .line 256
    .local v1, preference:Lcom/android/settings_ex/AccountPreference;
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 257
    iget-object v2, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 218
    .end local v1           #preference:Lcom/android/settings_ex/AccountPreference;
    .end local v4           #icon:Landroid/graphics/drawable/Drawable;
    .end local v8           #accountToReplace:Landroid/accounts/Account;
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 225
    .restart local v9       #arr$:[Ljava/lang/String;
    .restart local v11       #i$:I
    .restart local v13       #len$:I
    .restart local v15       #requestedAuthority:Ljava/lang/String;
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .end local v9           #arr$:[Ljava/lang/String;
    .end local v11           #i$:I
    .end local v13           #len$:I
    .end local v15           #requestedAuthority:Ljava/lang/String;
    .restart local v4       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v8       #accountToReplace:Landroid/accounts/Account;
    :cond_5
    move-object v3, v8

    .line 254
    goto :goto_3

    .line 260
    .end local v4           #icon:Landroid/graphics/drawable/Drawable;
    .end local v5           #auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #account:Landroid/accounts/Account;
    .end local v8           #accountToReplace:Landroid/accounts/Account;
    .end local v16           #showAccount:Z
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onSyncStateUpdated()V

    .line 263
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 264
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/accounts/SyncSettings;->startAddAccountSettings()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 98
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "authorities"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/accounts/SyncSettings;->mAuthorities:[Ljava/lang/String;

    .line 100
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/SyncSettings;->updateAuthDescriptions()V

    .line 101
    return-void
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 4

    .prologue
    .line 271
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 272
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 273
    .local v2, pref:Landroid/preference/Preference;
    instance-of v3, v2, Lcom/android/settings_ex/AccountPreference;

    if-eqz v3, :cond_0

    .line 274
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/AccountPreference;

    .line 276
    .local v0, accPref:Lcom/android/settings_ex/AccountPreference;
    invoke-virtual {v0}, Lcom/android/settings_ex/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 277
    invoke-virtual {v0}, Lcom/android/settings_ex/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 271
    .end local v0           #accPref:Lcom/android/settings_ex/AccountPreference;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 280
    .end local v2           #pref:Landroid/preference/Preference;
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f070083

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 82
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 83
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 14
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 106
    invoke-super/range {p0 .. p3}, Landroid/preference/PreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v10

    .line 108
    .local v10, view:Landroid/view/View;
    if-eqz v10, :cond_0

    instance-of v11, v10, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_0

    .line 109
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v11

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 110
    .local v3, defaultDisplay:Landroid/view/Display;
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 111
    .local v5, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v3, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 112
    const/high16 v11, 0x4080

    iget v12, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v11, v12

    float-to-int v8, v11

    .line 113
    .local v8, paddingTop:I
    const/high16 v11, 0x40a0

    iget v12, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v11, v12

    float-to-int v7, v11

    .line 115
    .local v7, paddingLR:I
    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const/4 v12, 0x0

    const v13, 0x101032f

    invoke-direct {v0, v11, v12, v13}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 116
    .local v0, addButton:Landroid/widget/Button;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v2, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 117
    .local v2, buttonParams:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v11, 0x3f80

    iput v11, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 118
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    const v11, 0x7f09088e

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(I)V

    .line 120
    new-instance v11, Lcom/android/settings_ex/accounts/SyncSettings$1;

    invoke-direct {v11, p0}, Lcom/android/settings_ex/accounts/SyncSettings$1;-><init>(Lcom/android/settings_ex/accounts/SyncSettings;)V

    invoke-virtual {v0, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    new-instance v6, Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const/4 v12, 0x0

    const v13, 0x101032f

    invoke-direct {v6, v11, v12, v13}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 128
    .local v6, okButton:Landroid/widget/Button;
    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    const v11, 0x104000a

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(I)V

    .line 130
    new-instance v11, Lcom/android/settings_ex/accounts/SyncSettings$2;

    invoke-direct {v11, p0}, Lcom/android/settings_ex/accounts/SyncSettings$2;-><init>(Lcom/android/settings_ex/accounts/SyncSettings;)V

    invoke-virtual {v6, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    new-instance v9, Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 138
    .local v9, space:Landroid/view/View;
    new-instance v11, Landroid/view/ViewGroup$LayoutParams;

    const/4 v12, -0x1

    invoke-direct {v11, v7, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const/4 v12, 0x0

    const v13, 0x101032e

    invoke-direct {v1, v11, v12, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 141
    .local v1, bottomLayout:Landroid/widget/LinearLayout;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v4, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 143
    .local v4, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    const v11, -0x333334

    invoke-virtual {v1, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 145
    invoke-virtual {v1, v7, v8, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 146
    const/16 v11, 0x11

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 147
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 148
    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 149
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object v11, v10

    .line 151
    check-cast v11, Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 154
    .end local v0           #addButton:Landroid/widget/Button;
    .end local v1           #bottomLayout:Landroid/widget/LinearLayout;
    .end local v2           #buttonParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v3           #defaultDisplay:Landroid/view/Display;
    .end local v4           #layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v5           #metrics:Landroid/util/DisplayMetrics;
    .end local v6           #okButton:Landroid/widget/Button;
    .end local v7           #paddingLR:I
    .end local v8           #paddingTop:I
    .end local v9           #space:Landroid/view/View;
    :cond_0
    return-object v10
.end method

.method public bridge synthetic onPause()V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferences"
    .parameter "preference"

    .prologue
    .line 167
    instance-of v0, p2, Lcom/android/settings_ex/AccountPreference;

    if-eqz v0, :cond_0

    .line 168
    check-cast p2, Lcom/android/settings_ex/AccountPreference;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/settings_ex/accounts/SyncSettings;->startAccountSettings(Lcom/android/settings_ex/AccountPreference;)V

    .line 172
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 170
    .restart local p2
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onResume()V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 87
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 88
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 89
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v2, v3}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 90
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 160
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 161
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 162
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 163
    return-void
.end method

.method public showDialog(I)V
    .locals 3
    .parameter "dialogId"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/settings_ex/accounts/SyncSettings;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 195
    const-string v0, "AccountSettings"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    new-instance v0, Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/settings_ex/DialogCreatable;I)V

    iput-object v0, p0, Lcom/android/settings_ex/accounts/SyncSettings;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 198
    iget-object v0, p0, Lcom/android/settings_ex/accounts/SyncSettings;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public bridge synthetic updateAuthDescriptions()V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->updateAuthDescriptions()V

    return-void
.end method
