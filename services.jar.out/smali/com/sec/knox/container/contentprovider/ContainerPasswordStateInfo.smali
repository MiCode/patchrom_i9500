.class public Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;
.super Ljava/lang/Object;
.source "ContainerPasswordStateInfo.java"


# instance fields
.field private mCharMaxOccurrencesCount:I

.field private mCharSeqLength:I

.field private mContainerId:I

.field private mDigitSeqLength:I

.field private mLength:I

.field private mLetters:I

.field private mLowercase:I

.field private mNonLetter:I

.field private mNumeric:I

.field private mQuality:I

.field private mSimplePassword:Z

.field private mSymbols:I

.field private mUppercase:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mContainerId:I

    .line 10
    iput v1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mQuality:I

    .line 11
    iput v1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mLength:I

    .line 12
    iput v1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mUppercase:I

    .line 13
    iput v1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mLowercase:I

    .line 14
    iput v1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mLetters:I

    .line 15
    iput v1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mNumeric:I

    .line 16
    iput v1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mNonLetter:I

    .line 17
    iput v1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mSymbols:I

    .line 18
    iput-boolean v1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mSimplePassword:Z

    .line 19
    iput v1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mCharSeqLength:I

    .line 20
    iput v1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mDigitSeqLength:I

    .line 21
    iput v1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mCharMaxOccurrencesCount:I

    return-void
.end method


# virtual methods
.method public getCharMaxOccurrencesCount()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mCharMaxOccurrencesCount:I

    return v0
.end method

.method public getCharSeqLength()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mCharSeqLength:I

    return v0
.end method

.method public getContainerId()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mContainerId:I

    return v0
.end method

.method public getDigitSeqLength()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mDigitSeqLength:I

    return v0
.end method

.method public getPasswordLength()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mLength:I

    return v0
.end method

.method public getPasswordLetters()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mLetters:I

    return v0
.end method

.method public getPasswordLowercase()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mLowercase:I

    return v0
.end method

.method public getPasswordNonLetter()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mNonLetter:I

    return v0
.end method

.method public getPasswordNumeric()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mNumeric:I

    return v0
.end method

.method public getPasswordQuality()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mQuality:I

    return v0
.end method

.method public getPasswordSymbols()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mSymbols:I

    return v0
.end method

.method public getPasswordUppercase()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mUppercase:I

    return v0
.end method

.method public isPasswordSimple()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mSimplePassword:Z

    return v0
.end method

.method public setCharMaxOccurrencesCount(I)V
    .locals 0
    .parameter "charMaxOccurrencesCount"

    .prologue
    .line 124
    iput p1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mCharMaxOccurrencesCount:I

    .line 125
    return-void
.end method

.method public setCharSeqLength(I)V
    .locals 0
    .parameter "charSeqLength"

    .prologue
    .line 108
    iput p1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mCharSeqLength:I

    .line 109
    return-void
.end method

.method public setContainerId(I)V
    .locals 0
    .parameter "containerId"

    .prologue
    .line 28
    iput p1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mContainerId:I

    .line 29
    return-void
.end method

.method public setDigitSeqLength(I)V
    .locals 0
    .parameter "digitSeqLength"

    .prologue
    .line 116
    iput p1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mDigitSeqLength:I

    .line 117
    return-void
.end method

.method public setPasswordLength(I)V
    .locals 0
    .parameter "length"

    .prologue
    .line 44
    iput p1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mLength:I

    .line 45
    return-void
.end method

.method public setPasswordLetters(I)V
    .locals 0
    .parameter "letters"

    .prologue
    .line 52
    iput p1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mLetters:I

    .line 53
    return-void
.end method

.method public setPasswordLowercase(I)V
    .locals 0
    .parameter "lowercase"

    .prologue
    .line 68
    iput p1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mLowercase:I

    .line 69
    return-void
.end method

.method public setPasswordNonLetter(I)V
    .locals 0
    .parameter "nonLetter"

    .prologue
    .line 92
    iput p1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mNonLetter:I

    .line 93
    return-void
.end method

.method public setPasswordNumeric(I)V
    .locals 0
    .parameter "numeric"

    .prologue
    .line 76
    iput p1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mNumeric:I

    .line 77
    return-void
.end method

.method public setPasswordQuality(I)V
    .locals 0
    .parameter "quality"

    .prologue
    .line 36
    iput p1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mQuality:I

    .line 37
    return-void
.end method

.method public setPasswordSimple(Z)V
    .locals 0
    .parameter "simplePassword"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mSimplePassword:Z

    .line 101
    return-void
.end method

.method public setPasswordSymbols(I)V
    .locals 0
    .parameter "symbols"

    .prologue
    .line 84
    iput p1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mSymbols:I

    .line 85
    return-void
.end method

.method public setPasswordUppercase(I)V
    .locals 0
    .parameter "uppercase"

    .prologue
    .line 60
    iput p1, p0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->mUppercase:I

    .line 61
    return-void
.end method
