.class public Lcom/samsung/inputmethod/decoder/SimeDecHwInputData;
.super Ljava/lang/Object;
.source "SimeDecHwInputData.java"


# instance fields
.field private data:[I

.field private num:S

.field private regType:I


# direct methods
.method public constructor <init>([II)V
    .locals 1
    .parameter "hwData"
    .parameter "iRegType"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/samsung/inputmethod/decoder/SimeDecHwInputData;->data:[I

    .line 13
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecHwInputData;->data:[I

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecHwInputData;->data:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-short v0, v0

    iput-short v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecHwInputData;->num:S

    .line 15
    iput p2, p0, Lcom/samsung/inputmethod/decoder/SimeDecHwInputData;->regType:I

    .line 19
    :goto_0
    return-void

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecHwInputData;->reset()V

    goto :goto_0
.end method


# virtual methods
.method public getData()[I
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecHwInputData;->data:[I

    return-object v0
.end method

.method public getDataNum()S
    .locals 1

    .prologue
    .line 32
    iget-short v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecHwInputData;->num:S

    return v0
.end method

.method public getRegType()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecHwInputData;->regType:I

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecHwInputData;->data:[I

    .line 23
    iput-short v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecHwInputData;->num:S

    .line 24
    iput v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecHwInputData;->regType:I

    .line 25
    return-void
.end method
