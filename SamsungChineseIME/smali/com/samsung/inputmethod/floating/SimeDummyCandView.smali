.class public Lcom/samsung/inputmethod/floating/SimeDummyCandView;
.super Landroid/view/View;
.source "SimeDummyCandView.java"


# static fields
.field static final CAND_DUMMY_HIEHT:I = 0x0

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimeDummyCandView"


# instance fields
.field private mSkbManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 53
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 61
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/inputmethod/floating/SimeDummyCandView;->setMeasuredDimension(II)V

    .line 62
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 82
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 90
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 70
    if-nez p1, :cond_0

    .line 75
    :cond_0
    return-void
.end method

.method public setSkbmanager(Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;)V
    .locals 0
    .parameter "manager"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/samsung/inputmethod/floating/SimeDummyCandView;->mSkbManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    .line 57
    return-void
.end method
