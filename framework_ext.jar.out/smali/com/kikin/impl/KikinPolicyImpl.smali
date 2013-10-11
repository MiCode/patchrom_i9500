.class public Lcom/kikin/impl/KikinPolicyImpl;
.super Ljava/lang/Object;
.source "KikinPolicyImpl.java"

# interfaces
.implements Lcom/kikin/IKikinPolicy;


# instance fields
.field mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;


# direct methods
.method public constructor <init>(Lcom/kikin/IKikinSelectionCallbackHandler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kikin/impl/KikinPolicyImpl;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    .line 32
    new-instance v0, Lcom/kikin/KikinResultsViewController;

    invoke-direct {v0, p1}, Lcom/kikin/KikinResultsViewController;-><init>(Lcom/kikin/IKikinSelectionCallbackHandler;)V

    iput-object v0, p0, Lcom/kikin/impl/KikinPolicyImpl;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    .line 33
    return-void
.end method


# virtual methods
.method public analyzeModifiedSelection(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3
    .parameter "selection"
    .parameter "newSelection"

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-static {p2, v1, v1}, Lcom/kikin/KikinCore;->nativeGetTextEntity(Ljava/lang/String;II)Lcom/kikin/Range;

    move-result-object v0

    .line 44
    .local v0, range:Lcom/kikin/Range;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kikin/Range;->getStartOffset()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/kikin/Range;->getEndOffset()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 45
    const-string v1, "selectionType"

    invoke-virtual {v0}, Lcom/kikin/Range;->getSelectionType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v1, "selectionLanguage"

    invoke-virtual {v0}, Lcom/kikin/Range;->getSelectionLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :goto_0
    const-string v1, "selection"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void

    .line 49
    :cond_0
    const-string v1, "selectionLanguage"

    const-string v2, "UNKNOWN"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public doKikinSearch(Landroid/os/Bundle;)V
    .locals 2
    .parameter "selection"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/kikin/impl/KikinPolicyImpl;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    new-instance v1, Lcom/kikin/selection/Selection;

    invoke-direct {v1, p1}, Lcom/kikin/selection/Selection;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/kikin/KikinResultsViewController;->doKikinSearch(Lcom/kikin/selection/Selection;)V

    .line 58
    return-void
.end method

.method public hideKikinResultsView(Z)V
    .locals 1
    .parameter "isSelectionDismissedByUser"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/kikin/impl/KikinPolicyImpl;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    invoke-virtual {v0, p1}, Lcom/kikin/KikinResultsViewController;->hide(Z)V

    .line 73
    return-void
.end method

.method public isKikinResultsViewVisible()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/kikin/impl/KikinPolicyImpl;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    invoke-virtual {v0}, Lcom/kikin/KikinResultsViewController;->isVisible()Z

    move-result v0

    return v0
.end method

.method public resetSelection()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/kikin/impl/KikinPolicyImpl;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    invoke-virtual {v0}, Lcom/kikin/KikinResultsViewController;->resetSelection()V

    .line 68
    return-void
.end method

.method public setKikinResultsViewCallbackHandler(Lcom/kikin/IKikinResultsViewCallbackHandler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kikin/impl/KikinPolicyImpl;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    invoke-virtual {v0, p1}, Lcom/kikin/KikinResultsViewController;->setKikinResultsViewCallbackHandler(Lcom/kikin/IKikinResultsViewCallbackHandler;)V

    .line 84
    return-void
.end method

.method public setSelectionTopPosition(I)V
    .locals 1
    .parameter "minYPosition"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/kikin/impl/KikinPolicyImpl;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    invoke-virtual {v0, p1}, Lcom/kikin/KikinResultsViewController;->setSelectionTopPosition(I)V

    .line 38
    return-void
.end method

.method public showKikinResultsView(Landroid/view/ActionMode;Z)V
    .locals 1
    .parameter "actionMode"
    .parameter "shouldRestorePreviousSearchResults"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/kikin/impl/KikinPolicyImpl;->mKikinResultsViewController:Lcom/kikin/KikinResultsViewController;

    invoke-virtual {v0, p1, p2}, Lcom/kikin/KikinResultsViewController;->show(Landroid/view/ActionMode;Z)Z

    .line 78
    return-void
.end method
