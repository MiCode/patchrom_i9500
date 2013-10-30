.class Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$1;
.super Ljava/lang/Object;
.source "SimeSkbMiniPopWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->showWindow(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$1;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 396
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$1;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;
    invoke-static {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->access$000(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 397
    const/4 v0, 0x1

    return v0
.end method
