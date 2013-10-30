.class public Lcom/samsung/inputmethod/tabmode/SimeTabPage;
.super Landroid/widget/LinearLayout;
.source "SimeTabPage.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimeTabPage"


# instance fields
.field private mID:I

.field private mIme:Lcom/samsung/inputmethod/SamsungIME;

.field private mTabIcon:Landroid/widget/ImageButton;

.field private mTabMain:Landroid/widget/RelativeLayout;

.field private mTabMargin:Landroid/view/View;

.field private mTabSeparator:Landroid/view/View;

.field private mTabTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->mID:I

    .line 61
    check-cast p1, Lcom/samsung/inputmethod/SamsungIME;

    .end local p1
    iput-object p1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    .line 62
    return-void
.end method


# virtual methods
.method public getTabID()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->mID:I

    return v0
.end method

.method public getTitleTextWidth()F
    .locals 3

    .prologue
    .line 119
    iget-object v2, p0, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->mTabTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 120
    .local v0, paint:Landroid/graphics/Paint;
    iget-object v2, p0, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->mTabTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 121
    .local v1, textwidth:F
    return v1
.end method

.method public initialize(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 65
    const v0, 0x7f0c0076

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->mTabMain:Landroid/widget/RelativeLayout;

    .line 66
    const v0, 0x7f0c0077

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->mTabTitle:Landroid/widget/TextView;

    .line 67
    const v0, 0x7f0c0079

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->mTabIcon:Landroid/widget/ImageButton;

    .line 68
    const v0, 0x7f0c007a

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->mTabSeparator:Landroid/view/View;

    .line 69
    const v0, 0x7f0c0078

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->mTabMargin:Landroid/view/View;

    .line 70
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->mTabMargin:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    iput p1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->mID:I

    .line 72
    return-void
.end method

.method public setTabBgResource(I)V
    .locals 1
    .parameter "resid"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->mTabMain:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 112
    return-void
.end method

.method public setTabIcon(I)V
    .locals 2
    .parameter "resId"

    .prologue
    const/16 v1, 0x8

    .line 99
    if-lez p1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->mTabIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 101
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->mTabIcon:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 107
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->mTabIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->mTabMargin:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTitle(IF)V
    .locals 2
    .parameter "stringId"
    .parameter "textSize"

    .prologue
    const/16 v1, 0x8

    .line 75
    if-lez p1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->mTabTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 77
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->mTabTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 83
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->mTabTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->mTabMargin:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTitleColor(II)V
    .locals 4
    .parameter "color"
    .parameter "shadowColor"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->mTabTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->mTabTitle:Landroid/widget/TextView;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    const/high16 v3, -0x4080

    invoke-virtual {v0, v1, v2, v3, p2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 88
    return-void
.end method

.method public setTitleMaxWidth(I)V
    .locals 1
    .parameter "maxWidth"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->mTabTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 96
    return-void
.end method

.method public setTitleMinWidth(I)V
    .locals 1
    .parameter "minWidth"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->mTabTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 92
    return-void
.end method
