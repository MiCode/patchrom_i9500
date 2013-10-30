.class Lcom/samsung/inputmethod/tabmode/SimeTabContainer$ScrollTouchListener;
.super Ljava/lang/Object;
.source "SimeTabContainer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/tabmode/SimeTabContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScrollTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/tabmode/SimeTabContainer;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/tabmode/SimeTabContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$ScrollTouchListener;->this$0:Lcom/samsung/inputmethod/tabmode/SimeTabContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 335
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 336
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$ScrollTouchListener;->this$0:Lcom/samsung/inputmethod/tabmode/SimeTabContainer;

    #calls: Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->updateArrowStatus()V
    invoke-static {v1}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->access$100(Lcom/samsung/inputmethod/tabmode/SimeTabContainer;)V

    .line 338
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 339
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$ScrollTouchListener;->this$0:Lcom/samsung/inputmethod/tabmode/SimeTabContainer;

    #calls: Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->updateArrowStatus()V
    invoke-static {v1}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->access$100(Lcom/samsung/inputmethod/tabmode/SimeTabContainer;)V

    .line 344
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
