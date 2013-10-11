.class Landroid/widget/FHoverPopupWindow$1;
.super Landroid/os/Handler;
.source "FHoverPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/FHoverPopupWindow;-><init>(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/FHoverPopupWindow;


# direct methods
.method constructor <init>(Landroid/widget/FHoverPopupWindow;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 95
    iget-object v1, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-boolean v1, v1, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 96
    const-string v1, "FHoverPopupWindow"

    const-string v2, "handler :************* Start handleMessage *****************"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    iget-object v1, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-boolean v1, v1, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    if-nez v1, :cond_2

    .line 156
    :cond_1
    :goto_0
    return-void

    .line 101
    :cond_2
    iget-object v1, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v1, v1, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v1, v1, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v1, v1, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v1, v1, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 102
    iget-object v1, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v1, v1, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v2, v2, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 104
    .local v0, movelength:I
    iget-object v1, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-boolean v1, v1, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 105
    const-string v1, "FHoverPopupWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handler : mAnchorView.getWidth() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v3, v3, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_3
    iget-object v1, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-boolean v1, v1, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 107
    const-string v1, "FHoverPopupWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handler : mContentView.getWidth() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v3, v3, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_4
    iget-object v1, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-boolean v1, v1, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v1, :cond_5

    .line 109
    const-string v1, "FHoverPopupWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handler : movelength = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_5
    if-gez v0, :cond_7

    .line 113
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_9

    .line 114
    iget-object v1, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mDisplayWidthToComputeAniWidth:I
    invoke-static {v1}, Landroid/widget/FHoverPopupWindow;->access$000(Landroid/widget/FHoverPopupWindow;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget v2, v2, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    iget-object v3, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v3, v3, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sub-int v0, v1, v2

    .line 119
    :cond_6
    :goto_1
    iget-object v1, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-boolean v1, v1, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v1, :cond_7

    .line 120
    const-string v1, "FHoverPopupWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handler : after recomputing, movelength = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_7
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_a

    .line 125
    iget-object v1, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-boolean v1, v1, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v1, :cond_8

    .line 126
    const-string v1, "FHoverPopupWindow"

    const-string v2, "handler :***** InfoPreview picker move to RIGHT ****"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_8
    iget-object v1, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->MOVE_RIGHT:I
    invoke-static {v2}, Landroid/widget/FHoverPopupWindow;->access$200(Landroid/widget/FHoverPopupWindow;)I

    move-result v2

    #setter for: Landroid/widget/FHoverPopupWindow;->mDirection:I
    invoke-static {v1, v2}, Landroid/widget/FHoverPopupWindow;->access$102(Landroid/widget/FHoverPopupWindow;I)I

    .line 128
    iget-object v1, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mDirection:I
    invoke-static {v2}, Landroid/widget/FHoverPopupWindow;->access$100(Landroid/widget/FHoverPopupWindow;)I

    move-result v2

    #calls: Landroid/widget/FHoverPopupWindow;->setAnimator(II)V
    invoke-static {v1, v0, v2}, Landroid/widget/FHoverPopupWindow;->access$300(Landroid/widget/FHoverPopupWindow;II)V

    .line 129
    iget-object v1, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v1}, Landroid/widget/FHoverPopupWindow;->access$400(Landroid/widget/FHoverPopupWindow;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_0

    .line 116
    :cond_9
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v4, :cond_6

    .line 117
    iget-object v1, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget v0, v1, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    goto :goto_1

    .line 131
    :cond_a
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v4, :cond_c

    .line 133
    iget-object v1, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-boolean v1, v1, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v1, :cond_b

    .line 134
    const-string v1, "FHoverPopupWindow"

    const-string v2, "handler :***** InfoPreview picker move to LEFT ****"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_b
    iget-object v1, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->MOVE_LEFT:I
    invoke-static {v2}, Landroid/widget/FHoverPopupWindow;->access$500(Landroid/widget/FHoverPopupWindow;)I

    move-result v2

    #setter for: Landroid/widget/FHoverPopupWindow;->mDirection:I
    invoke-static {v1, v2}, Landroid/widget/FHoverPopupWindow;->access$102(Landroid/widget/FHoverPopupWindow;I)I

    .line 136
    iget-object v1, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mDirection:I
    invoke-static {v2}, Landroid/widget/FHoverPopupWindow;->access$100(Landroid/widget/FHoverPopupWindow;)I

    move-result v2

    #calls: Landroid/widget/FHoverPopupWindow;->setAnimator(II)V
    invoke-static {v1, v0, v2}, Landroid/widget/FHoverPopupWindow;->access$300(Landroid/widget/FHoverPopupWindow;II)V

    .line 137
    iget-object v1, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v1}, Landroid/widget/FHoverPopupWindow;->access$400(Landroid/widget/FHoverPopupWindow;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_0

    .line 139
    :cond_c
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 141
    iget-object v1, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-boolean v1, v1, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v1, :cond_d

    .line 142
    const-string v1, "FHoverPopupWindow"

    const-string v2, "handler :***** InfoPreview picker move to CENTER ****"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_d
    iget-object v1, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mDirection:I
    invoke-static {v1}, Landroid/widget/FHoverPopupWindow;->access$100(Landroid/widget/FHoverPopupWindow;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->MOVE_LEFT:I
    invoke-static {v2}, Landroid/widget/FHoverPopupWindow;->access$500(Landroid/widget/FHoverPopupWindow;)I

    move-result v2

    if-ne v1, v2, :cond_f

    .line 147
    iget-object v1, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->MOVE_LEFT_TO_CENTER:I
    invoke-static {v2}, Landroid/widget/FHoverPopupWindow;->access$600(Landroid/widget/FHoverPopupWindow;)I

    move-result v2

    #setter for: Landroid/widget/FHoverPopupWindow;->mDirection:I
    invoke-static {v1, v2}, Landroid/widget/FHoverPopupWindow;->access$102(Landroid/widget/FHoverPopupWindow;I)I

    .line 152
    :cond_e
    :goto_2
    iget-object v1, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mDirection:I
    invoke-static {v2}, Landroid/widget/FHoverPopupWindow;->access$100(Landroid/widget/FHoverPopupWindow;)I

    move-result v2

    #calls: Landroid/widget/FHoverPopupWindow;->setAnimator(II)V
    invoke-static {v1, v0, v2}, Landroid/widget/FHoverPopupWindow;->access$300(Landroid/widget/FHoverPopupWindow;II)V

    .line 153
    iget-object v1, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v1}, Landroid/widget/FHoverPopupWindow;->access$400(Landroid/widget/FHoverPopupWindow;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_0

    .line 148
    :cond_f
    iget-object v1, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mDirection:I
    invoke-static {v1}, Landroid/widget/FHoverPopupWindow;->access$100(Landroid/widget/FHoverPopupWindow;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->MOVE_RIGHT:I
    invoke-static {v2}, Landroid/widget/FHoverPopupWindow;->access$200(Landroid/widget/FHoverPopupWindow;)I

    move-result v2

    if-ne v1, v2, :cond_e

    .line 149
    iget-object v1, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->MOVE_RIGHT_TO_CENTER:I
    invoke-static {v2}, Landroid/widget/FHoverPopupWindow;->access$700(Landroid/widget/FHoverPopupWindow;)I

    move-result v2

    #setter for: Landroid/widget/FHoverPopupWindow;->mDirection:I
    invoke-static {v1, v2}, Landroid/widget/FHoverPopupWindow;->access$102(Landroid/widget/FHoverPopupWindow;I)I

    goto :goto_2
.end method
