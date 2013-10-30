.class public Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;
.super Landroid/os/Handler;
.source "SimeCandManager.java"

# interfaces
.implements Lcom/samsung/inputmethod/candidate/SimeCandViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/candidate/SimeCandManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultCVChoiceNotifier"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultChoiceNotifier"


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/candidate/SimeCandManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1273
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickChoice(I)Z
    .locals 3
    .parameter "choiceId"

    .prologue
    .line 1300
    const/4 v0, 0x0

    .line 1304
    .local v0, bRet:Z
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->onSelectChoice(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1306
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->playSoundEffect(I)V

    .line 1313
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isNeedAdjustExpd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1314
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandPYItem:Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;
    invoke-static {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$100(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->updateSpellContents()V

    .line 1317
    :cond_0
    const/4 v0, 0x1

    .line 1319
    :cond_1
    return v0
.end method

.method public onLongPressChoice(I)Z
    .locals 2
    .parameter "choiceId"

    .prologue
    .line 1280
    const/4 v0, 0x0

    .line 1283
    .local v0, bRet:Z
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mCandProcessor:Lcom/samsung/inputmethod/candidate/SimeCandProcessor;
    invoke-static {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$000(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandProcessor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->processLongTouchCommonCand(I)Z

    move-result v0

    .line 1284
    return v0
.end method

.method public onSelectChoice(I)Z
    .locals 2
    .parameter "choiceId"

    .prologue
    .line 1290
    const/4 v0, 0x0

    .line 1293
    .local v0, bRet:Z
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mCandProcessor:Lcom/samsung/inputmethod/candidate/SimeCandProcessor;
    invoke-static {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$000(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandProcessor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->chooseCandidate(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1294
    const/4 v0, 0x1

    .line 1296
    :cond_0
    return v0
.end method

.method public onToBottomGesture(Z)Z
    .locals 4
    .parameter "isCandChange"

    .prologue
    const/4 v3, 0x1

    .line 1358
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->playSoundEffect(I)V

    .line 1360
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v0, v3, p1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showExpandItem(ZZ)V

    .line 1361
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$200(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;
    invoke-static {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$300(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getCommonCandidatesList()Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-result-object v1

    sget-object v2, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->UP:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;)V

    .line 1362
    return v3
.end method

.method public onToLeftGesture()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1326
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$200(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->pageForward(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1327
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$200(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->setActiveCCItem(Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;)V

    .line 1330
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onToRightGesture()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1337
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$200(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->pageBackward(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1338
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$200(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->setActiveCCItem(Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;)V

    .line 1341
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onToTopGesture()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1347
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->playSoundEffect(I)V

    .line 1349
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v0, v1, v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showExpandItem(ZZ)V

    .line 1350
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$200(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;
    invoke-static {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$300(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getCommonCandidatesList()Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-result-object v1

    sget-object v2, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRightAndDown:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;)V

    .line 1351
    const/4 v0, 0x1

    return v0
.end method
