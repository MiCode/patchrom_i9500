.class public Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;
.super Landroid/app/Fragment;
.source "ConfirmLockPassword.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ConfirmLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLockPasswordFragment"
.end annotation


# static fields
.field private static final ERROR_MESSAGE_TIMEOUT:J = 0xbb8L


# instance fields
.field private mContinueButton:Landroid/widget/Button;

.field private mDialog:Landroid/app/ProgressDialog;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOrientation:I

.field private mPasswordEntry:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHandler:Landroid/os/Handler;

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mOrientation:I

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)Lcom/android/internal/widget/PasswordEntryKeyboardView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mOrientation:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput p1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mOrientation:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getDeviceOrientation()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->showError(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method private getDeviceOrientation()I
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 200
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v1, v3, Landroid/content/res/Configuration;->orientation:I

    .line 201
    .local v1, orientation:I
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 202
    .local v2, rotation:I
    const/4 v0, -0x1

    .line 204
    .local v0, actual_orientation:I
    if-ne v1, v5, :cond_2

    if-eqz v2, :cond_0

    if-ne v2, v4, :cond_2

    .line 207
    :cond_0
    const/4 v0, 0x0

    .line 224
    :cond_1
    :goto_0
    return v0

    .line 208
    :cond_2
    if-ne v1, v4, :cond_4

    if-eqz v2, :cond_3

    if-ne v2, v4, :cond_4

    .line 211
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 212
    :cond_4
    if-ne v1, v5, :cond_6

    if-eq v2, v5, :cond_5

    if-ne v2, v6, :cond_6

    .line 215
    :cond_5
    const/16 v0, 0x8

    goto :goto_0

    .line 217
    :cond_6
    if-ne v1, v4, :cond_1

    if-eq v2, v5, :cond_7

    if-ne v2, v6, :cond_1

    .line 220
    :cond_7
    const/16 v0, 0x9

    goto :goto_0
.end method

.method private handleNext()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 229
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 231
    .local v7, pin:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isCACPasswordEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    new-instance v1, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$1;

    invoke-direct {v1, p0, v7}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$1;-><init>(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;Ljava/lang/String;)V

    new-array v0, v0, [Ljava/lang/String;

    aput-object v7, v0, v2

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 339
    :goto_0
    return-void

    .line 320
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v7}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 322
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 323
    .local v6, intent:Landroid/content/Intent;
    const-string v1, "password"

    invoke-virtual {v6, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v6}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 326
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 328
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Password created/changed successfully."

    move v1, v0

    move v2, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 332
    .end local v6           #intent:Landroid/content/Intent;
    :cond_1
    const v1, 0x7f090638

    invoke-direct {p0, v1}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->showError(I)V

    .line 334
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Password change/creation failed."

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showError(I)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 356
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$2;-><init>(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 363
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 385
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 386
    return-void

    .line 385
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 379
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 342
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 352
    :goto_0
    return-void

    .line 344
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleNext()V

    goto :goto_0

    .line 348
    :pswitch_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 349
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 342
    :pswitch_data_0
    .packed-switch 0x7f0b0051
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 115
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 116
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->initializeCACAuthentication()V

    .line 117
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 122
    iget-object v8, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v5

    .line 123
    .local v5, storedQuality:I
    const v8, 0x7f040031

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 126
    .local v7, view:Landroid/view/View;
    const v8, 0x7f0b0051

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    const v8, 0x7f0b0052

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    .line 128
    iget-object v8, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v8, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 131
    const v8, 0x7f0b0060

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    .line 132
    iget-object v8, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 133
    iget-object v8, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 134
    iget-object v8, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/high16 v9, 0x200

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 136
    const v8, 0x7f0b0062

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v8, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    .line 137
    const v8, 0x7f0b004f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    .line 138
    const/high16 v8, 0x4

    if-eq v8, v5, :cond_0

    const/high16 v8, 0x5

    if-eq v8, v5, :cond_0

    const/high16 v8, 0x6

    if-ne v8, v5, :cond_2

    :cond_0
    const/4 v3, 0x1

    .line 143
    .local v3, isAlpha:Z
    :goto_0
    new-instance v8, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDialog:Landroid/app/ProgressDialog;

    .line 146
    iget-object v8, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->isCACPasswordEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 147
    iget-object v8, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const v9, 0x7f0901c3

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 153
    :goto_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 154
    .local v0, activity:Landroid/app/Activity;
    new-instance v8, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v9, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iget-object v10, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v8, v0, v9, v10}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v8, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 156
    iget-object v9, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    if-eqz v3, :cond_5

    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v9, v8}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 159
    iget-object v8, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    .line 161
    iget-object v8, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    .line 162
    .local v1, currentType:I
    iget-object v8, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    if-eqz v3, :cond_6

    .end local v1           #currentType:I
    :goto_3
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 166
    instance-of v8, v0, Landroid/preference/PreferenceActivity;

    if-eqz v8, :cond_1

    move-object v4, v0

    .line 167
    check-cast v4, Landroid/preference/PreferenceActivity;

    .line 169
    .local v4, preferenceActivity:Landroid/preference/PreferenceActivity;
    iget-object v8, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->isCACPasswordEnabled()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 170
    const v2, 0x7f0901c3

    .line 178
    .local v2, id:I
    :goto_4
    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 179
    .local v6, title:Ljava/lang/CharSequence;
    invoke-virtual {v4, v6, v6}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 182
    .end local v2           #id:I
    .end local v4           #preferenceActivity:Landroid/preference/PreferenceActivity;
    .end local v6           #title:Ljava/lang/CharSequence;
    :cond_1
    return-object v7

    .line 138
    .end local v0           #activity:Landroid/app/Activity;
    .end local v3           #isAlpha:Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 150
    .restart local v3       #isAlpha:Z
    :cond_3
    iget-object v9, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    const v8, 0x7f09062a

    :goto_5
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_4
    const v8, 0x7f09062c

    goto :goto_5

    .line 156
    .restart local v0       #activity:Landroid/app/Activity;
    :cond_5
    const/4 v8, 0x1

    goto :goto_2

    .line 162
    .restart local v1       #currentType:I
    :cond_6
    const/16 v1, 0x12

    goto :goto_3

    .line 174
    .end local v1           #currentType:I
    .restart local v4       #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_7
    if-eqz v3, :cond_8

    const v2, 0x7f09062a

    .restart local v2       #id:I
    :goto_6
    goto :goto_4

    .end local v2           #id:I
    :cond_8
    const v2, 0x7f09062c

    goto :goto_6
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 368
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 371
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleNext()V

    .line 372
    const/4 v0, 0x1

    .line 374
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 187
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 188
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 189
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 194
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 195
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 196
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 382
    return-void
.end method
