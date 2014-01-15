.class public Lcom/android/settings_ex/ModePreview;
.super Landroid/app/Activity;
.source "ModePreview.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/ModePreview$RadioAdapter;
    }
.end annotation


# static fields
.field private static final SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String; = "screen_mode_automatic_setting"

.field private static final SCREEN_MODE_SETTING:Ljava/lang/String; = "screen_mode_setting"

.field private static mModeItem:[Ljava/lang/String;


# instance fields
.field private adapter:Lcom/android/settings_ex/ModePreview$RadioAdapter;

.field private mAutomatic:Landroid/widget/CheckedTextView;

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/ModePreview;->mGuideDialog:Landroid/app/AlertDialog;

    .line 266
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/ModePreview;)Landroid/widget/CheckedTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings_ex/ModePreview;->mAutomatic:Landroid/widget/CheckedTextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/ModePreview;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings_ex/ModePreview;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/ModePreview;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ModePreview;->setEnabledItems(Z)V

    return-void
.end method

.method private setEnabledItems(Z)V
    .locals 3
    .parameter "isEnabled"

    .prologue
    .line 152
    iget-object v2, p0, Lcom/android/settings_ex/ModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p1}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 153
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/ModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 154
    iget-object v2, p0, Lcom/android/settings_ex/ModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 155
    .local v1, v:Landroid/view/View;
    if-nez p1, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 156
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 158
    .end local v1           #v:Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method public createGuideDialog(Ljava/lang/String;)V
    .locals 4
    .parameter "pref_noti"

    .prologue
    .line 161
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 163
    .local v1, mSharedPreferences:Landroid/content/SharedPreferences;
    const-string v2, "adapt_noti"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 164
    .local v0, do_not_show_again:Z
    if-nez v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/android/settings_ex/ModePreview;->showGuideDialog()V

    .line 168
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v5, 0x7f0400ba

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/ModePreview;->setContentView(I)V

    .line 65
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    sput-object v5, Lcom/android/settings_ex/ModePreview;->mModeItem:[Ljava/lang/String;

    .line 66
    sget-object v5, Lcom/android/settings_ex/ModePreview;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings_ex/ModePreview;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090a56

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    .line 67
    sget-object v5, Lcom/android/settings_ex/ModePreview;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings_ex/ModePreview;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090a57

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    .line 68
    sget-object v5, Lcom/android/settings_ex/ModePreview;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings_ex/ModePreview;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090a59

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    .line 69
    sget-object v5, Lcom/android/settings_ex/ModePreview;->mModeItem:[Ljava/lang/String;

    const/4 v6, 0x3

    invoke-virtual {p0}, Lcom/android/settings_ex/ModePreview;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090a58

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 77
    const v5, 0x7f0b0114

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/ModePreview;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lcom/android/settings_ex/ModePreview;->mListView:Landroid/widget/ListView;

    .line 78
    new-instance v5, Lcom/android/settings_ex/ModePreview$RadioAdapter;

    const v6, 0x7f0400bb

    sget-object v7, Lcom/android/settings_ex/ModePreview;->mModeItem:[Ljava/lang/String;

    invoke-direct {v5, p0, p0, v6, v7}, Lcom/android/settings_ex/ModePreview$RadioAdapter;-><init>(Lcom/android/settings_ex/ModePreview;Landroid/content/Context;I[Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/settings_ex/ModePreview;->adapter:Lcom/android/settings_ex/ModePreview$RadioAdapter;

    .line 80
    iget-object v5, p0, Lcom/android/settings_ex/ModePreview;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/settings_ex/ModePreview;->adapter:Lcom/android/settings_ex/ModePreview$RadioAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    iget-object v5, p0, Lcom/android/settings_ex/ModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v9}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 82
    iget-object v5, p0, Lcom/android/settings_ex/ModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/settings_ex/ModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_mode_setting"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6, v10}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 83
    iget-object v5, p0, Lcom/android/settings_ex/ModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 84
    iget-object v5, p0, Lcom/android/settings_ex/ModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v11}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 86
    const v5, 0x7f0b01d9

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/ModePreview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 87
    .local v1, buttonOk:Landroid/widget/Button;
    new-instance v5, Lcom/android/settings_ex/ModePreview$1;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/ModePreview$1;-><init>(Lcom/android/settings_ex/ModePreview;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v5, 0x7f0b01d8

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/ModePreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 96
    .local v0, buttonCancel:Landroid/widget/Button;
    new-instance v5, Lcom/android/settings_ex/ModePreview$2;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/ModePreview$2;-><init>(Lcom/android/settings_ex/ModePreview;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const v5, 0x7f0b020a

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/ModePreview;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckedTextView;

    iput-object v5, p0, Lcom/android/settings_ex/ModePreview;->mAutomatic:Landroid/widget/CheckedTextView;

    .line 108
    iget-object v5, p0, Lcom/android/settings_ex/ModePreview;->mAutomatic:Landroid/widget/CheckedTextView;

    invoke-virtual {v5, v9}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 109
    const v5, 0x7f0b020b

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/ModePreview;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 110
    .local v4, mDivider:Landroid/view/View;
    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 113
    if-eqz p1, :cond_2

    .line 114
    const-string v5, "auto_state"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 119
    .local v2, isChecked:I
    :goto_0
    if-ne v2, v10, :cond_0

    .line 120
    iget-object v5, p0, Lcom/android/settings_ex/ModePreview;->mAutomatic:Landroid/widget/CheckedTextView;

    invoke-virtual {v5, v10}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 121
    invoke-direct {p0, v9}, Lcom/android/settings_ex/ModePreview;->setEnabledItems(Z)V

    .line 124
    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/ModePreview;->mAutomatic:Landroid/widget/CheckedTextView;

    new-instance v6, Lcom/android/settings_ex/ModePreview$3;

    invoke-direct {v6, p0}, Lcom/android/settings_ex/ModePreview$3;-><init>(Lcom/android/settings_ex/ModePreview;)V

    invoke-virtual {v5, v6}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    invoke-static {p0}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 145
    const v5, 0x7f090a54

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/ModePreview;->setTitle(I)V

    .line 146
    const v5, 0x7f0b01d7

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/ModePreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 147
    .local v3, layout:Landroid/widget/LinearLayout;
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 149
    .end local v3           #layout:Landroid/widget/LinearLayout;
    :cond_1
    return-void

    .line 116
    .end local v2           #isChecked:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/ModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_mode_automatic_setting"

    invoke-static {v5, v6, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .restart local v2       #isChecked:I
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/android/settings_ex/ModePreview;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 242
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f120005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 243
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/android/settings_ex/ModePreview;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/android/settings_ex/ModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_mode_setting"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 232
    .local v0, currentValue:I
    iget-object v1, p0, Lcom/android/settings_ex/ModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 233
    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 236
    .end local v0           #currentValue:I
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 237
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
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
    .line 214
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-static {p3}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 215
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 219
    if-ne v3, p1, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/android/settings_ex/ModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_mode_automatic_setting"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 221
    invoke-static {v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 225
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 223
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/ModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_mode_setting"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 248
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 263
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 250
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings_ex/ModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "screen_mode_automatic_setting"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 251
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 254
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/ModePreview;->finish()V

    goto :goto_0

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "screen_mode_setting"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    goto :goto_1

    .line 258
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings_ex/ModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_mode_automatic_setting"

    iget-object v0, p0, Lcom/android/settings_ex/ModePreview;->mAutomatic:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 259
    invoke-virtual {p0}, Lcom/android/settings_ex/ModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "screen_mode_setting"

    iget-object v3, p0, Lcom/android/settings_ex/ModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 260
    invoke-virtual {p0}, Lcom/android/settings_ex/ModePreview;->finish()V

    goto :goto_0

    .line 258
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 248
    :pswitch_data_0
    .packed-switch 0x7f0b0543
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 206
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 208
    const-string v1, "auto_state"

    iget-object v0, p0, Lcom/android/settings_ex/ModePreview;->mAutomatic:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 210
    return-void

    .line 208
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showGuideDialog()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 172
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 175
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 176
    .local v4, mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 178
    .local v1, edit:Landroid/content/SharedPreferences$Editor;
    iget-object v7, p0, Lcom/android/settings_ex/ModePreview;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_0

    .line 179
    iget-object v7, p0, Lcom/android/settings_ex/ModePreview;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->dismiss()V

    .line 180
    iput-object v8, p0, Lcom/android/settings_ex/ModePreview;->mGuideDialog:Landroid/app/AlertDialog;

    .line 183
    :cond_0
    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/ModePreview;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 184
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v7, 0x7f0400e2

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 185
    .local v3, layout:Landroid/view/View;
    const v7, 0x7f0b02b4

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 186
    .local v6, tv:Landroid/widget/TextView;
    const v7, 0x7f090a65

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 187
    const v7, 0x7f0b010a

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 189
    .local v5, mcheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 190
    const v7, 0x7f090a63

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 192
    const v7, 0x104000a

    new-instance v8, Lcom/android/settings_ex/ModePreview$4;

    invoke-direct {v8, p0, v1, v5}, Lcom/android/settings_ex/ModePreview$4;-><init>(Lcom/android/settings_ex/ModePreview;Landroid/content/SharedPreferences$Editor;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 199
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/ModePreview;->mGuideDialog:Landroid/app/AlertDialog;

    .line 200
    iget-object v7, p0, Lcom/android/settings_ex/ModePreview;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 201
    return-void
.end method
