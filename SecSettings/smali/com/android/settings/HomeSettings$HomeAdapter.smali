.class Lcom/android/settings_ex/HomeSettings$HomeAdapter;
.super Landroid/widget/ArrayAdapter;
.source "HomeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/HomeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HomeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/HomeSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/HomeSettings;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 377
    .local p4, items:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iput-object p1, p0, Lcom/android/settings_ex/HomeSettings$HomeAdapter;->this$0:Lcom/android/settings_ex/HomeSettings;

    .line 378
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 379
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 384
    const/4 v5, 0x3

    if-ge p1, v5, :cond_1

    .line 386
    const-string v5, "HomeSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Convertview is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f07003c

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 389
    const v5, 0x7f0b0508

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 390
    .local v1, icon:Landroid/widget/ImageView;
    const v5, 0x7f0b0509

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 391
    .local v3, label:Landroid/widget/TextView;
    const v5, 0x7f0b0180

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 392
    .local v4, summary:Landroid/widget/TextView;
    const v5, 0x7f0b050a

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 394
    .local v0, button:Landroid/widget/RadioButton;
    packed-switch p1, :pswitch_data_0

    .line 412
    :goto_0
    iget-object v5, p0, Lcom/android/settings_ex/HomeSettings$HomeAdapter;->this$0:Lcom/android/settings_ex/HomeSettings;

    #getter for: Lcom/android/settings_ex/HomeSettings;->mCurrentHome:I
    invoke-static {v5}, Lcom/android/settings_ex/HomeSettings;->access$200(Lcom/android/settings_ex/HomeSettings;)I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 413
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 433
    .end local v0           #button:Landroid/widget/RadioButton;
    .end local v1           #icon:Landroid/widget/ImageView;
    .end local v3           #label:Landroid/widget/TextView;
    .end local v4           #summary:Landroid/widget/TextView;
    :cond_0
    :goto_1
    return-object p2

    .line 396
    .restart local v0       #button:Landroid/widget/RadioButton;
    .restart local v1       #icon:Landroid/widget/ImageView;
    .restart local v3       #label:Landroid/widget/TextView;
    .restart local v4       #summary:Landroid/widget/TextView;
    :pswitch_0
    iget-object v5, p0, Lcom/android/settings_ex/HomeSettings$HomeAdapter;->this$0:Lcom/android/settings_ex/HomeSettings;

    invoke-virtual {v5}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020133

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 397
    const v5, 0x7f090f29

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 398
    const v5, 0x7f090f2a

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 401
    :pswitch_1
    iget-object v5, p0, Lcom/android/settings_ex/HomeSettings$HomeAdapter;->this$0:Lcom/android/settings_ex/HomeSettings;

    invoke-virtual {v5}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020134

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 402
    const v5, 0x7f090f2b

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 403
    const v5, 0x7f090f2c

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 406
    :pswitch_2
    iget-object v5, p0, Lcom/android/settings_ex/HomeSettings$HomeAdapter;->this$0:Lcom/android/settings_ex/HomeSettings;

    invoke-virtual {v5}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020135

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 407
    const v5, 0x7f090f2d

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 408
    const v5, 0x7f090f2e

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 417
    .end local v0           #button:Landroid/widget/RadioButton;
    .end local v1           #icon:Landroid/widget/ImageView;
    .end local v3           #label:Landroid/widget/TextView;
    .end local v4           #summary:Landroid/widget/TextView;
    :cond_1
    iget-object v5, p0, Lcom/android/settings_ex/HomeSettings$HomeAdapter;->this$0:Lcom/android/settings_ex/HomeSettings;

    iget-object v5, v5, Lcom/android/settings_ex/HomeSettings;->mHomeApps:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 418
    .local v2, info:Landroid/content/pm/ResolveInfo;
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f07003d

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 420
    if-eqz v2, :cond_0

    .line 421
    const v5, 0x7f0b0508

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 422
    .restart local v1       #icon:Landroid/widget/ImageView;
    const v5, 0x7f0b0509

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 423
    .restart local v3       #label:Landroid/widget/TextView;
    const v5, 0x7f0b050a

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 425
    .restart local v0       #button:Landroid/widget/RadioButton;
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p0, Lcom/android/settings_ex/HomeSettings$HomeAdapter;->this$0:Lcom/android/settings_ex/HomeSettings;

    #getter for: Lcom/android/settings_ex/HomeSettings;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/settings_ex/HomeSettings;->access$300(Lcom/android/settings_ex/HomeSettings;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 426
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p0, Lcom/android/settings_ex/HomeSettings$HomeAdapter;->this$0:Lcom/android/settings_ex/HomeSettings;

    #getter for: Lcom/android/settings_ex/HomeSettings;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/settings_ex/HomeSettings;->access$300(Lcom/android/settings_ex/HomeSettings;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    iget-object v5, p0, Lcom/android/settings_ex/HomeSettings$HomeAdapter;->this$0:Lcom/android/settings_ex/HomeSettings;

    #getter for: Lcom/android/settings_ex/HomeSettings;->mCurrentHome:I
    invoke-static {v5}, Lcom/android/settings_ex/HomeSettings;->access$200(Lcom/android/settings_ex/HomeSettings;)I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 429
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto/16 :goto_1

    .line 394
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
