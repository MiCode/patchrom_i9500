.class Lcom/touchtype_fluency/util/SwiftKeySessionImpl$6;
.super Ljava/lang/Object;
.source "SwiftKeySessionImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->getPredictions(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/ResultsFilter;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/touchtype_fluency/Predictions;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/touchtype_fluency/util/SwiftKeySessionImpl;

.field private final synthetic val$context:Lcom/touchtype_fluency/Sequence;

.field private final synthetic val$current:Lcom/touchtype_fluency/TouchHistory;

.field private final synthetic val$filter:Lcom/touchtype_fluency/ResultsFilter;


# direct methods
.method constructor <init>(Lcom/touchtype_fluency/util/SwiftKeySessionImpl;Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/ResultsFilter;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl$6;->this$0:Lcom/touchtype_fluency/util/SwiftKeySessionImpl;

    iput-object p2, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl$6;->val$context:Lcom/touchtype_fluency/Sequence;

    iput-object p3, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl$6;->val$current:Lcom/touchtype_fluency/TouchHistory;

    iput-object p4, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl$6;->val$filter:Lcom/touchtype_fluency/ResultsFilter;

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/touchtype_fluency/Predictions;
    .locals 6

    .prologue
    .line 289
    iget-object v2, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl$6;->this$0:Lcom/touchtype_fluency/util/SwiftKeySessionImpl;

    #getter for: Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mSession:Lcom/touchtype_fluency/Session;
    invoke-static {v2}, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->access$6(Lcom/touchtype_fluency/util/SwiftKeySessionImpl;)Lcom/touchtype_fluency/Session;

    move-result-object v2

    invoke-interface {v2}, Lcom/touchtype_fluency/Session;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v2

    iget-object v3, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl$6;->val$context:Lcom/touchtype_fluency/Sequence;

    iget-object v4, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl$6;->val$current:Lcom/touchtype_fluency/TouchHistory;

    iget-object v5, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl$6;->val$filter:Lcom/touchtype_fluency/ResultsFilter;

    invoke-interface {v2, v3, v4, v5}, Lcom/touchtype_fluency/Predictor;->getPredictions(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/ResultsFilter;)Lcom/touchtype_fluency/Predictions;

    move-result-object v1

    .line 290
    .local v1, predictions:Lcom/touchtype_fluency/Predictions;
    iget-object v2, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl$6;->this$0:Lcom/touchtype_fluency/util/SwiftKeySessionImpl;

    #calls: Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->getPredictionsListener()Lcom/touchtype_fluency/util/PredictionsListener;
    invoke-static {v2}, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->access$7(Lcom/touchtype_fluency/util/SwiftKeySessionImpl;)Lcom/touchtype_fluency/util/PredictionsListener;

    move-result-object v0

    .line 291
    .local v0, listener:Lcom/touchtype_fluency/util/PredictionsListener;
    if-eqz v0, :cond_0

    .line 292
    invoke-interface {v0, v1}, Lcom/touchtype_fluency/util/PredictionsListener;->onPredictionsReady(Lcom/touchtype_fluency/Predictions;)V

    .line 294
    :cond_0
    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/touchtype_fluency/util/SwiftKeySessionImpl$6;->call()Lcom/touchtype_fluency/Predictions;

    move-result-object v0

    return-object v0
.end method
