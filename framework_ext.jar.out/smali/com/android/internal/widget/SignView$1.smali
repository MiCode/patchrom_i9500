.class Lcom/android/internal/widget/SignView$1;
.super Ljava/lang/Object;
.source "SignView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/SignView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/SignView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/SignView;)V
    .locals 0

    .prologue
    .line 763
    iput-object p1, p0, Lcom/android/internal/widget/SignView$1;->this$0:Lcom/android/internal/widget/SignView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 766
    const/4 v0, -0x1

    .line 768
    .local v0, errCode:I
    iget-object v1, p0, Lcom/android/internal/widget/SignView$1;->this$0:Lcom/android/internal/widget/SignView;

    #getter for: Lcom/android/internal/widget/SignView;->mStatus:I
    invoke-static {v1}, Lcom/android/internal/widget/SignView;->access$000(Lcom/android/internal/widget/SignView;)I

    move-result v1

    if-nez v1, :cond_1

    .line 769
    iget-object v1, p0, Lcom/android/internal/widget/SignView$1;->this$0:Lcom/android/internal/widget/SignView;

    invoke-virtual {v1}, Lcom/android/internal/widget/SignView;->doAddSign()V

    .line 778
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/SignView$1;->this$0:Lcom/android/internal/widget/SignView;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/android/internal/widget/SignView;->mTimeStamp:J

    .line 779
    iget-object v1, p0, Lcom/android/internal/widget/SignView$1;->this$0:Lcom/android/internal/widget/SignView;

    #setter for: Lcom/android/internal/widget/SignView;->mFirstDraw:Z
    invoke-static {v1, v5}, Lcom/android/internal/widget/SignView;->access$202(Lcom/android/internal/widget/SignView;Z)Z

    .line 780
    iget-object v1, p0, Lcom/android/internal/widget/SignView$1;->this$0:Lcom/android/internal/widget/SignView;

    #setter for: Lcom/android/internal/widget/SignView;->mCurrentStroke:I
    invoke-static {v1, v4}, Lcom/android/internal/widget/SignView;->access$302(Lcom/android/internal/widget/SignView;I)I

    .line 781
    iget-object v1, p0, Lcom/android/internal/widget/SignView$1;->this$0:Lcom/android/internal/widget/SignView;

    #setter for: Lcom/android/internal/widget/SignView;->mMaxPointReached:Z
    invoke-static {v1, v4}, Lcom/android/internal/widget/SignView;->access$402(Lcom/android/internal/widget/SignView;Z)Z

    .line 783
    const-string v1, "SignView"

    const-string v2, "signUpdateTimeTask is finished"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    return-void

    .line 770
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/SignView$1;->this$0:Lcom/android/internal/widget/SignView;

    #getter for: Lcom/android/internal/widget/SignView;->mStatus:I
    invoke-static {v1}, Lcom/android/internal/widget/SignView;->access$000(Lcom/android/internal/widget/SignView;)I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 771
    iget-object v1, p0, Lcom/android/internal/widget/SignView$1;->this$0:Lcom/android/internal/widget/SignView;

    invoke-virtual {v1}, Lcom/android/internal/widget/SignView;->doVerifySign()V

    .line 773
    iget-object v1, p0, Lcom/android/internal/widget/SignView$1;->this$0:Lcom/android/internal/widget/SignView;

    #getter for: Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;
    invoke-static {v1}, Lcom/android/internal/widget/SignView;->access$100(Lcom/android/internal/widget/SignView;)Lcom/android/internal/widget/SignView$OnSignatureListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 774
    iget-object v1, p0, Lcom/android/internal/widget/SignView$1;->this$0:Lcom/android/internal/widget/SignView;

    #getter for: Lcom/android/internal/widget/SignView;->mOnSignatureListener:Lcom/android/internal/widget/SignView$OnSignatureListener;
    invoke-static {v1}, Lcom/android/internal/widget/SignView;->access$100(Lcom/android/internal/widget/SignView;)Lcom/android/internal/widget/SignView$OnSignatureListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/widget/SignView$OnSignatureListener;->onSignatureDetected()V

    goto :goto_0
.end method
