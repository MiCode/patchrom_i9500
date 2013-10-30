.class Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$SkbDirectionGesture;
.super Ljava/lang/Object;
.source "SimeSkbKeyboardContainer.java"

# interfaces
.implements Lcom/samsung/inputmethod/comm/SimeGestureListener$DirectionGesture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SkbDirectionGesture"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;


# direct methods
.method private constructor <init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 2501
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$SkbDirectionGesture;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2501
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$SkbDirectionGesture;-><init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)V

    return-void
.end method


# virtual methods
.method public onDirectionGesture(I)Z
    .locals 3
    .parameter "gravity"

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 2503
    if-nez p1, :cond_0

    move v0, v1

    .line 2524
    :goto_0
    return v0

    .line 2506
    :cond_0
    if-eq v2, p1, :cond_1

    const/4 v0, 0x5

    if-ne v0, p1, :cond_4

    .line 2507
    :cond_1
    if-ne v2, p1, :cond_3

    .line 2511
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$SkbDirectionGesture;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->PageDown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2512
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$SkbDirectionGesture;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mService:Landroid/inputmethodservice/InputMethodService;
    invoke-static {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$200(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Landroid/inputmethodservice/InputMethodService;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 2522
    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 2518
    :cond_3
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$SkbDirectionGesture;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->PageUp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2519
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$SkbDirectionGesture;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mService:Landroid/inputmethodservice/InputMethodService;
    invoke-static {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$200(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Landroid/inputmethodservice/InputMethodService;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto :goto_1

    :cond_4
    move v0, v1

    .line 2524
    goto :goto_0
.end method
