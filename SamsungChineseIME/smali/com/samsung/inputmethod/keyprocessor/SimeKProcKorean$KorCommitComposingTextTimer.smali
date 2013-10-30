.class Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;
.super Landroid/os/Handler;
.source "SimeKProcKorean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KorCommitComposingTextTimer"
.end annotation


# static fields
.field private static final FINISH_COMPOSING_TEXT_DELAYED:I = 0x6a4

.field private static final MSG_DELAY_COMMIT_COMPOSING:I


# instance fields
.field private mIc:Landroid/view/inputmethod/InputConnection;

.field final synthetic this$0:Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;


# direct methods
.method private constructor <init>(Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;)V
    .locals 1
    .parameter

    .prologue
    .line 1433
    iput-object p1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;->this$0:Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1436
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;->mIc:Landroid/view/inputmethod/InputConnection;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1433
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;-><init>(Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;)V

    return-void
.end method


# virtual methods
.method public CommitComposingText(Landroid/view/inputmethod/InputConnection;)V
    .locals 1
    .parameter "ic"

    .prologue
    .line 1449
    if-eqz p1, :cond_0

    .line 1450
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1452
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;->this$0:Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->clearFlags()V

    .line 1453
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1456
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;->mIc:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    .line 1457
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;->mIc:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1458
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;->this$0:Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;

    iget-object v0, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getKorDec()Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1459
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;->this$0:Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;

    iget-object v0, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getKorDec()Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->reset()V

    .line 1462
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;->this$0:Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->clearFlags()V

    .line 1464
    return-void
.end method

.method public startCommitTimer(Landroid/view/inputmethod/InputConnection;)V
    .locals 3
    .parameter "ic"

    .prologue
    .line 1439
    iput-object p1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;->mIc:Landroid/view/inputmethod/InputConnection;

    .line 1440
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1441
    .local v0, msg:Landroid/os/Message;
    const-wide/16 v1, 0x6a4

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1442
    return-void
.end method

.method public stopDelayCommit()V
    .locals 1

    .prologue
    .line 1445
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;->removeMessages(I)V

    .line 1446
    return-void
.end method
