.class public Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopupListener;
.super Landroid/os/Handler;
.source "SimeSkbMiniPopWindow.java"

# interfaces
.implements Lcom/samsung/inputmethod/candidate/SimeCandViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MiniPopupListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 461
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopupListener;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickChoice(I)Z
    .locals 5
    .parameter "choiceId"

    .prologue
    .line 471
    const/4 v0, 0x0

    .line 473
    .local v0, bRet:Z
    if-ltz p1, :cond_0

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopupListener;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mDataHander:[Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->access$100(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-lt p1, v3, :cond_1

    :cond_0
    move v1, v0

    .line 494
    .end local v0           #bRet:Z
    .local v1, bRet:I
    :goto_0
    return v1

    .line 476
    .end local v1           #bRet:I
    .restart local v0       #bRet:Z
    :cond_1
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopupListener;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mDataHander:[Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->access$100(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;)[Ljava/lang/String;

    move-result-object v3

    aget-object v2, v3, p1

    .line 477
    .local v2, choice:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 478
    const-string v3, "?#*"

    if-ne v2, v3, :cond_3

    .line 479
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopupListener;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->cancelMiniPopupWindow()V

    .line 480
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopupListener;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopupListener;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->access$300(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v4

    #setter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;
    invoke-static {v3, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->access$202(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;Lcom/samsung/inputmethod/SimeInputModeSwitcher;)Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    .line 481
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopupListener;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopupListener;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->access$300(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v4

    #setter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;
    invoke-static {v3, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->access$402(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    .line 482
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopupListener;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;
    invoke-static {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->access$200(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;)Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v3

    const/16 v4, -0xe

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchModeForUserKey(I)I

    .line 483
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopupListener;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;
    invoke-static {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->access$400(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    .line 488
    :goto_1
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopupListener;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mMyType:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;
    invoke-static {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->access$600(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    move-result-object v3

    sget-object v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;->SMILEY:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    if-eq v3, v4, :cond_2

    .line 489
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopupListener;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->cancelMiniPopupWindow()V

    .line 492
    :cond_2
    const/4 v0, 0x1

    move v1, v0

    .line 494
    .restart local v1       #bRet:I
    goto :goto_0

    .line 486
    .end local v1           #bRet:I
    :cond_3
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopupListener;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    #calls: Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->commitResultText(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->access$500(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onLongPressChoice(I)Z
    .locals 1
    .parameter "choiceId"

    .prologue
    .line 463
    const/4 v0, 0x0

    return v0
.end method

.method public onSelectChoice(I)Z
    .locals 1
    .parameter "choiceId"

    .prologue
    .line 467
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopupListener;->onClickChoice(I)Z

    move-result v0

    return v0
.end method

.method public onToBottomGesture(Z)Z
    .locals 1
    .parameter "isCandChange"

    .prologue
    .line 510
    const/4 v0, 0x0

    return v0
.end method

.method public onToLeftGesture()Z
    .locals 1

    .prologue
    .line 498
    const/4 v0, 0x0

    return v0
.end method

.method public onToRightGesture()Z
    .locals 1

    .prologue
    .line 502
    const/4 v0, 0x0

    return v0
.end method

.method public onToTopGesture()Z
    .locals 1

    .prologue
    .line 506
    const/4 v0, 0x0

    return v0
.end method
