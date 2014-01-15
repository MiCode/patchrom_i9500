.class public Lcom/android/settings_ex/accounts/AddAccountSettings;
.super Landroid/app/Activity;
.source "AddAccountSettings.java"


# static fields
.field private static final ADD_ACCOUNT_REQUEST:I = 0x2

.field private static final CHOOSE_ACCOUNT_REQUEST:I = 0x1

.field static final EXTRA_HAS_MULTIPLE_USERS:Ljava/lang/String; = "hasMultipleUsers"

.field static final EXTRA_SELECTED_ACCOUNT:Ljava/lang/String; = "selected_account"

.field private static final KEY_ADD_CALLED:Ljava/lang/String; = "AddAccountCalled"

.field private static final KEY_CALLER_IDENTITY:Ljava/lang/String; = "pendingIntent"

.field private static final KEY_CHOOSE_ACCOUNT_FINISHED:Ljava/lang/String; = "ChooseAccountFinished"

.field private static final TAG:Ljava/lang/String; = "AccountSettings"


# instance fields
.field private mAddAccountCalled:Z

.field private mCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mChooseAccountFinished:Z

.field private mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 81
    new-instance v0, Lcom/android/settings_ex/accounts/AddAccountSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/accounts/AddAccountSettings$1;-><init>(Lcom/android/settings_ex/accounts/AddAccountSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mCallback:Landroid/accounts/AccountManagerCallback;

    .line 119
    iput-boolean v1, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mAddAccountCalled:Z

    .line 120
    iput-boolean v1, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mChooseAccountFinished:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/accounts/AddAccountSettings;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/accounts/AddAccountSettings;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method private addAccount(Ljava/lang/String;)V
    .locals 8
    .parameter "accountType"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 199
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 200
    .local v4, addAccountOptions:Landroid/os/Bundle;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    .line 201
    const-string v0, "pendingIntent"

    iget-object v1, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 202
    const-string v0, "hasMultipleUsers"

    invoke-static {p0}, Lcom/android/settings_ex/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 236
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v6, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mCallback:Landroid/accounts/AccountManagerCallback;

    move-object v1, p1

    move-object v3, v2

    move-object v5, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mAddAccountCalled:Z

    .line 245
    return-void
.end method

.method private checkInstalledfbApp()Z
    .locals 4

    .prologue
    .line 250
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.facebook.katana"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "AccountSettings"

    const-string v2, "FB app is not installed"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 169
    packed-switch p1, :pswitch_data_0

    .line 189
    :goto_0
    return-void

    .line 171
    :pswitch_0
    if-nez p2, :cond_0

    .line 172
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mChooseAccountFinished:Z

    .line 174
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 178
    :cond_0
    const-string v0, "selected_account"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/accounts/AddAccountSettings;->addAccount(Ljava/lang/String;)V

    goto :goto_0

    .line 181
    :pswitch_1
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 182
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    .line 186
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 126
    if-eqz p1, :cond_1

    .line 127
    const-string v3, "AddAccountCalled"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mAddAccountCalled:Z

    .line 128
    const-string v3, "ChooseAccountFinished"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mChooseAccountFinished:Z

    .line 130
    iget-boolean v3, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mChooseAccountFinished:Z

    if-nez v3, :cond_0

    .line 154
    :goto_0
    return-void

    .line 134
    :cond_0
    const-string v3, "AccountSettings"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "AccountSettings"

    const-string v4, "restored"

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_1
    iget-boolean v3, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mAddAccountCalled:Z

    if-eqz v3, :cond_2

    .line 139
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 142
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "authorities"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, authorities:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "account_types"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, accountTypes:[Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/settings_ex/accounts/ChooseAccountActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    .local v2, intent:Landroid/content/Intent;
    if-eqz v1, :cond_3

    .line 148
    const-string v3, "authorities"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    :cond_3
    if-eqz v0, :cond_4

    .line 151
    const-string v3, "account_types"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    :cond_4
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 160
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 161
    invoke-static {p0}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 163
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 165
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 192
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 193
    const-string v0, "ChooseAccountFinished"

    iget-boolean v1, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mChooseAccountFinished:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 194
    const-string v0, "AddAccountCalled"

    iget-boolean v1, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mAddAccountCalled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 195
    const-string v0, "AccountSettings"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AccountSettings"

    const-string v1, "saved"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_0
    return-void
.end method
