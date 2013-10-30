.class Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$CnCommitComposingTextTimer;
.super Landroid/os/Handler;
.source "SimeKProcTChinese.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;
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

.field final synthetic this$0:Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;


# direct methods
.method private constructor <init>(Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;)V
    .locals 1
    .parameter

    .prologue
    .line 1352
    iput-object p1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$CnCommitComposingTextTimer;->this$0:Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1355
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$CnCommitComposingTextTimer;->mIc:Landroid/view/inputmethod/InputConnection;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1352
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$CnCommitComposingTextTimer;-><init>(Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;)V

    return-void
.end method


# virtual methods
.method public CommitComposingText(Landroid/view/inputmethod/InputConnection;)V
    .locals 1
    .parameter "ic"

    .prologue
    .line 1368
    if-eqz p1, :cond_0

    .line 1369
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1371
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$CnCommitComposingTextTimer;->this$0:Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->clearFlags()V

    .line 1373
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1377
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$CnCommitComposingTextTimer;->mIc:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    .line 1378
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$CnCommitComposingTextTimer;->mIc:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1382
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$CnCommitComposingTextTimer;->this$0:Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->clearFlags()V

    .line 1383
    return-void
.end method

.method public startCommitTimer(Landroid/view/inputmethod/InputConnection;)V
    .locals 3
    .parameter "ic"

    .prologue
    .line 1358
    iput-object p1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$CnCommitComposingTextTimer;->mIc:Landroid/view/inputmethod/InputConnection;

    .line 1359
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1360
    .local v0, msg:Landroid/os/Message;
    const-wide/16 v1, 0x6a4

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$CnCommitComposingTextTimer;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1361
    return-void
.end method

.method public stopDelayCommit()V
    .locals 1

    .prologue
    .line 1364
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$CnCommitComposingTextTimer;->removeMessages(I)V

    .line 1365
    return-void
.end method
