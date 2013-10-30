.class Lcom/samsung/inputmethod/candidate/SimeCandHorContainer$CandDirectionGesture;
.super Ljava/lang/Object;
.source "SimeCandHorContainer.java"

# interfaces
.implements Lcom/samsung/inputmethod/comm/SimeGestureListener$DirectionGesture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CandDirectionGesture"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;


# direct methods
.method private constructor <init>(Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 816
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer$CandDirectionGesture;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;Lcom/samsung/inputmethod/candidate/SimeCandHorContainer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 816
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer$CandDirectionGesture;-><init>(Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;)V

    return-void
.end method


# virtual methods
.method public onDirectionGesture(I)Z
    .locals 5
    .parameter "gravity"

    .prologue
    const/4 v4, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 818
    if-nez p1, :cond_1

    .line 839
    :cond_0
    :goto_0
    return v0

    .line 821
    :cond_1
    if-eq v4, p1, :cond_2

    const/4 v2, 0x5

    if-ne v2, p1, :cond_0

    .line 822
    :cond_2
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer$CandDirectionGesture;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 823
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer$CandDirectionGesture;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->access$100(Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;)Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getExpandCandsContainer()Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->isShown()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer$CandDirectionGesture;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->access$100(Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;)Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getActivCCItem()Landroid/widget/RelativeLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer$CandDirectionGesture;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;
    invoke-static {v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->access$100(Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;)Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getCommonCandsContainer()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v3

    if-ne v2, v3, :cond_3

    move v0, v1

    .line 825
    goto :goto_0

    .line 826
    :cond_3
    if-ne v4, p1, :cond_4

    .line 827
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer$CandDirectionGesture;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCvListener:Lcom/samsung/inputmethod/candidate/SimeCandViewListener;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->access$200(Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;)Lcom/samsung/inputmethod/candidate/SimeCandViewListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/inputmethod/candidate/SimeCandViewListener;->onToLeftGesture()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 828
    goto :goto_0

    .line 831
    :cond_4
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer$CandDirectionGesture;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCvListener:Lcom/samsung/inputmethod/candidate/SimeCandViewListener;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->access$200(Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;)Lcom/samsung/inputmethod/candidate/SimeCandViewListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/inputmethod/candidate/SimeCandViewListener;->onToRightGesture()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 832
    goto :goto_0
.end method
