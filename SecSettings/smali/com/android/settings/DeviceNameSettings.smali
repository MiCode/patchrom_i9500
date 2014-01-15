.class public Lcom/android/settings_ex/DeviceNameSettings;
.super Landroid/app/DialogFragment;
.source "DeviceNameSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/DeviceNameSettings$ConfirmationDialogFragmentListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceNameSettings"


# instance fields
.field private listener:Lcom/android/settings_ex/DeviceNameSettings$ConfirmationDialogFragmentListener;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mEditText:Landroid/widget/EditText;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/DeviceNameSettings;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings_ex/DeviceNameSettings;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/DeviceNameSettings;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings_ex/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method private initView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 110
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 111
    .local v2, res:Landroid/content/ContentResolver;
    const-string v3, "device_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, deviceName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/DeviceNameSettings;->mView:Landroid/view/View;

    const v4, 0x7f0b0107

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/settings_ex/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    .line 113
    iget-object v3, p0, Lcom/android/settings_ex/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 116
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 122
    iget-object v3, p0, Lcom/android/settings_ex/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    new-instance v4, Lcom/android/settings_ex/DeviceNameSettings$2;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/DeviceNameSettings$2;-><init>(Lcom/android/settings_ex/DeviceNameSettings;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 132
    invoke-direct {p0}, Lcom/android/settings_ex/DeviceNameSettings;->showInputMethod()V

    .line 133
    return-void

    .line 117
    :catch_0
    move-exception v1

    .line 118
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "DeviceNameSettings"

    const-string v4, "Caught Exception setSelection"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static newInstance(I)Lcom/android/settings_ex/DeviceNameSettings;
    .locals 3
    .parameter "title"

    .prologue
    .line 60
    new-instance v1, Lcom/android/settings_ex/DeviceNameSettings;

    invoke-direct {v1}, Lcom/android/settings_ex/DeviceNameSettings;-><init>()V

    .line 61
    .local v1, frag:Lcom/android/settings_ex/DeviceNameSettings;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 62
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 64
    return-object v1
.end method

.method private showInputMethod()V
    .locals 4

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/settings_ex/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/settings_ex/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 157
    iget-object v0, p0, Lcom/android/settings_ex/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings_ex/DeviceNameSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/DeviceNameSettings$3;-><init>(Lcom/android/settings_ex/DeviceNameSettings;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 181
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings_ex/DeviceNameSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/DeviceNameSettings$4;-><init>(Lcom/android/settings_ex/DeviceNameSettings;)V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/settings_ex/DeviceNameSettings;->listener:Lcom/android/settings_ex/DeviceNameSettings$ConfirmationDialogFragmentListener;

    if-eqz v0, :cond_0

    .line 143
    packed-switch p2, :pswitch_data_0

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 145
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceNameSettings;->saveToDb()V

    .line 146
    iget-object v0, p0, Lcom/android/settings_ex/DeviceNameSettings;->listener:Lcom/android/settings_ex/DeviceNameSettings$ConfirmationDialogFragmentListener;

    invoke-interface {v0}, Lcom/android/settings_ex/DeviceNameSettings$ConfirmationDialogFragmentListener;->onPositiveClick()V

    goto :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 76
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04005a

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DeviceNameSettings;->mView:Landroid/view/View;

    .line 77
    iget-object v0, p0, Lcom/android/settings_ex/DeviceNameSettings;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/DeviceNameSettings;->initView(Landroid/view/View;)V

    .line 79
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings_ex/DeviceNameSettings;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DeviceNameSettings;->mAlertDialog:Landroid/app/AlertDialog;

    .line 86
    iget-object v0, p0, Lcom/android/settings_ex/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings_ex/DeviceNameSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/DeviceNameSettings$1;-><init>(Lcom/android/settings_ex/DeviceNameSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 106
    iget-object v0, p0, Lcom/android/settings_ex/DeviceNameSettings;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 70
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 198
    const-string v1, "DeviceNameSettings"

    const-string v2, "onDestroyView"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 200
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/settings_ex/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 201
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 202
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 185
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 187
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 191
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 192
    invoke-direct {p0}, Lcom/android/settings_ex/DeviceNameSettings;->showInputMethod()V

    .line 193
    return-void
.end method

.method saveToDb()V
    .locals 3

    .prologue
    .line 206
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 207
    .local v1, res:Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/settings_ex/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, deviceName:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 209
    const-string v2, "device_name"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 211
    :cond_0
    return-void
.end method

.method public setConfirmationDialogFragmentListener(Lcom/android/settings_ex/DeviceNameSettings$ConfirmationDialogFragmentListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/settings_ex/DeviceNameSettings;->listener:Lcom/android/settings_ex/DeviceNameSettings$ConfirmationDialogFragmentListener;

    .line 138
    return-void
.end method
