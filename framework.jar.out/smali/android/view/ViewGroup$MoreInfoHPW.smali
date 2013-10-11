.class Landroid/view/ViewGroup$MoreInfoHPW;
.super Landroid/widget/FHoverPopupWindow;
.source "ViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoreInfoHPW"
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final ID_INFOVIEW:I = 0x7011214

.field private static final TAG:Ljava/lang/String; = "MoreInfoHPW_ViewGroup"


# instance fields
.field private mInitialMaxLine:I

.field private mLastOrientation:I

.field mParentTextView:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 2
    .parameter
    .parameter "parentView"
    .parameter "type"

    .prologue
    .line 6541
    iput-object p1, p0, Landroid/view/ViewGroup$MoreInfoHPW;->this$0:Landroid/view/ViewGroup;

    .line 6542
    invoke-direct {p0, p2, p3}, Landroid/widget/FHoverPopupWindow;-><init>(Landroid/view/View;I)V

    .line 6537
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewGroup$MoreInfoHPW;->mLastOrientation:I

    .line 6538
    const/4 v0, 0x7

    iput v0, p0, Landroid/view/ViewGroup$MoreInfoHPW;->mInitialMaxLine:I

    .line 6539
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    .line 6543
    iget-object v0, p0, Landroid/view/ViewGroup$MoreInfoHPW;->mParentView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 6544
    iget-object v0, p0, Landroid/view/ViewGroup$MoreInfoHPW;->mParentView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/view/ViewGroup$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    .line 6552
    :goto_0
    return-void

    .line 6547
    :cond_0
    const-string v0, "MoreInfoHPW_ViewGroup"

    const-string v1, "Parent view is not a TextView"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6548
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Landroid/view/ViewGroup$MoreInfoHPW;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/view/ViewGroup$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    goto :goto_0
.end method


# virtual methods
.method public isHoverPopupPossible()Z
    .locals 2

    .prologue
    .line 6569
    iget-object v0, p0, Landroid/view/ViewGroup$MoreInfoHPW;->this$0:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/view/ViewGroup$MoreInfoHPW;->mParentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findEllipsizedTextView(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method protected makeDefaultContentView()V
    .locals 8

    .prologue
    const v7, 0x7011214

    .line 6575
    const/4 v4, 0x0

    .line 6577
    .local v4, v:Landroid/widget/TextView;
    iget-object v5, p0, Landroid/view/ViewGroup$MoreInfoHPW;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v2, v5, Landroid/content/res/Configuration;->orientation:I

    .line 6579
    .local v2, orientation:I
    iget-object v5, p0, Landroid/view/ViewGroup$MoreInfoHPW;->mContentView:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/view/ViewGroup$MoreInfoHPW;->mContentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v5, v7, :cond_0

    iget v5, p0, Landroid/view/ViewGroup$MoreInfoHPW;->mLastOrientation:I

    if-eq v2, v5, :cond_2

    .line 6582
    :cond_0
    iget-object v5, p0, Landroid/view/ViewGroup$MoreInfoHPW;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 6583
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v5, 0x109004f

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .end local v4           #v:Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 6585
    .restart local v4       #v:Landroid/widget/TextView;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setHoverPopupType(I)V

    .line 6586
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setId(I)V

    .line 6587
    invoke-virtual {v4}, Landroid/widget/TextView;->getMaxLines()I

    move-result v5

    iput v5, p0, Landroid/view/ViewGroup$MoreInfoHPW;->mInitialMaxLine:I

    .line 6589
    iput v2, p0, Landroid/view/ViewGroup$MoreInfoHPW;->mLastOrientation:I

    .line 6596
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :goto_0
    iget-object v5, p0, Landroid/view/ViewGroup$MoreInfoHPW;->mContentText:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v3, p0, Landroid/view/ViewGroup$MoreInfoHPW;->mContentText:Ljava/lang/CharSequence;

    .line 6598
    .local v3, text:Ljava/lang/CharSequence;
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 6599
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6600
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 6602
    iget-object v5, p0, Landroid/view/ViewGroup$MoreInfoHPW;->this$0:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 6603
    .local v0, d:Landroid/util/DisplayMetrics;
    iget v5, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    iget v5, p0, Landroid/view/ViewGroup$MoreInfoHPW;->mInitialMaxLine:I

    const/4 v6, 0x2

    if-le v5, v6, :cond_1

    .line 6604
    iget v5, p0, Landroid/view/ViewGroup$MoreInfoHPW;->mInitialMaxLine:I

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 6610
    .end local v0           #d:Landroid/util/DisplayMetrics;
    :cond_1
    :goto_2
    iput-object v4, p0, Landroid/view/ViewGroup$MoreInfoHPW;->mContentView:Landroid/view/View;

    .line 6611
    return-void

    .line 6592
    .end local v3           #text:Ljava/lang/CharSequence;
    :cond_2
    iget-object v4, p0, Landroid/view/ViewGroup$MoreInfoHPW;->mContentView:Landroid/view/View;

    .end local v4           #v:Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .restart local v4       #v:Landroid/widget/TextView;
    goto :goto_0

    .line 6596
    :cond_3
    iget-object v5, p0, Landroid/view/ViewGroup$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_1

    .line 6607
    .restart local v3       #text:Ljava/lang/CharSequence;
    :cond_4
    const/4 v4, 0x0

    goto :goto_2
.end method

.method protected setInstanceByType(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 6556
    invoke-super {p0, p1}, Landroid/widget/FHoverPopupWindow;->setInstanceByType(I)V

    .line 6557
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 6558
    const/16 v0, 0x3031

    iput v0, p0, Landroid/view/ViewGroup$MoreInfoHPW;->mPopupGravity:I

    .line 6560
    const v0, 0x103033e

    iput v0, p0, Landroid/view/ViewGroup$MoreInfoHPW;->mAnimationStyle:I

    .line 6561
    const/16 v0, 0x12c

    iput v0, p0, Landroid/view/ViewGroup$MoreInfoHPW;->mHoverDetectTimeMS:I

    .line 6562
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewGroup$MoreInfoHPW;->mIsGuideLineEnabled:Z

    .line 6563
    const/high16 v0, 0x40c0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup$MoreInfoHPW;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$MoreInfoHPW;->mGuideLineFadeOffset:I

    .line 6565
    :cond_0
    return-void
.end method
