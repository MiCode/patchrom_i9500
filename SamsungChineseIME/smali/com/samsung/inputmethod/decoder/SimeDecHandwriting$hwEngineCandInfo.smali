.class Lcom/samsung/inputmethod/decoder/SimeDecHandwriting$hwEngineCandInfo;
.super Ljava/lang/Object;
.source "SimeDecHandwriting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "hwEngineCandInfo"
.end annotation


# instance fields
.field public CandType:[I

.field public CandidateResult:[C

.field private mCandCnt:I

.field final synthetic this$0:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;I)V
    .locals 1
    .parameter
    .parameter "candCnt"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting$hwEngineCandInfo;->this$0:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    if-lez p2, :cond_0

    .line 62
    iput p2, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting$hwEngineCandInfo;->mCandCnt:I

    .line 65
    :goto_0
    mul-int/lit8 v0, p2, 0x21

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting$hwEngineCandInfo;->CandidateResult:[C

    .line 67
    new-array v0, p2, [I

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting$hwEngineCandInfo;->CandType:[I

    .line 68
    return-void

    .line 64
    :cond_0
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting$hwEngineCandInfo;->mCandCnt:I

    goto :goto_0
.end method


# virtual methods
.method public getCandCnt()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting$hwEngineCandInfo;->mCandCnt:I

    return v0
.end method

.method public getCandResult()[C
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting$hwEngineCandInfo;->CandidateResult:[C

    return-object v0
.end method

.method public getCandType()[I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting$hwEngineCandInfo;->CandType:[I

    return-object v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting$hwEngineCandInfo;->CandidateResult:[C

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 72
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting$hwEngineCandInfo;->CandType:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 73
    return-void
.end method
