.class Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;
.super Landroid/os/Handler;
.source "SimeCandHorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/candidate/SimeCandHorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LongPressTimer"
.end annotation


# static fields
.field public static final LONG_PRESS_TIMEOUT:I = 0x1f4


# instance fields
.field mCandView:Lcom/samsung/inputmethod/candidate/SimeCandHorView;

.field final synthetic this$0:Lcom/samsung/inputmethod/candidate/SimeCandHorView;


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/candidate/SimeCandHorView;Lcom/samsung/inputmethod/candidate/SimeCandHorView;)V
    .locals 0
    .parameter
    .parameter "candView"

    .prologue
    .line 1128
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1129
    iput-object p2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;->mCandView:Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    .line 1130
    return-void
.end method


# virtual methods
.method public removeTimer()Z
    .locals 1

    .prologue
    .line 1137
    invoke-virtual {p0, p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1138
    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1142
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mWaitForTouchUp:Z
    invoke-static {v1}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->access$100(Lcom/samsung/inputmethod/candidate/SimeCandHorView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1145
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;
    invoke-static {v1}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->access$200(Lcom/samsung/inputmethod/candidate/SimeCandHorView;)Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;->mCandView:Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    if-nez v1, :cond_1

    .line 1160
    :cond_0
    :goto_0
    return-void

    .line 1147
    :cond_1
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;
    invoke-static {v1}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->access$200(Lcom/samsung/inputmethod/candidate/SimeCandHorView;)Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getPageStart()Ljava/util/Vector;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->access$300(Lcom/samsung/inputmethod/candidate/SimeCandHorView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCandInPage:I
    invoke-static {v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->access$400(Lcom/samsung/inputmethod/candidate/SimeCandHorView;)I

    move-result v2

    add-int v0, v1, v2

    .line 1149
    .local v0, realCandIdx:I
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;->mCandView:Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCvListener:Lcom/samsung/inputmethod/candidate/SimeCandViewListener;
    invoke-static {v1}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->access$500(Lcom/samsung/inputmethod/candidate/SimeCandHorView;)Lcom/samsung/inputmethod/candidate/SimeCandViewListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/inputmethod/candidate/SimeCandViewListener;->onLongPressChoice(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1151
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    #setter for: Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mWaitForTouchUp:Z
    invoke-static {v1, v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->access$102(Lcom/samsung/inputmethod/candidate/SimeCandHorView;Z)Z

    .line 1153
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    invoke-virtual {v1, v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->setActiveHighlight(Z)Z

    .line 1154
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->invalidate()V

    goto :goto_0
.end method

.method public startTimer()V
    .locals 4

    .prologue
    .line 1133
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    add-long/2addr v0, v2

    invoke-virtual {p0, p0, v0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 1134
    return-void
.end method
