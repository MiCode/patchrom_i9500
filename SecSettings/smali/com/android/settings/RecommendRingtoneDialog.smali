.class public Lcom/android/settings_ex/RecommendRingtoneDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "RecommendRingtoneDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/RecommendRingtoneDialog$RecommendAdapter;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mRecommendAdapter:Lcom/android/settings_ex/RecommendRingtoneDialog$RecommendAdapter;

.field private mSelectedPosition:I

.field private offset:I

.field private ringtone:Landroid/media/Ringtone;

.field private ringtoneType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/RecommendRingtoneDialog;->mSelectedPosition:I

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/RecommendRingtoneDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/settings_ex/RecommendRingtoneDialog;->mSelectedPosition:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/RecommendRingtoneDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/android/settings_ex/RecommendRingtoneDialog;->mSelectedPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/RecommendRingtoneDialog;)Lcom/android/settings_ex/RecommendRingtoneDialog$RecommendAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings_ex/RecommendRingtoneDialog;->mRecommendAdapter:Lcom/android/settings_ex/RecommendRingtoneDialog$RecommendAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/RecommendRingtoneDialog;)Landroid/media/Ringtone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings_ex/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings_ex/RecommendRingtoneDialog;Landroid/media/Ringtone;)Landroid/media/Ringtone;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/settings_ex/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings_ex/RecommendRingtoneDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings_ex/RecommendRingtoneDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/RecommendRingtoneDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/settings_ex/RecommendRingtoneDialog;->ringtoneType:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/RecommendRingtoneDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/settings_ex/RecommendRingtoneDialog;->offset:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/RecommendRingtoneDialog;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings_ex/RecommendRingtoneDialog;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "position"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/settings_ex/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/settings_ex/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 103
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 117
    :cond_1
    :goto_0
    return-void

    .line 105
    :pswitch_0
    iget v0, p0, Lcom/android/settings_ex/RecommendRingtoneDialog;->mSelectedPosition:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 106
    iget v0, p0, Lcom/android/settings_ex/RecommendRingtoneDialog;->ringtoneType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 107
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "recommendation_time_2"

    iget v2, p0, Lcom/android/settings_ex/RecommendRingtoneDialog;->offset:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 110
    :cond_2
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "recommendation_time"

    iget v2, p0, Lcom/android/settings_ex/RecommendRingtoneDialog;->offset:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 48
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/settings_ex/RecommendRingtoneDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "recommend_offset"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/RecommendRingtoneDialog;->offset:I

    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ringtoneType"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/RecommendRingtoneDialog;->ringtoneType:I

    .line 54
    iput-object p0, p0, Lcom/android/settings_ex/RecommendRingtoneDialog;->mContext:Landroid/content/Context;

    .line 56
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 57
    .local v0, ap:Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090497

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 58
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 59
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 60
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 61
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 62
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 63
    new-instance v1, Lcom/android/settings_ex/RecommendRingtoneDialog$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/RecommendRingtoneDialog$1;-><init>(Lcom/android/settings_ex/RecommendRingtoneDialog;)V

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 85
    new-instance v1, Lcom/android/settings_ex/RecommendRingtoneDialog$RecommendAdapter;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/RecommendRingtoneDialog$RecommendAdapter;-><init>(Lcom/android/settings_ex/RecommendRingtoneDialog;)V

    iput-object v1, p0, Lcom/android/settings_ex/RecommendRingtoneDialog;->mRecommendAdapter:Lcom/android/settings_ex/RecommendRingtoneDialog$RecommendAdapter;

    .line 86
    iget-object v1, p0, Lcom/android/settings_ex/RecommendRingtoneDialog;->mRecommendAdapter:Lcom/android/settings_ex/RecommendRingtoneDialog$RecommendAdapter;

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 88
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 89
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/settings_ex/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/settings_ex/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 96
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 97
    return-void
.end method
