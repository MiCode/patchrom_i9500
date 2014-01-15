.class public Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;
.super Landroid/app/Fragment;
.source "SmartScreenGuideHub.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static final DEFAULT:Ljava/lang/String; = "default"

.field private static final EXTRA_TYPE:Ljava/lang/String; = "type"

.field private static final KEY_SMART_SCROLL_ACCELERATION:Ljava/lang/String; = "smart_scroll_acceleration"

.field private static final KEY_SMART_SCROLL_ADV_EMAIL_BODY:Ljava/lang/String; = "smart_scroll_adv_email_body"

.field private static final KEY_SMART_SCROLL_ADV_EMAIL_LIST:Ljava/lang/String; = "smart_scroll_adv_email_list"

.field private static final KEY_SMART_SCROLL_ADV_READERS_HUB:Ljava/lang/String; = "smart_scroll_adv_readers_hub"

.field private static final KEY_SMART_SCROLL_ADV_WEB:Ljava/lang/String; = "smart_scroll_adv_web"

.field private static final KEY_SMART_SCROLL_SENSITIVITY:Ljava/lang/String; = "smart_scroll_sensitivity"

.field private static final KEY_SMART_SCROLL_TYPE:Ljava/lang/String; = "smart_scroll_type"

.field private static final KEY_SMART_SCROLL_UNIT:Ljava/lang/String; = "smart_scroll_unit"

.field private static final TAG:Ljava/lang/String; = "SmartScreenGuideHub"

.field private static mModeItem:Ljava/util/ArrayList;
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
.field private mContext:Landroid/content/Context;

.field private mGuideAniResID:I

.field private mGuideContent:Ljava/lang/String;

.field private mImageView:Landroid/widget/ImageView;

.field private mLinearLayoutSensitivity:Landroid/widget/LinearLayout;

.field private mListView:Landroid/widget/ListView;

.field private mMessageView:Landroid/widget/TextView;

.field private mMotionType:Ljava/lang/String;

.field private mRootView:Landroid/view/View;

.field private mSmartScrollDBItem:Ljava/lang/String;

.field private mTryBtnClickListener:Landroid/view/View$OnClickListener;

.field private seekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 57
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mMotionType:Ljava/lang/String;

    .line 58
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mSmartScrollDBItem:Ljava/lang/String;

    .line 59
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mGuideContent:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mGuideAniResID:I

    .line 232
    new-instance v0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub$1;-><init>(Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;)V

    iput-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mTryBtnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mSmartScrollDBItem:Ljava/lang/String;

    return-object v0
.end method

.method private setArgument(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    const v1, 0x7f0203db

    .line 177
    const-string v0, "smart_scroll_type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    const-string v0, "smart_scroll_type"

    iput-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mSmartScrollDBItem:Ljava/lang/String;

    .line 179
    const v0, 0x7f090e17

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mGuideContent:Ljava/lang/String;

    .line 180
    iput v1, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mGuideAniResID:I

    .line 198
    :goto_0
    return-void

    .line 181
    :cond_0
    const-string v0, "smart_scroll_sensitivity"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    const-string v0, "smart_scroll_sensitivity"

    iput-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mSmartScrollDBItem:Ljava/lang/String;

    .line 183
    const v0, 0x7f090e18

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mGuideContent:Ljava/lang/String;

    .line 184
    iput v1, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mGuideAniResID:I

    goto :goto_0

    .line 185
    :cond_1
    const-string v0, "smart_scroll_unit"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    const-string v0, "smart_scroll_unit"

    iput-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mSmartScrollDBItem:Ljava/lang/String;

    .line 187
    const v0, 0x7f090e19

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mGuideContent:Ljava/lang/String;

    .line 188
    iput v1, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mGuideAniResID:I

    goto :goto_0

    .line 189
    :cond_2
    const-string v0, "smart_scroll_acceleration"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 190
    const-string v0, "smart_scroll_acceleration"

    iput-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mSmartScrollDBItem:Ljava/lang/String;

    .line 191
    const v0, 0x7f090e1a

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mGuideContent:Ljava/lang/String;

    .line 192
    iput v1, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mGuideAniResID:I

    goto :goto_0

    .line 194
    :cond_3
    const-string v0, "SmartScreenGuideHub"

    const-string v1, "Cannot get correct smartscreen information. finish"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 77
    .local v0, arguments:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 78
    const-string v1, "type"

    const-string v2, "default"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mMotionType:Ljava/lang/String;

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mMotionType:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->setArgument(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 87
    const v4, 0x7f04012f

    invoke-virtual {p1, v4, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mRootView:Landroid/view/View;

    .line 89
    const-string v4, "smart_scroll_type"

    iget-object v7, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 90
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mModeItem:Ljava/util/ArrayList;

    .line 91
    sget-object v4, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mModeItem:Ljava/util/ArrayList;

    const v7, 0x7f090e33

    invoke-virtual {p0, v7}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v4, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mModeItem:Ljava/util/ArrayList;

    const v7, 0x7f090e34

    invoke-virtual {p0, v7}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    :goto_0
    iget-object v4, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mRootView:Landroid/view/View;

    const v7, 0x7f0b0380

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mListView:Landroid/widget/ListView;

    .line 109
    const v4, 0x7f040130

    invoke-virtual {p1, v4, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 110
    .local v1, guideView:Landroid/view/View;
    const v4, 0x7f0b0385

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mMessageView:Landroid/widget/TextView;

    .line 111
    const v4, 0x7f0b0386

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mImageView:Landroid/widget/ImageView;

    .line 112
    const v4, 0x7f0b0381

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mLinearLayoutSensitivity:Landroid/widget/LinearLayout;

    .line 113
    const v4, 0x7f0b0384

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    iput-object v4, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->seekBar:Landroid/widget/SeekBar;

    .line 114
    iget-object v4, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->seekBar:Landroid/widget/SeekBar;

    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 115
    iget-object v4, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "smart_scroll_sensitivity"

    const/16 v9, 0xf

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    div-int/lit8 v7, v7, 0x5

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 116
    iget-object v4, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 118
    const v4, 0x7f0b0387

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 119
    .local v3, tryBtn:Landroid/widget/Button;
    iget-object v4, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mTryBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    const-string v4, "default"

    iget-object v7, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mGuideContent:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 123
    iget-object v4, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mMessageView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mGuideContent:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    :cond_0
    iget v4, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mGuideAniResID:I

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mImageView:Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    .line 128
    iget-object v4, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mImageView:Landroid/widget/ImageView;

    iget v7, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mGuideAniResID:I

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    iget-object v4, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 131
    .local v0, ani:Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 136
    .end local v0           #ani:Landroid/graphics/drawable/AnimationDrawable;
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v1, v10, v5}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 140
    iget-object v4, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mListView:Landroid/widget/ListView;

    new-instance v7, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0400bb

    sget-object v10, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mModeItem:Ljava/util/ArrayList;

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 141
    iget-object v4, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 142
    iget-object v4, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v6}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 143
    iget-object v4, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 144
    iget-object v4, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mListView:Landroid/widget/ListView;

    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Landroid/widget/AbsListView;->setOverScrollMode(I)V

    .line 146
    const-string v4, "smart_scroll_acceleration"

    iget-object v7, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 147
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mSmartScrollDBItem:Ljava/lang/String;

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_6

    move v2, v5

    .line 148
    .local v2, index:I
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v2, v6}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 154
    .end local v2           #index:I
    :cond_2
    :goto_2
    const-string v4, "smart_scroll_sensitivity"

    iget-object v6, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 156
    iget-object v4, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mLinearLayoutSensitivity:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 162
    :goto_3
    iget-object v4, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mRootView:Landroid/view/View;

    return-object v4

    .line 93
    .end local v1           #guideView:Landroid/view/View;
    .end local v3           #tryBtn:Landroid/widget/Button;
    :cond_3
    const-string v4, "smart_scroll_unit"

    iget-object v7, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 94
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mModeItem:Ljava/util/ArrayList;

    .line 95
    sget-object v4, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mModeItem:Ljava/util/ArrayList;

    const v7, 0x7f090e35

    invoke-virtual {p0, v7}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v4, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mModeItem:Ljava/util/ArrayList;

    const v7, 0x7f090e36

    invoke-virtual {p0, v7}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 97
    :cond_4
    const-string v4, "smart_scroll_acceleration"

    iget-object v7, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 98
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mModeItem:Ljava/util/ArrayList;

    .line 99
    sget-object v4, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mModeItem:Ljava/util/ArrayList;

    const v7, 0x7f090e37

    invoke-virtual {p0, v7}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v4, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mModeItem:Ljava/util/ArrayList;

    const v7, 0x7f090e38

    invoke-virtual {p0, v7}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 102
    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mModeItem:Ljava/util/ArrayList;

    goto/16 :goto_0

    .restart local v1       #guideView:Landroid/view/View;
    .restart local v3       #tryBtn:Landroid/widget/Button;
    :cond_6
    move v2, v6

    .line 147
    goto :goto_1

    .line 149
    :cond_7
    const-string v4, "smart_scroll_type"

    iget-object v7, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "smart_scroll_unit"

    iget-object v7, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 150
    :cond_8
    iget-object v4, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mSmartScrollDBItem:Ljava/lang/String;

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v4, v7, v6}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    goto/16 :goto_2

    .line 158
    :cond_9
    iget-object v4, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 159
    iget-object v4, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mLinearLayoutSensitivity:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3
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
    .line 225
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v0, "smart_scroll_acceleration"

    iget-object v1, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mSmartScrollDBItem:Ljava/lang/String;

    if-nez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 230
    :goto_1
    return-void

    .line 226
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 228
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mSmartScrollDBItem:Ljava/lang/String;

    invoke-static {v0, v1, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 208
    add-int/lit8 v0, p2, 0x1

    mul-int/lit8 v0, v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->setSensitivity(I)V

    .line 209
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 167
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 169
    const-string v0, "smart_scroll_sensitivity"

    iget-object v1, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenGuideHub;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "smart_scroll_sensitivity"

    const/16 v3, 0xf

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    div-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 173
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 215
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 221
    return-void
.end method

.method public setSensitivity(I)V
    .locals 2
    .parameter "sensitivity"

    .prologue
    .line 202
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_scroll_sensitivity"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 203
    return-void
.end method
