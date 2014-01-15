.class Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DreamSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DreamSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DreamInfoAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings_ex/DreamBackend$DreamInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/settings_ex/DreamSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/DreamSettings;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 372
    iput-object p1, p0, Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter;->this$0:Lcom/android/settings_ex/DreamSettings;

    .line 373
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 374
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 375
    return-void
.end method

.method static synthetic access$600(Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter;Lcom/android/settings_ex/DreamBackend$DreamInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 369
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter;->activate(Lcom/android/settings_ex/DreamBackend$DreamInfo;)V

    return-void
.end method

.method private activate(Lcom/android/settings_ex/DreamBackend$DreamInfo;)V
    .locals 3
    .parameter "dreamInfo"

    .prologue
    .line 439
    invoke-direct {p0}, Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter;->getCurrentSelection()Lcom/android/settings_ex/DreamBackend$DreamInfo;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 447
    :goto_0
    return-void

    .line 441
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 442
    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/DreamBackend$DreamInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/settings_ex/DreamBackend$DreamInfo;->isActive:Z

    .line 441
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 444
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/settings_ex/DreamBackend$DreamInfo;->isActive:Z

    .line 445
    iget-object v1, p0, Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter;->this$0:Lcom/android/settings_ex/DreamSettings;

    #getter for: Lcom/android/settings_ex/DreamSettings;->mBackend:Lcom/android/settings_ex/DreamBackend;
    invoke-static {v1}, Lcom/android/settings_ex/DreamSettings;->access$100(Lcom/android/settings_ex/DreamSettings;)Lcom/android/settings_ex/DreamBackend;

    move-result-object v1

    iget-object v2, p1, Lcom/android/settings_ex/DreamBackend$DreamInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/DreamBackend;->setActiveDream(Landroid/content/ComponentName;)V

    .line 446
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private createDreamInfoRow(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "parent"

    .prologue
    .line 420
    iget-object v1, p0, Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04006f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 421
    .local v0, row:Landroid/view/View;
    new-instance v1, Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter$3;

    invoke-direct {v1, p0, v0}, Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter$3;-><init>(Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    return-object v0
.end method

.method private getCurrentSelection()Lcom/android/settings_ex/DreamBackend$DreamInfo;
    .locals 3

    .prologue
    .line 431
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 432
    invoke-virtual {p0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/DreamBackend$DreamInfo;

    .line 433
    .local v0, dreamInfo:Lcom/android/settings_ex/DreamBackend$DreamInfo;
    iget-boolean v2, v0, Lcom/android/settings_ex/DreamBackend$DreamInfo;->isActive:Z

    if-eqz v2, :cond_0

    .line 436
    .end local v0           #dreamInfo:Lcom/android/settings_ex/DreamBackend$DreamInfo;
    :goto_1
    return-object v0

    .line 431
    .restart local v0       #dreamInfo:Lcom/android/settings_ex/DreamBackend$DreamInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 436
    .end local v0           #dreamInfo:Lcom/android/settings_ex/DreamBackend$DreamInfo;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x4

    const/4 v5, 0x1

    const v8, 0x3ea8f5c3

    const/4 v7, 0x0

    .line 379
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/DreamBackend$DreamInfo;

    .line 380
    .local v0, dreamInfo:Lcom/android/settings_ex/DreamBackend$DreamInfo;
    const-string v6, "getView(%s)"

    new-array v10, v5, [Ljava/lang/Object;

    iget-object v11, v0, Lcom/android/settings_ex/DreamBackend$DreamInfo;->caption:Ljava/lang/CharSequence;

    aput-object v11, v10, v7

    #calls: Lcom/android/settings_ex/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v6, v10}, Lcom/android/settings_ex/DreamSettings;->access$700(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 381
    if-eqz p2, :cond_1

    move-object v2, p2

    .line 382
    .local v2, row:Landroid/view/View;
    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 385
    const v6, 0x1020006

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iget-object v10, v0, Lcom/android/settings_ex/DreamBackend$DreamInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 388
    const v6, 0x1020016

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v10, v0, Lcom/android/settings_ex/DreamBackend$DreamInfo;->caption:Ljava/lang/CharSequence;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    const v6, 0x1020019

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 392
    .local v1, radioButton:Landroid/widget/RadioButton;
    iget-boolean v6, v0, Lcom/android/settings_ex/DreamBackend$DreamInfo;->isActive:Z

    invoke-virtual {v1, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 393
    new-instance v6, Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter$1;

    invoke-direct {v6, p0, v2}, Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter$1;-><init>(Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter;Landroid/view/View;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 401
    iget-object v6, v0, Lcom/android/settings_ex/DreamBackend$DreamInfo;->settingsComponentName:Landroid/content/ComponentName;

    if-eqz v6, :cond_2

    .line 402
    .local v5, showSettings:Z
    :goto_1
    const v6, 0x7f0b0136

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 403
    .local v4, settingsDivider:Landroid/view/View;
    iget-boolean v6, v0, Lcom/android/settings_ex/DreamBackend$DreamInfo;->isActive:Z

    if-eqz v6, :cond_3

    const v6, 0x3f4ccccd

    :goto_2
    invoke-virtual {v4, v6}, Landroid/view/View;->setAlpha(F)V

    .line 404
    if-eqz v5, :cond_4

    move v6, v7

    :goto_3
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 406
    const v6, 0x102001a

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 407
    .local v3, settingsButton:Landroid/widget/ImageView;
    if-eqz v5, :cond_5

    :goto_4
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 408
    iget-boolean v6, v0, Lcom/android/settings_ex/DreamBackend$DreamInfo;->isActive:Z

    if-eqz v6, :cond_0

    const/high16 v8, 0x3f80

    :cond_0
    invoke-virtual {v3, v8}, Landroid/view/View;->setAlpha(F)V

    .line 409
    iget-boolean v6, v0, Lcom/android/settings_ex/DreamBackend$DreamInfo;->isActive:Z

    invoke-virtual {v3, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 410
    new-instance v6, Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter$2;

    invoke-direct {v6, p0, v2}, Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter$2;-><init>(Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter;Landroid/view/View;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    return-object v2

    .line 381
    .end local v1           #radioButton:Landroid/widget/RadioButton;
    .end local v2           #row:Landroid/view/View;
    .end local v3           #settingsButton:Landroid/widget/ImageView;
    .end local v4           #settingsDivider:Landroid/view/View;
    .end local v5           #showSettings:Z
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter;->createDreamInfoRow(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .restart local v1       #radioButton:Landroid/widget/RadioButton;
    .restart local v2       #row:Landroid/view/View;
    :cond_2
    move v5, v7

    .line 401
    goto :goto_1

    .restart local v4       #settingsDivider:Landroid/view/View;
    .restart local v5       #showSettings:Z
    :cond_3
    move v6, v8

    .line 403
    goto :goto_2

    :cond_4
    move v6, v9

    .line 404
    goto :goto_3

    .restart local v3       #settingsButton:Landroid/widget/ImageView;
    :cond_5
    move v7, v9

    .line 407
    goto :goto_4
.end method
