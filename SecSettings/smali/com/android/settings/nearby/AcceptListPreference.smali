.class public Lcom/android/settings_ex/nearby/AcceptListPreference;
.super Landroid/preference/MultiSelectListPreference;
.source "AcceptListPreference.java"


# instance fields
.field private final HANDLE_REDRAW_POPUP:I

.field private final TAGClass:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private mAccessDevice:Lcom/android/settings_ex/nearby/AccessDeviceList;

.field private mDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/preference/MultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    iput-object v1, p0, Lcom/android/settings_ex/nearby/AcceptListPreference;->context:Landroid/content/Context;

    .line 20
    const-string v0, "AcceptListPreference"

    iput-object v0, p0, Lcom/android/settings_ex/nearby/AcceptListPreference;->TAGClass:Ljava/lang/String;

    .line 22
    const/16 v0, 0xbb9

    iput v0, p0, Lcom/android/settings_ex/nearby/AcceptListPreference;->HANDLE_REDRAW_POPUP:I

    .line 24
    iput-object v1, p0, Lcom/android/settings_ex/nearby/AcceptListPreference;->mAccessDevice:Lcom/android/settings_ex/nearby/AccessDeviceList;

    .line 26
    iput-object v1, p0, Lcom/android/settings_ex/nearby/AcceptListPreference;->mDialog:Landroid/app/AlertDialog;

    .line 96
    new-instance v0, Lcom/android/settings_ex/nearby/AcceptListPreference$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/nearby/AcceptListPreference$2;-><init>(Lcom/android/settings_ex/nearby/AcceptListPreference;)V

    iput-object v0, p0, Lcom/android/settings_ex/nearby/AcceptListPreference;->mHandler:Landroid/os/Handler;

    .line 31
    iput-object p1, p0, Lcom/android/settings_ex/nearby/AcceptListPreference;->context:Landroid/content/Context;

    .line 32
    const v0, 0x7f090dbd

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->setPositiveButtonText(I)V

    .line 33
    const v0, 0x7f090db6

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->setNegativeButtonText(I)V

    .line 35
    new-instance v0, Lcom/android/settings_ex/nearby/AccessDeviceList;

    invoke-direct {v0, p1}, Lcom/android/settings_ex/nearby/AccessDeviceList;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/nearby/AcceptListPreference;->mAccessDevice:Lcom/android/settings_ex/nearby/AccessDeviceList;

    .line 36
    iget-object v0, p0, Lcom/android/settings_ex/nearby/AcceptListPreference;->mAccessDevice:Lcom/android/settings_ex/nearby/AccessDeviceList;

    invoke-virtual {v0}, Lcom/android/settings_ex/nearby/AccessDeviceList;->loadPreference()V

    .line 38
    return-void
.end method


# virtual methods
.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 3
    .parameter "builder"

    .prologue
    .line 42
    const-string v0, "AcceptListPreference"

    const-string v1, "onPrepareDialogBuilder"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-super {p0, p1}, Landroid/preference/MultiSelectListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 44
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 5
    .parameter "state"

    .prologue
    const v4, 0x7f090dc1

    .line 48
    const-string v1, "AcceptListPreference"

    const-string v2, "showDialog"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lcom/android/settings_ex/nearby/AcceptListPreference;->mAccessDevice:Lcom/android/settings_ex/nearby/AccessDeviceList;

    if-nez v1, :cond_0

    .line 51
    new-instance v1, Lcom/android/settings_ex/nearby/AccessDeviceList;

    iget-object v2, p0, Lcom/android/settings_ex/nearby/AcceptListPreference;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings_ex/nearby/AccessDeviceList;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/nearby/AcceptListPreference;->mAccessDevice:Lcom/android/settings_ex/nearby/AccessDeviceList;

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/nearby/AcceptListPreference;->mAccessDevice:Lcom/android/settings_ex/nearby/AccessDeviceList;

    invoke-virtual {v1}, Lcom/android/settings_ex/nearby/AccessDeviceList;->loadPreference()V

    .line 56
    iget-object v1, p0, Lcom/android/settings_ex/nearby/AcceptListPreference;->mAccessDevice:Lcom/android/settings_ex/nearby/AccessDeviceList;

    invoke-virtual {v1}, Lcom/android/settings_ex/nearby/AccessDeviceList;->getAcceptSize()I

    move-result v1

    if-nez v1, :cond_1

    .line 57
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings_ex/nearby/AcceptListPreference;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings_ex/nearby/AcceptListPreference;->context:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/nearby/AcceptListPreference;->context:Landroid/content/Context;

    const v3, 0x7f090dc5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090db5

    new-instance v3, Lcom/android/settings_ex/nearby/AcceptListPreference$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/nearby/AcceptListPreference$1;-><init>(Lcom/android/settings_ex/nearby/AcceptListPreference;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/nearby/AcceptListPreference;->mDialog:Landroid/app/AlertDialog;

    .line 78
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/nearby/AcceptListPreference;->mAccessDevice:Lcom/android/settings_ex/nearby/AccessDeviceList;

    invoke-virtual {v1}, Lcom/android/settings_ex/nearby/AccessDeviceList;->getAcceptEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/MultiSelectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 68
    iget-object v1, p0, Lcom/android/settings_ex/nearby/AcceptListPreference;->mAccessDevice:Lcom/android/settings_ex/nearby/AccessDeviceList;

    invoke-virtual {v1}, Lcom/android/settings_ex/nearby/AccessDeviceList;->getAcceptEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/MultiSelectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 70
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 73
    .local v0, dialog:Landroid/app/AlertDialog;
    iput-object v0, p0, Lcom/android/settings_ex/nearby/AcceptListPreference;->mDialog:Landroid/app/AlertDialog;

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/nearby/AcceptListPreference;->mAccessDevice:Lcom/android/settings_ex/nearby/AccessDeviceList;

    invoke-virtual {v2}, Lcom/android/settings_ex/nearby/AccessDeviceList;->getAcceptSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/10)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateDialog()Z
    .locals 4

    .prologue
    .line 81
    const-string v0, "AcceptListPreference"

    const-string v1, "updateDialog"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/android/settings_ex/nearby/AcceptListPreference;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/settings_ex/nearby/AcceptListPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "AcceptListPreference"

    const-string v1, "updateDialog"

    const-string v2, "refresh popup"

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/android/settings_ex/nearby/AcceptListPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 88
    iget-object v0, p0, Lcom/android/settings_ex/nearby/AcceptListPreference;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xbb9

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 90
    const/4 v0, 0x1

    .line 93
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
