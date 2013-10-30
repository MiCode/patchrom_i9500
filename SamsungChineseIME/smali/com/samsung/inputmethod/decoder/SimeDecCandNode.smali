.class public Lcom/samsung/inputmethod/decoder/SimeDecCandNode;
.super Ljava/lang/Object;
.source "SimeDecCandNode.java"


# instance fields
.field public index:I

.field public mCnt:I

.field public mDecoder:Lcom/samsung/inputmethod/decoder/SimeDecAbstract;


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/decoder/SimeDecAbstract;)V
    .locals 1
    .parameter "decoder"

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecCandNode;->mCnt:I

    .line 8
    iput v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecCandNode;->index:I

    .line 12
    iput-object p1, p0, Lcom/samsung/inputmethod/decoder/SimeDecCandNode;->mDecoder:Lcom/samsung/inputmethod/decoder/SimeDecAbstract;

    .line 13
    return-void
.end method
