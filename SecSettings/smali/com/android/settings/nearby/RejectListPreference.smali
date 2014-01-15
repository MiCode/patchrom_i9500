.class public Lcom/android/settings_ex/nearby/RejectListPreference;
.super Landroid/preference/MultiSelectListPreference;
.source "RejectListPreference.java"


# static fields
.field private static final HANDLE_REDRAW_POPUP:I = 0xbb9

.field public static final TAGClass:Ljava/lang/String; = "RejectListPreference"


# instance fields
.field private context:Landroid/content/Context;

.field private mAccessDevice:Lcom/android/settings_ex/nearby/AccessDeviceList;

.field private mDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/preference/MultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    iput-object v0, p0, Lcom/android/settings_ex/nearby/RejectListPreference;->context:Landroid/content/Context;

    .line 24
    iput-object v0, p0, Lcom/android/settings_ex/nearby/RejectListPreference;->mAccessDevice:Lcom/android/settings_ex/nearby/AccessDeviceList;

    .line 26
    iput-object v0, p0, Lcom/android/settings_ex/nearby/RejectListPreference;->mDialog:Landroid/app/AlertDialog;

    .line 92
    new-instance v0, Lcom/android/settings_ex/nearby/RejectListPreference$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/nearby/RejectListPreference$2;-><init>(Lcom/android/settings_ex/nearby/RejectListPreference;)V

    iput-object v0, p0, Lcom/android/settings_ex/nearby/RejectListPreference;->mHandler:Landroid/os/Handler;

    .line 31
    iput-object p1, p0, Lcom/android/settings_ex/nearby/RejectListPreference;->context:Landroid/content/Context;

    .line 32
    const v0, 0x7f090dbd

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->setPositiveButtonText(I)V

    .line 33
    const v0, 0x7f090db6

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->setNegativeButtonText(I)V

    .line 35
    new-instance v0, Lcom/android/settings_ex/nearby/AccessDeviceList;

    invoke-direct {v0, p1}, Lcom/android/settings_ex/nearby/AccessDeviceList;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/nearby/RejectListPreference;->mAccessDevice:Lcom/android/settings_ex/nearby/AccessDeviceList;

    .line 36
    iget-object v0, p0, Lcom/android/settings_ex/nearby/RejectListPreference;->mAccessDevice:Lcom/android/settings_ex/nearby/AccessDeviceList;

    invoke-virtual {v0}, Lcom/android/settings_ex/nearby/AccessDeviceList;->loadPreference()V

    .line 37
    return-void
.end method


# virtual methods
.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 3
    .parameter "builder"

    .prologue
    .line 41
    const-string v0, "RejectListPreference"

    const-string v1, "onPrepareDialogBuilder"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-super {p0, p1}, Landroid/preference/MultiSelectListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 43
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 47
    const-string v1, "RejectListPreference"

    const-string v2, "showDialog"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/android/settings_ex/nearby/RejectListPreference;->mAccessDevice:Lcom/android/settings_ex/nearby/AccessDeviceList;

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Lcom/android/settings_ex/nearby/AccessDeviceList;

    iget-object v2, p0, Lcom/android/settings_ex/nearby/RejectListPreference;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings_ex/nearby/AccessDeviceList;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/nearby/RejectListPreference;->mAccessDevice:Lcom/android/settings_ex/nearby/AccessDeviceList;

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/nearby/RejectListPreference;->mAccessDevice:Lcom/android/settings_ex/nearby/AccessDeviceList;

    invoke-virtual {v1}, Lcom/android/settings_ex/nearby/AccessDeviceList;->loadPreference()V

    .line 55
    iget-object v1, p0, Lcom/android/settings_ex/nearby/RejectListPreference;->mAccessDevice:Lcom/android/settings_ex/nearby/AccessDeviceList;

    invoke-virtual {v1}, Lcom/android/settings_ex/nearby/AccessDeviceList;->getRejectSize()I

    move-result v1

    if-nez v1, :cond_1

    .line 56
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings_ex/nearby/RejectListPreference;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings_ex/nearby/RejectListPreference;->context:Landroid/content/Context;

    const v3, 0x7f090dc7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/nearby/RejectListPreference;->context:Landroid/content/Context;

    const v3, 0x7f090dc5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090db5

    new-instance v3, Lcom/android/settings_ex/nearby/RejectListPreference$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/nearby/RejectListPreference$1;-><init>(Lcom/android/settings_ex/nearby/RejectListPreference;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/nearby/RejectListPreference;->mDialog:Landroid/app/AlertDialog;

    .line 74
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/nearby/RejectListPreference;->mAccessDevice:Lcom/android/settings_ex/nearby/AccessDeviceList;

    invoke-virtual {v1}, Lcom/android/settings_ex/nearby/AccessDeviceList;->getRejectEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/MultiSelectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 67
    iget-object v1, p0, Lcom/android/settings_ex/nearby/RejectListPreference;->mAccessDevice:Lcom/android/settings_ex/nearby/AccessDeviceList;

    invoke-virtual {v1}, Lcom/android/settings_ex/nearby/AccessDeviceList;->getRejectEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/MultiSelectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 69
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 72
    .local v0, dialog:Landroid/app/AlertDialog;
    iput-object v0, p0, Lcom/android/settings_ex/nearby/RejectListPreference;->mDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public updateDialog()Z
    .locals 4

    .prologue
    .line 77
    const-string v0, "RejectListPreference"

    const-string v1, "updateDialog"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/android/settings_ex/nearby/RejectListPreference;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/nearby/RejectListPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const-string v0, "RejectListPreference"

    const-string v1, "updateDialog"

    const-string v2, "refresh popup"

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/android/settings_ex/nearby/RejectListPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 84
    iget-object v0, p0, Lcom/android/settings_ex/nearby/RejectListPreference;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xbb9

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 86
    const/4 v0, 0x1

    .line 89
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
