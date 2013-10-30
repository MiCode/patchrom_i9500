.class Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$2;
.super Ljava/lang/Object;
.source "SimeSkbKeyboardContainer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getOutLeftAnimation()Landroid/view/animation/TranslateAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 1369
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$2;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$2;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;
    invoke-static {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$100(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchModeToNext()I

    .line 1382
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$2;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    .line 1383
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$2;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mService:Landroid/inputmethodservice/InputMethodService;
    invoke-static {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$200(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Landroid/inputmethodservice/InputMethodService;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->autoCapitalization()V

    .line 1386
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$2;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #calls: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getinRightAnimation()Landroid/view/animation/TranslateAnimation;
    invoke-static {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$300(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1387
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$2;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkbFlipper:Landroid/widget/ViewFlipper;
    invoke-static {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$400(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Landroid/widget/ViewFlipper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$2;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #calls: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getinRightAnimation()Landroid/view/animation/TranslateAnimation;
    invoke-static {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$300(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Landroid/view/animation/TranslateAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1388
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1390
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    .line 1393
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$2;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mService:Landroid/inputmethodservice/InputMethodService;
    invoke-static {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$200(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Landroid/inputmethodservice/InputMethodService;

    move-result-object v1

    check-cast v1, Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1394
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    .line 1395
    .local v0, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->enableToolbarOrTab()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1396
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$2;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mService:Landroid/inputmethodservice/InputMethodService;
    invoke-static {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$200(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Landroid/inputmethodservice/InputMethodService;

    move-result-object v1

    check-cast v1, Lcom/samsung/inputmethod/SamsungIME;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/SamsungIME;->setCandidatesViewShown(Z)V

    .line 1400
    :goto_0
    return-void

    .line 1398
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$2;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mService:Landroid/inputmethodservice/InputMethodService;
    invoke-static {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$200(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Landroid/inputmethodservice/InputMethodService;

    move-result-object v1

    check-cast v1, Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/SamsungIME;->setCandidatesViewShown(Z)V

    goto :goto_0
.end method
