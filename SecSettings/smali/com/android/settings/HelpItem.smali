.class public Lcom/android/settings_ex/HelpItem;
.super Ljava/lang/Object;
.source "HelpItem.java"


# instance fields
.field container:Landroid/view/View;

.field contentImageArea:Landroid/widget/FrameLayout;

.field contentImageView:Landroid/widget/ImageView;

.field contentPlayBtn:Landroid/widget/ImageButton;

.field contentTextView:Landroid/widget/TextView;

.field item:Landroid/widget/LinearLayout;

.field titleTextView:Landroid/widget/TextView;

.field titleTextView2:Landroid/widget/TextView;

.field tryBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;)V
    .locals 2
    .parameter "inflater"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const v0, 0x7f04002f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/HelpItem;->container:Landroid/view/View;

    .line 28
    iget-object v0, p0, Lcom/android/settings_ex/HelpItem;->container:Landroid/view/View;

    const v1, 0x7f0b0070

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings_ex/HelpItem;->item:Landroid/widget/LinearLayout;

    .line 29
    iget-object v0, p0, Lcom/android/settings_ex/HelpItem;->container:Landroid/view/View;

    const v1, 0x7f0b0071

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/HelpItem;->titleTextView:Landroid/widget/TextView;

    .line 30
    iget-object v0, p0, Lcom/android/settings_ex/HelpItem;->container:Landroid/view/View;

    const v1, 0x7f0b0072

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/HelpItem;->titleTextView2:Landroid/widget/TextView;

    .line 31
    iget-object v0, p0, Lcom/android/settings_ex/HelpItem;->container:Landroid/view/View;

    const v1, 0x7f0b0076

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/HelpItem;->contentTextView:Landroid/widget/TextView;

    .line 32
    iget-object v0, p0, Lcom/android/settings_ex/HelpItem;->container:Landroid/view/View;

    const v1, 0x7f0b0073

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/settings_ex/HelpItem;->contentImageArea:Landroid/widget/FrameLayout;

    .line 33
    iget-object v0, p0, Lcom/android/settings_ex/HelpItem;->container:Landroid/view/View;

    const v1, 0x7f0b0074

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/HelpItem;->contentImageView:Landroid/widget/ImageView;

    .line 34
    iget-object v0, p0, Lcom/android/settings_ex/HelpItem;->container:Landroid/view/View;

    const v1, 0x7f0b0075

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/settings_ex/HelpItem;->contentPlayBtn:Landroid/widget/ImageButton;

    .line 35
    iget-object v0, p0, Lcom/android/settings_ex/HelpItem;->container:Landroid/view/View;

    const v1, 0x7f0b0077

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ex/HelpItem;->tryBtn:Landroid/widget/Button;

    .line 36
    return-void
.end method


# virtual methods
.method public getHelpView()Landroid/view/View;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings_ex/HelpItem;->container:Landroid/view/View;

    return-object v0
.end method

.method public setBottomPadding(I)V
    .locals 2
    .parameter "bottom"

    .prologue
    const/4 v1, 0x0

    .line 43
    iget-object v0, p0, Lcom/android/settings_ex/HelpItem;->item:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v1, v1, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 44
    return-void
.end method

.method public setBottomPaddingOfTitle(I)V
    .locals 2
    .parameter "bottom"

    .prologue
    const/4 v1, 0x0

    .line 47
    iget-object v0, p0, Lcom/android/settings_ex/HelpItem;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 48
    return-void
.end method

.method public setContentImage(I)V
    .locals 1
    .parameter "res_id"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/HelpItem;->contentImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    return-void
.end method

.method public setContentText(I)V
    .locals 1
    .parameter "res_id"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/HelpItem;->contentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 69
    return-void
.end method

.method public setContentText(Landroid/text/SpannableString;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings_ex/HelpItem;->contentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    return-void
.end method

.method public setContentText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings_ex/HelpItem;->contentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    return-void
.end method

.method public setContentVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/settings_ex/HelpItem;->contentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    return-void
.end method

.method public setImageVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/HelpItem;->contentImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/android/settings_ex/HelpItem;->contentImageArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 93
    return-void
.end method

.method public setOnTryBtnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/settings_ex/HelpItem;->tryBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 119
    if-eqz p1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/settings_ex/HelpItem;->tryBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    :cond_0
    return-void
.end method

.method public setTitle2Visibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings_ex/HelpItem;->titleTextView2:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    return-void
.end method

.method public setTitleText(I)V
    .locals 2
    .parameter "res_id"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings_ex/HelpItem;->titleTextView2:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/android/settings_ex/HelpItem;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 53
    return-void
.end method

.method public setTitleTextWithOutCategory(I)V
    .locals 3
    .parameter "res_id"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings_ex/HelpItem;->titleTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Lcom/android/settings_ex/HelpItem;->titleTextView2:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 58
    iget-object v0, p0, Lcom/android/settings_ex/HelpItem;->titleTextView2:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 59
    return-void
.end method

.method public setTitleTextWithOutCategory(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings_ex/HelpItem;->titleTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/android/settings_ex/HelpItem;->titleTextView2:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 64
    iget-object v0, p0, Lcom/android/settings_ex/HelpItem;->titleTextView2:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    return-void
.end method

.method public setTitleVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings_ex/HelpItem;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    return-void
.end method

.method public usePlayButton(Z)V
    .locals 3
    .parameter "playable"

    .prologue
    .line 100
    if-eqz p1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/android/settings_ex/HelpItem;->contentPlayBtn:Landroid/widget/ImageButton;

    const v2, 0x7f0200ea

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    iget-object v1, p0, Lcom/android/settings_ex/HelpItem;->contentPlayBtn:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/settings_ex/HelpItem$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/HelpItem$1;-><init>(Lcom/android/settings_ex/HelpItem;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/HelpItem;->contentImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 113
    .local v0, ani:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0
.end method
