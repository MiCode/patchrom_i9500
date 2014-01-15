.class public Lcom/android/settings_ex/myprofile/EditMyProfileDialog;
.super Landroid/app/DialogFragment;
.source "EditMyProfileDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/myprofile/EditMyProfileDialog$OnProfileTextChangedListener;
    }
.end annotation


# static fields
.field private static final DB_MY_PROFILE_INFORMATION:Ljava/lang/String; = "my_profile_information"

.field private static final PROFILE_MAX_CHAR_LIMIT:I = 0x3c


# instance fields
.field EditProfileLimitTextWatcher:Landroid/text/TextWatcher;

.field private final TAG:Ljava/lang/String;

.field private dialog:Landroid/app/AlertDialog;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mEditMyProfile:Landroid/widget/EditText;

.field private mFixedTitleString:Ljava/lang/String;

.field private mLabelEditMyProfile:Landroid/widget/TextView;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mOnProfileTextChangedListener:Lcom/android/settings_ex/myprofile/EditMyProfileDialog$OnProfileTextChangedListener;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/myprofile/EditMyProfileDialog;->TAG:Ljava/lang/String;

    .line 170
    new-instance v0, Lcom/android/settings_ex/myprofile/EditMyProfileDialog$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/myprofile/EditMyProfileDialog$3;-><init>(Lcom/android/settings_ex/myprofile/EditMyProfileDialog;)V

    iput-object v0, p0, Lcom/android/settings_ex/myprofile/EditMyProfileDialog;->EditProfileLimitTextWatcher:Landroid/text/TextWatcher;

    .line 210
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/myprofile/EditMyProfileDialog;)Lcom/android/settings_ex/myprofile/EditMyProfileDialog$OnProfileTextChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/EditMyProfileDialog;->mOnProfileTextChangedListener:Lcom/android/settings_ex/myprofile/EditMyProfileDialog$OnProfileTextChangedListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/myprofile/EditMyProfileDialog;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/EditMyProfileDialog;->mLabelEditMyProfile:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/myprofile/EditMyProfileDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/EditMyProfileDialog;->mEditMyProfile:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/myprofile/EditMyProfileDialog;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/settings_ex/myprofile/EditMyProfileDialog;->saveProfileTextToDB(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/myprofile/EditMyProfileDialog;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/settings_ex/myprofile/EditMyProfileDialog;->updateLabel(I)V

    return-void
.end method

.method private getProfileTextFromDB()Ljava/lang/String;
    .locals 3

    .prologue
    .line 193
    iget-object v1, p0, Lcom/android/settings_ex/myprofile/EditMyProfileDialog;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "my_profile_information"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, dbString:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 195
    const-string v0, ""

    .line 197
    :cond_0
    return-object v0
.end method

.method private init(Landroid/view/View;)V
    .locals 5
    .parameter "dialogView"

    .prologue
    .line 110
    iget-object v2, p0, Lcom/android/settings_ex/myprofile/EditMyProfileDialog;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f090d08

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/myprofile/EditMyProfileDialog;->mFixedTitleString:Ljava/lang/String;

    .line 113
    const v2, 0x7f0b0359

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/myprofile/EditMyProfileDialog;->mLabelEditMyProfile:Landroid/widget/TextView;

    .line 117
    const v2, 0x7f0b035a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings_ex/myprofile/EditMyProfileDialog;->mEditMyProfile:Landroid/widget/EditText;

    .line 120
    const/4 v2, 0x1

    new-array v0, v2, [Landroid/text/InputFilter;

    .line 121
    .local v0, FilterArray:[Landroid/text/InputFilter;
    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x3c

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v0, v2

    .line 122
    iget-object v2, p0, Lcom/android/settings_ex/myprofile/EditMyProfileDialog;->mEditMyProfile:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 125
    iget-object v2, p0, Lcom/android/settings_ex/myprofile/EditMyProfileDialog;->mEditMyProfile:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings_ex/myprofile/EditMyProfileDialog;->EditProfileLimitTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 126
    invoke-direct {p0}, Lcom/android/settings_ex/myprofile/EditMyProfileDialog;->getProfileTextFromDB()Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, profileText:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/myprofile/EditMyProfileDialog;->mEditMyProfile:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/android/settings_ex/myprofile/EditMyProfileDialog;->getProfileTextFromDB()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v2, p0, Lcom/android/settings_ex/myprofile/EditMyProfileDialog;->mEditMyProfile:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 135
    return-void
.end method

.method private saveProfileTextToDB(Ljava/lang/String;)V
    .locals 3
    .parameter "profileText"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/EditMyProfileDialog;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "my_profile_information"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 207
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/EditMyProfileDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " -- PROFILE TEXT updated with value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return-void
.end method

.method private updateLabel(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings_ex/myprofile/EditMyProfileDialog;->mFixedTitleString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, titleText:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/myprofile/EditMyProfileDialog;->mLabelEditMyProfile:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 162
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 164
    :cond_0
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .parameter "activity"

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 58
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/settings_ex/myprofile/EditMyProfileDialog$OnProfileTextChangedListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/android/settings_ex/myprofile/EditMyProfileDialog;->mOnProfileTextChangedListener:Lcom/android/settings_ex/myprofile/EditMyProfileDialog$OnProfileTextChangedListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    return-void

    .line 59
    :catch_0
    move-exception v1

    .line 61
    .local v1, e:Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement OnProfileTextChangedListener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 69
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/myprofile/EditMyProfileDialog;->mContext:Landroid/content/Context;

    .line 70
    iget-object v2, p0, Lcom/android/settings_ex/myprofile/EditMyProfileDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/myprofile/EditMyProfileDialog;->mResources:Landroid/content/res/Resources;

    .line 71
    iget-object v2, p0, Lcom/android/settings_ex/myprofile/EditMyProfileDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/myprofile/EditMyProfileDialog;->mContentResolver:Landroid/content/ContentResolver;

    .line 74
    iget-object v2, p0, Lcom/android/settings_ex/myprofile/EditMyProfileDialog;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/android/settings_ex/myprofile/EditMyProfileDialog;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 75
    iget-object v2, p0, Lcom/android/settings_ex/myprofile/EditMyProfileDialog;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040120

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 78
    .local v1, dialogView:Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/android/settings_ex/myprofile/EditMyProfileDialog;->init(Landroid/view/View;)V

    .line 81
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings_ex/myprofile/EditMyProfileDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 82
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/android/settings_ex/myprofile/EditMyProfileDialog;->mLabelEditMyProfile:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 83
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/settings_ex/myprofile/EditMyProfileDialog$2;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/myprofile/EditMyProfileDialog$2;-><init>(Lcom/android/settings_ex/myprofile/EditMyProfileDialog;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    new-instance v4, Lcom/android/settings_ex/myprofile/EditMyProfileDialog$1;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/myprofile/EditMyProfileDialog$1;-><init>(Lcom/android/settings_ex/myprofile/EditMyProfileDialog;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 103
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/myprofile/EditMyProfileDialog;->dialog:Landroid/app/AlertDialog;

    .line 104
    iget-object v2, p0, Lcom/android/settings_ex/myprofile/EditMyProfileDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 106
    iget-object v2, p0, Lcom/android/settings_ex/myprofile/EditMyProfileDialog;->dialog:Landroid/app/AlertDialog;

    return-object v2
.end method
