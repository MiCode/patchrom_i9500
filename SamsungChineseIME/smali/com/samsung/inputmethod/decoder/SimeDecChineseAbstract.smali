.class public abstract Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;
.super Lcom/samsung/inputmethod/decoder/SimeDecAbstract;
.source "SimeDecChineseAbstract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_SURFACE_LEN:I = 0x20

.field private static final TAG:Ljava/lang/String; = "SimeDecChineseAbstract"

.field protected static strCang:[C

.field protected static strPy:[C

.field protected static strZy:[C


# instance fields
.field protected m34SplCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

.field protected mActiveCmpsDisplayLen:I

.field protected mComposingStrDisplay:Ljava/lang/String;

.field protected mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

.field protected mMaxSurfaceLen:I

.field protected mRefinedSpell:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x29

    .line 17
    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->strPy:[C

    .line 23
    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->strZy:[C

    .line 30
    new-array v0, v1, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->strCang:[C

    return-void

    .line 17
    :array_0
    .array-data 0x2
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x30t 0x0t
        0x2dt 0x0t
        0x71t 0x0t
        0x77t 0x0t
        0x65t 0x0t
        0x72t 0x0t
        0x74t 0x0t
        0x79t 0x0t
        0x75t 0x0t
        0x69t 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x61t 0x0t
        0x73t 0x0t
        0x64t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x3bt 0x0t
        0x7at 0x0t
        0x78t 0x0t
        0x63t 0x0t
        0x76t 0x0t
        0x62t 0x0t
        0x6et 0x0t
        0x6dt 0x0t
        0x2ct 0x0t
        0x2et 0x0t
        0x2ft 0x0t
    .end array-data

    .line 23
    nop

    :array_1
    .array-data 0x2
        0x5t 0x31t
        0x9t 0x31t
        0xc7t 0x2t
        0xcbt 0x2t
        0x13t 0x31t
        0xcat 0x2t
        0xd9t 0x2t
        0x1at 0x31t
        0x1et 0x31t
        0x22t 0x31t
        0x26t 0x31t
        0x6t 0x31t
        0xat 0x31t
        0xdt 0x31t
        0x10t 0x31t
        0x14t 0x31t
        0x17t 0x31t
        0x27t 0x31t
        0x1bt 0x31t
        0x1ft 0x31t
        0x23t 0x31t
        0x7t 0x31t
        0xbt 0x31t
        0xet 0x31t
        0x11t 0x31t
        0x15t 0x31t
        0x18t 0x31t
        0x28t 0x31t
        0x1ct 0x31t
        0x20t 0x31t
        0x24t 0x31t
        0x8t 0x31t
        0xct 0x31t
        0xft 0x31t
        0x12t 0x31t
        0x16t 0x31t
        0x19t 0x31t
        0x29t 0x31t
        0x1dt 0x31t
        0x21t 0x31t
        0x25t 0x31t
    .end array-data

    .line 30
    nop

    :array_2
    .array-data 0x2
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x30t 0x0t
        0x2dt 0x0t
        0x4bt 0x62t
        0x30t 0x75t
        0x34t 0x6ct
        0xe3t 0x53t
        0xfft 0x5et
        0x5ct 0x53t
        0x71t 0x5ct
        0x8t 0x62t
        0xbat 0x4et
        0xc3t 0x5ft
        0xe5t 0x65t
        0x38t 0x5ct
        0x28t 0x67t
        0x6bt 0x70t
        0x1ft 0x57t
        0xf9t 0x7at
        0x41t 0x53t
        0x27t 0x59t
        0x2dt 0x4et
        0x3bt 0x0t
        0x7at 0x0t
        0xe3t 0x96t
        0xd1t 0x91t
        0x73t 0x59t
        0x8t 0x67t
        0x13t 0x5ft
        0x0t 0x4et
        0x2ct 0x0t
        0x2et 0x0t
        0x2ft 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/decoder/SimeDecManager;)V
    .locals 1
    .parameter "imeService"
    .parameter "decMgr"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;-><init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/decoder/SimeDecManager;)V

    .line 41
    const/16 v0, 0x20

    iput v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->mMaxSurfaceLen:I

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    .line 65
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-direct {v0}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->m34SplCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    .line 66
    new-instance v0, Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    invoke-direct {v0}, Lcom/samsung/inputmethod/decoder/SimeDecInputData;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    .line 67
    return-void
.end method


# virtual methods
.method public addInputData(CLandroid/graphics/PointF;Z)V
    .locals 2
    .parameter "ch"
    .parameter "pos"
    .parameter "bReset"

    .prologue
    .line 104
    if-eqz p3, :cond_0

    .line 105
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->reset()V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->add(CLandroid/graphics/PointF;Z)V

    .line 109
    return-void
.end method

.method public charBeforeCursorIsSeparator()Z
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->getChar()C

    move-result v0

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public charBeforeCursorIsTone()Z
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->getChar()C

    move-result v0

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected convertToBPMFSymbol(C)C
    .locals 2
    .parameter "c"

    .prologue
    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, j:I
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x29

    if-ge v0, v1, :cond_0

    .line 164
    sget-object v1, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->strPy:[C

    aget-char v1, v1, v0

    if-ne p1, v1, :cond_2

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isZhuyinMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    sget-object v1, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->strPy:[C

    array-length v1, v1

    if-ne v0, v1, :cond_3

    .line 170
    :cond_1
    :goto_1
    return p1

    .line 163
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_3
    sget-object v1, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->strZy:[C

    aget-char p1, v1, v0

    goto :goto_1
.end method

.method protected convertToCangjieSymbol(C)C
    .locals 2
    .parameter "c"

    .prologue
    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, j:I
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x29

    if-ge v0, v1, :cond_0

    .line 177
    sget-object v1, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->strPy:[C

    aget-char v1, v1, v0

    if-ne p1, v1, :cond_1

    .line 180
    :cond_0
    sget-object v1, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->strPy:[C

    array-length v1, v1

    if-ne v0, v1, :cond_2

    .line 181
    :goto_1
    return p1

    .line 176
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_2
    sget-object v1, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->strCang:[C

    aget-char p1, v1, v0

    goto :goto_1
.end method

.method protected decodingFinish()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, composingLength:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->getComposingStr()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, composingStr:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 116
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v2

    .line 122
    .local v2, imeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;
    sget-object v3, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract$1;->$SwitchMap$com$samsung$inputmethod$SamsungIME$ImeState:[I

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME$ImeState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 124
    :pswitch_0
    if-lez v0, :cond_1

    .line 125
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3, v6}, Lcom/samsung/inputmethod/SamsungIME;->changeToStateInput(Z)V

    goto :goto_0

    .line 127
    :cond_1
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3, v5}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto :goto_0

    .line 131
    :pswitch_1
    if-gtz v0, :cond_0

    .line 134
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3, v5}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto :goto_0

    .line 141
    :pswitch_2
    if-lez v0, :cond_2

    .line 142
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3, v6}, Lcom/samsung/inputmethod/SamsungIME;->changeToStateInput(Z)V

    goto :goto_0

    .line 144
    :cond_2
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3, v5}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto :goto_0

    .line 149
    :pswitch_3
    if-lez v0, :cond_3

    .line 150
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3, v6}, Lcom/samsung/inputmethod/SamsungIME;->changeToStateInput(Z)V

    goto :goto_0

    .line 152
    :cond_3
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3, v5}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public get34SplCandidates()Lcom/samsung/inputmethod/candidate/SimeCandInfo;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->m34SplCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    return-object v0
.end method

.method public abstract getActiveCmpsDisplayLen()I
.end method

.method public abstract getComposingStrForDisplay()Ljava/lang/String;
.end method

.method public getOrigianlSplStr()Ljava/lang/StringBuffer;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->getSpell()Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public isSplStrFull()Z
    .locals 2

    .prologue
    .line 81
    iget v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->mActiveCmpsDisplayLen:I

    iget v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->mMaxSurfaceLen:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 185
    invoke-super {p0}, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->reset()V

    .line 186
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->EMPTY:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->mComposingStrDisplay:Ljava/lang/String;

    .line 187
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->mActiveCmpsDisplayLen:I

    .line 188
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->m34SplCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->reset()V

    .line 189
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->reset()V

    .line 190
    return-void
.end method

.method public reset34SplCandidates()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->m34SplCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->reset()V

    .line 76
    return-void
.end method

.method public abstract setActivePrefixSuffix(I)I
.end method

.method protected setMaxSurfaceLen(I)V
    .locals 0
    .parameter "len"

    .prologue
    .line 86
    iput p1, p0, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->mMaxSurfaceLen:I

    .line 87
    return-void
.end method

.method public surfaceLength()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->getSpell()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    return v0
.end method

.method public abstract updateComposingStrForDisplay()V
.end method
