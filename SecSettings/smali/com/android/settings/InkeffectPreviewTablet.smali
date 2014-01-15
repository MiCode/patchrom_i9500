.class public Lcom/android/settings_ex/InkeffectPreviewTablet;
.super Lcom/android/internal/app/AlertActivity;
.source "InkeffectPreviewTablet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static bClickV:I

.field private static cnt:I

.field private static mInkVal:I

.field public static mInkeffectPreviewList:Ljava/util/ArrayList;
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
.field mCurrentSelection:I

.field private mImageView:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field mInkEffectdrawble:[I

.field mInkEffectdrawble_h:[I

.field private mInkeffectPreviewAdapter:Lcom/android/settings_ex/InkeffectPreviewAdapter;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings_ex/InkeffectPreviewTablet;->mInkeffectPreviewList:Ljava/util/ArrayList;

    .line 75
    sput v1, Lcom/android/settings_ex/InkeffectPreviewTablet;->bClickV:I

    .line 77
    sput v1, Lcom/android/settings_ex/InkeffectPreviewTablet;->cnt:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 67
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/InkeffectPreviewTablet;->mInkeffectPreviewAdapter:Lcom/android/settings_ex/InkeffectPreviewAdapter;

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/InkeffectPreviewTablet;->mCurrentSelection:I

    .line 79
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings_ex/InkeffectPreviewTablet;->mInkEffectdrawble:[I

    .line 91
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/settings_ex/InkeffectPreviewTablet;->mInkEffectdrawble_h:[I

    return-void

    .line 79
    :array_0
    .array-data 0x4
        0x6ct 0x2t 0x2t 0x7ft
        0x70t 0x2t 0x2t 0x7ft
        0x6et 0x2t 0x2t 0x7ft
        0x66t 0x2t 0x2t 0x7ft
        0x62t 0x2t 0x2t 0x7ft
        0x6at 0x2t 0x2t 0x7ft
        0x72t 0x2t 0x2t 0x7ft
        0x64t 0x2t 0x2t 0x7ft
        0x68t 0x2t 0x2t 0x7ft
    .end array-data

    .line 91
    :array_1
    .array-data 0x4
        0x6dt 0x2t 0x2t 0x7ft
        0x71t 0x2t 0x2t 0x7ft
        0x6ft 0x2t 0x2t 0x7ft
        0x67t 0x2t 0x2t 0x7ft
        0x63t 0x2t 0x2t 0x7ft
        0x6bt 0x2t 0x2t 0x7ft
        0x73t 0x2t 0x2t 0x7ft
        0x65t 0x2t 0x2t 0x7ft
        0x69t 0x2t 0x2t 0x7ft
    .end array-data
.end method


# virtual methods
.method public getCurrentSelection()I
    .locals 3

    .prologue
    .line 179
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_hovering_ink_effect"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    sput v0, Lcom/android/settings_ex/InkeffectPreviewTablet;->cnt:I

    .line 212
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 213
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 184
    packed-switch p2, :pswitch_data_0

    .line 195
    :goto_0
    const/4 v0, 0x0

    sput v0, Lcom/android/settings_ex/InkeffectPreviewTablet;->cnt:I

    .line 196
    return-void

    .line 186
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_hovering_ink_effect"

    sget v2, Lcom/android/settings_ex/InkeffectPreviewTablet;->mInkVal:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 187
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 191
    :pswitch_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_hovering_ink_effect"

    iget-object v2, p0, Lcom/android/settings_ex/InkeffectPreviewTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 192
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 184
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 105
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    sget-object v1, Lcom/android/settings_ex/InkeffectPreviewTablet;->mInkeffectPreviewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 108
    sget-object v1, Lcom/android/settings_ex/InkeffectPreviewTablet;->mInkeffectPreviewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090fb2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v1, Lcom/android/settings_ex/InkeffectPreviewTablet;->mInkeffectPreviewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090fb3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v1, Lcom/android/settings_ex/InkeffectPreviewTablet;->mInkeffectPreviewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090fb5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v1, Lcom/android/settings_ex/InkeffectPreviewTablet;->mInkeffectPreviewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090fb6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v1, Lcom/android/settings_ex/InkeffectPreviewTablet;->mInkeffectPreviewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090fb8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v1, Lcom/android/settings_ex/InkeffectPreviewTablet;->mInkeffectPreviewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090fb9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v1, Lcom/android/settings_ex/InkeffectPreviewTablet;->mInkeffectPreviewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090fba

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v1, Lcom/android/settings_ex/InkeffectPreviewTablet;->mInkeffectPreviewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090fb7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v1, Lcom/android/settings_ex/InkeffectPreviewTablet;->mInkeffectPreviewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090fbc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v1, p0, Lcom/android/settings_ex/InkeffectPreviewTablet;->mInkeffectPreviewAdapter:Lcom/android/settings_ex/InkeffectPreviewAdapter;

    if-nez v1, :cond_0

    .line 119
    new-instance v1, Lcom/android/settings_ex/InkeffectPreviewAdapter;

    sget-object v2, Lcom/android/settings_ex/InkeffectPreviewTablet;->mInkeffectPreviewList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v4, v4, v2}, Lcom/android/settings_ex/InkeffectPreviewAdapter;-><init>(Landroid/content/Context;IILjava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/settings_ex/InkeffectPreviewTablet;->mInkeffectPreviewAdapter:Lcom/android/settings_ex/InkeffectPreviewAdapter;

    .line 121
    :cond_0
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/settings_ex/InkeffectPreviewTablet;->mInflater:Landroid/view/LayoutInflater;

    .line 123
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 125
    .local v0, ap:Lcom/android/internal/app/AlertController$AlertParams;
    sget v1, Lcom/android/settings_ex/InkeffectPreviewTablet;->cnt:I

    if-nez v1, :cond_1

    .line 126
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_hovering_ink_effect"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/settings_ex/InkeffectPreviewTablet;->bClickV:I

    .line 127
    sget v1, Lcom/android/settings_ex/InkeffectPreviewTablet;->bClickV:I

    sput v1, Lcom/android/settings_ex/InkeffectPreviewTablet;->mInkVal:I

    .line 128
    sput v5, Lcom/android/settings_ex/InkeffectPreviewTablet;->cnt:I

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/InkeffectPreviewTablet;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040096

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 132
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090fb1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 133
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 134
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 135
    const v1, 0x7f090143

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 136
    const v1, 0x7f0909ed

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 137
    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v2, 0x7f0b0138

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings_ex/InkeffectPreviewTablet;->mImageView:Landroid/widget/ImageView;

    .line 138
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v5, :cond_2

    .line 139
    iget-object v1, p0, Lcom/android/settings_ex/InkeffectPreviewTablet;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings_ex/InkeffectPreviewTablet;->mInkEffectdrawble:[I

    sget v3, Lcom/android/settings_ex/InkeffectPreviewTablet;->bClickV:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 142
    :goto_0
    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v2, 0x7f0b0114

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/settings_ex/InkeffectPreviewTablet;->mListView:Landroid/widget/ListView;

    .line 143
    iget-object v1, p0, Lcom/android/settings_ex/InkeffectPreviewTablet;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings_ex/InkeffectPreviewTablet;->mInkeffectPreviewAdapter:Lcom/android/settings_ex/InkeffectPreviewAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 144
    iget-object v1, p0, Lcom/android/settings_ex/InkeffectPreviewTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 145
    iget-object v1, p0, Lcom/android/settings_ex/InkeffectPreviewTablet;->mListView:Landroid/widget/ListView;

    sget v2, Lcom/android/settings_ex/InkeffectPreviewTablet;->bClickV:I

    invoke-virtual {v1, v2, v5}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 146
    iget-object v1, p0, Lcom/android/settings_ex/InkeffectPreviewTablet;->mListView:Landroid/widget/ListView;

    sget v2, Lcom/android/settings_ex/InkeffectPreviewTablet;->bClickV:I

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 147
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 148
    return-void

    .line 141
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/InkeffectPreviewTablet;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings_ex/InkeffectPreviewTablet;->mInkEffectdrawble_h:[I

    sget v3, Lcom/android/settings_ex/InkeffectPreviewTablet;->bClickV:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 217
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 218
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f120002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 219
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f090143

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 220
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0905b1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 221
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 165
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    :try_start_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 166
    iget-object v1, p0, Lcom/android/settings_ex/InkeffectPreviewTablet;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings_ex/InkeffectPreviewTablet;->mInkEffectdrawble:[I

    aget v2, v2, p3

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 171
    :goto_0
    const-string v1, "InkeffectPreview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemClick position : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_1
    sput p3, Lcom/android/settings_ex/InkeffectPreviewTablet;->bClickV:I

    .line 176
    return-void

    .line 169
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/settings_ex/InkeffectPreviewTablet;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings_ex/InkeffectPreviewTablet;->mInkEffectdrawble_h:[I

    aget v2, v2, p3

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "InkeffectPreview"

    const-string v2, "could not persist preview setting"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 206
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/AlertActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 226
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 236
    :pswitch_0
    const/4 v0, 0x0

    sput v0, Lcom/android/settings_ex/InkeffectPreviewTablet;->cnt:I

    .line 237
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 228
    :pswitch_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_hovering_ink_effect"

    sget v3, Lcom/android/settings_ex/InkeffectPreviewTablet;->mInkVal:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 229
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 232
    :pswitch_2
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_hovering_ink_effect"

    iget-object v3, p0, Lcom/android/settings_ex/InkeffectPreviewTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 233
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 226
    :pswitch_data_0
    .packed-switch 0x7f0b0543
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 159
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 160
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 153
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 154
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    sput v0, Lcom/android/settings_ex/InkeffectPreviewTablet;->cnt:I

    .line 201
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 202
    return-void
.end method
