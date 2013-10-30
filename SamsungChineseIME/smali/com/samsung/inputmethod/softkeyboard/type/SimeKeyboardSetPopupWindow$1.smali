.class Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow$1;
.super Ljava/lang/Object;
.source "SimeKeyboardSetPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;->show(Lcom/samsung/inputmethod/SamsungIME;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow$1;->this$0:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 95
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow$1;->this$0:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;->mWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;->access$000(Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 97
    const/4 v0, 0x1

    .line 99
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
