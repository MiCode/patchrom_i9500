.class public Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;
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
    name = "PYCVChoiceNotifier"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PYCVChoiceNotifier"


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/candidate/SimeCandManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1367
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickChoice(I)Z
    .locals 4
    .parameter "choiceId"

    .prologue
    const/4 v3, 0x1

    .line 1380
    const/4 v0, 0x0

    .line 1386
    .local v0, bRet:Z
    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mChnDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;
    invoke-static {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$400(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->get34SplCandidates()Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 1388
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->playSoundEffect(I)V

    .line 1393
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mCandProcessor:Lcom/samsung/inputmethod/candidate/SimeCandProcessor;
    invoke-static {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$000(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandProcessor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->pinyinFocusOnItem(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1394
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mChnDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;
    invoke-static {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$400(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->get34SplCandidates()Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->setDefaultActiveIndex(I)V

    .line 1395
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v2, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->PinYinBoth:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isCCShowType(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v2, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->PinYinBothNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isCCShowType(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1397
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$500(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->setActiveCCItem(Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;)V

    .line 1401
    :goto_0
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$600(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1402
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v1, v3, v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showExpandItem(ZZ)V

    .line 1403
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$200(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$300(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getCommonCandidatesList()Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->UP:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;)V

    .line 1413
    :goto_1
    const/4 v0, 0x1

    .line 1416
    :cond_1
    return v0

    .line 1399
    :cond_2
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$200(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->setActiveCCItem(Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;)V

    goto :goto_0

    .line 1407
    :cond_3
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;
    invoke-static {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$700(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    move-result-object v1

    sget-object v2, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->PinYinBothNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    if-eq v1, v2, :cond_4

    .line 1408
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$200(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$300(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getCommonCandidatesList()Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRightAndDown:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;)V

    goto :goto_1

    .line 1410
    :cond_4
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$200(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$300(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getCommonCandidatesList()Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRight:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;)V

    goto :goto_1
.end method

.method public onLongPressChoice(I)Z
    .locals 1
    .parameter "choiceId"

    .prologue
    .line 1372
    const/4 v0, 0x0

    return v0
.end method

.method public onSelectChoice(I)Z
    .locals 1
    .parameter "choiceId"

    .prologue
    .line 1376
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->onClickChoice(I)Z

    move-result v0

    return v0
.end method

.method public onToBottomGesture(Z)Z
    .locals 1
    .parameter "isCandChange"

    .prologue
    .line 1491
    const/4 v0, 0x0

    return v0
.end method

.method public onToLeftGesture()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1420
    const/4 v0, 0x0

    .line 1423
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$500(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->pageForward(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1424
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$500(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->getActiveCandiatePos()I

    move-result v1

    .line 1425
    .local v1, candId:I
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mCandProcessor:Lcom/samsung/inputmethod/candidate/SimeCandProcessor;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$000(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandProcessor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->pinyinFocusOnItem(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1426
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$500(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->setActiveCCItem(Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;)V

    .line 1427
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandWindow:Landroid/widget/PopupWindow;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$600(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1428
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showExpandItem(ZZ)V

    .line 1429
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$200(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;
    invoke-static {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$300(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getCommonCandidatesList()Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-result-object v3

    sget-object v4, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->UP:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;)V

    .line 1442
    :goto_0
    const/4 v0, 0x1

    .line 1445
    .end local v1           #candId:I
    :cond_0
    return v0

    .line 1434
    .restart local v1       #candId:I
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$700(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->PinYinBothNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    if-eq v2, v3, :cond_2

    .line 1435
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$200(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;
    invoke-static {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$300(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getCommonCandidatesList()Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-result-object v3

    sget-object v4, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRightAndDown:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;)V

    goto :goto_0

    .line 1438
    :cond_2
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$200(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;
    invoke-static {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$300(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getCommonCandidatesList()Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-result-object v3

    sget-object v4, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRight:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;)V

    goto :goto_0
.end method

.method public onToRightGesture()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1450
    const/4 v0, 0x0

    .line 1453
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$500(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->pageBackward(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1454
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$500(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->getActiveCandiatePos()I

    move-result v1

    .line 1456
    .local v1, candId:I
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mCandProcessor:Lcom/samsung/inputmethod/candidate/SimeCandProcessor;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$000(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandProcessor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->pinyinFocusOnItem(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1457
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$500(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->setActiveCCItem(Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;)V

    .line 1459
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandWindow:Landroid/widget/PopupWindow;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$600(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1460
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showExpandItem(ZZ)V

    .line 1461
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$200(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;
    invoke-static {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$300(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getCommonCandidatesList()Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-result-object v3

    sget-object v4, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->UP:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;)V

    .line 1474
    :goto_0
    const/4 v0, 0x1

    .line 1477
    .end local v1           #candId:I
    :cond_0
    return v0

    .line 1466
    .restart local v1       #candId:I
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$700(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->PinYinBothNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    if-eq v2, v3, :cond_2

    .line 1467
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$200(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;
    invoke-static {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$300(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getCommonCandidatesList()Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-result-object v3

    sget-object v4, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRightAndDown:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;)V

    goto :goto_0

    .line 1470
    :cond_2
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$200(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;
    invoke-static {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$300(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getCommonCandidatesList()Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-result-object v3

    sget-object v4, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRight:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;)V

    goto :goto_0
.end method

.method public onToTopGesture()Z
    .locals 1

    .prologue
    .line 1484
    const/4 v0, 0x0

    return v0
.end method
