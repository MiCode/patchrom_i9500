.class Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese$PrepareCandidatesTimer;
.super Landroid/os/Handler;
.source "SimeDecXT9Chinese.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PrepareCandidatesTimer"
.end annotation


# static fields
.field private static final MAX_PAGE_CAND_SIZE:I = 0x14

.field private static final MAX_PAGE_CAND_SIZE_FIRST:I = 0x1e

.field private static final MSG_DELAY_PREPARE_CANDIDATES:I = 0x0

.field private static final PREPARE_CANDIDATES_1ST_DELAYED:I = 0x1f4

.field private static final PREPARE_CANDIDATES_DELAYED:I = 0x64


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;)V
    .locals 0
    .parameter

    .prologue
    .line 839
    iput-object p1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese$PrepareCandidatesTimer;->this$0:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese$PrepareCandidatesTimer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 839
    invoke-direct {p0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese$PrepareCandidatesTimer;->stopPrepareCandeidateTimer()V

    return-void
.end method

.method private startPrepareCandidatesTimer(I)V
    .locals 3
    .parameter "delayTime"

    .prologue
    .line 852
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 853
    .local v0, msg:Landroid/os/Message;
    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese$PrepareCandidatesTimer;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 854
    return-void
.end method

.method private stopPrepareCandeidateTimer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 857
    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese$PrepareCandidatesTimer;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 858
    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese$PrepareCandidatesTimer;->removeMessages(I)V

    .line 860
    :cond_0
    return-void
.end method


# virtual methods
.method public PrepareCandidates()V
    .locals 2

    .prologue
    .line 868
    invoke-direct {p0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese$PrepareCandidatesTimer;->stopPrepareCandeidateTimer()V

    .line 869
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese$PrepareCandidatesTimer;->this$0:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    iget-boolean v0, v0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->isCandFetchOver:Z

    if-nez v0, :cond_0

    .line 871
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese$PrepareCandidatesTimer;->this$0:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    const/16 v1, 0x1e

    #calls: Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->getCandidates(I)I
    invoke-static {v0, v1}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->access$200(Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;I)I

    move-result v0

    if-lez v0, :cond_0

    .line 872
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese$PrepareCandidatesTimer;->this$0:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    iget-boolean v0, v0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->isCandFetchOver:Z

    if-nez v0, :cond_0

    .line 873
    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese$PrepareCandidatesTimer;->startPrepareCandidatesTimer(I)V

    .line 877
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 886
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese$PrepareCandidatesTimer;->this$0:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    const/16 v1, 0x14

    #calls: Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->getCandidates(I)I
    invoke-static {v0, v1}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->access$200(Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;I)I

    move-result v0

    if-lez v0, :cond_1

    .line 887
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese$PrepareCandidatesTimer;->this$0:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    iget-boolean v0, v0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->isCandFetchOver:Z

    if-nez v0, :cond_0

    .line 889
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese$PrepareCandidatesTimer;->startPrepareCandidatesTimer(I)V

    .line 895
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese$PrepareCandidatesTimer;->this$0:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    iget-object v0, v0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese$PrepareCandidatesTimer;->this$0:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    iget-object v0, v0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getExpandCandsContainer()Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 897
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese$PrepareCandidatesTimer;->this$0:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    iget-object v0, v0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getExpandCandsContainer()Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese$PrepareCandidatesTimer;->this$0:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    iget-object v1, v1, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getCommonCandidatesList()Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese$PrepareCandidatesTimer;->this$0:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    iget-object v2, v2, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isGridExpd()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->AppendExpandCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Z)V

    .line 901
    :cond_1
    return-void
.end method
