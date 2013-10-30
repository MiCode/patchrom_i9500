.class Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabTimer;
.super Landroid/os/Handler;
.source "SimeTabContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/tabmode/SimeTabContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabTimer"
.end annotation


# static fields
.field public static final ACTION_SCROLLTO_NEXT:I = 0x2

.field public static final ACTION_SCROLLTO_PREVIOUS:I = 0x3


# instance fields
.field private mAction:I

.field mPending:Z

.field mTabIndex:I

.field final synthetic this$0:Lcom/samsung/inputmethod/tabmode/SimeTabContainer;


# direct methods
.method private constructor <init>(Lcom/samsung/inputmethod/tabmode/SimeTabContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 594
    iput-object p1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabTimer;->this$0:Lcom/samsung/inputmethod/tabmode/SimeTabContainer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/inputmethod/tabmode/SimeTabContainer;Lcom/samsung/inputmethod/tabmode/SimeTabContainer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 594
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabTimer;-><init>(Lcom/samsung/inputmethod/tabmode/SimeTabContainer;)V

    return-void
.end method


# virtual methods
.method public isPending()Z
    .locals 1

    .prologue
    .line 613
    iget-boolean v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabTimer;->mPending:Z

    return v0
.end method

.method public removeTimer()Z
    .locals 1

    .prologue
    .line 617
    invoke-virtual {p0, p0}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabTimer;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 618
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabTimer;->mPending:Z

    .line 619
    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x1f4

    const/4 v1, 0x0

    .line 624
    iget v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabTimer;->mAction:I

    packed-switch v0, :pswitch_data_0

    .line 657
    :goto_0
    return-void

    .line 637
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabTimer;->this$0:Lcom/samsung/inputmethod/tabmode/SimeTabContainer;

    #calls: Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->scrollToNext()V
    invoke-static {v0}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->access$200(Lcom/samsung/inputmethod/tabmode/SimeTabContainer;)V

    .line 638
    iput-boolean v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabTimer;->mPending:Z

    .line 639
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabTimer;->this$0:Lcom/samsung/inputmethod/tabmode/SimeTabContainer;

    #calls: Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->isScrollToEnd()Z
    invoke-static {v0}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->access$300(Lcom/samsung/inputmethod/tabmode/SimeTabContainer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    invoke-virtual {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabTimer;->removeTimer()Z

    goto :goto_0

    .line 642
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabTimer;->startTimer(JII)V

    goto :goto_0

    .line 647
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabTimer;->this$0:Lcom/samsung/inputmethod/tabmode/SimeTabContainer;

    #calls: Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->scrollToPrevious()V
    invoke-static {v0}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->access$400(Lcom/samsung/inputmethod/tabmode/SimeTabContainer;)V

    .line 648
    iput-boolean v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabTimer;->mPending:Z

    .line 649
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabTimer;->this$0:Lcom/samsung/inputmethod/tabmode/SimeTabContainer;

    #calls: Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->isScrollToStart()Z
    invoke-static {v0}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->access$500(Lcom/samsung/inputmethod/tabmode/SimeTabContainer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 650
    invoke-virtual {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabTimer;->removeTimer()Z

    goto :goto_0

    .line 652
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabTimer;->startTimer(JII)V

    goto :goto_0

    .line 624
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public startTimer(JII)V
    .locals 1
    .parameter "time"
    .parameter "action"
    .parameter "index"

    .prologue
    .line 606
    iput p3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabTimer;->mAction:I

    .line 607
    invoke-virtual {p0, p0, p1, p2}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabTimer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 608
    iput p4, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabTimer;->mTabIndex:I

    .line 609
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabTimer;->mPending:Z

    .line 610
    return-void
.end method
