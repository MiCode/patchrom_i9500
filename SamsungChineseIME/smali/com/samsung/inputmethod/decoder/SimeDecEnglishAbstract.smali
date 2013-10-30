.class public abstract Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;
.super Lcom/samsung/inputmethod/decoder/SimeDecAbstract;
.source "SimeDecEnglishAbstract.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_SURFACE_LEN:I = 0x20

.field private static final TAG:Ljava/lang/String; = "SimeDecEnglishAbstract"


# instance fields
.field protected mActiveCmpsDisplayLen:I

.field protected mComposingStrDisplay:Ljava/lang/String;

.field protected mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

.field protected mMaxSurfaceLen:I


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/decoder/SimeDecManager;)V
    .locals 1
    .parameter "imeService"
    .parameter "decMgr"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;-><init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/decoder/SimeDecManager;)V

    .line 28
    const/16 v0, 0x20

    iput v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;->mMaxSurfaceLen:I

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;->mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    .line 36
    new-instance v0, Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    invoke-direct {v0}, Lcom/samsung/inputmethod/decoder/SimeDecInputData;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;->mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    .line 37
    return-void
.end method


# virtual methods
.method public addInputData(CLandroid/graphics/PointF;Z)V
    .locals 2
    .parameter "ch"
    .parameter "pos"
    .parameter "bReset"

    .prologue
    .line 43
    if-eqz p3, :cond_0

    .line 44
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;->mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->reset()V

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;->mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->getCursorPos()I

    move-result v0

    iget v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;->mMaxSurfaceLen:I

    if-ge v0, v1, :cond_1

    .line 48
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;->mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->add(CLandroid/graphics/PointF;Z)V

    .line 50
    :cond_1
    return-void
.end method

.method public deleteInputData()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;->mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->delChar()V

    .line 54
    return-void
.end method

.method public abstract getActiveCmpsDisplayLen()I
.end method

.method public abstract getComposingStrForDisplay()Ljava/lang/String;
.end method

.method public abstract getOrigianlSplStr()Ljava/lang/StringBuffer;
.end method

.method public isSplStrFull()Z
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;->mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->getSpell()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iget v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;->mMaxSurfaceLen:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    .line 58
    const/4 v0, 0x1

    .line 59
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->reset()V

    .line 69
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;->EMPTY:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;->mComposingStrDisplay:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;->mActiveCmpsDisplayLen:I

    .line 71
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;->mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->reset()V

    .line 72
    return-void
.end method

.method protected setMaxSurfaceLen(I)V
    .locals 0
    .parameter "len"

    .prologue
    .line 64
    iput p1, p0, Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;->mMaxSurfaceLen:I

    .line 65
    return-void
.end method
