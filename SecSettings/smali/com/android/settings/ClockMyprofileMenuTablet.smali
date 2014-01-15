.class public Lcom/android/settings_ex/ClockMyprofileMenuTablet;
.super Lcom/android/internal/app/AlertActivity;
.source "ClockMyprofileMenuTablet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final MY_PROFILE_MODE_SETTING:Ljava/lang/String; = "my_profile_enabled"

.field private static mModeItem:[Ljava/lang/String;


# instance fields
.field private mBodyText:Landroid/widget/TextView;

.field private mImageView:Landroid/widget/ImageView;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private updateState()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/settings_ex/ClockMyprofileMenuTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/settings_ex/ClockMyprofileMenuTablet;->mBodyText:Landroid/widget/TextView;

    const v1, 0x7f090ffe

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 118
    iget-object v0, p0, Lcom/android/settings_ex/ClockMyprofileMenuTablet;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f020294

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 124
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ClockMyprofileMenuTablet;->mBodyText:Landroid/widget/TextView;

    const v1, 0x7f090fff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 122
    iget-object v0, p0, Lcom/android/settings_ex/ClockMyprofileMenuTablet;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f020295

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 99
    packed-switch p2, :pswitch_data_0

    .line 108
    :goto_0
    return-void

    .line 101
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 104
    :pswitch_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "my_profile_enabled"

    iget-object v2, p0, Lcom/android/settings_ex/ClockMyprofileMenuTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 105
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 99
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 53
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    new-array v2, v8, [Ljava/lang/String;

    sput-object v2, Lcom/android/settings_ex/ClockMyprofileMenuTablet;->mModeItem:[Ljava/lang/String;

    .line 56
    sget-object v2, Lcom/android/settings_ex/ClockMyprofileMenuTablet;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090a5a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 57
    sget-object v2, Lcom/android/settings_ex/ClockMyprofileMenuTablet;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090d06

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 59
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 61
    .local v1, inflater:Landroid/view/LayoutInflater;
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 63
    .local v0, ap:Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090ff4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 64
    const v2, 0x7f0400a3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 65
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 66
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 67
    const v2, 0x7f090143

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 68
    const v2, 0x7f0909ed

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 70
    iget-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v3, 0x7f0b0114

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/settings_ex/ClockMyprofileMenuTablet;->mListView:Landroid/widget/ListView;

    .line 71
    iget-object v2, p0, Lcom/android/settings_ex/ClockMyprofileMenuTablet;->mListView:Landroid/widget/ListView;

    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x7f0400bb

    sget-object v5, Lcom/android/settings_ex/ClockMyprofileMenuTablet;->mModeItem:[Ljava/lang/String;

    invoke-direct {v3, p0, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 72
    iget-object v2, p0, Lcom/android/settings_ex/ClockMyprofileMenuTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 73
    iget-object v2, p0, Lcom/android/settings_ex/ClockMyprofileMenuTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "my_profile_enabled"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3, v7}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 74
    iget-object v2, p0, Lcom/android/settings_ex/ClockMyprofileMenuTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 75
    iget-object v2, p0, Lcom/android/settings_ex/ClockMyprofileMenuTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v8}, Landroid/widget/AbsListView;->setOverScrollMode(I)V

    .line 77
    iget-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v3, 0x7f0b01d6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/ClockMyprofileMenuTablet;->mBodyText:Landroid/widget/TextView;

    .line 78
    iget-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v3, 0x7f0b0138

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings_ex/ClockMyprofileMenuTablet;->mImageView:Landroid/widget/ImageView;

    .line 80
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 81
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    packed-switch p3, :pswitch_data_0

    .line 95
    :goto_0
    return-void

    .line 87
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/ClockMyprofileMenuTablet;->mBodyText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090ffe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/android/settings_ex/ClockMyprofileMenuTablet;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f020294

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 91
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/ClockMyprofileMenuTablet;->mBodyText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090fff

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/android/settings_ex/ClockMyprofileMenuTablet;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f020295

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 111
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 112
    invoke-direct {p0}, Lcom/android/settings_ex/ClockMyprofileMenuTablet;->updateState()V

    .line 113
    return-void
.end method
