.class public Lcom/samsung/inputmethod/comm/SimeScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "SimeScrollView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final DEBUG:Z = false

.field public static final INVALIDVALUE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SimeScrollView"


# instance fields
.field private mActiveIndex:I

.field private mCellMargin:F

.field private mCellParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mFocusCellview:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

.field private mFocusTextColor:Landroid/content/res/ColorStateList;

.field private mIsDisplaySeparator:Z

.field private mScrollLayout:Landroid/widget/LinearLayout;

.field private mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

.field private mSeparatorParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mSeperatorColor:I

.field private mSeperatorDirection:Lcom/samsung/inputmethod/candidate/SimeCandSepView$sepType;

.field private mSeperatorWidth:I

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextSize:I

.field private mTextSize_small:I

.field private mViewCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 103
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    iput-object v1, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mScrollLayout:Landroid/widget/LinearLayout;

    .line 78
    iput-object v1, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 80
    iput-object v1, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mFocusTextColor:Landroid/content/res/ColorStateList;

    .line 82
    iput v2, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mViewCount:I

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mIsDisplaySeparator:Z

    .line 86
    sget-object v0, Lcom/samsung/inputmethod/candidate/SimeCandSepView$sepType;->VERTICAL:Lcom/samsung/inputmethod/candidate/SimeCandSepView$sepType;

    iput-object v0, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mSeperatorDirection:Lcom/samsung/inputmethod/candidate/SimeCandSepView$sepType;

    .line 88
    iput v2, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mSeperatorColor:I

    .line 89
    iput v2, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mSeperatorWidth:I

    .line 93
    iput-object v1, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mCellParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 95
    iput-object v1, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mSeparatorParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 97
    iput-object v1, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mFocusCellview:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mActiveIndex:I

    .line 104
    return-void
.end method

.method private creatSeparator()Landroid/view/View;
    .locals 4

    .prologue
    .line 182
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeCandSepView;

    iget-object v1, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandSepView;-><init>(Landroid/content/Context;)V

    .line 183
    .local v0, sepView:Lcom/samsung/inputmethod/candidate/SimeCandSepView;
    iget-object v1, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mSeperatorDirection:Lcom/samsung/inputmethod/candidate/SimeCandSepView$sepType;

    iget v2, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mSeperatorColor:I

    iget v3, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mSeperatorWidth:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandSepView;->setAttribute(Lcom/samsung/inputmethod/candidate/SimeCandSepView$sepType;II)V

    .line 184
    return-object v0
.end method

.method private initCellView(Ljava/lang/String;Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;)V
    .locals 3
    .parameter "str"
    .parameter "cellview"

    .prologue
    const/4 v2, 0x0

    .line 167
    iget v0, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mViewCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mViewCount:I

    invoke-virtual {p2, p1, v0}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setText(Ljava/lang/CharSequence;I)V

    .line 168
    invoke-virtual {p2, p0}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 169
    iget v0, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mTextSize:I

    int-to-float v0, v0

    invoke-virtual {p2, v2, v0}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setTextSize(IF)V

    .line 170
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p2, v0}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 171
    const v0, 0x7f020025

    invoke-virtual {p2, v0}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setBackgroundResource(I)V

    .line 172
    const/16 v0, 0x11

    invoke-virtual {p2, v0}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setGravity(I)V

    .line 173
    invoke-virtual {p2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setSingleLine()V

    .line 174
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p2, v0}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 175
    iget v0, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mCellMargin:F

    float-to-int v0, v0

    iget v1, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mCellMargin:F

    float-to-int v1, v1

    invoke-virtual {p2, v0, v2, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setPadding(IIII)V

    .line 177
    invoke-virtual {p2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->getTextWidth()F

    move-result v0

    iget v1, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mCellMargin:F

    const/high16 v2, 0x4000

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setWidth(I)V

    .line 178
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setClickable(Z)V

    .line 179
    return-void
.end method

.method private initLayoutParams()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 138
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mSeperatorDirection:Lcom/samsung/inputmethod/candidate/SimeCandSepView$sepType;

    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandSepView$sepType;->VERTICAL_PINYIN:Lcom/samsung/inputmethod/candidate/SimeCandSepView$sepType;

    if-ne v0, v1, :cond_0

    .line 139
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mSeperatorWidth:I

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v0, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mSeparatorParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 145
    :goto_0
    return-void

    .line 142
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mSeperatorWidth:I

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v0, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mSeparatorParams:Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_0
.end method

.method private setSeperatorAttribute(Lcom/samsung/inputmethod/candidate/SimeCandSepView$sepType;II)V
    .locals 0
    .parameter "type"
    .parameter "color"
    .parameter "width"

    .prologue
    .line 148
    iput p2, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mSeperatorColor:I

    .line 149
    iput p3, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mSeperatorWidth:I

    .line 150
    iput-object p1, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mSeperatorDirection:Lcom/samsung/inputmethod/candidate/SimeCandSepView$sepType;

    .line 151
    invoke-direct {p0}, Lcom/samsung/inputmethod/comm/SimeScrollView;->initLayoutParams()V

    .line 152
    return-void
.end method


# virtual methods
.method public addText(Ljava/lang/String;Z)Z
    .locals 4
    .parameter "str"
    .parameter "focus"

    .prologue
    .line 188
    if-nez p1, :cond_0

    .line 189
    const/4 v2, 0x0

    .line 205
    :goto_0
    return v2

    .line 191
    :cond_0
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    iget-object v2, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;-><init>(Landroid/content/Context;)V

    .line 192
    .local v0, cellview:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    invoke-direct {p0, p1, v0}, Lcom/samsung/inputmethod/comm/SimeScrollView;->initCellView(Ljava/lang/String;Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;)V

    .line 194
    iget-object v2, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mScrollLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mCellParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    iget-boolean v2, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mIsDisplaySeparator:Z

    if-eqz v2, :cond_1

    .line 196
    invoke-direct {p0}, Lcom/samsung/inputmethod/comm/SimeScrollView;->creatSeparator()Landroid/view/View;

    move-result-object v1

    .line 197
    .local v1, sepView:Landroid/view/View;
    iget-object v2, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mScrollLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mSeparatorParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    .end local v1           #sepView:Landroid/view/View;
    :cond_1
    if-eqz p2, :cond_2

    .line 201
    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->getIndex()I

    move-result v2

    iput v2, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mActiveIndex:I

    .line 202
    iput-object v0, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mFocusCellview:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    .line 205
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getFocusCellView()Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mFocusCellview:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    return-object v0
.end method

.method public getSelectIndex()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mActiveIndex:I

    return v0
.end method

.method public initialize(Landroid/widget/LinearLayout;Z)V
    .locals 5
    .parameter "linearLayout"
    .parameter "isDisplaySeparator"

    .prologue
    const v2, 0x7f080030

    .line 108
    invoke-virtual {p0}, Lcom/samsung/inputmethod/comm/SimeScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 110
    .local v0, r:Landroid/content/res/Resources;
    iput-object p1, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mScrollLayout:Landroid/widget/LinearLayout;

    .line 111
    const v1, 0x7f0202cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 112
    const v1, 0x7f0a001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mTextSize:I

    .line 113
    const v1, 0x7f0a0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mTextSize_small:I

    .line 114
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 115
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mFocusTextColor:Landroid/content/res/ColorStateList;

    .line 116
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mViewCount:I

    .line 118
    const v1, 0x7f0a0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mCellMargin:F

    .line 120
    iput-boolean p2, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mIsDisplaySeparator:Z

    .line 122
    const v1, 0x7f080019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mSeperatorColor:I

    .line 123
    const v1, 0x7f0a003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mSeperatorWidth:I

    .line 125
    iget-object v1, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mScrollLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mScrollLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 126
    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandSepView$sepType;->VERTICAL_PINYIN:Lcom/samsung/inputmethod/candidate/SimeCandSepView$sepType;

    iput-object v1, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mSeperatorDirection:Lcom/samsung/inputmethod/candidate/SimeCandSepView$sepType;

    .line 131
    :goto_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v1, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mCellParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 133
    invoke-direct {p0}, Lcom/samsung/inputmethod/comm/SimeScrollView;->initLayoutParams()V

    .line 135
    return-void

    .line 128
    :cond_0
    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandSepView$sepType;->HORIZON_EXPAND:Lcom/samsung/inputmethod/candidate/SimeCandSepView$sepType;

    iput-object v1, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mSeperatorDirection:Lcom/samsung/inputmethod/candidate/SimeCandSepView$sepType;

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "me"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 210
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 212
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 278
    :cond_0
    :goto_0
    return v5

    .line 216
    :pswitch_0
    instance-of v2, p1, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 218
    check-cast v1, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    .line 220
    .local v1, tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->getIndex()I

    move-result v2

    iput v2, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mActiveIndex:I

    goto :goto_0

    .line 224
    .end local v1           #tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    :cond_1
    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mActiveIndex:I

    goto :goto_0

    .line 230
    :pswitch_1
    instance-of v2, p1, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    if-eqz v2, :cond_2

    move-object v1, p1

    .line 232
    check-cast v1, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    .line 234
    .restart local v1       #tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->getIndex()I

    move-result v2

    iget v3, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mActiveIndex:I

    if-eq v2, v3, :cond_0

    .line 236
    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mActiveIndex:I

    goto :goto_0

    .line 244
    .end local v1           #tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    :cond_2
    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mActiveIndex:I

    goto :goto_0

    .line 253
    :pswitch_2
    instance-of v2, p1, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 255
    check-cast v1, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    .line 257
    .restart local v1       #tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    iget-object v2, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mFocusCellview:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mFocusCellview:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    if-eq v2, v1, :cond_3

    .line 258
    iget-object v2, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mFocusCellview:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    invoke-virtual {v2, v5}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setSelected(Z)V

    .line 260
    :cond_3
    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->getIndex()I

    move-result v2

    iget v3, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mActiveIndex:I

    if-eq v2, v3, :cond_4

    .line 261
    iput v4, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mActiveIndex:I

    .line 262
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mFocusCellview:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    goto :goto_0

    .line 265
    :cond_4
    iput-object v1, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mFocusCellview:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    goto :goto_0

    .line 212
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
    .line 314
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mViewCount:I

    .line 315
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mActiveIndex:I

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mFocusCellview:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    .line 317
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mScrollLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 318
    return-void
.end method

.method public setCellLayout(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 0
    .parameter "cellParams"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mCellParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 160
    return-void
.end method

.method public setCellMargin(F)V
    .locals 0
    .parameter "cellMargin"

    .prologue
    .line 163
    iput p1, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mCellMargin:F

    .line 164
    return-void
.end method

.method public setSeperatorLayout(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 0
    .parameter "separatorParams"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mSeparatorParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 156
    return-void
.end method

.method public updateFocusView()V
    .locals 7

    .prologue
    .line 288
    iget-object v5, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mFocusCellview:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    if-eqz v5, :cond_2

    .line 289
    invoke-virtual {p0}, Lcom/samsung/inputmethod/comm/SimeScrollView;->getScrollX()I

    move-result v3

    .line 290
    .local v3, scrollViewLeft:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/comm/SimeScrollView;->getWidth()I

    move-result v5

    add-int v4, v3, v5

    .line 291
    .local v4, scrollViewRight:I
    iget-object v5, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mFocusCellview:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->getLeft()I

    move-result v1

    .line 292
    .local v1, posLeft:I
    iget-object v5, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mFocusCellview:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->getRight()I

    move-result v2

    .line 293
    .local v2, posRight:I
    const/4 v0, 0x0

    .line 298
    .local v0, dx:I
    if-ge v1, v3, :cond_3

    .line 299
    sub-int v0, v1, v3

    .line 307
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 308
    const/4 v5, 0x0

    invoke-virtual {p0, v0, v5}, Lcom/samsung/inputmethod/comm/SimeScrollView;->scrollBy(II)V

    .line 309
    :cond_1
    iget-object v5, p0, Lcom/samsung/inputmethod/comm/SimeScrollView;->mFocusCellview:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setSelected(Z)V

    .line 311
    .end local v0           #dx:I
    .end local v1           #posLeft:I
    .end local v2           #posRight:I
    .end local v3           #scrollViewLeft:I
    .end local v4           #scrollViewRight:I
    :cond_2
    return-void

    .line 301
    .restart local v0       #dx:I
    .restart local v1       #posLeft:I
    .restart local v2       #posRight:I
    .restart local v3       #scrollViewLeft:I
    .restart local v4       #scrollViewRight:I
    :cond_3
    if-le v2, v4, :cond_0

    .line 302
    sub-int v0, v2, v4

    goto :goto_0
.end method
