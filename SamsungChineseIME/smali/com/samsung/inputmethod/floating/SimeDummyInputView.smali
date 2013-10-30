.class public Lcom/samsung/inputmethod/floating/SimeDummyInputView;
.super Landroid/view/View;
.source "SimeDummyInputView.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final SKB_DUMMY_HIEHT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SimeDummyInputView"


# instance fields
.field private mSkbManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 54
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 62
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/inputmethod/floating/SimeDummyInputView;->setMeasuredDimension(II)V

    .line 63
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 70
    if-nez p1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/samsung/inputmethod/floating/SimeDummyInputView;->mSkbManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->showFloatingInputPanel()V

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/floating/SimeDummyInputView;->mSkbManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->dismissFloatingInputPanel()V

    goto :goto_0
.end method

.method public setSkbmanager(Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;)V
    .locals 0
    .parameter "manager"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/samsung/inputmethod/floating/SimeDummyInputView;->mSkbManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    .line 58
    return-void
.end method
