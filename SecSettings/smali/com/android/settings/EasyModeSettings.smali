.class public Lcom/android/settings_ex/EasyModeSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "EasyModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/EasyModeSettings$EasySettingsStateChanger;
    }
.end annotation


# static fields
.field private static final EASY_MODE_SWITCH:Ljava/lang/String; = "easy_mode_switch"

.field private static final MENU_ID_APPLY:I = 0x3

.field private static final MENU_ID_CANCEL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "EasyModeSettings"

.field private static mModeItem:[Ljava/lang/String;


# instance fields
.field private mHelptext:Landroid/widget/TextView;

.field private mImageView:Landroid/widget/ImageView;

.field private mListView:Landroid/widget/ListView;

.field mMenuApply:Landroid/view/MenuItem;

.field mMenuCancel:Landroid/view/MenuItem;

.field private mModeState:I

.field private mOkDialog:Landroid/app/Dialog;

.field private mPm:Landroid/content/pm/PackageManager;

.field mState:Landroid/os/Bundle;

.field resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 325
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/EasyModeSettings;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings_ex/EasyModeSettings;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/settings_ex/EasyModeSettings;->mOkDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 423
    :goto_0
    return-void

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/EasyModeSettings;->mOkDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 422
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/EasyModeSettings;->mOkDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method private updateOptionsMenuIcon(Z)V
    .locals 5
    .parameter "showIcon"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 175
    iget-object v0, p0, Lcom/android/settings_ex/EasyModeSettings;->mMenuCancel:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 176
    if-eqz p1, :cond_2

    .line 177
    iget-object v0, p0, Lcom/android/settings_ex/EasyModeSettings;->mMenuCancel:Landroid/view/MenuItem;

    const v1, 0x7f0200dc

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 178
    iget-object v0, p0, Lcom/android/settings_ex/EasyModeSettings;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 184
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/EasyModeSettings;->mMenuApply:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 185
    if-eqz p1, :cond_3

    .line 186
    iget-object v0, p0, Lcom/android/settings_ex/EasyModeSettings;->mMenuApply:Landroid/view/MenuItem;

    const v1, 0x7f0200e0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 187
    iget-object v0, p0, Lcom/android/settings_ex/EasyModeSettings;->mMenuApply:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 193
    :cond_1
    :goto_1
    return-void

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/EasyModeSettings;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 181
    iget-object v0, p0, Lcom/android/settings_ex/EasyModeSettings;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .line 189
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/EasyModeSettings;->mMenuApply:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 190
    iget-object v0, p0, Lcom/android/settings_ex/EasyModeSettings;->mMenuApply:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1
.end method

.method private updateState()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 390
    const-string v2, "EasyModeSettings"

    const-string v3, "updateState()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v2, p0, Lcom/android/settings_ex/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    const-string v3, "easy_mode_switch"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v5, v2, :cond_0

    .line 396
    const/4 v0, 0x0

    .line 401
    .local v0, saved_value:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/EasyModeSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v1

    .line 402
    .local v1, selected_value:I
    const-string v2, "EasyModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saved_value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , selected_value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v2, p0, Lcom/android/settings_ex/EasyModeSettings;->mListView:Landroid/widget/ListView;

    if-ne v0, v1, :cond_1

    .end local v0           #saved_value:I
    :goto_1
    invoke-virtual {v2, v0, v5}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 405
    iget-object v2, p0, Lcom/android/settings_ex/EasyModeSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/EasyModeSettings;->mModeState:I

    .line 412
    return-void

    .line 399
    .end local v1           #selected_value:I
    :cond_0
    const/4 v0, 0x1

    .restart local v0       #saved_value:I
    goto :goto_0

    .restart local v1       #selected_value:I
    :cond_1
    move v0, v1

    .line 404
    goto :goto_1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 135
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 136
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 137
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/EasyModeSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 66
    const-string v0, "EasyModeSettings"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 141
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    .line 143
    .local v0, isTablet:Z
    const v4, 0x7f090143

    invoke-interface {p1, v3, v6, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/EasyModeSettings;->mMenuCancel:Landroid/view/MenuItem;

    .line 144
    iget-object v4, p0, Lcom/android/settings_ex/EasyModeSettings;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 145
    iget-object v4, p0, Lcom/android/settings_ex/EasyModeSettings;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 149
    const/4 v4, 0x3

    const v5, 0x7f090aab

    invoke-interface {p1, v3, v4, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/EasyModeSettings;->mMenuApply:Landroid/view/MenuItem;

    .line 150
    iget-object v4, p0, Lcom/android/settings_ex/EasyModeSettings;->mMenuApply:Landroid/view/MenuItem;

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 151
    iget-object v4, p0, Lcom/android/settings_ex/EasyModeSettings;->mMenuApply:Landroid/view/MenuItem;

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 155
    if-nez v0, :cond_2

    .line 156
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v6, :cond_1

    :goto_0
    invoke-direct {p0, v2}, Lcom/android/settings_ex/EasyModeSettings;->updateOptionsMenuIcon(Z)V

    .line 162
    :goto_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v1

    .line 163
    .local v1, kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    if-eqz v1, :cond_0

    .line 164
    invoke-virtual {v1}, Landroid/app/enterprise/kioskmode/KioskMode;->isKioskModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    iget-object v2, p0, Lcom/android/settings_ex/EasyModeSettings;->mMenuApply:Landroid/view/MenuItem;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 166
    iget-object v2, p0, Lcom/android/settings_ex/EasyModeSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 171
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 172
    return-void

    .end local v1           #kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    :cond_1
    move v2, v3

    .line 156
    goto :goto_0

    .line 158
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/settings_ex/EasyModeSettings;->updateOptionsMenuIcon(Z)V

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 70
    const v2, 0x7f040071

    invoke-virtual {p1, v2, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 71
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0b0114

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/settings_ex/EasyModeSettings;->mListView:Landroid/widget/ListView;

    .line 72
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    .line 74
    const v2, 0x7f0b0138

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings_ex/EasyModeSettings;->mImageView:Landroid/widget/ImageView;

    .line 75
    const v2, 0x7f0b0139

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/EasyModeSettings;->mHelptext:Landroid/widget/TextView;

    .line 77
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    sput-object v2, Lcom/android/settings_ex/EasyModeSettings;->mModeItem:[Ljava/lang/String;

    .line 78
    sget-object v2, Lcom/android/settings_ex/EasyModeSettings;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090fd7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 79
    sget-object v2, Lcom/android/settings_ex/EasyModeSettings;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090fc9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    .line 81
    iget-object v2, p0, Lcom/android/settings_ex/EasyModeSettings;->mListView:Landroid/widget/ListView;

    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0400bb

    sget-object v6, Lcom/android/settings_ex/EasyModeSettings;->mModeItem:[Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 82
    iget-object v2, p0, Lcom/android/settings_ex/EasyModeSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 84
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "is_onConfigurationChange"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 85
    .local v0, isOnConfigurationChanged:Z
    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    invoke-virtual {v2, v7}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "easymode_spinner_value"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/EasyModeSettings;->mModeState:I

    .line 101
    :goto_0
    iget v2, p0, Lcom/android/settings_ex/EasyModeSettings;->mModeState:I

    if-nez v2, :cond_3

    .line 102
    iget-object v2, p0, Lcom/android/settings_ex/EasyModeSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v7, v8}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 103
    iget-object v2, p0, Lcom/android/settings_ex/EasyModeSettings;->mHelptext:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090fd8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v2, p0, Lcom/android/settings_ex/EasyModeSettings;->mImageView:Landroid/widget/ImageView;

    const v3, 0x7f02025d

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 114
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ex/EasyModeSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 115
    return-object v1

    .line 87
    :cond_0
    if-nez p3, :cond_2

    .line 90
    iget-object v2, p0, Lcom/android/settings_ex/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    const-string v3, "easy_mode_switch"

    invoke-static {v2, v3, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v8, v2, :cond_1

    .line 91
    iput v7, p0, Lcom/android/settings_ex/EasyModeSettings;->mModeState:I

    goto :goto_0

    .line 94
    :cond_1
    iput v8, p0, Lcom/android/settings_ex/EasyModeSettings;->mModeState:I

    goto :goto_0

    .line 98
    :cond_2
    const-string v2, "easymode_spinner_value"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/EasyModeSettings;->mModeState:I

    goto :goto_0

    .line 110
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/EasyModeSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v8, v8}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 111
    iget-object v2, p0, Lcom/android/settings_ex/EasyModeSettings;->mHelptext:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090fdb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v2, p0, Lcom/android/settings_ex/EasyModeSettings;->mImageView:Landroid/widget/ImageView;

    const v3, 0x7f02025f

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 428
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
    .line 352
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    packed-switch p3, :pswitch_data_0

    .line 365
    :goto_0
    iput p3, p0, Lcom/android/settings_ex/EasyModeSettings;->mModeState:I

    .line 366
    return-void

    .line 354
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/EasyModeSettings;->mHelptext:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090fd8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v0, p0, Lcom/android/settings_ex/EasyModeSettings;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f02025d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 361
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/EasyModeSettings;->mHelptext:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090fdb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v0, p0, Lcom/android/settings_ex/EasyModeSettings;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f02025f

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 352
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 197
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 321
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    return v5

    .line 199
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 202
    :pswitch_1
    const-string v7, "EasyModeSettings"

    const-string v8, "onOptionsItemSelected"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v7, p0, Lcom/android/settings_ex/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    const-string v8, "easy_mode_switch"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v6, :cond_0

    move v2, v5

    .line 205
    .local v2, saved_value:I
    :goto_1
    const-string v7, "EasyModeSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saved_value = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ,  mListView.getCheckedItemPosition() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/EasyModeSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget v7, p0, Lcom/android/settings_ex/EasyModeSettings;->mModeState:I

    if-nez v7, :cond_1

    .line 215
    const-string v7, "EasyModeSettings"

    const-string v8, "onClick 0"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v7, p0, Lcom/android/settings_ex/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    const-string v8, "easy_mode_switch"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 218
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 219
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "easymode"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 220
    const-string v5, "easymode_from"

    const-string v6, "settings"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 222
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #saved_value:I
    :cond_0
    move v2, v6

    .line 204
    goto :goto_1

    .line 250
    .restart local v2       #saved_value:I
    :cond_1
    const-string v7, "EasyModeSettings"

    const-string v8, "onClick 1"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v7, p0, Lcom/android/settings_ex/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    const-string v8, "easy_mode_switch"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 253
    new-instance v1, Landroid/content/Intent;

    const-string v7, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 254
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v7, "easymode"

    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 255
    const-string v6, "easymode_from"

    const-string v7, "settings"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 258
    iget-object v6, p0, Lcom/android/settings_ex/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    const-string v7, "smart_scroll"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 259
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.sec.SMART_SCROLL_CHANGED"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    .local v4, smart_scroll_changed:Landroid/content/Intent;
    const-string v6, "isEnable"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 261
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 263
    iget-object v6, p0, Lcom/android/settings_ex/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    const-string v7, "smart_pause"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 264
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.sec.SMART_PAUSE_CHANGED"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 265
    .local v3, smart_pause_changed:Landroid/content/Intent;
    const-string v6, "isEnable"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 266
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 268
    iget-object v6, p0, Lcom/android/settings_ex/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    const-string v7, "finger_air_view"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 270
    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 271
    .local v0, finger_air_view_changed:Landroid/content/Intent;
    const-string v6, "isEnable"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 272
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 274
    iget-object v6, p0, Lcom/android/settings_ex/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    const-string v7, "multi_window_enabled"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 275
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 416
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 417
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 377
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 379
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    .line 380
    .local v0, kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->isKioskModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    iget-object v1, p0, Lcom/android/settings_ex/EasyModeSettings;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 386
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/EasyModeSettings;->updateState()V

    .line 387
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 130
    const-string v0, "easymode_spinner_value"

    iget v1, p0, Lcom/android/settings_ex/EasyModeSettings;->mModeState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 131
    return-void
.end method
