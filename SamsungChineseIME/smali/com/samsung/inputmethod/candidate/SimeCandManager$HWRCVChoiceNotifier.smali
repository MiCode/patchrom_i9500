.class public Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;
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
    name = "HWRCVChoiceNotifier"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HWRCVChoiceNotifier"


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/candidate/SimeCandManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1495
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickChoice(I)Z
    .locals 3
    .parameter "choiceId"

    .prologue
    .line 1507
    const/4 v0, 0x0

    .line 1508
    .local v0, bRet:Z
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mCandProcessor:Lcom/samsung/inputmethod/candidate/SimeCandProcessor;
    invoke-static {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$000(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandProcessor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->hwSelectItem(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1510
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->playSoundEffect(I)V

    .line 1515
    const/4 v0, 0x1

    .line 1517
    :cond_0
    return v0
.end method

.method public onLongPressChoice(I)Z
    .locals 1
    .parameter "choiceId"

    .prologue
    .line 1499
    const/4 v0, 0x0

    return v0
.end method

.method public onSelectChoice(I)Z
    .locals 1
    .parameter "choiceId"

    .prologue
    .line 1503
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;->onClickChoice(I)Z

    move-result v0

    return v0
.end method

.method public onToBottomGesture(Z)Z
    .locals 1
    .parameter "isCandChange"

    .prologue
    .line 1548
    const/4 v0, 0x0

    return v0
.end method

.method public onToLeftGesture()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1523
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$500(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->pageForward(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1524
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$500(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->getActiveCandiatePos()I

    move-result v0

    .line 1525
    .local v0, choiceId:I
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mCandProcessor:Lcom/samsung/inputmethod/candidate/SimeCandProcessor;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$000(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandProcessor;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->hwFocusOnItem(I)Z

    .line 1528
    .end local v0           #choiceId:I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onToRightGesture()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1535
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$500(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->pageBackward(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1536
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$500(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->getActiveCandiatePos()I

    move-result v0

    .line 1537
    .local v0, choiceId:I
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mCandProcessor:Lcom/samsung/inputmethod/candidate/SimeCandProcessor;
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$000(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandProcessor;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->hwFocusOnItem(I)Z

    .line 1540
    .end local v0           #choiceId:I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onToTopGesture()Z
    .locals 1

    .prologue
    .line 1544
    const/4 v0, 0x0

    return v0
.end method
