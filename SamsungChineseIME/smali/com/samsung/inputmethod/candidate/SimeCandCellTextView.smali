.class public Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
.super Landroid/widget/TextView;
.source "SimeCandCellTextView.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CandidateTextView"


# instance fields
.field private mIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->mIndex:I

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->mIndex:I

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->mIndex:I

    .line 54
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->mIndex:I

    return v0
.end method

.method public getTextWidth()F
    .locals 3

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 74
    .local v0, paint:Landroid/graphics/Paint;
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 75
    .local v1, textwidth:F
    return v1
.end method

.method public setText(Ljava/lang/CharSequence;I)V
    .locals 0
    .parameter "text"
    .parameter "index"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iput p2, p0, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->mIndex:I

    .line 60
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 0
    .parameter "text"
    .parameter "suggestion"
    .parameter "index"

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iput p3, p0, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->mIndex:I

    .line 66
    return-void
.end method
