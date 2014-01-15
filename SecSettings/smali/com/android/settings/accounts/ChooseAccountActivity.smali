.class public Lcom/android/settings_ex/accounts/ChooseAccountActivity;
.super Landroid/preference/PreferenceActivity;
.source "ChooseAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/accounts/ChooseAccountActivity$ProviderEntry;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ChooseAccountActivity"


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

.field public mAccountTypesFilter:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAddAccountGroup:Landroid/preference/PreferenceGroup;

.field private mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

.field private mAuthorities:[Ljava/lang/String;

.field private final mProviderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/accounts/ChooseAccountActivity$ProviderEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mTypeToAuthDescription:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/accounts/ChooseAccountActivity;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/Map;

    .line 69
    return-void
.end method

.method private checkInstalledfbApp()Z
    .locals 4

    .prologue
    .line 376
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.facebook.katana"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 377
    :catch_0
    move-exception v0

    .line 379
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private finishWithAccountType(Ljava/lang/String;)V
    .locals 2
    .parameter "accountType"

    .prologue
    .line 367
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 368
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "selected_account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 370
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 371
    return-void
.end method

.method private onAuthDescriptionsUpdated()V
    .locals 20

    .prologue
    .line 151
    const/4 v15, 0x0

    .line 154
    .local v15, isShownFacebook:Z
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/accounts/ChooseAccountActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    array-length v2, v2

    if-ge v13, v2, :cond_a

    .line 155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/accounts/ChooseAccountActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v2, v2, v13

    iget-object v9, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    .line 156
    .local v9, accountType:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/settings_ex/accounts/ChooseAccountActivity;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v19

    .line 160
    .local v19, providerName:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/settings_ex/accounts/ChooseAccountActivity;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 161
    .local v8, accountAuths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x1

    .line 162
    .local v10, addAccountPref:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/accounts/ChooseAccountActivity;->mAuthorities:[Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/accounts/ChooseAccountActivity;->mAuthorities:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_0

    if-eqz v8, :cond_0

    .line 163
    const/4 v10, 0x0

    .line 164
    const/16 v16, 0x0

    .local v16, k:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/accounts/ChooseAccountActivity;->mAuthorities:[Ljava/lang/String;

    array-length v2, v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_0

    .line 165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/accounts/ChooseAccountActivity;->mAuthorities:[Ljava/lang/String;

    aget-object v2, v2, v16

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 166
    const/4 v10, 0x1

    .line 171
    .end local v16           #k:I
    :cond_0
    if-eqz v10, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/accounts/ChooseAccountActivity;->mAccountTypesFilter:Ljava/util/HashSet;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/accounts/ChooseAccountActivity;->mAccountTypesFilter:Ljava/util/HashSet;

    invoke-virtual {v2, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 173
    const/4 v10, 0x0

    .line 187
    :cond_1
    invoke-static {}, Lcom/android/settings_ex/Utils;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "com.smlds.accountType"

    invoke-virtual {v9, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 189
    const/4 v10, 0x0

    .line 192
    :cond_2
    const-string v2, "CHM"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "com.osp.app.signin"

    invoke-virtual {v9, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    .line 193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/accounts/ChooseAccountActivity;->mAuthorities:[Ljava/lang/String;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/accounts/ChooseAccountActivity;->mAuthorities:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string v3, "com.android.contacts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/accounts/ChooseAccountActivity;->mAuthorities:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string v3, "com.android.calendar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 195
    :cond_3
    const/4 v10, 0x0

    .line 200
    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_MyPhonebookBrandName"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 201
    const-string v2, "com.smlds.accountType"

    invoke-virtual {v9, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "com.android.tmo_myphonebook"

    invoke-virtual {v9, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6

    .line 202
    :cond_5
    const/4 v10, 0x0

    .line 206
    :cond_6
    if-eqz v10, :cond_9

    .line 207
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/settings_ex/accounts/ChooseAccountActivity$ProviderEntry;

    move-object/from16 v0, v19

    invoke-direct {v3, v0, v9}, Lcom/android/settings_ex/accounts/ChooseAccountActivity$ProviderEntry;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_7
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 164
    .restart local v16       #k:I
    :cond_8
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 209
    .end local v16           #k:I
    :cond_9
    const-string v2, "ChooseAccountActivity"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 210
    const-string v2, "ChooseAccountActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipped pref "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": has no authority we need"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 215
    .end local v8           #accountAuths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9           #accountType:Ljava/lang/String;
    .end local v10           #addAccountPref:Z
    .end local v19           #providerName:Ljava/lang/CharSequence;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/accounts/ChooseAccountActivity$ProviderEntry;

    #getter for: Lcom/android/settings_ex/accounts/ChooseAccountActivity$ProviderEntry;->type:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/accounts/ChooseAccountActivity$ProviderEntry;->access$000(Lcom/android/settings_ex/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings_ex/accounts/ChooseAccountActivity;->finishWithAccountType(Ljava/lang/String;)V

    .line 239
    :cond_b
    :goto_3
    return-void

    .line 218
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_d

    .line 219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/accounts/ChooseAccountActivity;->mAddAccountGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/settings_ex/accounts/ChooseAccountActivity$ProviderEntry;

    .line 222
    .local v18, pref:Lcom/android/settings_ex/accounts/ChooseAccountActivity$ProviderEntry;
    #getter for: Lcom/android/settings_ex/accounts/ChooseAccountActivity$ProviderEntry;->type:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/android/settings_ex/accounts/ChooseAccountActivity$ProviderEntry;->access$000(Lcom/android/settings_ex/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/accounts/ChooseAccountActivity;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 223
    .local v4, drawable:Landroid/graphics/drawable/Drawable;
    new-instance v1, Lcom/android/settings_ex/accounts/ProviderPreference;

    #getter for: Lcom/android/settings_ex/accounts/ChooseAccountActivity$ProviderEntry;->type:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/android/settings_ex/accounts/ChooseAccountActivity$ProviderEntry;->access$000(Lcom/android/settings_ex/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/String;

    move-result-object v3

    #getter for: Lcom/android/settings_ex/accounts/ChooseAccountActivity$ProviderEntry;->name:Ljava/lang/CharSequence;
    invoke-static/range {v18 .. v18}, Lcom/android/settings_ex/accounts/ChooseAccountActivity$ProviderEntry;->access$100(Lcom/android/settings_ex/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/CharSequence;

    move-result-object v5

    #getter for: Lcom/android/settings_ex/accounts/ChooseAccountActivity$ProviderEntry;->type:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/android/settings_ex/accounts/ChooseAccountActivity$ProviderEntry;->access$000(Lcom/android/settings_ex/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/accounts/ChooseAccountActivity;->isSignedIn(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/settings_ex/accounts/ProviderPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Z)V

    .line 225
    .local v1, p:Lcom/android/settings_ex/accounts/ProviderPreference;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/accounts/ChooseAccountActivity;->mAddAccountGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 228
    .end local v1           #p:Lcom/android/settings_ex/accounts/ProviderPreference;
    .end local v4           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v18           #pref:Lcom/android/settings_ex/accounts/ChooseAccountActivity$ProviderEntry;
    :cond_d
    const-string v2, "ChooseAccountActivity"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 229
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    .local v12, auths:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/accounts/ChooseAccountActivity;->mAuthorities:[Ljava/lang/String;

    .local v11, arr$:[Ljava/lang/String;
    array-length v0, v11

    move/from16 v17, v0

    .local v17, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_5
    move/from16 v0, v17

    if-ge v14, v0, :cond_e

    aget-object v7, v11, v14

    .line 231
    .local v7, a:Ljava/lang/String;
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    const/16 v2, 0x20

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 230
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 234
    .end local v7           #a:Ljava/lang/String;
    :cond_e
    const-string v2, "ChooseAccountActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No providers found for authorities: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .end local v11           #arr$:[Ljava/lang/String;
    .end local v12           #auths:Ljava/lang/StringBuilder;
    .end local v14           #i$:I
    .end local v17           #len$:I
    :cond_f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 237
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_3
.end method

.method private updateAuthDescriptions()V
    .locals 4

    .prologue
    .line 143
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/accounts/ChooseAccountActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    .line 144
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/accounts/ChooseAccountActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/android/settings_ex/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/settings_ex/accounts/ChooseAccountActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings_ex/accounts/ChooseAccountActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v3, v3, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/ChooseAccountActivity;->onAuthDescriptionsUpdated()V

    .line 148
    return-void
.end method


# virtual methods
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
    .line 242
    iget-object v5, p0, Lcom/android/settings_ex/accounts/ChooseAccountActivity;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    if-nez v5, :cond_2

    .line 243
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/accounts/ChooseAccountActivity;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    .line 244
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v4

    .line 245
    .local v4, syncAdapters:[Landroid/content/SyncAdapterType;
    const/4 v1, 0x0

    .local v1, i:I
    array-length v2, v4

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 246
    aget-object v3, v4, v1

    .line 247
    .local v3, sa:Landroid/content/SyncAdapterType;
    iget-object v5, p0, Lcom/android/settings_ex/accounts/ChooseAccountActivity;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 248
    .local v0, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 250
    .restart local v0       #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/settings_ex/accounts/ChooseAccountActivity;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_0
    const-string v5, "ChooseAccountActivity"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 253
    const-string v5, "ChooseAccountActivity"

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

    .line 256
    :cond_1
    iget-object v5, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 259
    .end local v0           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #i:I
    .end local v2           #n:I
    .end local v3           #sa:Landroid/content/SyncAdapterType;
    .end local v4           #syncAdapters:[Landroid/content/SyncAdapterType;
    :cond_2
    iget-object v5, p0, Lcom/android/settings_ex/accounts/ChooseAccountActivity;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    return-object v5
.end method

.method protected getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "accountType"

    .prologue
    .line 281
    const/4 v3, 0x0

    .line 282
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/android/settings_ex/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 284
    :try_start_0
    iget-object v4, p0, Lcom/android/settings_ex/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    .line 285
    .local v1, desc:Landroid/accounts/AuthenticatorDescription;
    iget-object v4, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/ContextWrapper;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 286
    .local v0, authContext:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v1, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 295
    .end local v0           #authContext:Landroid/content/Context;
    .end local v1           #desc:Landroid/accounts/AuthenticatorDescription;
    :cond_0
    :goto_0
    return-object v3

    .line 287
    :catch_0
    move-exception v2

    .line 289
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "ChooseAccountActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No icon name for account type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 290
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 292
    .local v2, e:Landroid/content/res/Resources$NotFoundException;
    const-string v4, "ChooseAccountActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No icon resource for account type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7
    .parameter "accountType"

    .prologue
    .line 304
    const/4 v3, 0x0

    .line 305
    .local v3, label:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/settings_ex/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 307
    :try_start_0
    iget-object v4, p0, Lcom/android/settings_ex/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    .line 308
    .local v1, desc:Landroid/accounts/AuthenticatorDescription;
    iget-object v4, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/ContextWrapper;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 309
    .local v0, authContext:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v1, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 316
    .end local v0           #authContext:Landroid/content/Context;
    .end local v1           #desc:Landroid/accounts/AuthenticatorDescription;
    :cond_0
    :goto_0
    return-object v3

    .line 310
    :catch_0
    move-exception v2

    .line 311
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "ChooseAccountActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No label name for account type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 312
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 313
    .local v2, e:Landroid/content/res/Resources$NotFoundException;
    const-string v4, "ChooseAccountActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No label resource for account type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected isSignedIn(Ljava/lang/String;)Z
    .locals 3
    .parameter "type"

    .prologue
    .line 264
    const/4 v1, 0x0

    .line 265
    .local v1, isSignedIn:Z
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 266
    .local v0, accountManager:Landroid/accounts/AccountManager;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 267
    invoke-virtual {v0, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_0

    .line 268
    const/4 v1, 0x1

    .line 271
    :cond_0
    return v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v7, 0x1

    .line 100
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    const v5, 0x7f040009

    invoke-virtual {p0, v5}, Landroid/app/Activity;->setContentView(I)V

    .line 103
    const v5, 0x7f070009

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 104
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "authorities"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/accounts/ChooseAccountActivity;->mAuthorities:[Ljava/lang/String;

    .line 106
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "account_types"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, accountTypesFilter:[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 109
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Lcom/android/settings_ex/accounts/ChooseAccountActivity;->mAccountTypesFilter:Ljava/util/HashSet;

    .line 110
    move-object v2, v1

    .local v2, arr$:[Ljava/lang/String;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    .line 111
    .local v0, accountType:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings_ex/accounts/ChooseAccountActivity;->mAccountTypesFilter:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 110
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 114
    .end local v0           #accountType:Ljava/lang/String;
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/accounts/ChooseAccountActivity;->mAddAccountGroup:Landroid/preference/PreferenceGroup;

    .line 115
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/ChooseAccountActivity;->updateAuthDescriptions()V

    .line 118
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 119
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 120
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 123
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 128
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 134
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 130
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 131
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 132
    const/4 v0, 0x1

    goto :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferences"
    .parameter "preference"

    .prologue
    .line 321
    instance-of v1, p2, Lcom/android/settings_ex/accounts/ProviderPreference;

    if-eqz v1, :cond_1

    move-object v0, p2

    .line 322
    check-cast v0, Lcom/android/settings_ex/accounts/ProviderPreference;

    .line 323
    .local v0, pref:Lcom/android/settings_ex/accounts/ProviderPreference;
    const-string v1, "ChooseAccountActivity"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    const-string v1, "ChooseAccountActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to add account of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settings_ex/accounts/ProviderPreference;->getAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings_ex/accounts/ProviderPreference;->getAccountType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/accounts/ChooseAccountActivity;->finishWithAccountType(Ljava/lang/String;)V

    .line 363
    .end local v0           #pref:Lcom/android/settings_ex/accounts/ProviderPreference;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method
