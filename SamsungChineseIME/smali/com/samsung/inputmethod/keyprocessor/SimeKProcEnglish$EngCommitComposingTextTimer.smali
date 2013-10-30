.class Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;
.super Landroid/os/Handler;
.source "SimeKProcEnglish.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EngCommitComposingTextTimer"
.end annotation


# static fields
.field private static final FINISH_COMPOSING_TEXT_DELAYED:I = 0x2bc

.field private static final MSG_DELAY_COMMIT_COMPOSING:I


# instance fields
.field private mIc:Landroid/view/inputmethod/InputConnection;

.field final synthetic this$0:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;)V
    .locals 1
    .parameter

    .prologue
    .line 1844
    iput-object p1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->this$0:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1847
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->mIc:Landroid/view/inputmethod/InputConnection;

    return-void
.end method


# virtual methods
.method public CommitComposingText(Landroid/view/inputmethod/InputConnection;)V
    .locals 2
    .parameter "ic"

    .prologue
    .line 1867
    if-eqz p1, :cond_0

    .line 1868
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1871
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->this$0:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;

    #getter for: Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mLastKeyCode:I
    invoke-static {v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->access$000(Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->this$0:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;

    #getter for: Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mLastKeyCode:I
    invoke-static {v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->access$000(Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;)I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->this$0:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;

    #getter for: Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mLastKeyCode:I
    invoke-static {v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->access$000(Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;)I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 1875
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->this$0:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processShift(Z)V

    .line 1877
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->this$0:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->clearFlags()V

    .line 1878
    return-void
.end method

.method public finishCompsingEngText(Landroid/view/inputmethod/InputConnection;)V
    .locals 1
    .parameter "ic"

    .prologue
    .line 1860
    if-eqz p1, :cond_0

    .line 1861
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1863
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->this$0:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->clearFlags()V

    .line 1864
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1882
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->mIc:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    .line 1883
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->mIc:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1886
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->this$0:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;

    #getter for: Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mLastKeyCode:I
    invoke-static {v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->access$000(Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->this$0:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;

    #getter for: Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mLastKeyCode:I
    invoke-static {v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->access$000(Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;)I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->this$0:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;

    #getter for: Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mLastKeyCode:I
    invoke-static {v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->access$000(Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;)I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 1890
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->this$0:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processShift(Z)V

    .line 1892
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->this$0:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->clearFlags()V

    .line 1893
    return-void
.end method

.method public startCommitTimer(Landroid/view/inputmethod/InputConnection;)V
    .locals 3
    .parameter "ic"

    .prologue
    .line 1850
    iput-object p1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->mIc:Landroid/view/inputmethod/InputConnection;

    .line 1851
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1852
    .local v0, msg:Landroid/os/Message;
    const-wide/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1853
    return-void
.end method

.method public stopDelayCommit()V
    .locals 1

    .prologue
    .line 1856
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->removeMessages(I)V

    .line 1857
    return-void
.end method
