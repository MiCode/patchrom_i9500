.class public Lcom/android/settings_ex/cloud/CloudDialog;
.super Landroid/app/DialogFragment;
.source "CloudDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/cloud/CloudDialog$DialogListener;
    }
.end annotation


# static fields
.field public static final DIALOG_ACCOUNT_REMOVE:I = 0x0

.field public static final DIALOG_DISABLE_WIFI_ONLY:I = 0x3

.field public static final DIALOG_LOGOUT_BAIDU:I = 0xa

.field public static final DIALOG_REMOVE_CACHED_DATA:I = 0x2

.field public static final DIALOG_REQUEST_PROCESSING:I = 0x1


# instance fields
.field private dialogListener:Lcom/android/settings_ex/cloud/CloudDialog$DialogListener;

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/android/settings_ex/cloud/CloudDialog;->progressDialog:Landroid/app/ProgressDialog;

    .line 70
    iput-object v0, p0, Lcom/android/settings_ex/cloud/CloudDialog;->dialogListener:Lcom/android/settings_ex/cloud/CloudDialog$DialogListener;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/cloud/CloudDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/settings_ex/cloud/CloudDialog;->dismissProgressDialog()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/cloud/CloudDialog;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/settings_ex/cloud/CloudDialog;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/cloud/CloudDialog;)Lcom/android/settings_ex/cloud/CloudDialog$DialogListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/settings_ex/cloud/CloudDialog;->dialogListener:Lcom/android/settings_ex/cloud/CloudDialog$DialogListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/cloud/CloudDialog;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/settings_ex/cloud/CloudDialog;->removeAccount(Ljava/lang/String;)V

    return-void
.end method

.method private dismissProgressDialog()Z
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/settings_ex/cloud/CloudDialog;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/settings_ex/cloud/CloudDialog;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/settings_ex/cloud/CloudDialog;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/cloud/CloudDialog;->progressDialog:Landroid/app/ProgressDialog;

    .line 236
    const/4 v0, 0x1

    .line 239
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance(ILjava/lang/String;Lcom/android/settings_ex/cloud/CloudDialog$DialogListener;)Lcom/android/settings_ex/cloud/CloudDialog;
    .locals 3
    .parameter "dialogType"
    .parameter "message"
    .parameter "dialogListener"

    .prologue
    .line 89
    new-instance v1, Lcom/android/settings_ex/cloud/CloudDialog;

    invoke-direct {v1}, Lcom/android/settings_ex/cloud/CloudDialog;-><init>()V

    .line 90
    .local v1, cloudDialog:Lcom/android/settings_ex/cloud/CloudDialog;
    iput-object p2, v1, Lcom/android/settings_ex/cloud/CloudDialog;->dialogListener:Lcom/android/settings_ex/cloud/CloudDialog$DialogListener;

    .line 91
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 92
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "dialogType"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 93
    const-string v2, "message"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 96
    return-object v1
.end method

.method private removeAccount(Ljava/lang/String;)V
    .locals 4
    .parameter "accountName"

    .prologue
    .line 249
    if-eqz p1, :cond_0

    .line 250
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.cloudagent.ACTION_REQUEST_CLOUD_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 251
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "storageVender"

    invoke-static {}, Lcom/android/settings_ex/cloud/CloudSettings;->getInstance()Lcom/android/settings_ex/cloud/CloudSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings_ex/cloud/CloudSettings;->getVenderId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 253
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 254
    const-string v1, "CloudSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeAccount -->  sending intent with Cloud Status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/high16 v4, 0x104

    const/4 v3, 0x0

    .line 104
    const/4 v6, 0x0

    .line 105
    .local v6, alertDialog:Landroid/app/AlertDialog;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 107
    .local v7, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "dialogType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    move-object v0, v6

    .line 225
    :goto_1
    return-object v0

    .line 109
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0910e1

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/cloud/CloudDialog;->progressDialog:Landroid/app/ProgressDialog;

    .line 113
    new-instance v0, Lcom/android/settings_ex/cloud/CloudDialog$1;

    const-wide/16 v2, 0x4e20

    const-wide/16 v4, 0x1388

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/cloud/CloudDialog$1;-><init>(Lcom/android/settings_ex/cloud/CloudDialog;JJ)V

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 133
    iget-object v0, p0, Lcom/android/settings_ex/cloud/CloudDialog;->progressDialog:Landroid/app/ProgressDialog;

    goto :goto_1

    .line 135
    :sswitch_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 136
    .local v10, warningMessage:Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0910e5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0910e6

    new-instance v2, Lcom/android/settings_ex/cloud/CloudDialog$3;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/cloud/CloudDialog$3;-><init>(Lcom/android/settings_ex/cloud/CloudDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings_ex/cloud/CloudDialog$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/cloud/CloudDialog$2;-><init>(Lcom/android/settings_ex/cloud/CloudDialog;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 159
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 160
    invoke-virtual {v6, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0

    .line 163
    .end local v10           #warningMessage:Ljava/lang/String;
    :sswitch_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 164
    .local v9, message:Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0910ea

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090e5a

    new-instance v2, Lcom/android/settings_ex/cloud/CloudDialog$5;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/cloud/CloudDialog$5;-><init>(Lcom/android/settings_ex/cloud/CloudDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings_ex/cloud/CloudDialog$4;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/cloud/CloudDialog$4;-><init>(Lcom/android/settings_ex/cloud/CloudDialog;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 187
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 188
    invoke-virtual {v6, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    goto/16 :goto_0

    .line 192
    .end local v9           #message:Ljava/lang/String;
    :sswitch_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 193
    .local v8, logoutMessage:Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0910ca

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings_ex/cloud/CloudDialog$7;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/cloud/CloudDialog$7;-><init>(Lcom/android/settings_ex/cloud/CloudDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings_ex/cloud/CloudDialog$6;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/cloud/CloudDialog$6;-><init>(Lcom/android/settings_ex/cloud/CloudDialog;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 217
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 218
    invoke-virtual {v6, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    goto/16 :goto_0

    .line 107
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0xa -> :sswitch_3
    .end sparse-switch
.end method
