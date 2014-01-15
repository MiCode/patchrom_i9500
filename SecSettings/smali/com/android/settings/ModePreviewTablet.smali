.class public Lcom/android/settings_ex/ModePreviewTablet;
.super Lcom/android/internal/app/AlertActivity;
.source "ModePreviewTablet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String; = "screen_mode_automatic_setting"

.field private static final SCREEN_MODE_SETTING:Ljava/lang/String; = "screen_mode_setting"

.field private static final TAG:Ljava/lang/String; = "ModePreview"

.field public static mModePreviewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAutomatic:Landroid/widget/CheckedTextView;

.field mCurrentSelection:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListView:Landroid/widget/ListView;

.field private mModePreviewAdapter:Lcom/android/settings_ex/ModePreviewAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings_ex/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/ModePreviewTablet;->mModePreviewAdapter:Lcom/android/settings_ex/ModePreviewAdapter;

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/ModePreviewTablet;->mCurrentSelection:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/ModePreviewTablet;)Landroid/widget/CheckedTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings_ex/ModePreviewTablet;->mAutomatic:Landroid/widget/CheckedTextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/ModePreviewTablet;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ModePreviewTablet;->setEnabledItems(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/ModePreviewTablet;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings_ex/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private setEnabledItems(Z)V
    .locals 2
    .parameter "isEnabled"

    .prologue
    .line 167
    iget-object v1, p0, Lcom/android/settings_ex/ModePreviewTablet;->mModePreviewAdapter:Lcom/android/settings_ex/ModePreviewAdapter;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/ModePreviewAdapter;->setIsAutomatic(Z)V

    .line 168
    iget-object v0, p0, Lcom/android/settings_ex/ModePreviewTablet;->mModePreviewAdapter:Lcom/android/settings_ex/ModePreviewAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 169
    return-void

    .line 167
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCurrentSelection()I
    .locals 3

    .prologue
    .line 198
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_mode_setting"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v0, 0x1

    .line 215
    packed-switch p2, :pswitch_data_0

    .line 233
    :goto_0
    return-void

    .line 217
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_mode_automatic_setting"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 218
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 222
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_mode_setting"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    goto :goto_1

    .line 227
    :pswitch_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_mode_automatic_setting"

    iget-object v3, p0, Lcom/android/settings_ex/ModePreviewTablet;->mAutomatic:Landroid/widget/CheckedTextView;

    invoke-virtual {v3}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_2
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 229
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_mode_setting"

    iget-object v2, p0, Lcom/android/settings_ex/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 230
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 227
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 215
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 79
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    sget-object v3, Lcom/android/settings_ex/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 82
    sget-object v3, Lcom/android/settings_ex/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090a56

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v3, Lcom/android/settings_ex/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090a57

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v3, Lcom/android/settings_ex/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090a59

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v3, Lcom/android/settings_ex/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090a58

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v3, p0, Lcom/android/settings_ex/ModePreviewTablet;->mModePreviewAdapter:Lcom/android/settings_ex/ModePreviewAdapter;

    if-nez v3, :cond_0

    .line 94
    new-instance v3, Lcom/android/settings_ex/ModePreviewAdapter;

    sget-object v4, Lcom/android/settings_ex/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    invoke-direct {v3, p0, v6, v6, v4}, Lcom/android/settings_ex/ModePreviewAdapter;-><init>(Landroid/content/Context;IILjava/util/ArrayList;)V

    iput-object v3, p0, Lcom/android/settings_ex/ModePreviewTablet;->mModePreviewAdapter:Lcom/android/settings_ex/ModePreviewAdapter;

    .line 97
    :cond_0
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/android/settings_ex/ModePreviewTablet;->mInflater:Landroid/view/LayoutInflater;

    .line 99
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 101
    .local v0, ap:Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090a54

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 102
    iget-object v3, p0, Lcom/android/settings_ex/ModePreviewTablet;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0400ba

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 103
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 104
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 105
    const v3, 0x7f090143

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 106
    const v3, 0x7f0909ed

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 108
    iget-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v4, 0x7f0b0114

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/android/settings_ex/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    .line 109
    iget-object v3, p0, Lcom/android/settings_ex/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 113
    iget-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v4, 0x7f0b020a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckedTextView;

    iput-object v3, p0, Lcom/android/settings_ex/ModePreviewTablet;->mAutomatic:Landroid/widget/CheckedTextView;

    .line 114
    iget-object v3, p0, Lcom/android/settings_ex/ModePreviewTablet;->mAutomatic:Landroid/widget/CheckedTextView;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 115
    iget-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v4, 0x7f0b020b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 116
    .local v2, mDivider:Landroid/view/View;
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 119
    if-eqz p1, :cond_1

    .line 120
    const-string v3, "auto_state"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 125
    .local v1, isChecked:I
    :goto_0
    if-ne v1, v7, :cond_2

    .line 126
    iget-object v3, p0, Lcom/android/settings_ex/ModePreviewTablet;->mAutomatic:Landroid/widget/CheckedTextView;

    invoke-virtual {v3, v7}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 127
    invoke-direct {p0, v6}, Lcom/android/settings_ex/ModePreviewTablet;->setEnabledItems(Z)V

    .line 134
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/ModePreviewTablet;->mAutomatic:Landroid/widget/CheckedTextView;

    new-instance v4, Lcom/android/settings_ex/ModePreviewTablet$1;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/ModePreviewTablet$1;-><init>(Lcom/android/settings_ex/ModePreviewTablet;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v3, p0, Lcom/android/settings_ex/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/settings_ex/ModePreviewTablet;->mModePreviewAdapter:Lcom/android/settings_ex/ModePreviewAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 155
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 157
    invoke-virtual {p0}, Lcom/android/settings_ex/ModePreviewTablet;->getCurrentSelection()I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/ModePreviewTablet;->mCurrentSelection:I

    .line 158
    iget v3, p0, Lcom/android/settings_ex/ModePreviewTablet;->mCurrentSelection:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 159
    const-string v3, "ModePreview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate() positoin : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings_ex/ModePreviewTablet;->mCurrentSelection:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v3, p0, Lcom/android/settings_ex/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    iget v4, p0, Lcom/android/settings_ex/ModePreviewTablet;->mCurrentSelection:I

    invoke-virtual {v3, v4, v7}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 161
    iget-object v3, p0, Lcom/android/settings_ex/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    iget v4, p0, Lcom/android/settings_ex/ModePreviewTablet;->mCurrentSelection:I

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 164
    :goto_2
    return-void

    .line 122
    .end local v1           #isChecked:I
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_mode_automatic_setting"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .restart local v1       #isChecked:I
    goto :goto_0

    .line 130
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/ModePreviewTablet;->mAutomatic:Landroid/widget/CheckedTextView;

    invoke-virtual {v3, v6}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 131
    invoke-direct {p0, v7}, Lcom/android/settings_ex/ModePreviewTablet;->setEnabledItems(Z)V

    goto :goto_1

    .line 163
    :cond_3
    const-string v3, "ModePreview"

    const-string v4, "onCreate() positoin : -1"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 204
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_mode_setting"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 206
    .local v0, currentValue:I
    iget-object v1, p0, Lcom/android/settings_ex/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 207
    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 210
    .end local v0           #currentValue:I
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 211
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
    .line 194
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-static {p3}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 195
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 237
    if-ne v3, p1, :cond_0

    .line 238
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_mode_automatic_setting"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 239
    invoke-static {v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 244
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/AlertActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 241
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_mode_setting"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 180
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 181
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 174
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 175
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 186
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 188
    const-string v1, "auto_state"

    iget-object v0, p0, Lcom/android/settings_ex/ModePreviewTablet;->mAutomatic:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 190
    return-void

    .line 188
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
