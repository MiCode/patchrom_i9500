.class public Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;
.super Landroid/widget/RelativeLayout;
.source "SimeCandVerScrollContainer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_CANDIDATE_IN_ONEPAGE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SimeCandVerScrollContainer"

.field public static mNextBtn:Landroid/widget/ImageButton;

.field public static mPreviousBtn:Landroid/widget/ImageButton;


# instance fields
.field private MIN_ITEM_HEIGHT:F

.field private mCandManager:Lcom/samsung/inputmethod/candidate/SimeCandManager;

.field private mCandidateListLayout:Landroid/widget/LinearLayout;

.field private mCandidateMargin:F

.field private mCandidateSeperatorColor:I

.field private mCandidateSeperatorWidth:I

.field mCandidateTextColor:Landroid/content/res/ColorStateList;

.field private mCandidateTextSize:I

.field private mCandidateTextSize_small:I

.field private mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

.field private mCellParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mCvListener:Lcom/samsung/inputmethod/candidate/SimeCandViewListener;

.field private mFocusCandidateIndex:I

.field private mScrollView:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollView;

.field private mSelectIndex:I

.field private mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

.field private mSeparatorParams:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 139
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mScrollView:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollView;

    .line 95
    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandidateListLayout:Landroid/widget/LinearLayout;

    .line 97
    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCellParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 99
    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mSeparatorParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 105
    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandidateTextColor:Landroid/content/res/ColorStateList;

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandidateMargin:F

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mSelectIndex:I

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mFocusCandidateIndex:I

    .line 140
    return-void
.end method

.method private creatCellCandidateView(I)Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    .locals 6
    .parameter "candIndexGlobal"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 198
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 216
    :goto_0
    return-object v1

    .line 199
    :cond_0
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v2, p1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->get(I)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, candStr:Ljava/lang/String;
    new-instance v1, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;-><init>(Landroid/content/Context;)V

    .line 201
    .local v1, tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    invoke-virtual {v1, p0}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 202
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v5, :cond_1

    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v2, v3, :cond_2

    .line 203
    :cond_1
    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandidateTextSize_small:I

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setTextSize(IF)V

    .line 206
    :goto_1
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandidateTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 207
    const v2, 0x7f020025

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setBackgroundResource(I)V

    .line 208
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setGravity(I)V

    .line 209
    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setSingleLine()V

    .line 210
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 211
    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandidateMargin:F

    float-to-int v2, v2

    iget v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandidateMargin:F

    float-to-int v3, v3

    invoke-virtual {v1, v4, v2, v4, v3}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setPadding(IIII)V

    .line 213
    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->MIN_ITEM_HEIGHT:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setMinHeight(I)V

    .line 214
    invoke-virtual {v1, v5}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setClickable(Z)V

    .line 215
    invoke-virtual {v1, v0, p1}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setText(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 205
    :cond_2
    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandidateTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setTextSize(IF)V

    goto :goto_1
.end method

.method private creatSeparator()Landroid/view/View;
    .locals 4

    .prologue
    .line 220
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeCandSepView;

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandSepView;-><init>(Landroid/content/Context;)V

    .line 222
    .local v0, sepView:Lcom/samsung/inputmethod/candidate/SimeCandSepView;
    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandSepView$sepType;->HORIZON_34:Lcom/samsung/inputmethod/candidate/SimeCandSepView$sepType;

    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandidateSeperatorColor:I

    iget v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandidateSeperatorWidth:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandSepView;->setAttribute(Lcom/samsung/inputmethod/candidate/SimeCandSepView$sepType;II)V

    .line 223
    return-object v0
.end method

.method private setCandidateList()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 230
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    if-nez v5, :cond_1

    .line 252
    :cond_0
    :goto_0
    return v4

    .line 232
    :cond_1
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v2

    .line 236
    .local v2, totalNum:I
    if-lez v2, :cond_0

    .line 238
    const/4 v3, 0x0

    .line 239
    .local v3, tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    const/4 v1, 0x0

    .line 241
    .local v1, sepView:Landroid/view/View;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 243
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->creatCellCandidateView(I)Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    move-result-object v3

    .line 244
    invoke-direct {p0}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->creatSeparator()Landroid/view/View;

    move-result-object v1

    .line 245
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandidateListLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCellParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    add-int/lit8 v4, v2, -0x1

    if-ne v0, v4, :cond_2

    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_CANDIDATE_INDICATOR_SHOW:Z

    if-nez v4, :cond_2

    .line 241
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 250
    :cond_2
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandidateListLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mSeparatorParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 252
    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public activeCurseBackward()Z
    .locals 1

    .prologue
    .line 411
    const/4 v0, 0x1

    return v0
.end method

.method public activeCurseForward()Z
    .locals 1

    .prologue
    .line 417
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->updateArrowStatus()V

    .line 602
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 603
    return-void
.end method

.method public enableActiveHighlight(Z)V
    .locals 0
    .parameter "enableActiveHighlight"

    .prologue
    .line 277
    return-void
.end method

.method public getActiveCandiatePos()I
    .locals 1

    .prologue
    .line 426
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mFocusCandidateIndex:I

    return v0
.end method

.method public getArrowWidth()F
    .locals 1

    .prologue
    .line 281
    sget-object v0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mNextBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public initialize(Lcom/samsung/inputmethod/candidate/SimeCandViewListener;Lcom/samsung/inputmethod/comm/SimeBalloonHint;Lcom/samsung/inputmethod/candidate/SimeCandManager;)V
    .locals 8
    .parameter "cvListener"
    .parameter "balloonHint"
    .parameter "candMgr"

    .prologue
    const/4 v7, -0x1

    const/4 v5, -0x2

    const/4 v6, 0x0

    .line 145
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCvListener:Lcom/samsung/inputmethod/candidate/SimeCandViewListener;

    .line 146
    iput-object p3, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandManager:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    .line 147
    const v4, 0x7f0c0009

    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    sput-object v4, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mPreviousBtn:Landroid/widget/ImageButton;

    .line 148
    const v4, 0x7f0c000a

    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    sput-object v4, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mNextBtn:Landroid/widget/ImageButton;

    .line 149
    const v4, 0x7f0c000d

    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandidateListLayout:Landroid/widget/LinearLayout;

    .line 150
    const v4, 0x7f0c000c

    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollView;

    iput-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mScrollView:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollView;

    .line 153
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 155
    .local v3, r:Landroid/content/res/Resources;
    const v4, 0x7f0202cd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 156
    const v4, 0x7f0a001f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandidateTextSize:I

    .line 157
    const v4, 0x7f0a0020

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandidateTextSize_small:I

    .line 158
    const v4, 0x7f080030

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandidateTextColor:Landroid/content/res/ColorStateList;

    .line 159
    const v4, 0x7f0a0023

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iput v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->MIN_ITEM_HEIGHT:F

    .line 161
    const v4, 0x7f080019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandidateSeperatorColor:I

    .line 162
    const v4, 0x7f0a003f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandidateSeperatorWidth:I

    .line 173
    invoke-virtual {p0, v5, v5}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->measure(II)V

    .line 175
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->invalidate()V

    .line 176
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->requestLayout()V

    .line 179
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandidateListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 181
    .local v0, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandidateSeperatorWidth:I

    .line 182
    .local v2, nSeperatorHeight:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x4

    sub-int v1, v4, v2

    .line 184
    .local v1, nCellItemHeight:I
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v1, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCellParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 187
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mSeparatorParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 189
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/16 v11, 0x1e0

    const/16 v10, 0x140

    const/16 v9, 0xa0

    const/16 v8, 0x78

    const/4 v7, 0x4

    .line 286
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v2

    .line 287
    .local v2, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v1

    .line 288
    .local v1, dim:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 289
    .local v0, config:Landroid/content/res/Configuration;
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v5

    div-int/lit8 v4, v5, 0x5

    .line 290
    .local v4, measuredWidth:I
    invoke-virtual {v2, v7}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getSkbHeight(I)I

    move-result v3

    .line 292
    .local v3, measuredHeight:I
    iget v5, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_10

    .line 293
    if-eq v1, v9, :cond_0

    if-ne v1, v8, :cond_4

    .line 294
    :cond_0
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3e3126e9

    mul-float/2addr v5, v6

    float-to-int v4, v5

    .line 380
    :cond_1
    :goto_0
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_ONE_HAND:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v5, v6, :cond_23

    .line 381
    invoke-virtual {v2, v7}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getOneHandCoreHeight(I)I

    move-result v3

    .line 396
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandManager:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandManager:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isTabBarshown()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 397
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getHeightForTabBar()I

    move-result v5

    add-int/2addr v3, v5

    .line 400
    :cond_3
    const/high16 v5, 0x4000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 402
    const/high16 v5, 0x4000

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 404
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 407
    return-void

    .line 295
    :cond_4
    if-ne v1, v10, :cond_8

    .line 296
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXhSw400dpiScreen()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 297
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v5, v6, :cond_5

    .line 298
    const/16 v4, 0x74

    goto :goto_0

    .line 300
    :cond_5
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x5e

    div-int/lit16 v4, v5, 0x258

    goto :goto_0

    .line 302
    :cond_6
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v5, v6, :cond_7

    .line 303
    const/16 v4, 0x69

    goto :goto_0

    .line 305
    :cond_7
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x62

    div-int/lit16 v4, v5, 0x258

    goto :goto_0

    .line 306
    :cond_8
    if-ne v1, v11, :cond_c

    .line 307
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXXhSw360dpiScreen()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 308
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v5, v6, :cond_9

    .line 309
    const/16 v4, 0xa0

    goto :goto_0

    .line 311
    :cond_9
    const/16 v4, 0x140

    goto :goto_0

    .line 312
    :cond_a
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v5, v6, :cond_b

    .line 313
    const/16 v4, 0xaa

    goto :goto_0

    .line 315
    :cond_b
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x62

    div-int/lit16 v4, v5, 0x258

    goto/16 :goto_0

    .line 316
    :cond_c
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isHSw240dpiScreen()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 317
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v5, v6, :cond_d

    .line 318
    const/16 v4, 0x48

    goto/16 :goto_0

    .line 321
    :cond_d
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0xf

    div-int/lit8 v5, v5, 0x64

    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getSkbPaddingRect()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int v4, v5, v6

    goto/16 :goto_0

    .line 323
    :cond_e
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isHSw270dpiScreen()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 324
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x10

    div-int/lit8 v4, v5, 0x64

    goto/16 :goto_0

    .line 326
    :cond_f
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0xf

    div-int/lit8 v5, v5, 0x64

    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getSkbPaddingRect()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int v4, v5, v6

    goto/16 :goto_0

    .line 328
    :cond_10
    iget v5, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 329
    if-ne v1, v9, :cond_11

    .line 330
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x3a

    div-int/lit16 v4, v5, 0x140

    goto/16 :goto_0

    .line 331
    :cond_11
    if-ne v1, v8, :cond_12

    .line 332
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2a

    div-int/lit16 v4, v5, 0xf0

    goto/16 :goto_0

    .line 333
    :cond_12
    if-ne v1, v10, :cond_19

    .line 334
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXhSw360dpiScreen()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 335
    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_ONE_HAND_FEATURE:Z

    if-eqz v5, :cond_13

    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_ONE_HAND:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v5, v6, :cond_13

    .line 336
    const/16 v4, 0x6a

    goto/16 :goto_0

    .line 337
    :cond_13
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v5, v6, :cond_14

    .line 338
    const/16 v4, 0x69

    goto/16 :goto_0

    .line 340
    :cond_14
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x41

    div-int/lit16 v4, v5, 0x168

    goto/16 :goto_0

    .line 341
    :cond_15
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXhSw400dpiScreen()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 343
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_ONE_HAND:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v5, v6, :cond_16

    .line 344
    const/16 v4, 0x74

    goto/16 :goto_0

    .line 345
    :cond_16
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v5, v6, :cond_17

    .line 346
    const/16 v4, 0x74

    goto/16 :goto_0

    .line 348
    :cond_17
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x46

    div-int/lit16 v4, v5, 0x190

    goto/16 :goto_0

    .line 350
    :cond_18
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x16

    div-int/lit8 v4, v5, 0x64

    goto/16 :goto_0

    .line 351
    :cond_19
    if-ne v1, v11, :cond_1c

    .line 352
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXXhSw360dpiScreen()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 353
    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_ONE_HAND_FEATURE:Z

    if-eqz v5, :cond_1a

    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_ONE_HAND:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v5, v6, :cond_1a

    .line 354
    const/16 v4, 0x6a

    goto/16 :goto_0

    .line 355
    :cond_1a
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v5, v6, :cond_1b

    .line 356
    const/16 v4, 0xa0

    goto/16 :goto_0

    .line 358
    :cond_1b
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x3a

    div-int/lit16 v4, v5, 0x140

    goto/16 :goto_0

    .line 359
    :cond_1c
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isHSw240dpiScreen()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 360
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_ONE_HAND:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v5, v6, :cond_1d

    .line 361
    const/16 v4, 0x48

    goto/16 :goto_0

    .line 362
    :cond_1d
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v5, v6, :cond_1e

    .line 363
    const/16 v4, 0x48

    goto/16 :goto_0

    .line 366
    :cond_1e
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x3a

    div-int/lit16 v4, v5, 0x140

    goto/16 :goto_0

    .line 367
    :cond_1f
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->ishSw360dpiScreen()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 368
    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_ONE_HAND_FEATURE:Z

    if-eqz v5, :cond_20

    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_ONE_HAND:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v5, v6, :cond_20

    .line 369
    const/16 v4, 0x6a

    goto/16 :goto_0

    .line 370
    :cond_20
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v5, v6, :cond_21

    .line 371
    const/16 v4, 0x50

    goto/16 :goto_0

    .line 373
    :cond_21
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x3a

    div-int/lit16 v4, v5, 0x140

    goto/16 :goto_0

    .line 376
    :cond_22
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x3a

    div-int/lit16 v4, v5, 0x140

    goto/16 :goto_0

    .line 382
    :cond_23
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v5, v6, :cond_2

    .line 383
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isHSw240dpiScreen()Z

    move-result v5

    if-eqz v5, :cond_24

    .line 385
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingCoreHeight()I

    move-result v5

    mul-int/lit8 v5, v5, 0x69

    div-int/lit8 v3, v5, 0x64

    goto/16 :goto_1

    .line 386
    :cond_24
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXhSw400dpiScreen()Z

    move-result v5

    if-eqz v5, :cond_25

    .line 387
    const/16 v3, 0x195

    goto/16 :goto_1

    .line 388
    :cond_25
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->ishSw360dpiScreen()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 389
    const/16 v3, 0x118

    goto/16 :goto_1

    .line 392
    :cond_26
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingCoreHeight()I

    move-result v3

    goto/16 :goto_1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 552
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 554
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 595
    :cond_0
    :goto_0
    return v6

    .line 557
    :pswitch_0
    instance-of v3, p1, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 559
    check-cast v2, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    .line 560
    .local v2, tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->getIndex()I

    move-result v3

    iput v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mSelectIndex:I

    goto :goto_0

    .line 565
    .end local v2           #tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    :pswitch_1
    instance-of v3, p1, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    if-eqz v3, :cond_1

    move-object v2, p1

    .line 566
    check-cast v2, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    .line 567
    .restart local v2       #tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->getIndex()I

    move-result v3

    iget v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mSelectIndex:I

    if-eq v3, v4, :cond_0

    .line 568
    iput v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mSelectIndex:I

    goto :goto_0

    .line 572
    .end local v2           #tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    :cond_1
    iput v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mSelectIndex:I

    goto :goto_0

    .line 578
    :pswitch_2
    instance-of v3, p1, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 579
    check-cast v2, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    .line 580
    .restart local v2       #tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->getIndex()I

    move-result v3

    iget v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mSelectIndex:I

    if-ne v3, v4, :cond_0

    .line 582
    iget v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mFocusCandidateIndex:I

    if-ltz v3, :cond_2

    .line 584
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandidateListLayout:Landroid/widget/LinearLayout;

    iget v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mFocusCandidateIndex:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 585
    .local v1, childView:Landroid/view/View;
    if-eqz v1, :cond_2

    instance-of v3, v1, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    if-eqz v3, :cond_2

    .line 586
    invoke-virtual {v1, v6}, Landroid/view/View;->setSelected(Z)V

    .line 588
    .end local v1           #childView:Landroid/view/View;
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setSelected(Z)V

    .line 589
    iget v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mSelectIndex:I

    iput v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mFocusCandidateIndex:I

    .line 590
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCvListener:Lcom/samsung/inputmethod/candidate/SimeCandViewListener;

    iget v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mSelectIndex:I

    invoke-interface {v3, v4}, Lcom/samsung/inputmethod/candidate/SimeCandViewListener;->onClickChoice(I)Z

    goto :goto_0

    .line 554
    nop

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
    .line 547
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mFocusCandidateIndex:I

    .line 548
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandidateListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 549
    return-void
.end method

.method public setActiveCand(I)V
    .locals 0
    .parameter "activeCandIndex"

    .prologue
    .line 421
    iput p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mFocusCandidateIndex:I

    .line 422
    return-void
.end method

.method public setCandidateViewListener(Lcom/samsung/inputmethod/candidate/SimeCandViewListener;)V
    .locals 0
    .parameter "cvListener"

    .prologue
    .line 193
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCvListener:Lcom/samsung/inputmethod/candidate/SimeCandViewListener;

    .line 194
    return-void
.end method

.method public showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Z)V
    .locals 3
    .parameter "candsInfo"
    .parameter "enableActiveHighlight"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 258
    if-nez p1, :cond_0

    .line 272
    :goto_0
    return-void

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->reset()V

    .line 262
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    .line 264
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->isCandidatesListEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    sget-object v0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mPreviousBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 266
    sget-object v0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mNextBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 269
    :cond_1
    invoke-direct {p0}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->setCandidateList()Z

    .line 270
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mScrollView:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollView;

    invoke-virtual {v0, v1, v1}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollView;->scrollTo(II)V

    .line 271
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->invalidate()V

    goto :goto_0
.end method

.method public updateArrowStatus()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 432
    sget-boolean v6, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_CANDIDATE_INDICATOR_SHOW:Z

    if-nez v6, :cond_1

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mScrollView:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollView;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollView;->getScrollY()I

    move-result v5

    .line 435
    .local v5, scrollViewTopEdge:I
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mScrollView:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollView;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollView;->getHeight()I

    move-result v6

    add-int v4, v5, v6

    .line 437
    .local v4, scrollViewBottonEdge:I
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandidateListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getTop()I

    move-result v1

    .line 438
    .local v1, candidatesViewTop:I
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandidateListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v0

    .line 440
    .local v0, candidatesViewBotton:I
    sget-object v6, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mNextBtn:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v3

    .line 442
    .local v3, nextArrowCurrentVisibility:I
    if-lt v4, v0, :cond_3

    if-nez v3, :cond_3

    .line 444
    sget-object v6, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mNextBtn:Landroid/widget/ImageButton;

    invoke-virtual {v6, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 452
    :cond_2
    :goto_1
    sget-object v6, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mPreviousBtn:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v2

    .line 454
    .local v2, leftArrowCurrentVisibility:I
    if-gt v5, v1, :cond_4

    if-nez v2, :cond_4

    .line 456
    sget-object v6, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mPreviousBtn:Landroid/widget/ImageButton;

    invoke-virtual {v6, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 446
    .end local v2           #leftArrowCurrentVisibility:I
    :cond_3
    if-ge v4, v0, :cond_2

    if-eqz v3, :cond_2

    .line 448
    sget-object v6, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mNextBtn:Landroid/widget/ImageButton;

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    .line 458
    .restart local v2       #leftArrowCurrentVisibility:I
    :cond_4
    if-le v5, v1, :cond_0

    if-eqz v2, :cond_0

    .line 460
    sget-object v6, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mPreviousBtn:Landroid/widget/ImageButton;

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateFocusTextView()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 467
    iget v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mFocusCandidateIndex:I

    .line 468
    .local v1, oldFocus:I
    const/4 v0, 0x0

    .line 470
    .local v0, childView:Landroid/view/View;
    iget v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mFocusCandidateIndex:I

    if-ltz v6, :cond_0

    .line 472
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandidateListLayout:Landroid/widget/LinearLayout;

    iget v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mFocusCandidateIndex:I

    mul-int/lit8 v7, v7, 0x2

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 474
    if-eqz v0, :cond_0

    instance-of v6, v0, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    if-eqz v6, :cond_0

    .line 476
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mScrollView:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollView;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollView;->getScrollY()I

    move-result v5

    .line 477
    .local v5, scrollViewTopEdge:I
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mScrollView:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollView;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollView;->getHeight()I

    move-result v6

    add-int v4, v5, v6

    .line 479
    .local v4, scrollViewBottomEdge:I
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    .line 480
    .local v3, posTop:I
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 482
    .local v2, posBottom:I
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v3

    if-ge v6, v5, :cond_3

    .line 483
    iget v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mFocusCandidateIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mFocusCandidateIndex:I

    .line 484
    invoke-virtual {v0, v8}, Landroid/view/View;->setSelected(Z)V

    .line 495
    .end local v2           #posBottom:I
    .end local v3           #posTop:I
    .end local v4           #scrollViewBottomEdge:I
    .end local v5           #scrollViewTopEdge:I
    :cond_0
    :goto_0
    iget v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mFocusCandidateIndex:I

    if-ltz v6, :cond_2

    .line 496
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandidateListLayout:Landroid/widget/LinearLayout;

    iget v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mFocusCandidateIndex:I

    mul-int/lit8 v7, v7, 0x2

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 498
    if-eqz v0, :cond_1

    instance-of v6, v0, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    if-eqz v6, :cond_1

    .line 499
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/view/View;->setSelected(Z)V

    .line 501
    :cond_1
    iget v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mFocusCandidateIndex:I

    if-eq v1, v6, :cond_2

    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCvListener:Lcom/samsung/inputmethod/candidate/SimeCandViewListener;

    if-eqz v6, :cond_2

    .line 502
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCvListener:Lcom/samsung/inputmethod/candidate/SimeCandViewListener;

    iget v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mFocusCandidateIndex:I

    invoke-interface {v6, v7}, Lcom/samsung/inputmethod/candidate/SimeCandViewListener;->onClickChoice(I)Z

    .line 504
    :cond_2
    return-void

    .line 487
    .restart local v2       #posBottom:I
    .restart local v3       #posTop:I
    .restart local v4       #scrollViewBottomEdge:I
    .restart local v5       #scrollViewTopEdge:I
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v2, v6

    if-le v6, v4, :cond_0

    iget v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mFocusCandidateIndex:I

    if-eqz v6, :cond_0

    .line 488
    iget v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mFocusCandidateIndex:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mFocusCandidateIndex:I

    .line 489
    invoke-virtual {v0, v8}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0
.end method

.method public updateFocusTextView(I)V
    .locals 10
    .parameter "index"

    .prologue
    const/4 v9, 0x0

    .line 508
    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mFocusCandidateIndex:I

    .line 509
    .local v2, oldFocus:I
    const/4 v0, 0x0

    .line 511
    .local v0, childView:Landroid/view/View;
    iput p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mFocusCandidateIndex:I

    .line 512
    iget v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mFocusCandidateIndex:I

    if-eq v2, v7, :cond_0

    .line 513
    if-ltz v2, :cond_0

    .line 514
    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandidateListLayout:Landroid/widget/LinearLayout;

    mul-int/lit8 v8, v2, 0x2

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 515
    if-eqz v0, :cond_0

    instance-of v7, v0, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    if-eqz v7, :cond_0

    .line 516
    invoke-virtual {v0, v9}, Landroid/view/View;->setSelected(Z)V

    .line 520
    :cond_0
    iget v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mFocusCandidateIndex:I

    if-ltz v7, :cond_3

    .line 521
    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mCandidateListLayout:Landroid/widget/LinearLayout;

    iget v8, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mFocusCandidateIndex:I

    mul-int/lit8 v8, v8, 0x2

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 522
    if-eqz v0, :cond_3

    instance-of v7, v0, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    if-eqz v7, :cond_3

    .line 524
    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mScrollView:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollView;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollView;->getScrollY()I

    move-result v6

    .line 525
    .local v6, scrollViewTopEdge:I
    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mScrollView:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollView;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollView;->getHeight()I

    move-result v7

    add-int v5, v6, v7

    .line 526
    .local v5, scrollViewBottomEdge:I
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    .line 527
    .local v4, posTop:I
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 528
    .local v3, posBottom:I
    const/4 v1, 0x0

    .line 530
    .local v1, dy:I
    if-ge v4, v6, :cond_4

    .line 531
    sub-int v1, v4, v6

    .line 537
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 538
    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->mScrollView:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollView;

    invoke-virtual {v7, v9, v1}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollView;->scrollBy(II)V

    .line 540
    :cond_2
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/view/View;->setSelected(Z)V

    .line 543
    .end local v1           #dy:I
    .end local v3           #posBottom:I
    .end local v4           #posTop:I
    .end local v5           #scrollViewBottomEdge:I
    .end local v6           #scrollViewTopEdge:I
    :cond_3
    return-void

    .line 533
    .restart local v1       #dy:I
    .restart local v3       #posBottom:I
    .restart local v4       #posTop:I
    .restart local v5       #scrollViewBottomEdge:I
    .restart local v6       #scrollViewTopEdge:I
    :cond_4
    if-le v3, v5, :cond_1

    .line 534
    sub-int v1, v3, v5

    goto :goto_0
.end method
