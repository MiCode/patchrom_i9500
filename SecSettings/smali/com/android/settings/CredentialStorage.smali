.class public final Lcom/android/settings_ex/CredentialStorage;
.super Landroid/app/Activity;
.source "CredentialStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/CredentialStorage$1;,
        Lcom/android/settings_ex/CredentialStorage$UnlockDialog;,
        Lcom/android/settings_ex/CredentialStorage$ConfigureKeyGuardDialog;,
        Lcom/android/settings_ex/CredentialStorage$ResetKeyStoreAndKeyChain;,
        Lcom/android/settings_ex/CredentialStorage$ResetDialog;
    }
.end annotation


# static fields
.field public static final ACTION_INSTALL:Ljava/lang/String; = "com.android.credentials.INSTALL"

.field public static final ACTION_RESET:Ljava/lang/String; = "com.android.credentials.RESET"

.field public static final ACTION_UNLOCK:Ljava/lang/String; = "com.android.credentials.UNLOCK"

.field private static final CONFIRM_KEY_GUARD_REQUEST:I = 0x1

.field static final MIN_PASSWORD_QUALITY:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "CredentialStorage"


# instance fields
.field private mInstallBundle:Landroid/os/Bundle;

.field private mIsShowingConfigureKeyGuardDialog:Z

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRetriesRemaining:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 95
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/CredentialStorage;->mRetriesRemaining:I

    .line 352
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/CredentialStorage;->mIsShowingConfigureKeyGuardDialog:Z

    .line 430
    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/CredentialStorage;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings_ex/CredentialStorage;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings_ex/CredentialStorage;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/settings_ex/CredentialStorage;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings_ex/CredentialStorage;)Landroid/security/KeyStore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings_ex/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/CredentialStorage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/settings_ex/CredentialStorage;->mIsShowingConfigureKeyGuardDialog:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/settings_ex/CredentialStorage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/settings_ex/CredentialStorage;->mIsShowingConfigureKeyGuardDialog:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/settings_ex/CredentialStorage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/android/settings_ex/CredentialStorage;->mRetriesRemaining:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/settings_ex/CredentialStorage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Lcom/android/settings_ex/CredentialStorage;->mRetriesRemaining:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings_ex/CredentialStorage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/settings_ex/CredentialStorage;->ensureKeyGuard()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings_ex/CredentialStorage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/settings_ex/CredentialStorage;->handleUnlockOrInstall()V

    return-void
.end method

.method private checkKeyGuardQuality()Z
    .locals 2

    .prologue
    .line 201
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v0

    .line 202
    .local v0, quality:I
    const/high16 v1, 0x1

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private confirmKeyGuard()Z
    .locals 6

    .prologue
    .line 394
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 395
    .local v1, res:Landroid/content/res/Resources;
    new-instance v2, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const/4 v3, 0x1

    const v4, 0x7f090833

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const v5, 0x7f090834

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 399
    .local v0, launched:Z
    return v0
.end method

.method private ensureKeyGuard()V
    .locals 2

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/android/settings_ex/CredentialStorage;->checkKeyGuardQuality()Z

    move-result v0

    if-nez v0, :cond_1

    .line 185
    new-instance v0, Lcom/android/settings_ex/CredentialStorage$ConfigureKeyGuardDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/CredentialStorage$ConfigureKeyGuardDialog;-><init>(Lcom/android/settings_ex/CredentialStorage;Lcom/android/settings_ex/CredentialStorage$1;)V

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/CredentialStorage;->confirmKeyGuard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private handleUnlockOrInstall()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 152
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    :goto_0
    return-void

    .line 155
    :cond_0
    sget-object v0, Lcom/android/settings_ex/CredentialStorage$1;->$SwitchMap$android$security$KeyStore$State:[I

    iget-object v1, p0, Lcom/android/settings_ex/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 157
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/CredentialStorage;->ensureKeyGuard()V

    goto :goto_0

    .line 161
    :pswitch_1
    new-instance v0, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;

    invoke-direct {v0, p0, v2}, Lcom/android/settings_ex/CredentialStorage$UnlockDialog;-><init>(Lcom/android/settings_ex/CredentialStorage;Lcom/android/settings_ex/CredentialStorage$1;)V

    goto :goto_0

    .line 165
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings_ex/CredentialStorage;->checkKeyGuardQuality()Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    new-instance v0, Lcom/android/settings_ex/CredentialStorage$ConfigureKeyGuardDialog;

    invoke-direct {v0, p0, v2}, Lcom/android/settings_ex/CredentialStorage$ConfigureKeyGuardDialog;-><init>(Lcom/android/settings_ex/CredentialStorage;Lcom/android/settings_ex/CredentialStorage$1;)V

    goto :goto_0

    .line 169
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/CredentialStorage;->installIfAvailable()V

    .line 170
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private installIfAvailable()V
    .locals 14

    .prologue
    .line 209
    iget-object v11, p0, Lcom/android/settings_ex/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/settings_ex/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    invoke-virtual {v11}, Landroid/os/Bundle;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/settings_ex/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    .line 211
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/settings_ex/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    .line 213
    const-string v11, "user_private_key_name"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 214
    const-string v11, "user_private_key_name"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 215
    .local v5, key:Ljava/lang/String;
    const-string v11, "user_private_key_data"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v6

    .line 217
    .local v6, value:[B
    iget-object v11, p0, Lcom/android/settings_ex/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v11, v5, v6}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[B)Z

    move-result v11

    if-nez v11, :cond_1

    .line 218
    const-string v11, "CredentialStorage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to install "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v5           #key:Ljava/lang/String;
    .end local v6           #value:[B
    :cond_0
    :goto_0
    return-void

    .line 223
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_1
    const-string v11, "user_certificate_name"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 224
    const-string v11, "user_certificate_name"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, certName:Ljava/lang/String;
    const-string v11, "user_certificate_data"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 227
    .local v3, certData:[B
    iget-object v11, p0, Lcom/android/settings_ex/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v11, v4, v3}, Landroid/security/KeyStore;->put(Ljava/lang/String;[B)Z

    move-result v11

    if-nez v11, :cond_2

    .line 228
    const-string v11, "CredentialStorage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to install "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 233
    .end local v3           #certData:[B
    .end local v4           #certName:Ljava/lang/String;
    :cond_2
    const-string v11, "ca_certificates_name"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 234
    const-string v11, "ca_certificates_name"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, caListName:Ljava/lang/String;
    const-string v11, "ca_certificates_data"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 237
    .local v1, caListData:[B
    iget-object v11, p0, Lcom/android/settings_ex/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v11, v2, v1}, Landroid/security/KeyStore;->put(Ljava/lang/String;[B)Z

    move-result v11

    if-nez v11, :cond_3

    .line 238
    const-string v11, "CredentialStorage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to install "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 246
    .end local v1           #caListData:[B
    .end local v2           #caListName:Ljava/lang/String;
    :cond_3
    const-string v11, "wapi_as_certificates_name"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 247
    const-string v11, "wapi_as_certificates_name"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 248
    .local v8, wapiascertName:Ljava/lang/String;
    const-string v11, "wapi_as_certificates_data"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 250
    .local v7, wapiascertData:[B
    iget-object v11, p0, Lcom/android/settings_ex/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v11, v8, v7}, Landroid/security/KeyStore;->put(Ljava/lang/String;[B)Z

    move-result v11

    if-nez v11, :cond_4

    .line 251
    const-string v11, "CredentialStorage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to install "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 256
    .end local v7           #wapiascertData:[B
    .end local v8           #wapiascertName:Ljava/lang/String;
    :cond_4
    const-string v11, "wapi_user_certificates_name"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 257
    const-string v11, "wapi_user_certificates_name"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 258
    .local v10, wapiuscertName:Ljava/lang/String;
    const-string v11, "wapi_user_certificates_data"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v9

    .line 260
    .local v9, wapiuscertData:[B
    iget-object v11, p0, Lcom/android/settings_ex/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v11, v10, v9}, Landroid/security/KeyStore;->put(Ljava/lang/String;[B)Z

    move-result v11

    if-nez v11, :cond_5

    .line 261
    const-string v11, "CredentialStorage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to install "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 268
    .end local v9           #wapiuscertData:[B
    .end local v10           #wapiuscertName:Ljava/lang/String;
    :cond_5
    const/4 v11, -0x1

    invoke-virtual {p0, v11}, Landroid/app/Activity;->setResult(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 404
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 409
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 410
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 411
    const-string v1, "password"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, password:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 414
    iget-object v1, p0, Lcom/android/settings_ex/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    .line 422
    .end local v0           #password:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 141
    iget-object v0, p0, Lcom/android/settings_ex/CredentialStorage;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/settings_ex/CredentialStorage;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 144
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 114
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 116
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    const-string v2, "CredentialStorage"

    const-string v3, "Cannot install to CredentialStorage as non-primary user"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 135
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 123
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.android.credentials.RESET"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 126
    new-instance v2, Lcom/android/settings_ex/CredentialStorage$ResetDialog;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings_ex/CredentialStorage$ResetDialog;-><init>(Lcom/android/settings_ex/CredentialStorage;Lcom/android/settings_ex/CredentialStorage$1;)V

    goto :goto_0

    .line 128
    :cond_1
    const-string v2, "com.android.credentials.INSTALL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "com.android.certinstaller"

    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 130
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    .line 133
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/CredentialStorage;->handleUnlockOrInstall()V

    goto :goto_0
.end method
