.class Landroid/widget/FHoverPopupWindow$FHPopupContainer;
.super Landroid/widget/HoverPopupWindow$HoverPopupContainer;
.source "FHoverPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/FHoverPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FHPopupContainer"
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "FHPopupContainer"


# instance fields
.field private final DEFAULT_BG_OUTLINE_THICKNESS:F

.field private final DEFAULT_BG_PADDING:F

.field private POPUPSTATE_CENTER:I

.field private POPUPSTATE_LEFT:I

.field private POPUPSTATE_RIGHT:I

.field private ani:Landroid/view/animation/Animation;

.field private isFHmoveAnimation:Z

.field private mAnimationAreaOffset:I

.field private mBGPaddingBottomPX:F

.field private mBGPaddingTopPX:F

.field private mFHPopCContext:Landroid/content/Context;

.field private mLeftLimit:I

.field private mPickerHeightPX:F

.field private mPickerLineColor:I

.field private mPickerOutlineThicknessPX:I

.field private mPickerSpaceColor:I

.field private mPickerWidthPX:F

.field private mPopupState:I

.field private mRightLimit:I

.field private mTopPickerOffset:I

.field private mTotalLeftLimit:F

.field private mTotalRightLimit:F

.field private misMovetoRight:Z

.field final synthetic this$0:Landroid/widget/FHoverPopupWindow;


# direct methods
.method public constructor <init>(Landroid/widget/FHoverPopupWindow;Landroid/content/Context;)V
    .locals 7
    .parameter
    .parameter "context"

    .prologue
    const/high16 v6, -0x4080

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 789
    iput-object p1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    .line 790
    invoke-direct {p0, p1, p2}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;-><init>(Landroid/widget/HoverPopupWindow;Landroid/content/Context;)V

    .line 743
    const/high16 v1, 0x40c0

    iput v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->DEFAULT_BG_PADDING:F

    .line 745
    const/high16 v1, 0x4000

    iput v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->DEFAULT_BG_OUTLINE_THICKNESS:F

    .line 747
    iput-boolean v3, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->isFHmoveAnimation:Z

    .line 749
    iput-object v4, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->ani:Landroid/view/animation/Animation;

    .line 751
    iput-object v4, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mFHPopCContext:Landroid/content/Context;

    .line 753
    iput-boolean v3, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->misMovetoRight:Z

    .line 755
    iput v2, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mLeftLimit:I

    .line 757
    iput v2, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mRightLimit:I

    .line 759
    iput v2, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    .line 761
    iput v3, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_RIGHT:I

    .line 763
    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_LEFT:I

    .line 765
    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_CENTER:I

    .line 767
    iput v2, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerLineColor:I

    .line 769
    iput v2, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerSpaceColor:I

    .line 771
    iput v3, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerOutlineThicknessPX:I

    .line 773
    iput v5, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerWidthPX:F

    .line 775
    iput v5, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerHeightPX:F

    .line 777
    iput v6, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingTopPX:F

    .line 779
    iput v6, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingBottomPX:F

    .line 781
    iput v3, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTopPickerOffset:I

    .line 783
    const/16 v1, 0x64

    iput v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mAnimationAreaOffset:I

    .line 785
    iput v5, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTotalLeftLimit:F

    .line 787
    iput v5, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTotalRightLimit:F

    .line 791
    iput-object p2, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mFHPopCContext:Landroid/content/Context;

    .line 792
    iget v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_CENTER:I

    iput v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    .line 796
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 797
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v1, 0x13c

    const v2, -0x866e57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerLineColor:I

    .line 798
    const/16 v1, 0x13d

    const v2, -0xa29283

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerSpaceColor:I

    .line 800
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 802
    iput v6, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingBottomPX:F

    iput v6, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingTopPX:F

    .line 803
    const/high16 v1, 0x4000

    invoke-virtual {p1, v1, v4}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerOutlineThicknessPX:I

    .line 804
    #getter for: Landroid/widget/FHoverPopupWindow;->TW:F
    invoke-static {p1}, Landroid/widget/FHoverPopupWindow;->access$900(Landroid/widget/FHoverPopupWindow;)F

    move-result v1

    invoke-virtual {p1, v1, v4}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerWidthPX:F

    .line 805
    #getter for: Landroid/widget/FHoverPopupWindow;->H:F
    invoke-static {p1}, Landroid/widget/FHoverPopupWindow;->access$1000(Landroid/widget/FHoverPopupWindow;)F

    move-result v1

    invoke-virtual {p1, v1, v4}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerHeightPX:F

    .line 806
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 18
    .parameter "canvas"

    .prologue
    .line 833
    invoke-super/range {p0 .. p1}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->draw(Landroid/graphics/Canvas;)V

    .line 838
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-boolean v13, v13, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-nez v13, :cond_0

    .line 1182
    :goto_0
    return-void

    .line 844
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v13}, Landroid/widget/FHoverPopupWindow;->access$1100(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v13

    if-nez v13, :cond_1

    .line 845
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v14, v14, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v14

    int-to-float v14, v14

    #setter for: Landroid/widget/FHoverPopupWindow;->W:F
    invoke-static {v13, v14}, Landroid/widget/FHoverPopupWindow;->access$1202(Landroid/widget/FHoverPopupWindow;F)F

    .line 850
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    new-instance v14, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->W:F
    invoke-static {v15}, Landroid/widget/FHoverPopupWindow;->access$1200(Landroid/widget/FHoverPopupWindow;)F

    move-result v15

    const/high16 v16, 0x4000

    div-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerHeightPX:F

    move/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Landroid/graphics/PointF;-><init>(FF)V

    #setter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v13, v14}, Landroid/widget/FHoverPopupWindow;->access$1102(Landroid/widget/FHoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 851
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    new-instance v14, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->W:F
    invoke-static {v15}, Landroid/widget/FHoverPopupWindow;->access$1200(Landroid/widget/FHoverPopupWindow;)F

    move-result v15

    const/high16 v16, 0x4000

    div-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerWidthPX:F

    move/from16 v16, v0

    const/high16 v17, 0x4000

    div-float v16, v16, v17

    sub-float v15, v15, v16

    const/16 v16, 0x0

    invoke-direct/range {v14 .. v16}, Landroid/graphics/PointF;-><init>(FF)V

    #setter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v13, v14}, Landroid/widget/FHoverPopupWindow;->access$1302(Landroid/widget/FHoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 852
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    new-instance v14, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->W:F
    invoke-static {v15}, Landroid/widget/FHoverPopupWindow;->access$1200(Landroid/widget/FHoverPopupWindow;)F

    move-result v15

    const/high16 v16, 0x4000

    div-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerWidthPX:F

    move/from16 v16, v0

    const/high16 v17, 0x4000

    div-float v16, v16, v17

    add-float v15, v15, v16

    const/16 v16, 0x0

    invoke-direct/range {v14 .. v16}, Landroid/graphics/PointF;-><init>(FF)V

    #setter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v13, v14}, Landroid/widget/FHoverPopupWindow;->access$1402(Landroid/widget/FHoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 858
    :cond_1
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingTopPX:F

    const/4 v14, 0x0

    cmpg-float v13, v13, v14

    if-gez v13, :cond_3

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingBottomPX:F

    const/4 v14, 0x0

    cmpg-float v13, v13, v14

    if-gez v13, :cond_3

    .line 860
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    const/high16 v14, 0x40c0

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v13

    int-to-float v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingBottomPX:F

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingTopPX:F

    .line 863
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    if-lez v13, :cond_3

    .line 864
    const/4 v5, 0x0

    .line 865
    .local v5, d:Landroid/graphics/drawable/Drawable;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 866
    .local v3, child:Landroid/view/View;
    if-eqz v3, :cond_2

    .line 867
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 870
    :cond_2
    if-eqz v5, :cond_3

    .line 871
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 872
    .local v12, r:Landroid/graphics/Rect;
    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 873
    iget v13, v12, Landroid/graphics/Rect;->top:I

    iget v14, v12, Landroid/graphics/Rect;->bottom:I

    if-ge v13, v14, :cond_3

    .line 874
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingTopPX:F

    iget v14, v12, Landroid/graphics/Rect;->bottom:I

    iget v15, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v14, v15

    int-to-float v14, v14

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingTopPX:F

    .line 881
    .end local v3           #child:Landroid/view/View;
    .end local v5           #d:Landroid/graphics/drawable/Drawable;
    .end local v12           #r:Landroid/graphics/Rect;
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v13}, Landroid/widget/FHoverPopupWindow;->access$1100(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getLineEndX()I

    move-result v14

    int-to-float v14, v14

    iput v14, v13, Landroid/graphics/PointF;->x:F

    .line 882
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    if-nez v13, :cond_a

    .line 883
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v13}, Landroid/widget/FHoverPopupWindow;->access$1100(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getLineStartY()I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerHeightPX:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingBottomPX:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    add-float/2addr v14, v15

    iput v14, v13, Landroid/graphics/PointF;->y:F

    .line 889
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v13}, Landroid/widget/FHoverPopupWindow;->access$1300(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getLineEndX()I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->W:F
    invoke-static {v15}, Landroid/widget/FHoverPopupWindow;->access$1200(Landroid/widget/FHoverPopupWindow;)F

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerWidthPX:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v16, v0

    #getter for: Landroid/widget/FHoverPopupWindow;->W:F
    invoke-static/range {v16 .. v16}, Landroid/widget/FHoverPopupWindow;->access$1200(Landroid/widget/FHoverPopupWindow;)F

    move-result v16

    div-float v15, v15, v16

    mul-float/2addr v14, v15

    iput v14, v13, Landroid/graphics/PointF;->x:F

    .line 890
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    if-nez v13, :cond_b

    .line 891
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v13}, Landroid/widget/FHoverPopupWindow;->access$1300(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getLineStartY()I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingBottomPX:F

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerOutlineThicknessPX:I

    int-to-float v15, v15

    sub-float/2addr v14, v15

    iput v14, v13, Landroid/graphics/PointF;->y:F

    .line 897
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v13}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v14}, Landroid/widget/FHoverPopupWindow;->access$1300(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerWidthPX:F

    add-float/2addr v14, v15

    iput v14, v13, Landroid/graphics/PointF;->x:F

    .line 898
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v13}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v14}, Landroid/widget/FHoverPopupWindow;->access$1300(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/PointF;->y:F

    iput v14, v13, Landroid/graphics/PointF;->y:F

    .line 913
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-boolean v13, v13, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    if-eqz v13, :cond_c

    .line 917
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v13, v13, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v13

    div-int/lit8 v4, v13, 0x2

    .line 918
    .local v4, contentViewHalfWidth:I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mLeftLimit:I

    add-int/2addr v13, v4

    int-to-float v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTotalLeftLimit:F

    .line 919
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mRightLimit:I

    sub-int/2addr v13, v4

    add-int/lit8 v13, v13, 0xa

    int-to-float v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTotalRightLimit:F

    .line 933
    .end local v4           #contentViewHalfWidth:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v13, v13, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v14, v14, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v14

    sub-int/2addr v13, v14

    div-int/lit8 v7, v13, 0x2

    .line 942
    .local v7, movelength:I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v13}, Landroid/widget/FHoverPopupWindow;->access$1300(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v13

    iget v13, v13, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTotalLeftLimit:F

    cmpg-float v13, v13, v14

    if-gez v13, :cond_4

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mLeftLimit:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_4

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_CENTER:I

    if-ne v13, v14, :cond_4

    .line 945
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v13}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v13

    iget v11, v13, Landroid/graphics/PointF;->x:F

    .line 946
    .local v11, previousRightX:F
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v13}, Landroid/widget/FHoverPopupWindow;->access$1300(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v13

    iget v10, v13, Landroid/graphics/PointF;->x:F

    .line 947
    .local v10, previousLeftX:F
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v13}, Landroid/widget/FHoverPopupWindow;->access$1100(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v13

    iget v9, v13, Landroid/graphics/PointF;->x:F

    .line 955
    .local v9, previousCenterX:F
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v13}, Landroid/widget/FHoverPopupWindow;->access$1300(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mLeftLimit:I

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mPickerPadding:F
    invoke-static {v15}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)F

    move-result v15

    add-float/2addr v14, v15

    iput v14, v13, Landroid/graphics/PointF;->x:F

    .line 956
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v13}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v14}, Landroid/widget/FHoverPopupWindow;->access$1300(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerWidthPX:F

    add-float/2addr v14, v15

    iput v14, v13, Landroid/graphics/PointF;->x:F

    .line 957
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v13}, Landroid/widget/FHoverPopupWindow;->access$1100(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v14}, Landroid/widget/FHoverPopupWindow;->access$1300(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/PointF;->x:F

    iput v14, v13, Landroid/graphics/PointF;->x:F

    .line 959
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v13, v13, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mContainerLeftOnWindow:I
    invoke-static {v14}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)I

    move-result v14

    sub-int/2addr v13, v14

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v14}, Landroid/widget/FHoverPopupWindow;->access$1300(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/PointF;->x:F

    cmpl-float v13, v13, v14

    if-ltz v13, :cond_d

    if-gtz v7, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-boolean v13, v13, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    if-eqz v13, :cond_d

    .line 965
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v13}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v13

    iput v11, v13, Landroid/graphics/PointF;->x:F

    .line 966
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v13}, Landroid/widget/FHoverPopupWindow;->access$1300(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v13

    iput v10, v13, Landroid/graphics/PointF;->x:F

    .line 967
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v13}, Landroid/widget/FHoverPopupWindow;->access$1100(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v13

    iput v9, v13, Landroid/graphics/PointF;->x:F

    .line 982
    .end local v9           #previousCenterX:F
    .end local v10           #previousLeftX:F
    .end local v11           #previousRightX:F
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v13}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v13

    iget v13, v13, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTotalRightLimit:F

    cmpl-float v13, v13, v14

    if-lez v13, :cond_5

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mRightLimit:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_5

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_CENTER:I

    if-ne v13, v14, :cond_5

    .line 985
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v13}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v13

    iget v11, v13, Landroid/graphics/PointF;->x:F

    .line 986
    .restart local v11       #previousRightX:F
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v13}, Landroid/widget/FHoverPopupWindow;->access$1300(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v13

    iget v10, v13, Landroid/graphics/PointF;->x:F

    .line 987
    .restart local v10       #previousLeftX:F
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v13}, Landroid/widget/FHoverPopupWindow;->access$1100(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v13

    iget v9, v13, Landroid/graphics/PointF;->x:F

    .line 995
    .restart local v9       #previousCenterX:F
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v13}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mRightLimit:I

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mPickerPadding:F
    invoke-static {v15}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)F

    move-result v15

    sub-float/2addr v14, v15

    iput v14, v13, Landroid/graphics/PointF;->x:F

    .line 996
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v13}, Landroid/widget/FHoverPopupWindow;->access$1300(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v14}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerWidthPX:F

    sub-float/2addr v14, v15

    iput v14, v13, Landroid/graphics/PointF;->x:F

    .line 997
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v13}, Landroid/widget/FHoverPopupWindow;->access$1100(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v14}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/PointF;->x:F

    iput v14, v13, Landroid/graphics/PointF;->x:F

    .line 1000
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v13, v13, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mContainerLeftOnWindow:I
    invoke-static {v14}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)I

    move-result v14

    sub-int/2addr v13, v14

    if-lez v13, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v13, v13, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mContainerLeftOnWindow:I
    invoke-static {v14}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)I

    move-result v14

    sub-int/2addr v13, v14

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v14}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/PointF;->x:F

    cmpg-float v13, v13, v14

    if-gtz v13, :cond_e

    if-gtz v7, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-boolean v13, v13, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    if-eqz v13, :cond_e

    .line 1007
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v13}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v13

    iput v11, v13, Landroid/graphics/PointF;->x:F

    .line 1008
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v13}, Landroid/widget/FHoverPopupWindow;->access$1300(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v13

    iput v10, v13, Landroid/graphics/PointF;->x:F

    .line 1009
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v13}, Landroid/widget/FHoverPopupWindow;->access$1100(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v13

    iput v9, v13, Landroid/graphics/PointF;->x:F

    .line 1020
    .end local v9           #previousCenterX:F
    .end local v10           #previousLeftX:F
    .end local v11           #previousRightX:F
    :cond_5
    :goto_5
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_RIGHT:I

    if-ne v13, v14, :cond_6

    .line 1030
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v13}, Landroid/widget/FHoverPopupWindow;->access$1300(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v13

    iget v13, v13, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTotalLeftLimit:F

    cmpl-float v13, v13, v14

    if-lez v13, :cond_f

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mLeftLimit:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_f

    .line 1032
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_CENTER:I

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    .line 1034
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v13, v13, Landroid/widget/FHoverPopupWindow;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_CENTER:I

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1047
    :cond_6
    :goto_6
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_LEFT:I

    if-ne v13, v14, :cond_7

    .line 1057
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v13}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v13

    iget v13, v13, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTotalRightLimit:F

    cmpg-float v13, v13, v14

    if-gez v13, :cond_10

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mRightLimit:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_10

    .line 1059
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_CENTER:I

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    .line 1060
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v13, v13, Landroid/widget/FHoverPopupWindow;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_CENTER:I

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1087
    :cond_7
    :goto_7
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-boolean v13, v13, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    if-nez v13, :cond_9

    .line 1094
    const/4 v2, 0x0

    .line 1096
    .local v2, anchorViewCenter:I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mReferncedAnchorRect:Landroid/graphics/Rect;
    invoke-static {v13}, Landroid/widget/FHoverPopupWindow;->access$1700(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/Rect;

    move-result-object v13

    if-eqz v13, :cond_8

    .line 1097
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mReferncedAnchorRect:Landroid/graphics/Rect;
    invoke-static {v13}, Landroid/widget/FHoverPopupWindow;->access$1700(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/Rect;

    move-result-object v13

    iget v13, v13, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v14, v14, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mContainerLeftOnWindow:I
    invoke-static {v14}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)I

    move-result v14

    sub-int v2, v13, v14

    .line 1112
    :cond_8
    if-eqz v2, :cond_9

    .line 1113
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v13}, Landroid/widget/FHoverPopupWindow;->access$1100(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mPickerXoffset:I
    invoke-static {v14}, Landroid/widget/FHoverPopupWindow;->access$1800(Landroid/widget/FHoverPopupWindow;)I

    move-result v14

    add-int/2addr v14, v2

    int-to-float v14, v14

    iput v14, v13, Landroid/graphics/PointF;->x:F

    .line 1114
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v13}, Landroid/widget/FHoverPopupWindow;->access$1300(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v14}, Landroid/widget/FHoverPopupWindow;->access$1100(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerWidthPX:F

    const/high16 v16, 0x4000

    div-float v15, v15, v16

    sub-float/2addr v14, v15

    iput v14, v13, Landroid/graphics/PointF;->x:F

    .line 1115
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v13}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v14}, Landroid/widget/FHoverPopupWindow;->access$1300(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerWidthPX:F

    add-float/2addr v14, v15

    iput v14, v13, Landroid/graphics/PointF;->x:F

    .line 1126
    .end local v2           #anchorViewCenter:I
    :cond_9
    new-instance v1, Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-direct {v1, v13}, Landroid/graphics/Paint;-><init>(I)V

    .line 1127
    .local v1, Pnt:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerOutlineThicknessPX:I

    int-to-float v13, v13

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1130
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerSpaceColor:I

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 1131
    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1134
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    .line 1135
    .local v8, path:Landroid/graphics/Path;
    sget-object v13, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v8, v13}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 1136
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v13}, Landroid/widget/FHoverPopupWindow;->access$1300(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v13

    iget v13, v13, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v14}, Landroid/widget/FHoverPopupWindow;->access$1300(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/PointF;->y:F

    invoke-virtual {v8, v13, v14}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1137
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v13}, Landroid/widget/FHoverPopupWindow;->access$1100(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v13

    iget v13, v13, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v14}, Landroid/widget/FHoverPopupWindow;->access$1100(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/PointF;->y:F

    invoke-virtual {v8, v13, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1138
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v13}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v13

    iget v13, v13, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v14}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/PointF;->y:F

    invoke-virtual {v8, v13, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1139
    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    .line 1141
    sget-object v13, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1142
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1147
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerLineColor:I

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 1148
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerOutlineThicknessPX:I

    int-to-float v13, v13

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1149
    sget-object v13, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1150
    sget-object v13, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1152
    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    .line 1153
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v13}, Landroid/widget/FHoverPopupWindow;->access$1300(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v13

    iget v13, v13, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v14}, Landroid/widget/FHoverPopupWindow;->access$1300(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/PointF;->y:F

    invoke-virtual {v8, v13, v14}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1154
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v13}, Landroid/widget/FHoverPopupWindow;->access$1100(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v13

    iget v13, v13, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v14}, Landroid/widget/FHoverPopupWindow;->access$1100(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/PointF;->y:F

    invoke-virtual {v8, v13, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1155
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v13}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v13

    iget v13, v13, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v14}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/PointF;->y:F

    invoke-virtual {v8, v13, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1157
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1161
    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    .line 1164
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerOutlineThicknessPX:I

    rem-int/lit8 v13, v13, 0x2

    if-eqz v13, :cond_11

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerOutlineThicknessPX:I

    add-int/lit8 v13, v13, 0x1

    :goto_8
    div-int/lit8 v6, v13, 0x2

    .line 1165
    .local v6, lengthToRemove:I
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    if-nez v13, :cond_12

    .line 1166
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v13}, Landroid/widget/FHoverPopupWindow;->access$1300(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v13

    iget v13, v13, Landroid/graphics/PointF;->x:F

    int-to-float v14, v6

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v14}, Landroid/widget/FHoverPopupWindow;->access$1300(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/PointF;->y:F

    int-to-float v15, v6

    sub-float/2addr v14, v15

    invoke-virtual {v8, v13, v14}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1167
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v13}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v13

    iget v13, v13, Landroid/graphics/PointF;->x:F

    int-to-float v14, v6

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v14}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/PointF;->y:F

    int-to-float v15, v6

    sub-float/2addr v14, v15

    invoke-virtual {v8, v13, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1175
    :goto_9
    mul-int/lit8 v13, v6, 0x2

    int-to-float v13, v13

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1176
    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1177
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerSpaceColor:I

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 1178
    sget-object v13, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1179
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 885
    .end local v1           #Pnt:Landroid/graphics/Paint;
    .end local v6           #lengthToRemove:I
    .end local v7           #movelength:I
    .end local v8           #path:Landroid/graphics/Path;
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v13}, Landroid/widget/FHoverPopupWindow;->access$1100(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getLineStartY()I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerHeightPX:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingTopPX:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    sub-float/2addr v14, v15

    iput v14, v13, Landroid/graphics/PointF;->y:F

    goto/16 :goto_1

    .line 893
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v13}, Landroid/widget/FHoverPopupWindow;->access$1300(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getLineStartY()I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingTopPX:F

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerOutlineThicknessPX:I

    int-to-float v15, v15

    add-float/2addr v14, v15

    iput v14, v13, Landroid/graphics/PointF;->y:F

    goto/16 :goto_2

    .line 924
    :cond_c
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mLeftLimit:I

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mPickerPadding:F
    invoke-static {v14}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)F

    move-result v14

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mAnimationAreaOffset:I

    int-to-float v14, v14

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTotalLeftLimit:F

    .line 925
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mRightLimit:I

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mPickerPadding:F
    invoke-static {v14}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)F

    move-result v14

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mAnimationAreaOffset:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTotalRightLimit:F

    goto/16 :goto_3

    .line 973
    .restart local v7       #movelength:I
    .restart local v9       #previousCenterX:F
    .restart local v10       #previousLeftX:F
    .restart local v11       #previousRightX:F
    :cond_d
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_RIGHT:I

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    .line 974
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v13, v13, Landroid/widget/FHoverPopupWindow;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_RIGHT:I

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_4

    .line 1015
    :cond_e
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_LEFT:I

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    .line 1016
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v13, v13, Landroid/widget/FHoverPopupWindow;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_LEFT:I

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_5

    .line 1041
    .end local v9           #previousCenterX:F
    .end local v10           #previousLeftX:F
    .end local v11           #previousRightX:F
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v13}, Landroid/widget/FHoverPopupWindow;->access$1300(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mLeftLimit:I

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mPickerPadding:F
    invoke-static {v15}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)F

    move-result v15

    add-float/2addr v14, v15

    iput v14, v13, Landroid/graphics/PointF;->x:F

    .line 1042
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v13}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v14}, Landroid/widget/FHoverPopupWindow;->access$1300(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerWidthPX:F

    add-float/2addr v14, v15

    iput v14, v13, Landroid/graphics/PointF;->x:F

    .line 1043
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v13}, Landroid/widget/FHoverPopupWindow;->access$1100(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v14}, Landroid/widget/FHoverPopupWindow;->access$1300(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/PointF;->x:F

    iput v14, v13, Landroid/graphics/PointF;->x:F

    goto/16 :goto_6

    .line 1068
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v13}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mRightLimit:I

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mPickerPadding:F
    invoke-static {v15}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)F

    move-result v15

    sub-float/2addr v14, v15

    iput v14, v13, Landroid/graphics/PointF;->x:F

    .line 1069
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v13}, Landroid/widget/FHoverPopupWindow;->access$1300(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v14}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerWidthPX:F

    sub-float/2addr v14, v15

    iput v14, v13, Landroid/graphics/PointF;->x:F

    .line 1070
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v13}, Landroid/widget/FHoverPopupWindow;->access$1100(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v14}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/PointF;->x:F

    iput v14, v13, Landroid/graphics/PointF;->x:F

    goto/16 :goto_7

    .line 1164
    .restart local v1       #Pnt:Landroid/graphics/Paint;
    .restart local v8       #path:Landroid/graphics/Path;
    :cond_11
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerOutlineThicknessPX:I

    goto/16 :goto_8

    .line 1169
    .restart local v6       #lengthToRemove:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v13}, Landroid/widget/FHoverPopupWindow;->access$1300(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v13

    iget v13, v13, Landroid/graphics/PointF;->x:F

    int-to-float v14, v6

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v14}, Landroid/widget/FHoverPopupWindow;->access$1300(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/PointF;->y:F

    int-to-float v15, v6

    add-float/2addr v14, v15

    invoke-virtual {v8, v13, v14}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1170
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v13}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v13

    iget v13, v13, Landroid/graphics/PointF;->x:F

    int-to-float v14, v6

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v14}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/PointF;->y:F

    int-to-float v15, v6

    add-float/2addr v14, v15

    invoke-virtual {v8, v13, v14}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_9
.end method

.method public setFHmoveAnimation(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 809
    iput-boolean p1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->isFHmoveAnimation:Z

    .line 810
    return-void
.end method

.method public setFHmoveAnimationOffset(I)V
    .locals 3
    .parameter "offset"

    .prologue
    .line 826
    const-string v0, "FHPopupContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FHPopupContainer(): setFHmoveAnimationOffset: offset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    iput p1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mAnimationAreaOffset:I

    .line 828
    const-string v0, "FHPopupContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FHPopupContainer(): setFHmoveAnimationOffset: mAnimationAreaOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mAnimationAreaOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    return-void
.end method

.method public setOverTopPickerOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 818
    iput p1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTopPickerOffset:I

    .line 819
    return-void
.end method

.method public setPickerLimit(II)V
    .locals 0
    .parameter "leftlimit"
    .parameter "rightlimit"

    .prologue
    .line 813
    iput p1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mLeftLimit:I

    .line 814
    iput p2, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mRightLimit:I

    .line 815
    return-void
.end method

.method public setPopupState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 822
    iput p1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    .line 823
    return-void
.end method
