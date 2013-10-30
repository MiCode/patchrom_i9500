.class public Lcom/samsung/inputmethod/candidate/SimeCandVerScrollView;
.super Landroid/widget/ScrollView;
.source "SimeCandVerScrollView.java"


# instance fields
.field private mScrollListener:Lcom/samsung/inputmethod/candidate/SimeCandScrollViewListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollView;->mScrollListener:Lcom/samsung/inputmethod/candidate/SimeCandScrollViewListener;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollView;->mScrollListener:Lcom/samsung/inputmethod/candidate/SimeCandScrollViewListener;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollView;->mScrollListener:Lcom/samsung/inputmethod/candidate/SimeCandScrollViewListener;

    .line 32
    return-void
.end method


# virtual methods
.method public fling(I)V
    .locals 1
    .parameter "velocityY"

    .prologue
    .line 67
    mul-int/lit8 v0, p1, 0x2

    div-int/lit8 v0, v0, 0x5

    invoke-super {p0, v0}, Landroid/widget/ScrollView;->fling(I)V

    .line 68
    return-void
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 57
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 59
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollView;->mScrollListener:Lcom/samsung/inputmethod/candidate/SimeCandScrollViewListener;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollView;->mScrollListener:Lcom/samsung/inputmethod/candidate/SimeCandScrollViewListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/inputmethod/candidate/SimeCandScrollViewListener;->onScroll(IIII)Z

    .line 61
    :cond_0
    return-void
.end method

.method public setScrollListener(Lcom/samsung/inputmethod/candidate/SimeCandScrollViewListener;)V
    .locals 0
    .parameter "vl"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollView;->mScrollListener:Lcom/samsung/inputmethod/candidate/SimeCandScrollViewListener;

    .line 45
    return-void
.end method
