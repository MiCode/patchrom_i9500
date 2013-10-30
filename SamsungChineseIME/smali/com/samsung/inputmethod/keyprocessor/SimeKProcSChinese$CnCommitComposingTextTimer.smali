.class Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese$CnCommitComposingTextTimer;
.super Landroid/os/Handler;
.source "SimeKProcSChinese.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CnCommitComposingTextTimer"
.end annotation


# static fields
.field private static final FINISH_COMPOSING_TEXT_DELAYED:I = 0x6a4

.field private static final MSG_DELAY_COMMIT_COMPOSING:I


# instance fields
.field private mIc:Landroid/view/inputmethod/InputConnection;

.field final synthetic this$0:Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;


# direct methods
.method private constructor <init>(Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;)V
    .locals 1
    .parameter

    .prologue
    .line 1332
    iput-object p1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese$CnCommitComposingTextTimer;->this$0:Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1335
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese$CnCommitComposingTextTimer;->mIc:Landroid/view/inputmethod/InputConnection;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1332
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese$CnCommitComposingTextTimer;-><init>(Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;)V

    return-void
.end method


# virtual methods
.method public CommitComposingText(Landroid/view/inputmethod/InputConnection;)V
    .locals 1
    .parameter "ic"

    .prologue
    .line 1348
    if-eqz p1, :cond_0

    .line 1349
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1351
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese$CnCommitComposingTextTimer;->this$0:Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->clearFlags()V

    .line 1353
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese$CnCommitComposingTextTimer;->mIc:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    .line 1358
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese$CnCommitComposingTextTimer;->mIc:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1362
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese$CnCommitComposingTextTimer;->this$0:Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->clearFlags()V

    .line 1363
    return-void
.end method

.method public startCommitTimer(Landroid/view/inputmethod/InputConnection;)V
    .locals 3
    .parameter "ic"

    .prologue
    .line 1338
    iput-object p1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese$CnCommitComposingTextTimer;->mIc:Landroid/view/inputmethod/InputConnection;

    .line 1339
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1340
    .local v0, msg:Landroid/os/Message;
    const-wide/16 v1, 0x6a4

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese$CnCommitComposingTextTimer;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1341
    return-void
.end method

.method public stopDelayCommit()V
    .locals 1

    .prologue
    .line 1344
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese$CnCommitComposingTextTimer;->removeMessages(I)V

    .line 1345
    return-void
.end method
