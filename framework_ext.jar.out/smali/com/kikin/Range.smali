.class public Lcom/kikin/Range;
.super Ljava/lang/Object;
.source "Range.java"


# instance fields
.field private mEndOffset:I

.field private mSelectionLanguage:Ljava/lang/String;

.field private mSelectionType:Ljava/lang/String;

.field private mStartOffset:I

.field private mTouchedWord:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "startOffset"
    .parameter "endOffset"
    .parameter "selectionType"
    .parameter "selectionLanguage"
    .parameter "value"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/kikin/Range;->mStartOffset:I

    .line 27
    iput p2, p0, Lcom/kikin/Range;->mEndOffset:I

    .line 28
    iput-object p3, p0, Lcom/kikin/Range;->mSelectionType:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/kikin/Range;->mSelectionLanguage:Ljava/lang/String;

    .line 30
    iput-object p5, p0, Lcom/kikin/Range;->mValue:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public getEndOffset()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/kikin/Range;->mEndOffset:I

    return v0
.end method

.method public getSelectionLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/kikin/Range;->mSelectionLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/kikin/Range;->mSelectionType:Ljava/lang/String;

    return-object v0
.end method

.method public getStartOffset()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/kikin/Range;->mStartOffset:I

    return v0
.end method

.method public getTouchedWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kikin/Range;->mTouchedWord:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/kikin/Range;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public setTouchedWord(Ljava/lang/String;)V
    .locals 0
    .parameter "touchedWord"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/kikin/Range;->mTouchedWord:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start Offset:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kikin/Range;->mStartOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tEnd Offset:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kikin/Range;->mEndOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
