.class public Lcom/android/settings_ex/OwnerInfoSettings;
.super Landroid/app/DialogFragment;
.source "OwnerInfoSettings.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OwnerInfoSettings"


# instance fields
.field context:Landroid/content/Context;

.field isFromUnlock:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEditText:Landroid/widget/EditText;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/OwnerInfoSettings;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/OwnerInfoSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings_ex/OwnerInfoSettings;->showInputMethod()V

    return-void
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/android/settings_ex/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private initView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/16 v6, 0x41

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 108
    invoke-virtual {p0}, Lcom/android/settings_ex/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 109
    .local v2, res:Landroid/content/ContentResolver;
    const-string v3, "lock_screen_owner_info"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, info:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_0

    .line 111
    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 113
    :cond_0
    const-string v3, "lock_screen_owner_info_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 115
    .local v0, enabled:I
    iget-object v3, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mView:Landroid/view/View;

    const v6, 0x7f0b0237

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v3, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 116
    iget-object v3, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mView:Landroid/view/View;

    const v6, 0x7f0b0236

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    .line 117
    iget-object v3, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-boolean v3, p0, Lcom/android/settings_ex/OwnerInfoSettings;->isFromUnlock:Z

    if-eqz v3, :cond_1

    .line 120
    iget-object v3, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    const/4 v6, 0x6

    invoke-virtual {v3, v6, v5}, Landroid/widget/EditText;->setNewActionPopupMenu(IZ)V

    .line 121
    iget-object v3, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    const-string v6, "inputType=option"

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 124
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setSelection(I)V

    .line 125
    :cond_2
    iget-object v6, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 126
    iget-object v3, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v0, :cond_5

    :goto_1
    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 127
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_3

    .line 128
    iget-object v3, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const v4, 0x7f090175

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setText(I)V

    .line 130
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    new-instance v4, Lcom/android/settings_ex/OwnerInfoSettings$2;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/OwnerInfoSettings$2;-><init>(Lcom/android/settings_ex/OwnerInfoSettings;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    .line 136
    invoke-direct {p0}, Lcom/android/settings_ex/OwnerInfoSettings;->showInputMethod()V

    .line 137
    return-void

    :cond_4
    move v3, v5

    .line 125
    goto :goto_0

    :cond_5
    move v4, v5

    .line 126
    goto :goto_1
.end method

.method public static newInstance(I)Lcom/android/settings_ex/OwnerInfoSettings;
    .locals 3
    .parameter "title"

    .prologue
    .line 60
    new-instance v1, Lcom/android/settings_ex/OwnerInfoSettings;

    invoke-direct {v1}, Lcom/android/settings_ex/OwnerInfoSettings;-><init>()V

    .line 61
    .local v1, frag:Lcom/android/settings_ex/OwnerInfoSettings;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 62
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/OwnerInfoSettings;->setArguments(Landroid/os/Bundle;)V

    .line 64
    return-object v1
.end method

.method private showInputMethod()V
    .locals 4

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 151
    iget-object v0, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings_ex/OwnerInfoSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/OwnerInfoSettings$3;-><init>(Lcom/android/settings_ex/OwnerInfoSettings;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 172
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings_ex/OwnerInfoSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/OwnerInfoSettings$4;-><init>(Lcom/android/settings_ex/OwnerInfoSettings;)V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings_ex/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/OwnerInfoSettings;->context:Landroid/content/Context;

    .line 71
    invoke-virtual {p0}, Lcom/android/settings_ex/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 72
    .local v0, intent:Landroid/content/Intent;
    iput-boolean v2, p0, Lcom/android/settings_ex/OwnerInfoSettings;->isFromUnlock:Z

    .line 73
    const-string v1, "direct_lockscren"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/OwnerInfoSettings;->isFromUnlock:Z

    .line 75
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 86
    invoke-virtual {p0}, Lcom/android/settings_ex/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400ca

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mView:Landroid/view/View;

    .line 87
    iget-object v1, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/OwnerInfoSettings;->initView(Landroid/view/View;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings_ex/OwnerInfoSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 90
    .local v0, titleRes:I
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    const v0, 0x7f090176

    .line 93
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings_ex/OwnerInfoSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/OwnerInfoSettings$1;-><init>(Lcom/android/settings_ex/OwnerInfoSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mAlertDialog:Landroid/app/AlertDialog;

    .line 104
    iget-object v1, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 80
    invoke-super {p0, p1, p2, p3}, Landroid/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 200
    const-string v1, "OwnerInfoSettings"

    const-string v2, "onDestroyView"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {p0}, Lcom/android/settings_ex/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 202
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 203
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 204
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 176
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 178
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 182
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 184
    invoke-direct {p0}, Lcom/android/settings_ex/OwnerInfoSettings;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getMiscPolicy()Landroid/app/enterprise/MiscPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/MiscPolicy;->getCurrentLockScreenString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 187
    iget-object v0, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    .line 195
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 191
    iget-object v0, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    .line 192
    invoke-direct {p0}, Lcom/android/settings_ex/OwnerInfoSettings;->showInputMethod()V

    goto :goto_0
.end method

.method saveToDb()V
    .locals 5

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/android/settings_ex/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 209
    .local v2, res:Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, info:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    .line 211
    .local v1, isChecked:Z
    const-string v3, "lock_screen_owner_info"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 212
    const-string v4, "lock_screen_owner_info_enabled"

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 213
    return-void

    .line 212
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
