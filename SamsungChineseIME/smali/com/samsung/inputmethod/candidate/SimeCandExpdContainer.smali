.class public Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;
.super Landroid/widget/LinearLayout;
.source "SimeCandExpdContainer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ExpandCandidatesContainer"


# instance fields
.field private MAX_ITEM_WIDTH:F

.field private MIN_ITEM_WIDTH:F

.field private mActiveCandidateColor:I

.field private mActiveCandidateIndex:I

.field private mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

.field private mCandidateListLayout:Landroid/widget/LinearLayout;

.field private mCandidateMargin:F

.field private mCandidateMarginExtra:F

.field private mCandidateSeperatorColor:I

.field private mCandidateSeperatorWidth:I

.field private mCandidateTextSize:I

.field private mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

.field private mContentHeight:I

.field private mContentWidth:I

.field private mCvListener:Lcom/samsung/inputmethod/candidate/SimeCandViewListener;

.field private mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

.field private mIme:Lcom/samsung/inputmethod/SamsungIME;

.field private mImeCandidateColor:I

.field private mImeCandidateTextSize:I

.field private mImeFlotingCandidateTextSize:I

.field private mLastRowStart:I

.field private mLastRowlayout:Landroid/widget/LinearLayout;

.field private mNormalCandidateColor:I

.field private mRecommendedCandidateColor:I

.field private mRecommendedCandidateTextSize:I

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSeparatorDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 174
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateListLayout:Landroid/widget/LinearLayout;

    .line 84
    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mLastRowlayout:Landroid/widget/LinearLayout;

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mLastRowStart:I

    .line 146
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mActiveCandidateIndex:I

    .line 163
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    .line 175
    return-void
.end method

.method private AppendCHNRows()Z
    .locals 34

    .prologue
    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-object/from16 v31, v0

    if-nez v31, :cond_0

    const/16 v31, 0x0

    .line 1159
    :goto_0
    return v31

    .line 900
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getCurrentPageSize(I)I

    move-result v5

    .line 901
    .local v5, displayedNum:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v24

    .line 902
    .local v24, totalNum:I
    sub-int v7, v24, v5

    .line 904
    .local v7, expandNum:I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getMeasuredWidth()I

    move-result v31

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getPaddingLeft()I

    move-result v32

    sub-int v31, v31, v32

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getPaddingRight()I

    move-result v32

    sub-int v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mContentWidth:I

    .line 905
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getMeasuredHeight()I

    move-result v31

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getPaddingTop()I

    move-result v32

    sub-int v31, v31, v32

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getPaddingBottom()I

    move-result v32

    sub-int v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mContentHeight:I

    .line 910
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mContentWidth:I

    move/from16 v31, v0

    if-lez v31, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mContentHeight:I

    move/from16 v31, v0

    if-gtz v31, :cond_2

    :cond_1
    const/16 v31, 0x0

    goto :goto_0

    .line 911
    :cond_2
    if-gtz v7, :cond_3

    const/16 v31, 0x0

    goto :goto_0

    .line 915
    :cond_3
    const/16 v27, 0x0

    .line 918
    .local v27, tvPre:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    const/4 v15, 0x0

    .line 919
    .local v15, lastSepView:Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mLastRowStart:I

    move/from16 v19, v0

    .line 920
    .local v19, rowStart:I
    const/16 v18, 0x0

    .line 921
    .local v18, rowSize:I
    const/16 v17, 0x0

    .line 922
    .local v17, remainCellSpace:I
    const/16 v30, 0x0

    .line 923
    .local v30, xPos:F
    const/4 v8, 0x0

    .line 924
    .local v8, itemContentWidth:F
    const/4 v9, 0x0

    .line 925
    .local v9, itemNextContentWidth:F
    const/4 v11, 0x0

    .line 926
    .local v11, itemPreContentWidth:F
    const/4 v12, 0x0

    .line 927
    .local v12, itemRowStartContentWidth:F
    const/4 v13, 0x0

    .line 928
    .local v13, itemWidth:F
    const/16 v16, 0x0

    .line 929
    .local v16, marginExtra:F
    const/4 v14, 0x0

    .line 930
    .local v14, lastItemWidth:F
    const/16 v23, 0x0

    .line 931
    .local v23, singleCellWidth:F
    const/4 v6, 0x0

    .line 932
    .local v6, doubleCellWidth:F
    const/16 v29, 0x0

    .line 936
    .local v29, wholeLineWidth:F
    invoke-direct/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->isLandScape()Z

    move-result v31

    if-eqz v31, :cond_d

    .line 937
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v31

    sget-object v32, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_NORMAL:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_c

    .line 938
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f0a002c

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v23

    .line 939
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f0a002d

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 940
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f0a002e

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v29

    .line 941
    const/16 v17, 0x6

    .line 966
    :goto_1
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->MAX_ITEM_WIDTH:F

    .line 967
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->MIN_ITEM_WIDTH:F

    .line 969
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mLastRowlayout:Landroid/widget/LinearLayout;

    move-object/from16 v31, v0

    if-eqz v31, :cond_4

    .line 971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateListLayout:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mLastRowlayout:Landroid/widget/LinearLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v31

    check-cast v31, Landroid/view/View;

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 975
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->creatRowLayout()Landroid/widget/LinearLayout;

    move-result-object v20

    .line 977
    .local v20, rowlayout:Landroid/widget/LinearLayout;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v31, -0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getHeightForCandidates()I

    move-result v32

    const/16 v33, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-direct {v4, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 980
    .local v4, cellParams:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v22, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateSeperatorWidth:I

    move/from16 v31, v0

    const/16 v32, -0x1

    const/16 v33, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 983
    .local v22, separatorParams:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v10, 0x0

    .line 984
    .local v10, itemPos:I
    :goto_2
    add-int v31, v19, v18

    move/from16 v0, v31

    move/from16 v1, v24

    if-ge v0, v1, :cond_18

    .line 985
    add-int v10, v19, v18

    .line 988
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->creatCellCandidateView(I)Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    move-result-object v25

    .line 989
    .local v25, tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    add-int/lit8 v31, v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->creatCellCandidateView(I)Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    move-result-object v26

    .line 990
    .local v26, tvNext:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->creatCellCandidateView(I)Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    move-result-object v28

    .line 991
    .local v28, tvRowStart:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    invoke-direct/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->creatSeparator()Lcom/samsung/inputmethod/candidate/SimeCandSepView;

    move-result-object v21

    .line 993
    .local v21, sepView:Landroid/view/View;
    invoke-virtual/range {v25 .. v25}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->getTextWidth()F

    move-result v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateMargin:F

    move/from16 v32, v0

    const/high16 v33, 0x4000

    mul-float v32, v32, v33

    add-float v8, v31, v32

    .line 994
    invoke-virtual/range {v26 .. v26}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->getTextWidth()F

    move-result v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateMargin:F

    move/from16 v32, v0

    const/high16 v33, 0x4000

    mul-float v32, v32, v33

    add-float v9, v31, v32

    .line 995
    invoke-virtual/range {v28 .. v28}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->getTextWidth()F

    move-result v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateMargin:F

    move/from16 v32, v0

    const/high16 v33, 0x4000

    mul-float v32, v32, v33

    add-float v12, v31, v32

    .line 996
    if-eqz v27, :cond_5

    .line 997
    invoke-virtual/range {v27 .. v27}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->getTextWidth()F

    move-result v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateMargin:F

    move/from16 v32, v0

    const/high16 v33, 0x4000

    mul-float v32, v32, v33

    add-float v11, v31, v32

    .line 1001
    :cond_5
    cmpg-float v31, v8, v23

    if-gez v31, :cond_10

    .line 1002
    move/from16 v13, v23

    .line 1003
    add-int/lit8 v17, v17, -0x1

    .line 1018
    :cond_6
    :goto_3
    cmpl-float v31, v13, v23

    if-eqz v31, :cond_7

    cmpl-float v31, v13, v6

    if-eqz v31, :cond_7

    cmpl-float v31, v13, v29

    if-eqz v31, :cond_7

    .line 1020
    const-string v31, "ExpandCandidatesContainer"

    const-string v32, "The itemWidth is wrong, please have a check!!!"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    :cond_7
    const/16 v31, 0x1

    move/from16 v0, v17

    move/from16 v1, v31

    if-ne v0, v1, :cond_14

    .line 1026
    invoke-direct/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->isLandScape()Z

    move-result v31

    if-eqz v31, :cond_12

    .line 1030
    cmpl-float v31, v13, v6

    if-nez v31, :cond_8

    cmpl-float v31, v11, v23

    if-lez v31, :cond_8

    .line 1031
    float-to-int v0, v6

    move/from16 v31, v0

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setWidth(I)V

    .line 1032
    const/16 v31, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 1033
    const/16 v31, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1034
    add-float v30, v30, v23

    .line 1038
    :cond_8
    cmpl-float v31, v13, v6

    if-nez v31, :cond_9

    cmpg-float v31, v11, v23

    if-gez v31, :cond_9

    .line 1039
    float-to-int v0, v6

    move/from16 v31, v0

    move-object/from16 v0, v27

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setWidth(I)V

    .line 1040
    mul-int/lit8 v31, v18, 0x2

    add-int/lit8 v31, v31, -0x2

    move-object/from16 v0, v20

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 1041
    mul-int/lit8 v31, v18, 0x2

    add-int/lit8 v31, v31, -0x2

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1042
    add-float v30, v30, v23

    .line 1046
    :cond_9
    cmpl-float v31, v13, v23

    if-nez v31, :cond_a

    cmpl-float v31, v9, v23

    if-lez v31, :cond_a

    .line 1047
    move v13, v6

    .line 1077
    :cond_a
    :goto_4
    float-to-int v0, v13

    move/from16 v31, v0

    move-object/from16 v0, v25

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setWidth(I)V

    .line 1078
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateSeperatorWidth:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    add-float v13, v13, v31

    .line 1082
    add-float v31, v30, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mContentWidth:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    cmpg-float v31, v31, v32

    if-lez v31, :cond_b

    if-nez v18, :cond_15

    .line 1085
    :cond_b
    add-float v30, v30, v13

    .line 1087
    add-int/lit8 v18, v18, 0x1

    .line 1088
    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1089
    invoke-virtual/range {v20 .. v22}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1090
    move-object/from16 v15, v21

    .line 1091
    move-object/from16 v27, v25

    goto/16 :goto_2

    .line 944
    .end local v4           #cellParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v10           #itemPos:I
    .end local v20           #rowlayout:Landroid/widget/LinearLayout;
    .end local v21           #sepView:Landroid/view/View;
    .end local v22           #separatorParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v25           #tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    .end local v26           #tvNext:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    .end local v28           #tvRowStart:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f0a0060

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v23

    .line 945
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f0a0061

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 946
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f0a0062

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v29

    .line 947
    const/16 v17, 0x4

    goto/16 :goto_1

    .line 950
    :cond_d
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v31

    sget-object v32, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_NORMAL:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_e

    .line 951
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f0a0029

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v23

    .line 952
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f0a002a

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 953
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f0a002b

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v29

    .line 963
    :goto_5
    const/16 v17, 0x4

    goto/16 :goto_1

    .line 954
    :cond_e
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v31

    sget-object v32, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_f

    .line 955
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f0a005d

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v23

    .line 956
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f0a005e

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 957
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f0a005f

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v29

    goto :goto_5

    .line 959
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f0a0043

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v23

    .line 960
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f0a0044

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 961
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f0a0045

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v29

    goto :goto_5

    .line 1004
    .restart local v4       #cellParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v10       #itemPos:I
    .restart local v20       #rowlayout:Landroid/widget/LinearLayout;
    .restart local v21       #sepView:Landroid/view/View;
    .restart local v22       #separatorParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v25       #tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    .restart local v26       #tvNext:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    .restart local v28       #tvRowStart:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    :cond_10
    cmpg-float v31, v8, v6

    if-gez v31, :cond_11

    .line 1005
    move v13, v6

    .line 1006
    add-int/lit8 v17, v17, -0x2

    goto/16 :goto_3

    .line 1007
    :cond_11
    cmpg-float v31, v8, v29

    if-gez v31, :cond_6

    .line 1008
    move/from16 v13, v29

    .line 1009
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 1053
    :cond_12
    cmpl-float v31, v13, v6

    if-nez v31, :cond_13

    if-eqz v27, :cond_13

    .line 1054
    float-to-int v0, v6

    move/from16 v31, v0

    move-object/from16 v0, v27

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setWidth(I)V

    .line 1055
    mul-int/lit8 v31, v18, 0x2

    add-int/lit8 v31, v31, -0x2

    move-object/from16 v0, v20

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 1056
    mul-int/lit8 v31, v18, 0x2

    add-int/lit8 v31, v31, -0x2

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1057
    add-float v30, v30, v23

    .line 1061
    :cond_13
    cmpl-float v31, v13, v23

    if-nez v31, :cond_a

    cmpl-float v31, v9, v23

    if-lez v31, :cond_a

    .line 1062
    move v13, v6

    goto/16 :goto_4

    .line 1064
    :cond_14
    const/16 v31, 0x2

    move/from16 v0, v17

    move/from16 v1, v31

    if-ne v0, v1, :cond_a

    .line 1065
    invoke-direct/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->isLandScape()Z

    move-result v31

    if-eqz v31, :cond_a

    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v31

    sget-object v32, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_NORMAL:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_a

    .line 1067
    cmpl-float v31, v13, v23

    if-nez v31, :cond_a

    cmpg-float v31, v12, v23

    if-gez v31, :cond_a

    cmpl-float v31, v11, v23

    if-lez v31, :cond_a

    .line 1068
    float-to-int v0, v6

    move/from16 v31, v0

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setWidth(I)V

    .line 1069
    move v13, v6

    .line 1070
    const/16 v31, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 1071
    const/16 v31, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1072
    add-float v30, v30, v23

    goto/16 :goto_4

    .line 1095
    :cond_15
    if-eqz v15, :cond_16

    .line 1096
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1100
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mContentWidth:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v16, v31, v30

    .line 1102
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateMarginExtra:F

    .line 1107
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mLastRowlayout:Landroid/widget/LinearLayout;

    .line 1108
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mLastRowStart:I

    .line 1111
    add-int v19, v19, v18

    .line 1113
    const/16 v18, 0x0

    .line 1114
    const/16 v30, 0x0

    .line 1115
    const/16 v16, 0x0

    .line 1116
    invoke-direct/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->isLandScape()Z

    move-result v31

    if-eqz v31, :cond_17

    .line 1117
    const/16 v17, 0x6

    .line 1121
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->creatRowLayout()Landroid/widget/LinearLayout;

    move-result-object v20

    goto/16 :goto_2

    .line 1119
    :cond_17
    const/16 v17, 0x4

    goto :goto_6

    .line 1127
    .end local v21           #sepView:Landroid/view/View;
    .end local v25           #tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    .end local v26           #tvNext:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    .end local v28           #tvRowStart:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    :cond_18
    invoke-virtual/range {v20 .. v20}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v31

    if-lez v31, :cond_1d

    .line 1129
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mContentWidth:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v31, v31, v30

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v31, v31, v32

    const/high16 v32, 0x4000

    div-float v16, v31, v32

    .line 1130
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mContentWidth:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v31, v31, v30

    cmpl-float v31, v31, v14

    if-lez v31, :cond_1b

    .line 1136
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateMarginExtra:F

    move/from16 v31, v0

    cmpg-float v31, v31, v16

    if-gtz v31, :cond_19

    .line 1137
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateMarginExtra:F

    move/from16 v16, v0

    .line 1139
    :cond_19
    if-nez v17, :cond_1a

    if-eqz v15, :cond_1a

    .line 1140
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1149
    :cond_1a
    :goto_7
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateMarginExtra:F

    .line 1151
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mLastRowlayout:Landroid/widget/LinearLayout;

    .line 1152
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mLastRowStart:I

    .line 1159
    :goto_8
    const/16 v31, 0x1

    goto/16 :goto_0

    .line 1142
    :cond_1b
    const/16 v31, 0x1

    move/from16 v0, v18

    move/from16 v1, v31

    if-ne v0, v1, :cond_1c

    .line 1143
    const/16 v16, 0x0

    goto :goto_7

    .line 1145
    :cond_1c
    if-eqz v15, :cond_1a

    .line 1146
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_7

    .line 1156
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateListLayout:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mLastRowlayout:Landroid/widget/LinearLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v31

    check-cast v31, Landroid/view/View;

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_8
.end method

.method private AppendRows()Z
    .locals 22

    .prologue
    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    const/16 v19, 0x0

    .line 892
    :goto_0
    return v19

    .line 763
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getCurrentPageSize(I)I

    move-result v4

    .line 764
    .local v4, displayedNum:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v16

    .line 765
    .local v16, totalNum:I
    sub-int v5, v16, v4

    .line 768
    .local v5, expandNum:I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getMeasuredWidth()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getPaddingLeft()I

    move-result v20

    sub-int v19, v19, v20

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getPaddingRight()I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mContentWidth:I

    .line 769
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getMeasuredHeight()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getPaddingTop()I

    move-result v20

    sub-int v19, v19, v20

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getPaddingBottom()I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mContentHeight:I

    .line 770
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mContentWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateSeperatorWidth:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->MAX_ITEM_WIDTH:F

    .line 771
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a001e

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateMargin:F

    move/from16 v20, v0

    const/high16 v21, 0x4000

    mul-float v20, v20, v21

    add-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->MIN_ITEM_WIDTH:F

    .line 776
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mContentWidth:I

    move/from16 v19, v0

    if-lez v19, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mContentHeight:I

    move/from16 v19, v0

    if-gtz v19, :cond_2

    :cond_1
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 777
    :cond_2
    if-gtz v5, :cond_3

    const/16 v19, 0x0

    goto/16 :goto_0

    .line 781
    :cond_3
    const/4 v9, 0x0

    .line 782
    .local v9, lastSepView:Landroid/view/View;
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mLastRowStart:I

    .line 783
    .local v12, rowStart:I
    const/4 v11, 0x0

    .line 784
    .local v11, rowSize:I
    const/16 v18, 0x0

    .line 785
    .local v18, xPos:F
    const/4 v7, 0x0

    .line 786
    .local v7, itemWidth:F
    const/4 v10, 0x0

    .line 787
    .local v10, marginExtra:F
    const/4 v8, 0x0

    .line 790
    .local v8, lastItemWidth:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mLastRowlayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateListLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mLastRowlayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    check-cast v19, Landroid/view/View;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 796
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->creatRowLayout()Landroid/widget/LinearLayout;

    move-result-object v13

    .line 799
    .local v13, rowlayout:Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v19, -0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getHeightForCandidates()I

    move-result v20

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v3, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 802
    .local v3, cellParams:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateSeperatorWidth:I

    move/from16 v19, v0

    const/16 v20, -0x1

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v15, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 805
    .local v15, separatorParams:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v6, 0x0

    .line 806
    .local v6, itemPos:I
    :goto_1
    add-int v19, v12, v11

    move/from16 v0, v19

    move/from16 v1, v16

    if-ge v0, v1, :cond_a

    .line 807
    add-int v6, v12, v11

    .line 810
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->creatCellCandidateView(I)Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    move-result-object v17

    .line 811
    .local v17, tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    invoke-direct/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->creatSeparator()Lcom/samsung/inputmethod/candidate/SimeCandSepView;

    move-result-object v14

    .line 817
    .local v14, sepView:Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->getTextWidth()F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateMargin:F

    move/from16 v20, v0

    const/high16 v21, 0x4000

    mul-float v20, v20, v21

    add-float v7, v19, v20

    .line 819
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->MIN_ITEM_WIDTH:F

    move/from16 v19, v0

    cmpg-float v19, v7, v19

    if-gez v19, :cond_7

    .line 820
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->MIN_ITEM_WIDTH:F

    .line 824
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateSeperatorWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v7, v7, v19

    .line 828
    add-float v19, v18, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mContentWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpg-float v19, v19, v20

    if-lez v19, :cond_6

    if-nez v11, :cond_8

    .line 829
    :cond_6
    add-float v18, v18, v7

    .line 830
    move v8, v7

    .line 831
    add-int/lit8 v11, v11, 0x1

    .line 832
    move-object/from16 v0, v17

    invoke-virtual {v13, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 833
    invoke-virtual {v13, v14, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 834
    move-object v9, v14

    goto :goto_1

    .line 821
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->MAX_ITEM_WIDTH:F

    move/from16 v19, v0

    cmpl-float v19, v7, v19

    if-lez v19, :cond_5

    .line 822
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->MAX_ITEM_WIDTH:F

    goto :goto_2

    .line 838
    :cond_8
    if-eqz v9, :cond_9

    .line 839
    invoke-virtual {v13, v9}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 842
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mContentWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v19, v19, v18

    int-to-float v0, v11

    move/from16 v20, v0

    div-float v19, v19, v20

    const/high16 v20, 0x4000

    div-float v10, v19, v20

    .line 845
    move-object/from16 v0, p0

    iput v10, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateMarginExtra:F

    .line 848
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->adjustCellPadding(Landroid/widget/LinearLayout;)V

    .line 850
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mLastRowlayout:Landroid/widget/LinearLayout;

    .line 851
    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mLastRowStart:I

    .line 854
    add-int/2addr v12, v11

    .line 855
    const/4 v11, 0x0

    .line 856
    const/16 v18, 0x0

    .line 857
    const/4 v10, 0x0

    .line 858
    invoke-direct/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->creatRowLayout()Landroid/widget/LinearLayout;

    move-result-object v13

    goto/16 :goto_1

    .line 863
    .end local v14           #sepView:Landroid/view/View;
    .end local v17           #tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    :cond_a
    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v19

    if-lez v19, :cond_e

    .line 865
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mContentWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v19, v19, v18

    int-to-float v0, v11

    move/from16 v20, v0

    div-float v19, v19, v20

    const/high16 v20, 0x4000

    div-float v10, v19, v20

    .line 866
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mContentWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v19, v19, v18

    cmpl-float v19, v19, v8

    if-lez v19, :cond_c

    .line 872
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateMarginExtra:F

    move/from16 v19, v0

    cmpg-float v19, v19, v10

    if-gtz v19, :cond_b

    .line 873
    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateMarginExtra:F

    .line 882
    :cond_b
    :goto_3
    move-object/from16 v0, p0

    iput v10, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateMarginExtra:F

    .line 883
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->adjustCellPadding(Landroid/widget/LinearLayout;)V

    .line 884
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mLastRowlayout:Landroid/widget/LinearLayout;

    .line 885
    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mLastRowStart:I

    .line 892
    :goto_4
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 875
    :cond_c
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v11, v0, :cond_d

    .line 876
    const/4 v10, 0x0

    goto :goto_3

    .line 878
    :cond_d
    if-eqz v9, :cond_b

    .line 879
    invoke-virtual {v13, v9}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_3

    .line 889
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateListLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mLastRowlayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    check-cast v19, Landroid/view/View;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_4
.end method

.method private adjustCellPadding(Landroid/widget/LinearLayout;)V
    .locals 8
    .parameter "rowlayout"

    .prologue
    const/4 v7, 0x0

    .line 1248
    iget v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateMargin:F

    iget v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateMarginExtra:F

    add-float v0, v5, v6

    .line 1250
    .local v0, candMargin:F
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 1253
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1254
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1255
    .local v4, v:Landroid/view/View;
    instance-of v5, v4, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    if-eqz v5, :cond_0

    move-object v3, v4

    .line 1256
    check-cast v3, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    .line 1257
    .local v3, tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    float-to-int v5, v0

    float-to-int v6, v0

    invoke-virtual {v3, v5, v7, v6, v7}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setPadding(IIII)V

    .line 1253
    .end local v3           #tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1260
    .end local v4           #v:Landroid/view/View;
    :cond_1
    return-void
.end method

.method private calculateCHNRows()Z
    .locals 38

    .prologue
    .line 473
    const-wide/16 v26, 0x0

    .line 474
    .local v26, timeStart:J
    const-wide/16 v24, 0x0

    .line 475
    .local v24, timeEnd:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-object/from16 v35, v0

    if-nez v35, :cond_0

    const/16 v35, 0x0

    .line 747
    :goto_0
    return v35

    .line 476
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateListLayout:Landroid/widget/LinearLayout;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 480
    const/16 v35, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mLastRowlayout:Landroid/widget/LinearLayout;

    .line 481
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mLastRowStart:I

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getCurrentPageSize(I)I

    move-result v5

    .line 486
    .local v5, displayedNum:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v28

    .line 487
    .local v28, totalNum:I
    sub-int v7, v28, v5

    .line 490
    .local v7, expandNum:I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getMeasuredWidth()I

    move-result v35

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getPaddingLeft()I

    move-result v36

    sub-int v35, v35, v36

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getPaddingRight()I

    move-result v36

    sub-int v35, v35, v36

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mContentWidth:I

    .line 491
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getMeasuredHeight()I

    move-result v35

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getPaddingTop()I

    move-result v36

    sub-int v35, v35, v36

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getPaddingBottom()I

    move-result v36

    sub-int v35, v35, v36

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mContentHeight:I

    .line 502
    if-gtz v7, :cond_1

    const/16 v35, 0x0

    goto :goto_0

    .line 506
    :cond_1
    const/16 v31, 0x0

    .line 509
    .local v31, tvPre:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    const/4 v15, 0x0

    .line 510
    .local v15, lastSepView:Landroid/view/View;
    move/from16 v19, v5

    .line 511
    .local v19, rowStart:I
    const/16 v18, 0x0

    .line 512
    .local v18, rowSize:I
    const/16 v17, 0x0

    .line 513
    .local v17, remainCellSpace:I
    const/16 v34, 0x0

    .line 514
    .local v34, xPos:F
    const/4 v8, 0x0

    .line 515
    .local v8, itemContentWidth:F
    const/4 v11, 0x0

    .line 516
    .local v11, itemPreContentWidth:F
    const/4 v9, 0x0

    .line 517
    .local v9, itemNextContentWidth:F
    const/4 v12, 0x0

    .line 518
    .local v12, itemRowStartContentWidth:F
    const/4 v13, 0x0

    .line 519
    .local v13, itemWidth:F
    const/16 v16, 0x0

    .line 520
    .local v16, marginExtra:F
    const/4 v14, 0x0

    .line 521
    .local v14, lastItemWidth:F
    const/16 v23, 0x0

    .line 522
    .local v23, singleCellWidth:F
    const/4 v6, 0x0

    .line 523
    .local v6, doubleCellWidth:F
    const/16 v33, 0x0

    .line 525
    .local v33, wholeLineWidth:F
    invoke-direct/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->isLandScape()Z

    move-result v35

    if-eqz v35, :cond_a

    .line 526
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v35

    sget-object v36, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_NORMAL:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_9

    .line 527
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x7f0a002c

    invoke-virtual/range {v35 .. v36}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v23

    .line 528
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x7f0a002d

    invoke-virtual/range {v35 .. v36}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 529
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x7f0a002e

    invoke-virtual/range {v35 .. v36}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v33

    .line 530
    const/16 v17, 0x6

    .line 555
    :goto_1
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->MAX_ITEM_WIDTH:F

    .line 556
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->MIN_ITEM_WIDTH:F

    .line 559
    invoke-direct/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->creatRowLayout()Landroid/widget/LinearLayout;

    move-result-object v20

    .line 561
    .local v20, rowlayout:Landroid/widget/LinearLayout;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v35, -0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getHeightForCandidates()I

    move-result v36

    const/16 v37, 0x0

    move/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-direct {v4, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 564
    .local v4, cellParams:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v22, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateSeperatorWidth:I

    move/from16 v35, v0

    const/16 v36, -0x1

    const/16 v37, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v35

    move/from16 v2, v36

    move/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 567
    .local v22, separatorParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 569
    const/4 v10, 0x0

    .line 570
    .local v10, itemPos:I
    :goto_2
    add-int v35, v19, v18

    move/from16 v0, v35

    move/from16 v1, v28

    if-ge v0, v1, :cond_15

    .line 572
    add-int v10, v19, v18

    .line 575
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->creatCellCandidateView(I)Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    move-result-object v29

    .line 576
    .local v29, tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    add-int/lit8 v35, v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->creatCellCandidateView(I)Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    move-result-object v30

    .line 577
    .local v30, tvNext:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->creatCellCandidateView(I)Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    move-result-object v32

    .line 579
    .local v32, tvRowStart:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    invoke-direct/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->creatSeparator()Lcom/samsung/inputmethod/candidate/SimeCandSepView;

    move-result-object v21

    .line 585
    .local v21, sepView:Landroid/view/View;
    invoke-virtual/range {v29 .. v29}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->getTextWidth()F

    move-result v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateMargin:F

    move/from16 v36, v0

    const/high16 v37, 0x4000

    mul-float v36, v36, v37

    add-float v8, v35, v36

    .line 586
    invoke-virtual/range {v30 .. v30}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->getTextWidth()F

    move-result v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateMargin:F

    move/from16 v36, v0

    const/high16 v37, 0x4000

    mul-float v36, v36, v37

    add-float v9, v35, v36

    .line 587
    invoke-virtual/range {v32 .. v32}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->getTextWidth()F

    move-result v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateMargin:F

    move/from16 v36, v0

    const/high16 v37, 0x4000

    mul-float v36, v36, v37

    add-float v12, v35, v36

    .line 588
    if-eqz v31, :cond_2

    .line 589
    invoke-virtual/range {v31 .. v31}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->getTextWidth()F

    move-result v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateMargin:F

    move/from16 v36, v0

    const/high16 v37, 0x4000

    mul-float v36, v36, v37

    add-float v11, v35, v36

    .line 593
    :cond_2
    cmpg-float v35, v8, v23

    if-gez v35, :cond_d

    .line 594
    move/from16 v13, v23

    .line 595
    add-int/lit8 v17, v17, -0x1

    .line 604
    :cond_3
    :goto_3
    cmpl-float v35, v13, v23

    if-eqz v35, :cond_4

    cmpl-float v35, v13, v6

    if-eqz v35, :cond_4

    cmpl-float v35, v13, v33

    if-eqz v35, :cond_4

    .line 606
    const-string v35, "ExpandCandidatesContainer"

    const-string v36, "The itemWidth is wrong, have a check!!!"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_4
    const/16 v35, 0x1

    move/from16 v0, v17

    move/from16 v1, v35

    if-ne v0, v1, :cond_11

    .line 612
    invoke-direct/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->isLandScape()Z

    move-result v35

    if-eqz v35, :cond_f

    .line 616
    cmpl-float v35, v13, v6

    if-nez v35, :cond_5

    cmpl-float v35, v11, v23

    if-lez v35, :cond_5

    .line 617
    float-to-int v0, v6

    move/from16 v35, v0

    move-object/from16 v0, v32

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setWidth(I)V

    .line 618
    const/16 v35, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 619
    const/16 v35, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 620
    add-float v34, v34, v23

    .line 624
    :cond_5
    cmpl-float v35, v13, v6

    if-nez v35, :cond_6

    cmpg-float v35, v11, v23

    if-gez v35, :cond_6

    .line 625
    float-to-int v0, v6

    move/from16 v35, v0

    move-object/from16 v0, v31

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setWidth(I)V

    .line 626
    mul-int/lit8 v35, v18, 0x2

    add-int/lit8 v35, v35, -0x2

    move-object/from16 v0, v20

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 627
    mul-int/lit8 v35, v18, 0x2

    add-int/lit8 v35, v35, -0x2

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 628
    add-float v34, v34, v23

    .line 632
    :cond_6
    cmpl-float v35, v13, v23

    if-nez v35, :cond_7

    cmpl-float v35, v9, v23

    if-lez v35, :cond_7

    .line 633
    move v13, v6

    .line 664
    :cond_7
    :goto_4
    float-to-int v0, v13

    move/from16 v35, v0

    move-object/from16 v0, v29

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setWidth(I)V

    .line 666
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateSeperatorWidth:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    add-float v13, v13, v35

    .line 671
    add-float v35, v34, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mContentWidth:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    cmpg-float v35, v35, v36

    if-lez v35, :cond_8

    if-nez v18, :cond_12

    .line 673
    :cond_8
    add-float v34, v34, v13

    .line 675
    add-int/lit8 v18, v18, 0x1

    .line 676
    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 678
    invoke-virtual/range {v20 .. v22}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 679
    move-object/from16 v15, v21

    .line 680
    move-object/from16 v31, v29

    .line 709
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    goto/16 :goto_2

    .line 533
    .end local v4           #cellParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v10           #itemPos:I
    .end local v20           #rowlayout:Landroid/widget/LinearLayout;
    .end local v21           #sepView:Landroid/view/View;
    .end local v22           #separatorParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v29           #tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    .end local v30           #tvNext:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    .end local v32           #tvRowStart:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x7f0a0060

    invoke-virtual/range {v35 .. v36}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v23

    .line 534
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x7f0a0061

    invoke-virtual/range {v35 .. v36}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 535
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x7f0a0062

    invoke-virtual/range {v35 .. v36}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v33

    .line 536
    const/16 v17, 0x4

    goto/16 :goto_1

    .line 539
    :cond_a
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v35

    sget-object v36, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_NORMAL:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_b

    .line 540
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x7f0a0029

    invoke-virtual/range {v35 .. v36}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v23

    .line 541
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x7f0a002a

    invoke-virtual/range {v35 .. v36}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 542
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x7f0a002b

    invoke-virtual/range {v35 .. v36}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v33

    .line 552
    :goto_6
    const/16 v17, 0x4

    goto/16 :goto_1

    .line 543
    :cond_b
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v35

    sget-object v36, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_c

    .line 544
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x7f0a005d

    invoke-virtual/range {v35 .. v36}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v23

    .line 545
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x7f0a005e

    invoke-virtual/range {v35 .. v36}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 546
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x7f0a005f

    invoke-virtual/range {v35 .. v36}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v33

    goto :goto_6

    .line 548
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x7f0a0043

    invoke-virtual/range {v35 .. v36}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v23

    .line 549
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x7f0a0044

    invoke-virtual/range {v35 .. v36}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 550
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x7f0a0045

    invoke-virtual/range {v35 .. v36}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v33

    goto :goto_6

    .line 596
    .restart local v4       #cellParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v10       #itemPos:I
    .restart local v20       #rowlayout:Landroid/widget/LinearLayout;
    .restart local v21       #sepView:Landroid/view/View;
    .restart local v22       #separatorParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v29       #tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    .restart local v30       #tvNext:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    .restart local v32       #tvRowStart:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    :cond_d
    cmpg-float v35, v8, v6

    if-gez v35, :cond_e

    .line 597
    move v13, v6

    .line 598
    add-int/lit8 v17, v17, -0x2

    goto/16 :goto_3

    .line 599
    :cond_e
    cmpg-float v35, v8, v33

    if-gez v35, :cond_3

    .line 600
    move/from16 v13, v33

    .line 601
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 638
    :cond_f
    cmpl-float v35, v13, v6

    if-nez v35, :cond_10

    if-eqz v31, :cond_10

    .line 639
    float-to-int v0, v6

    move/from16 v35, v0

    move-object/from16 v0, v31

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setWidth(I)V

    .line 640
    mul-int/lit8 v35, v18, 0x2

    add-int/lit8 v35, v35, -0x2

    move-object/from16 v0, v20

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 641
    mul-int/lit8 v35, v18, 0x2

    add-int/lit8 v35, v35, -0x2

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 642
    add-float v34, v34, v23

    .line 646
    :cond_10
    cmpl-float v35, v13, v23

    if-nez v35, :cond_7

    cmpl-float v35, v9, v23

    if-lez v35, :cond_7

    .line 647
    move v13, v6

    goto/16 :goto_4

    .line 649
    :cond_11
    const/16 v35, 0x2

    move/from16 v0, v17

    move/from16 v1, v35

    if-ne v0, v1, :cond_7

    .line 650
    invoke-direct/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->isLandScape()Z

    move-result v35

    if-eqz v35, :cond_7

    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v35

    sget-object v36, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_NORMAL:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_7

    .line 652
    cmpl-float v35, v13, v23

    if-nez v35, :cond_7

    cmpg-float v35, v12, v23

    if-gez v35, :cond_7

    cmpl-float v35, v11, v23

    if-lez v35, :cond_7

    .line 653
    float-to-int v0, v6

    move/from16 v35, v0

    move-object/from16 v0, v32

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setWidth(I)V

    .line 654
    move v13, v6

    .line 655
    const/16 v35, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 656
    const/16 v35, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 657
    add-float v34, v34, v23

    goto/16 :goto_4

    .line 683
    :cond_12
    if-eqz v15, :cond_13

    .line 684
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 688
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mContentWidth:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    sub-float v16, v35, v34

    .line 689
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateMarginExtra:F

    .line 693
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mLastRowlayout:Landroid/widget/LinearLayout;

    .line 694
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mLastRowStart:I

    .line 696
    add-int v19, v19, v18

    .line 698
    const/16 v18, 0x0

    .line 699
    const/16 v34, 0x0

    .line 700
    const/16 v16, 0x0

    .line 701
    invoke-direct/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->isLandScape()Z

    move-result v35

    if-eqz v35, :cond_14

    .line 702
    const/16 v17, 0x6

    .line 706
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->creatRowLayout()Landroid/widget/LinearLayout;

    move-result-object v20

    goto/16 :goto_5

    .line 704
    :cond_14
    const/16 v17, 0x4

    goto :goto_7

    .line 712
    .end local v21           #sepView:Landroid/view/View;
    .end local v29           #tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    .end local v30           #tvNext:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    .end local v32           #tvRowStart:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 714
    invoke-virtual/range {v20 .. v20}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v35

    if-lez v35, :cond_19

    .line 718
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mContentWidth:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    sub-float v35, v35, v34

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v36, v0

    div-float v35, v35, v36

    const/high16 v36, 0x4000

    div-float v16, v35, v36

    .line 719
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mContentWidth:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    sub-float v35, v35, v34

    cmpl-float v35, v35, v14

    if-lez v35, :cond_17

    .line 725
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateMarginExtra:F

    move/from16 v35, v0

    cmpg-float v35, v35, v16

    if-gtz v35, :cond_16

    .line 726
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateMarginExtra:F

    move/from16 v16, v0

    .line 736
    :cond_16
    :goto_8
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateMarginExtra:F

    .line 738
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mLastRowlayout:Landroid/widget/LinearLayout;

    .line 739
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mLastRowStart:I

    .line 747
    :goto_9
    const/16 v35, 0x1

    goto/16 :goto_0

    .line 728
    :cond_17
    const/16 v35, 0x1

    move/from16 v0, v18

    move/from16 v1, v35

    if-ne v0, v1, :cond_18

    .line 730
    const/16 v16, 0x0

    goto :goto_8

    .line 732
    :cond_18
    if-eqz v15, :cond_16

    .line 733
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_8

    .line 744
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateListLayout:Landroid/widget/LinearLayout;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mLastRowlayout:Landroid/widget/LinearLayout;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v35

    check-cast v35, Landroid/view/View;

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_9
.end method

.method private calculateRows()Z
    .locals 22

    .prologue
    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    const/16 v19, 0x0

    .line 468
    :goto_0
    return v19

    .line 335
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateListLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 337
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mLastRowlayout:Landroid/widget/LinearLayout;

    .line 338
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mLastRowStart:I

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getCurrentPageSize(I)I

    move-result v4

    .line 343
    .local v4, displayedNum:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v16

    .line 344
    .local v16, totalNum:I
    sub-int v5, v16, v4

    .line 347
    .local v5, expandNum:I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getMeasuredWidth()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getPaddingLeft()I

    move-result v20

    sub-int v19, v19, v20

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getPaddingRight()I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mContentWidth:I

    .line 348
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getMeasuredHeight()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getPaddingTop()I

    move-result v20

    sub-int v19, v19, v20

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getPaddingBottom()I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mContentHeight:I

    .line 349
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mContentWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateSeperatorWidth:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->MAX_ITEM_WIDTH:F

    .line 350
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a001e

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateMargin:F

    move/from16 v20, v0

    const/high16 v21, 0x4000

    mul-float v20, v20, v21

    add-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->MIN_ITEM_WIDTH:F

    .line 356
    if-gtz v5, :cond_1

    const/16 v19, 0x0

    goto/16 :goto_0

    .line 360
    :cond_1
    const/4 v9, 0x0

    .line 361
    .local v9, lastSepView:Landroid/view/View;
    move v12, v4

    .line 362
    .local v12, rowStart:I
    const/4 v11, 0x0

    .line 363
    .local v11, rowSize:I
    const/16 v18, 0x0

    .line 364
    .local v18, xPos:F
    const/4 v7, 0x0

    .line 365
    .local v7, itemWidth:F
    const/4 v10, 0x0

    .line 366
    .local v10, marginExtra:F
    const/4 v8, 0x0

    .line 369
    .local v8, lastItemWidth:F
    invoke-direct/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->creatRowLayout()Landroid/widget/LinearLayout;

    move-result-object v13

    .line 371
    .local v13, rowlayout:Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v19, -0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getHeightForCandidates()I

    move-result v20

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v3, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 374
    .local v3, cellParams:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateSeperatorWidth:I

    move/from16 v19, v0

    const/16 v20, -0x1

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v15, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 377
    .local v15, separatorParams:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v6, 0x0

    .line 378
    .local v6, itemPos:I
    :goto_1
    add-int v19, v12, v11

    move/from16 v0, v19

    move/from16 v1, v16

    if-ge v0, v1, :cond_7

    .line 379
    add-int v6, v12, v11

    .line 382
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->creatCellCandidateView(I)Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    move-result-object v17

    .line 383
    .local v17, tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    invoke-direct/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->creatSeparator()Lcom/samsung/inputmethod/candidate/SimeCandSepView;

    move-result-object v14

    .line 389
    .local v14, sepView:Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->getTextWidth()F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateMargin:F

    move/from16 v20, v0

    const/high16 v21, 0x4000

    mul-float v20, v20, v21

    add-float v7, v19, v20

    .line 391
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->MIN_ITEM_WIDTH:F

    move/from16 v19, v0

    cmpg-float v19, v7, v19

    if-gez v19, :cond_4

    .line 392
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->MIN_ITEM_WIDTH:F

    .line 396
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateSeperatorWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v7, v7, v19

    .line 400
    add-float v19, v18, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mContentWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpg-float v19, v19, v20

    if-lez v19, :cond_3

    if-nez v11, :cond_5

    .line 401
    :cond_3
    add-float v18, v18, v7

    .line 402
    move v8, v7

    .line 403
    add-int/lit8 v11, v11, 0x1

    .line 404
    move-object/from16 v0, v17

    invoke-virtual {v13, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    invoke-virtual {v13, v14, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 406
    move-object v9, v14

    goto :goto_1

    .line 393
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->MAX_ITEM_WIDTH:F

    move/from16 v19, v0

    cmpl-float v19, v7, v19

    if-lez v19, :cond_2

    .line 394
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->MAX_ITEM_WIDTH:F

    goto :goto_2

    .line 409
    :cond_5
    if-eqz v9, :cond_6

    .line 410
    invoke-virtual {v13, v9}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 413
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mContentWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v19, v19, v18

    int-to-float v0, v11

    move/from16 v20, v0

    div-float v19, v19, v20

    const/high16 v20, 0x4000

    div-float v10, v19, v20

    .line 414
    move-object/from16 v0, p0

    iput v10, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateMarginExtra:F

    .line 417
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->adjustCellPadding(Landroid/widget/LinearLayout;)V

    .line 420
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mLastRowlayout:Landroid/widget/LinearLayout;

    .line 421
    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mLastRowStart:I

    .line 427
    add-int/2addr v12, v11

    .line 428
    const/4 v11, 0x0

    .line 429
    const/16 v18, 0x0

    .line 430
    const/4 v10, 0x0

    .line 431
    invoke-direct/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->creatRowLayout()Landroid/widget/LinearLayout;

    move-result-object v13

    goto/16 :goto_1

    .line 435
    .end local v14           #sepView:Landroid/view/View;
    .end local v17           #tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    :cond_7
    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v19

    if-lez v19, :cond_b

    .line 439
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mContentWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v19, v19, v18

    int-to-float v0, v11

    move/from16 v20, v0

    div-float v19, v19, v20

    const/high16 v20, 0x4000

    div-float v10, v19, v20

    .line 440
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mContentWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v19, v19, v18

    cmpl-float v19, v19, v8

    if-lez v19, :cond_9

    .line 446
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateMarginExtra:F

    move/from16 v19, v0

    cmpg-float v19, v19, v10

    if-gtz v19, :cond_8

    .line 447
    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateMarginExtra:F

    .line 457
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iput v10, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateMarginExtra:F

    .line 458
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->adjustCellPadding(Landroid/widget/LinearLayout;)V

    .line 459
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mLastRowlayout:Landroid/widget/LinearLayout;

    .line 460
    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mLastRowStart:I

    .line 468
    :goto_4
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 449
    :cond_9
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v11, v0, :cond_a

    .line 451
    const/4 v10, 0x0

    goto :goto_3

    .line 453
    :cond_a
    if-eqz v9, :cond_8

    .line 454
    invoke-virtual {v13, v9}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_3

    .line 465
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateListLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mLastRowlayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    check-cast v19, Landroid/view/View;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_4
.end method

.method private creatCellCandidateView(I)Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    .locals 7
    .parameter "candIndexGlobal"

    .prologue
    const/16 v6, 0x11

    const/4 v5, 0x0

    .line 1214
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    if-nez v3, :cond_0

    const/4 v2, 0x0

    .line 1237
    :goto_0
    return-object v2

    .line 1215
    :cond_0
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v3, p1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->get(I)Ljava/lang/String;

    move-result-object v0

    .line 1216
    .local v0, candStr:Ljava/lang/String;
    new-instance v2, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;-><init>(Landroid/content/Context;)V

    .line 1218
    .local v2, tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    iget v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateTextSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v5, v3}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setTextSize(IF)V

    .line 1220
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080030

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 1222
    .local v1, csl:Landroid/content/res/ColorStateList;
    invoke-virtual {v2, v1}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1223
    const v3, 0x7f020025

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setBackgroundResource(I)V

    .line 1224
    invoke-virtual {v2, v6}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setGravity(I)V

    .line 1225
    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setSingleLine()V

    .line 1226
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1227
    iget v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateMargin:F

    float-to-int v3, v3

    iget v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateMargin:F

    float-to-int v4, v4

    invoke-virtual {v2, v3, v5, v4, v5}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setPadding(IIII)V

    .line 1229
    iget v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->MIN_ITEM_WIDTH:F

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setMinWidth(I)V

    .line 1230
    iget v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->MAX_ITEM_WIDTH:F

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setMaxWidth(I)V

    .line 1232
    invoke-virtual {v2, p0}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1233
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setClickable(Z)V

    .line 1234
    invoke-virtual {v2, v0, p1}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setText(Ljava/lang/CharSequence;I)V

    .line 1235
    invoke-virtual {v2, v6}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setGravity(I)V

    goto :goto_0
.end method

.method private creatRowLayout()Landroid/widget/LinearLayout;
    .locals 7

    .prologue
    .line 317
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 318
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f030018

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 321
    .local v2, rowContainer:Landroid/widget/LinearLayout;
    const v4, 0x7f0c0056

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 322
    .local v3, rowlayout:Landroid/widget/LinearLayout;
    const v4, 0x7f0c0057

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/candidate/SimeCandSepView;

    .line 323
    .local v0, horSep:Lcom/samsung/inputmethod/candidate/SimeCandSepView;
    sget-object v4, Lcom/samsung/inputmethod/candidate/SimeCandSepView$sepType;->HORIZON_EXPAND:Lcom/samsung/inputmethod/candidate/SimeCandSepView$sepType;

    iget v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateSeperatorColor:I

    iget v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateSeperatorWidth:I

    invoke-virtual {v0, v4, v5, v6}, Lcom/samsung/inputmethod/candidate/SimeCandSepView;->setAttribute(Lcom/samsung/inputmethod/candidate/SimeCandSepView$sepType;II)V

    .line 325
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 327
    return-object v3
.end method

.method private creatSeparator()Lcom/samsung/inputmethod/candidate/SimeCandSepView;
    .locals 4

    .prologue
    .line 1241
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeCandSepView;

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandSepView;-><init>(Landroid/content/Context;)V

    .line 1242
    .local v0, sepView:Lcom/samsung/inputmethod/candidate/SimeCandSepView;
    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandSepView$sepType;->VERTICAL:Lcom/samsung/inputmethod/candidate/SimeCandSepView$sepType;

    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateSeperatorColor:I

    iget v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateSeperatorWidth:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandSepView;->setAttribute(Lcom/samsung/inputmethod/candidate/SimeCandSepView$sepType;II)V

    .line 1243
    return-object v0
.end method

.method private isLandScape()Z
    .locals 2

    .prologue
    .line 751
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 752
    const/4 v0, 0x1

    .line 753
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCandidatesInfo(Lcom/samsung/inputmethod/candidate/SimeCandInfo;)V
    .locals 2
    .parameter "candsInfo"

    .prologue
    .line 1163
    if-nez p1, :cond_0

    .line 1177
    :goto_0
    return-void

    .line 1164
    :cond_0
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    .line 1166
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->candidatesFromApp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1167
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mRecommendedCandidateColor:I

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mNormalCandidateColor:I

    .line 1168
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mRecommendedCandidateTextSize:I

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateTextSize:I

    goto :goto_0

    .line 1169
    :cond_1
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v0

    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXXhSw360dpiScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1170
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mImeCandidateColor:I

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mNormalCandidateColor:I

    .line 1171
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mImeFlotingCandidateTextSize:I

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateTextSize:I

    goto :goto_0

    .line 1173
    :cond_2
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mImeCandidateColor:I

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mNormalCandidateColor:I

    .line 1174
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mImeCandidateTextSize:I

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateTextSize:I

    goto :goto_0
.end method


# virtual methods
.method public AppendExpandCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Z)V
    .locals 4
    .parameter "candsInfo"
    .parameter "isChinese"

    .prologue
    .line 1198
    const-wide/16 v2, 0x0

    .line 1199
    .local v2, timeStart:J
    const-wide/16 v0, 0x0

    .line 1200
    .local v0, timeEnd:J
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->setCandidatesInfo(Lcom/samsung/inputmethod/candidate/SimeCandInfo;)V

    .line 1201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1202
    if-eqz p2, :cond_0

    .line 1203
    invoke-direct {p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->AppendCHNRows()Z

    .line 1207
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1210
    return-void

    .line 1205
    :cond_0
    invoke-direct {p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->AppendRows()Z

    goto :goto_0
.end method

.method public activeCurseBackward()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1300
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v2, v1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getCurrentPageSize(I)I

    move-result v0

    .line 1301
    .local v0, displayedNum:I
    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mActiveCandidateIndex:I

    if-le v2, v0, :cond_0

    .line 1302
    iget v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mActiveCandidateIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mActiveCandidateIndex:I

    .line 1304
    const/4 v1, 0x1

    .line 1306
    :cond_0
    return v1
.end method

.method public activeCursorForward()Z
    .locals 2

    .prologue
    .line 1291
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mActiveCandidateIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1292
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mActiveCandidateIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mActiveCandidateIndex:I

    .line 1293
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->invalidate()V

    .line 1294
    const/4 v0, 0x1

    .line 1296
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActiveCandiatePosGlobal()I
    .locals 1

    .prologue
    .line 1282
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mActiveCandidateIndex:I

    return v0
.end method

.method public getCandidateListLayoutChildCount()I
    .locals 1

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public initialize(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/candidate/SimeCandViewListener;Lcom/samsung/inputmethod/candidate/SimeCandManager;)V
    .locals 4
    .parameter "ime"
    .parameter "cvListener"
    .parameter "candMgr"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    .line 180
    iput-object p2, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCvListener:Lcom/samsung/inputmethod/candidate/SimeCandViewListener;

    .line 181
    iput-object p3, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    .line 182
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 184
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f0c0028

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mScrollView:Landroid/widget/ScrollView;

    .line 185
    const v1, 0x7f0c0029

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateListLayout:Landroid/widget/LinearLayout;

    .line 187
    const v1, 0x7f080004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mImeCandidateColor:I

    .line 188
    const v1, 0x7f080008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mRecommendedCandidateColor:I

    .line 189
    const v1, 0x7f0202cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 190
    iget v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mImeCandidateColor:I

    iput v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mNormalCandidateColor:I

    .line 191
    const v1, 0x7f080005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mActiveCandidateColor:I

    .line 192
    const v1, 0x7f0a0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateMargin:F

    .line 194
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateMarginExtra:F

    .line 196
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXXhSw360dpiScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    const v1, 0x7f0a00a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mImeFlotingCandidateTextSize:I

    .line 199
    :cond_0
    const v1, 0x7f0a001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mImeCandidateTextSize:I

    .line 200
    iget v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mImeCandidateTextSize:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mRecommendedCandidateTextSize:I

    .line 201
    iget v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mImeCandidateTextSize:I

    iput v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateTextSize:I

    .line 203
    const v1, 0x7f080019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateSeperatorColor:I

    .line 204
    const v1, 0x7f0a003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateSeperatorWidth:I

    .line 205
    const-string v1, "ExpandCandidatesContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCandidateSeperatorWidth=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateSeperatorWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->invalidate()V

    .line 220
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->requestLayout()V

    .line 222
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v7, 0x4000

    .line 229
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 230
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v4

    sget-object v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_NORMAL:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v4, v5, :cond_3

    .line 231
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v1

    .line 232
    .local v1, measuredWidth:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getHeight()I

    move-result v5

    add-int v0, v4, v5

    .line 233
    .local v0, measuredHeight:I
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isTabBarshown()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 234
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getHeightForTabBar()I

    move-result v4

    add-int/2addr v0, v4

    .line 241
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isNeedAdjustExpd()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 242
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getHeightForCandidates()I

    move-result v4

    sub-int/2addr v0, v4

    .line 268
    :cond_1
    :goto_1
    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 269
    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 271
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 273
    return-void

    .line 235
    :cond_2
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_TOOLBAR:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteFSMode()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getToolBarContainer()Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getToolBarContainer()Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 239
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getHeightForToolBar()I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 244
    .end local v0           #measuredHeight:I
    .end local v1           #measuredWidth:I
    :cond_3
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v4

    sget-object v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v4, v5, :cond_5

    .line 245
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getExpandPYContainer()Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->getPaddingTop()I

    move-result v3

    .line 246
    .local v3, paddingTop:I
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getExpandPYContainer()Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->getPaddingBottom()I

    move-result v2

    .line 247
    .local v2, paddingBtm:I
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowWidth()I

    move-result v1

    .line 248
    .restart local v1       #measuredWidth:I
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingCoreHeight()I

    move-result v4

    sub-int/2addr v4, v3

    sub-int v0, v4, v2

    .line 249
    .restart local v0       #measuredHeight:I
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isTabBarshown()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 250
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getHeightForTabBar()I

    move-result v4

    add-int/2addr v0, v4

    .line 252
    :cond_4
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isNeedAdjustExpd()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 253
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingCandHeight()I

    move-result v4

    sub-int/2addr v0, v4

    goto/16 :goto_1

    .line 256
    .end local v0           #measuredHeight:I
    .end local v1           #measuredWidth:I
    .end local v2           #paddingBtm:I
    .end local v3           #paddingTop:I
    :cond_5
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0032

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    sub-int v1, v4, v5

    .line 257
    .restart local v1       #measuredWidth:I
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getOneHandContainer()Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->getHeight()I

    move-result v0

    .line 258
    .restart local v0       #measuredHeight:I
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isNeedAdjustExpd()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 259
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getHeightForCandidates()I

    move-result v4

    sub-int/2addr v0, v4

    goto/16 :goto_1

    .line 263
    .end local v0           #measuredHeight:I
    .end local v1           #measuredWidth:I
    :cond_6
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v1

    .line 264
    .restart local v1       #measuredWidth:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getSkbRowNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getSkbCoreHeight(I)I

    move-result v5

    add-int v0, v4, v5

    .restart local v0       #measuredHeight:I
    goto/16 :goto_1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "me"

    .prologue
    const/4 v4, -0x1

    .line 276
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 278
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 312
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 281
    :pswitch_0
    instance-of v2, p1, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 282
    check-cast v1, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    .line 283
    .local v1, tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->getIndex()I

    move-result v2

    iput v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mActiveCandidateIndex:I

    goto :goto_0

    .line 288
    .end local v1           #tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    :pswitch_1
    instance-of v2, p1, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 289
    check-cast v1, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    .line 290
    .restart local v1       #tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->getIndex()I

    move-result v2

    iget v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mActiveCandidateIndex:I

    if-eq v2, v3, :cond_0

    .line 291
    iput v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mActiveCandidateIndex:I

    goto :goto_0

    .line 295
    .end local v1           #tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    :cond_1
    iput v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mActiveCandidateIndex:I

    goto :goto_0

    .line 300
    :pswitch_2
    instance-of v2, p1, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 301
    check-cast v1, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    .line 302
    .restart local v1       #tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->getIndex()I

    move-result v2

    iget v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mActiveCandidateIndex:I

    if-ne v2, v3, :cond_0

    .line 303
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCvListener:Lcom/samsung/inputmethod/candidate/SimeCandViewListener;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->getIndex()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandViewListener;->onClickChoice(I)Z

    goto :goto_0

    .line 278
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandidateListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1264
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mActiveCandidateIndex:I

    .line 1267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mLastRowlayout:Landroid/widget/LinearLayout;

    .line 1268
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mLastRowStart:I

    .line 1269
    return-void
.end method

.method public setActiveCandidate(I)Z
    .locals 3
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 1272
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v2, v1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getCurrentPageSize(I)I

    move-result v0

    .line 1273
    .local v0, displayedNum:I
    add-int/lit8 v2, v0, -0x1

    if-le p1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 1277
    :cond_0
    :goto_0
    return v1

    .line 1276
    :cond_1
    iput p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mActiveCandidateIndex:I

    .line 1277
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public showExpandCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Z)V
    .locals 6
    .parameter "candsInfo"
    .parameter "isChinese"

    .prologue
    const/4 v5, 0x0

    .line 1180
    const-wide/16 v2, 0x0

    .line 1181
    .local v2, timeStart:J
    const-wide/16 v0, 0x0

    .line 1182
    .local v0, timeEnd:J
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->setCandidatesInfo(Lcom/samsung/inputmethod/candidate/SimeCandInfo;)V

    .line 1183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1184
    if-eqz p2, :cond_0

    .line 1185
    invoke-direct {p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->calculateCHNRows()Z

    .line 1190
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1192
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v4, v5, v5}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 1193
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->invalidate()V

    .line 1194
    return-void

    .line 1187
    :cond_0
    invoke-direct {p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->calculateRows()Z

    goto :goto_0
.end method
