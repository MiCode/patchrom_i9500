.class public Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;
.super Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
.source "SimeSkbSoftKeyView.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimeSkbSoftKeyView"


# instance fields
.field public mBalloonHeightShowF:F

.field public mBalloonWidthShowF:F

.field public mKeyViewBottom:I

.field public mKeyViewHeight:I

.field public mKeyViewLeft:I

.field public mKeyViewRight:I

.field public mKeyViewTop:I

.field public mKeyViewWidth:I

.field public mRowHeight:I

.field public mRowHeightF:F

.field public mRowMargin:I

.field public mRowMarginF:F

.field public mTextMargin:I

.field public mTextMarginF:F

.field public mTextWidth:I

.field public mTextWidthF:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;-><init>()V

    .line 18
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mKeyViewWidth:I

    .line 19
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mKeyViewHeight:I

    .line 20
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mKeyViewLeft:I

    .line 21
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mKeyViewTop:I

    .line 22
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mKeyViewRight:I

    .line 23
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mKeyViewBottom:I

    return-void
.end method


# virtual methods
.method public cloneSamsungSoftKey(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V
    .locals 2
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-super {p0, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->cloneSamsungSoftKey(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V

    .line 33
    if-eqz p1, :cond_1

    .line 34
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mBalloonKeyWidth:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 35
    iget v0, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBalloonKeyWidth:F

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mBalloonKeyWidth:F

    .line 37
    :cond_0
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mBalloonKeyHeight:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 38
    iget v0, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBalloonKeyHeight:F

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mBalloonKeyHeight:F

    .line 41
    :cond_1
    return-void
.end method

.method public getBalloonHeightValue()F
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getBalloonHeight()F

    move-result v0

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mBalloonHeightShowF:F

    .line 86
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mBalloonHeightShowF:F

    return v0
.end method

.method public getBalloonWidthValue()F
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getBalloonWidth()F

    move-result v0

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mBalloonWidthShowF:F

    .line 81
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mBalloonWidthShowF:F

    return v0
.end method

.method public setKeyBottom(I)V
    .locals 0
    .parameter "bottom"

    .prologue
    .line 74
    iput p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mKeyViewBottom:I

    .line 77
    return-void
.end method

.method public setKeyHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 50
    iput p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mKeyViewHeight:I

    .line 53
    return-void
.end method

.method public setKeyRight(I)V
    .locals 0
    .parameter "right"

    .prologue
    .line 68
    iput p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mKeyViewRight:I

    .line 71
    return-void
.end method

.method public setKeyStartX(I)V
    .locals 0
    .parameter "startX"

    .prologue
    .line 56
    iput p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mKeyViewLeft:I

    .line 59
    return-void
.end method

.method public setKeyStartY(I)V
    .locals 0
    .parameter "startY"

    .prologue
    .line 62
    iput p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mKeyViewTop:I

    .line 65
    return-void
.end method

.method public setKeyViewDimensions(FFFF)V
    .locals 0
    .parameter "rowheight"
    .parameter "rowmargin"
    .parameter "textwidth"
    .parameter "textmargin"

    .prologue
    .line 92
    iput p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mRowHeightF:F

    .line 93
    iput p2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mRowMarginF:F

    .line 94
    iput p3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mTextWidthF:F

    .line 95
    iput p4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mTextMarginF:F

    .line 102
    return-void
.end method

.method public setKeyWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 44
    iput p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mKeyViewWidth:I

    .line 47
    return-void
.end method

.method public setSkbCoreSize(II)V
    .locals 2
    .parameter "skbWidth"
    .parameter "skbHeight"

    .prologue
    .line 107
    invoke-super {p0, p1, p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->setSkbCoreSize(II)V

    .line 112
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mRowHeightF:F

    int-to-float v1, p2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mRowHeight:I

    .line 113
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mRowMarginF:F

    int-to-float v1, p2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mRowMargin:I

    .line 114
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mTextWidthF:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mTextWidth:I

    .line 115
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mTextMarginF:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mTextMargin:I

    .line 122
    return-void
.end method
