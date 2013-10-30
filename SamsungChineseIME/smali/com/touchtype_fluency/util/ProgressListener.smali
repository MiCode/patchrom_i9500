.class public abstract Lcom/touchtype_fluency/util/ProgressListener;
.super Ljava/lang/Object;
.source "ProgressListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ZZZ)V
    .locals 0
    .parameter "success"
    .parameter "cancelled"
    .parameter "digestOK"

    .prologue
    .line 21
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "current"
    .parameter "maximum"

    .prologue
    .line 14
    return-void
.end method
