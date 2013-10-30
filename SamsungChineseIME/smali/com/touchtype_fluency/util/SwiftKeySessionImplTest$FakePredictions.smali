.class Lcom/touchtype_fluency/util/SwiftKeySessionImplTest$FakePredictions;
.super Lcom/touchtype_fluency/Predictions;
.source "SwiftKeySessionImplTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype_fluency/util/SwiftKeySessionImplTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FakePredictions"
.end annotation


# direct methods
.method public constructor <init>([Lcom/touchtype_fluency/Prediction;)V
    .locals 0
    .parameter "predictions"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/touchtype_fluency/Predictions;-><init>([Lcom/touchtype_fluency/Prediction;)V

    .line 56
    return-void
.end method
