.class public Lcom/samsung/inputmethod/candidate/SimeCandManager$ExpandCVChoiceNotifier;
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
    name = "ExpandCVChoiceNotifier"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ExpandCVChoiceNotifier"


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/candidate/SimeCandManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1553
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$ExpandCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickChoice(I)Z
    .locals 3
    .parameter "choiceId"

    .prologue
    .line 1565
    const/4 v0, 0x0

    .line 1568
    .local v0, bRet:Z
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$ExpandCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mCandProcessor:Lcom/samsung/inputmethod/candidate/SimeCandProcessor;
    invoke-static {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$000(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandProcessor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->chooseCandidate(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1570
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$ExpandCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->playSoundEffect(I)V

    .line 1575
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$ExpandCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isNeedAdjustExpd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1576
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager$ExpandCVChoiceNotifier;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandPYItem:Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;
    invoke-static {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->access$100(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->updateSpellContents()V

    .line 1578
    :cond_0
    const/4 v0, 0x1

    .line 1580
    :cond_1
    return v0
.end method

.method public onLongPressChoice(I)Z
    .locals 1
    .parameter "choiceId"

    .prologue
    .line 1557
    const/4 v0, 0x0

    return v0
.end method

.method public onSelectChoice(I)Z
    .locals 1
    .parameter "choiceId"

    .prologue
    .line 1561
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/candidate/SimeCandManager$ExpandCVChoiceNotifier;->onClickChoice(I)Z

    move-result v0

    return v0
.end method

.method public onToBottomGesture(Z)Z
    .locals 1
    .parameter "isCandChange"

    .prologue
    .line 1601
    const/4 v0, 0x0

    return v0
.end method

.method public onToLeftGesture()Z
    .locals 1

    .prologue
    .line 1586
    const/4 v0, 0x0

    return v0
.end method

.method public onToRightGesture()Z
    .locals 1

    .prologue
    .line 1593
    const/4 v0, 0x0

    return v0
.end method

.method public onToTopGesture()Z
    .locals 1

    .prologue
    .line 1597
    const/4 v0, 0x0

    return v0
.end method
