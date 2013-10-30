.class public interface abstract Lcom/samsung/inputmethod/decoder/SimeDecPredictInterface;
.super Ljava/lang/Object;
.source "SimeDecPredictInterface.java"


# virtual methods
.method public abstract configFeature(Ljava/lang/String;)Z
.end method

.method public abstract getActiveCandIdx()I
.end method

.method public abstract preparePredicts(Ljava/lang/CharSequence;Ljava/util/List;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;",
            ">;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation
.end method
