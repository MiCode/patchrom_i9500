.class public Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;
.super Landroid/widget/RelativeLayout;
.source "SimeSkbMiniPopView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "PopUpViewNew"


# instance fields
.field private mActiveCandidateIndex:I

.field private mButtonBottom:Landroid/widget/ImageButton;

.field private mButtonRight:Landroid/widget/ImageButton;

.field private mCandidateMargin:F

.field private mCandidateTextSize:I

.field private mCvListener:Lcom/samsung/inputmethod/candidate/SimeCandViewListener;

.field private mDisplayedData:[Ljava/lang/String;

.field private mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

.field private mHSeparatorDrawable:Landroid/graphics/drawable/Drawable;

.field private mIme:Lcom/samsung/inputmethod/SamsungIME;

.field private mMiniPopitemSize:I

.field private mParent:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

.field private mSoundManager:Lcom/samsung/inputmethod/comm/SimeSoundManager;

.field private mTableMain:Landroid/widget/TableLayout;

.field private mVSeparatorDrawable:Landroid/graphics/drawable/Drawable;

.field private mcsl:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mTableMain:Landroid/widget/TableLayout;

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mActiveCandidateIndex:I

    .line 88
    return-void
.end method

.method private creatCellCandidateView(I)Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    .locals 5
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 445
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mDisplayedData:[Ljava/lang/String;

    aget-object v0, v2, p1

    .line 448
    .local v0, data:Ljava/lang/String;
    new-instance v1, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;-><init>(Landroid/content/Context;)V

    .line 450
    .local v1, tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mCandidateTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setTextSize(IF)V

    .line 452
    const/4 v2, 0x5

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mParent:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->getMiniPopWindowType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;->SMILEY:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    if-ne v2, v3, :cond_0

    .line 453
    const v2, 0x7f020149

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setBackgroundResource(I)V

    .line 458
    :goto_0
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mcsl:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 459
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mParent:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->getMiniPopWindowType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;->WEBSITE:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    if-ne v2, v3, :cond_1

    .line 461
    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setGravity(I)V

    .line 462
    const/16 v2, 0x10

    invoke-virtual {v1, v2, v4, v4, v4}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setPadding(IIII)V

    .line 467
    :goto_1
    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setSingleLine()V

    .line 468
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 474
    invoke-virtual {v1, p0}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 475
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setClickable(Z)V

    .line 476
    invoke-virtual {v1, v0, p1}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setText(Ljava/lang/CharSequence;I)V

    .line 478
    return-object v1

    .line 456
    :cond_0
    const v2, 0x7f020147

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 464
    :cond_1
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setGravity(I)V

    .line 465
    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mCandidateMargin:F

    float-to-int v2, v2

    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mCandidateMargin:F

    float-to-int v3, v3

    invoke-virtual {v1, v2, v4, v3, v4}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setPadding(IIII)V

    goto :goto_1
.end method

.method private creatHSeparator()Landroid/view/View;
    .locals 2

    .prologue
    .line 524
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 525
    .local v0, sepView:Landroid/view/View;
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mHSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 526
    return-object v0
.end method

.method private creatMiniPopItemView(I)Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    .locals 5
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 482
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mDisplayedData:[Ljava/lang/String;

    aget-object v0, v2, p1

    .line 485
    .local v0, data:Ljava/lang/String;
    new-instance v1, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;-><init>(Landroid/content/Context;)V

    .line 486
    .local v1, tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_NORMAL:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v2, v3, :cond_0

    .line 487
    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mCandidateTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setTextSize(IF)V

    .line 491
    :goto_0
    const/4 v2, 0x5

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mParent:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->getMiniPopWindowType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;->SMILEY:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    if-ne v2, v3, :cond_1

    .line 492
    const v2, 0x7f020149

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setBackgroundResource(I)V

    .line 497
    :goto_1
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mcsl:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 498
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mParent:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->getMiniPopWindowType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;->WEBSITE:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    if-ne v2, v3, :cond_2

    .line 500
    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setGravity(I)V

    .line 501
    const/16 v2, 0x10

    invoke-virtual {v1, v2, v4, v4, v4}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setPadding(IIII)V

    .line 506
    :goto_2
    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setSingleLine()V

    .line 507
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 510
    invoke-virtual {v1, p0}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 511
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setClickable(Z)V

    .line 512
    invoke-virtual {v1, v0, p1}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setText(Ljava/lang/CharSequence;I)V

    .line 513
    return-object v1

    .line 489
    :cond_0
    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mMiniPopitemSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setTextSize(IF)V

    goto :goto_0

    .line 495
    :cond_1
    const v2, 0x7f020147

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 503
    :cond_2
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setGravity(I)V

    .line 504
    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mCandidateMargin:F

    float-to-int v2, v2

    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mCandidateMargin:F

    float-to-int v3, v3

    invoke-virtual {v1, v2, v4, v3, v4}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setPadding(IIII)V

    goto :goto_2
.end method

.method private creatTableRow()Landroid/widget/TableRow;
    .locals 2

    .prologue
    .line 169
    new-instance v0, Landroid/widget/TableRow;

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 173
    .local v0, tr:Landroid/widget/TableRow;
    return-object v0
.end method

.method private creatVSeparator()Landroid/view/View;
    .locals 2

    .prologue
    .line 517
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 518
    .local v0, sepView:Landroid/view/View;
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mVSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 519
    return-object v0
.end method


# virtual methods
.method public creatTable(II)Z
    .locals 22
    .parameter "row"
    .parameter "colum"

    .prologue
    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mDisplayedData:[Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    const/16 v17, 0x0

    .line 415
    :goto_0
    return v17

    .line 181
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mDisplayedData:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v14, v0

    .line 183
    .local v14, totalNum:I
    if-nez v14, :cond_1

    const/16 v17, 0x0

    goto :goto_0

    .line 184
    :cond_1
    const/4 v13, 0x0

    .line 185
    .local v13, tableParams:Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v13           #tableParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v17, -0x1

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v13, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 188
    .restart local v13       #tableParams:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget v10, v0, Landroid/content/res/Configuration;->orientation:I

    .line 189
    .local v10, orientation:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mParent:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->getMiniPopWindowType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    move-result-object v9

    .line 190
    .local v9, myType:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v4

    .line 192
    .local v4, dim:I
    sget-boolean v17, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_MINIPOPUP_CLOSE_BUTTON_HIDE:Z

    if-nez v17, :cond_16

    .line 193
    sget-object v17, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView$1;->$SwitchMap$com$samsung$inputmethod$softkeyboard$SimeSkbMiniPopWindow$MiniPopWindowType:[I

    invoke-virtual {v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;->ordinal()I

    move-result v18

    aget v17, v17, v18

    packed-switch v17, :pswitch_data_0

    .line 346
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mTableMain:Landroid/widget/TableLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/widget/TableLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mTableMain:Landroid/widget/TableLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 350
    const/4 v15, 0x0

    .line 353
    .local v15, tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    const/4 v7, 0x0

    .line 355
    .local v7, itemPos:I
    new-instance v3, Landroid/widget/TableRow$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mParent:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowWidth:I

    move/from16 v17, v0

    div-int v17, v17, p2

    const/16 v18, -0x1

    const/high16 v19, 0x3f80

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v3, v0, v1, v2}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    .line 358
    .local v3, cellParams:Landroid/widget/TableRow$LayoutParams;
    new-instance v16, Landroid/widget/TableRow$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mVSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v17

    const/16 v18, -0x1

    invoke-direct/range {v16 .. v18}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    .line 361
    .local v16, vSeparatorParams:Landroid/widget/TableRow$LayoutParams;
    new-instance v5, Landroid/widget/TableRow$LayoutParams;

    const/16 v17, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mHSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v5, v0, v1}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    .line 365
    .local v5, hSeparatorParams:Landroid/widget/TableRow$LayoutParams;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    move/from16 v0, p1

    if-ge v6, v0, :cond_29

    .line 366
    invoke-direct/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->creatTableRow()Landroid/widget/TableRow;

    move-result-object v11

    .line 368
    .local v11, rowlayout:Landroid/widget/TableRow;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mTableMain:Landroid/widget/TableLayout;

    move-object/from16 v17, v0

    new-instance v18, Landroid/widget/TableLayout$LayoutParams;

    const/16 v19, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mParent:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowHeight:I

    move/from16 v20, v0

    div-int v20, v20, p1

    const/high16 v21, 0x3f80

    invoke-direct/range {v18 .. v21}, Landroid/widget/TableLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v11, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mParent:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->getMiniPopWindowType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    move-result-object v17

    sget-object v18, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;->DOMAIN:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mParent:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->getMiniPopWindowType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    move-result-object v17

    sget-object v18, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;->WEBSITE:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mParent:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->getMiniPopWindowType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    move-result-object v17

    sget-object v18, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;->SMILEY:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 371
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mParent:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->getMiniPopWindowType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    move-result-object v17

    sget-object v18, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;->WEBSITE:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_3

    add-int/lit8 v17, p1, -0x1

    move/from16 v0, v17

    if-eq v6, v0, :cond_5

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mParent:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->getMiniPopWindowType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    move-result-object v17

    sget-object v18, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;->SMILEY:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_4

    add-int/lit8 v17, p1, -0x1

    move/from16 v0, v17

    if-eq v6, v0, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mParent:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->getMiniPopWindowType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    move-result-object v17

    sget-object v18, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;->DOMAIN:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_25

    add-int/lit8 v17, p1, -0x1

    move/from16 v0, v17

    if-ne v6, v0, :cond_25

    .line 386
    :cond_5
    :goto_3
    const/4 v8, 0x0

    .local v8, j:I
    :goto_4
    move/from16 v0, p2

    if-ge v8, v0, :cond_28

    .line 387
    mul-int v17, v6, p2

    add-int v7, v17, v8

    .line 391
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v17

    sget-object v18, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_6

    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v17

    sget-object v18, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_ONE_HAND:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_6

    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v17

    sget-object v18, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_NORMAL:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_26

    .line 393
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->creatMiniPopItemView(I)Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    move-result-object v15

    .line 398
    :goto_5
    invoke-virtual {v11, v15, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mParent:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->getMiniPopWindowType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    move-result-object v17

    sget-object v18, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;->DOMAIN:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mParent:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->getMiniPopWindowType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    move-result-object v17

    sget-object v18, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;->WEBSITE:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mParent:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->getMiniPopWindowType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    move-result-object v17

    sget-object v18, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;->SMILEY:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_27

    :cond_7
    add-int/lit8 v17, p2, -0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_27

    .line 386
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 196
    .end local v3           #cellParams:Landroid/widget/TableRow$LayoutParams;
    .end local v5           #hSeparatorParams:Landroid/widget/TableRow$LayoutParams;
    .end local v6           #i:I
    .end local v7           #itemPos:I
    .end local v8           #j:I
    .end local v11           #rowlayout:Landroid/widget/TableRow;
    .end local v15           #tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    .end local v16           #vSeparatorParams:Landroid/widget/TableRow$LayoutParams;
    :pswitch_0
    const/16 v17, -0x1

    move/from16 v0, v17

    iput v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 197
    const/16 v17, 0x140

    move/from16 v0, v17

    if-ne v4, v0, :cond_9

    .line 198
    const/16 v17, 0x4

    move/from16 v0, v17

    iput v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 199
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_8

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mParent:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mButtonBottom:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x4000

    mul-float v18, v18, v19

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto/16 :goto_1

    .line 203
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mParent:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mButtonBottom:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x3fe66666

    mul-float v18, v18, v19

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto/16 :goto_1

    .line 206
    :cond_9
    const/16 v17, 0xf0

    move/from16 v0, v17

    if-ne v4, v0, :cond_b

    .line 207
    const/16 v17, 0x4

    move/from16 v0, v17

    iput v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 208
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_a

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mParent:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mButtonBottom:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x400ccccd

    mul-float v18, v18, v19

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto/16 :goto_1

    .line 212
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mParent:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mButtonBottom:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x400ccccd

    mul-float v18, v18, v19

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto/16 :goto_1

    .line 215
    :cond_b
    const/16 v17, 0xa0

    move/from16 v0, v17

    if-ne v4, v0, :cond_d

    .line 216
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_c

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mParent:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mButtonBottom:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x4019999a

    mul-float v18, v18, v19

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto/16 :goto_1

    .line 220
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mParent:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mButtonBottom:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x4019999a

    mul-float v18, v18, v19

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto/16 :goto_1

    .line 224
    :cond_d
    const/16 v17, 0x2

    move/from16 v0, v17

    iput v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 225
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_e

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mParent:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mButtonBottom:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x400ccccd

    mul-float v18, v18, v19

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto/16 :goto_1

    .line 229
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mParent:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mButtonBottom:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x400ccccd

    mul-float v18, v18, v19

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto/16 :goto_1

    .line 236
    :pswitch_1
    const/16 v17, -0x1

    move/from16 v0, v17

    iput v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 237
    const/16 v17, 0x140

    move/from16 v0, v17

    if-ne v4, v0, :cond_10

    .line 238
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_f

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mParent:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mButtonRight:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x3fe66666

    mul-float v18, v18, v19

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto/16 :goto_1

    .line 242
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mParent:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mButtonRight:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x4020

    mul-float v18, v18, v19

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto/16 :goto_1

    .line 245
    :cond_10
    const/16 v17, 0xf0

    move/from16 v0, v17

    if-ne v4, v0, :cond_12

    .line 246
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_11

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mParent:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mButtonRight:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x3fe66666

    mul-float v18, v18, v19

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto/16 :goto_1

    .line 250
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mParent:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mButtonRight:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x4020

    mul-float v18, v18, v19

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto/16 :goto_1

    .line 253
    :cond_12
    const/16 v17, 0xa0

    move/from16 v0, v17

    if-ne v4, v0, :cond_14

    .line 254
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_13

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mParent:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mButtonRight:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x400ccccd

    mul-float v18, v18, v19

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto/16 :goto_1

    .line 258
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mParent:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mButtonRight:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x4020

    mul-float v18, v18, v19

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto/16 :goto_1

    .line 263
    :cond_14
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_15

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mParent:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mButtonRight:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x3fe66666

    mul-float v18, v18, v19

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto/16 :goto_1

    .line 267
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mParent:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mButtonRight:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x4020

    mul-float v18, v18, v19

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto/16 :goto_1

    .line 277
    :cond_16
    sget-object v17, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView$1;->$SwitchMap$com$samsung$inputmethod$softkeyboard$SimeSkbMiniPopWindow$MiniPopWindowType:[I

    invoke-virtual {v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;->ordinal()I

    move-result v18

    aget v17, v17, v18

    packed-switch v17, :pswitch_data_1

    goto/16 :goto_1

    .line 280
    :pswitch_2
    const/16 v17, -0x1

    move/from16 v0, v17

    iput v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 281
    const/16 v17, 0x140

    move/from16 v0, v17

    if-ne v4, v0, :cond_18

    .line 282
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 283
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_17

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mParent:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto/16 :goto_1

    .line 286
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mParent:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto/16 :goto_1

    .line 288
    :cond_18
    const/16 v17, 0xf0

    move/from16 v0, v17

    if-ne v4, v0, :cond_1a

    .line 289
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 290
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_19

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mParent:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto/16 :goto_1

    .line 293
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mParent:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto/16 :goto_1

    .line 295
    :cond_1a
    const/16 v17, 0xa0

    move/from16 v0, v17

    if-ne v4, v0, :cond_1c

    .line 296
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_1b

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mParent:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto/16 :goto_1

    .line 299
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mParent:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto/16 :goto_1

    .line 302
    :cond_1c
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 303
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_1d

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mParent:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto/16 :goto_1

    .line 306
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mParent:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto/16 :goto_1

    .line 312
    :pswitch_3
    const/16 v17, -0x1

    move/from16 v0, v17

    iput v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 313
    const/16 v17, 0x140

    move/from16 v0, v17

    if-ne v4, v0, :cond_1f

    .line 314
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_1e

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mParent:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto/16 :goto_1

    .line 317
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mParent:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto/16 :goto_1

    .line 319
    :cond_1f
    const/16 v17, 0xf0

    move/from16 v0, v17

    if-ne v4, v0, :cond_21

    .line 320
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_20

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mParent:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto/16 :goto_1

    .line 323
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mParent:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto/16 :goto_1

    .line 325
    :cond_21
    const/16 v17, 0xa0

    move/from16 v0, v17

    if-ne v4, v0, :cond_23

    .line 326
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_22

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mParent:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto/16 :goto_1

    .line 329
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mParent:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto/16 :goto_1

    .line 333
    :cond_23
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_24

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mParent:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto/16 :goto_1

    .line 336
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mParent:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto/16 :goto_1

    .line 379
    .restart local v3       #cellParams:Landroid/widget/TableRow$LayoutParams;
    .restart local v5       #hSeparatorParams:Landroid/widget/TableRow$LayoutParams;
    .restart local v6       #i:I
    .restart local v7       #itemPos:I
    .restart local v11       #rowlayout:Landroid/widget/TableRow;
    .restart local v15       #tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    .restart local v16       #vSeparatorParams:Landroid/widget/TableRow$LayoutParams;
    :cond_25
    invoke-direct/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->creatHSeparator()Landroid/view/View;

    move-result-object v12

    .line 380
    .local v12, sepView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mTableMain:Landroid/widget/TableLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v5}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .line 396
    .end local v12           #sepView:Landroid/view/View;
    .restart local v8       #j:I
    :cond_26
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->creatCellCandidateView(I)Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    move-result-object v15

    goto/16 :goto_5

    .line 409
    :cond_27
    invoke-direct/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->creatVSeparator()Landroid/view/View;

    move-result-object v12

    .line 410
    .restart local v12       #sepView:Landroid/view/View;
    move-object/from16 v0, v16

    invoke-virtual {v11, v12, v0}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_6

    .line 365
    .end local v12           #sepView:Landroid/view/View;
    :cond_28
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 415
    .end local v8           #j:I
    .end local v11           #rowlayout:Landroid/widget/TableRow;
    :cond_29
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 277
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getActiveCandiatePosGlobal()I
    .locals 1

    .prologue
    .line 547
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mActiveCandidateIndex:I

    return v0
.end method

.method public getCandidateListLayoutChildCount()I
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mTableMain:Landroid/widget/TableLayout;

    invoke-virtual {v0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public initialize(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/candidate/SimeCandViewListener;Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;)V
    .locals 2
    .parameter "ime"
    .parameter "cvListener"
    .parameter "parent"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    .line 92
    iput-object p3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mParent:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    .line 93
    iput-object p2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mCvListener:Lcom/samsung/inputmethod/candidate/SimeCandViewListener;

    .line 94
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 95
    .local v0, r:Landroid/content/res/Resources;
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    .line 96
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-static {v1}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->getInstance(Landroid/content/Context;)Lcom/samsung/inputmethod/comm/SimeSoundManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mSoundManager:Lcom/samsung/inputmethod/comm/SimeSoundManager;

    .line 98
    const v1, 0x7f0c0038

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableLayout;

    iput-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mTableMain:Landroid/widget/TableLayout;

    .line 100
    const v1, 0x7f0201c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mVSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 101
    const v1, 0x7f0201c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mHSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 103
    const v1, 0x7f080032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mcsl:Landroid/content/res/ColorStateList;

    .line 106
    const v1, 0x7f0c003a

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mButtonRight:Landroid/widget/ImageButton;

    .line 107
    const v1, 0x7f0c003c

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mButtonBottom:Landroid/widget/ImageButton;

    .line 108
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mButtonRight:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 109
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mButtonBottom:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 111
    const v1, 0x7f0a001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mCandidateTextSize:I

    .line 112
    const v1, 0x7f0a001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mMiniPopitemSize:I

    .line 114
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->invalidate()V

    .line 115
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->requestLayout()V

    .line 117
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "me"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 120
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 121
    .local v0, action:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 123
    .local v2, y:I
    packed-switch v0, :pswitch_data_0

    .line 165
    :cond_0
    :goto_0
    :pswitch_0
    return v6

    .line 126
    :pswitch_1
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mSoundManager:Lcom/samsung/inputmethod/comm/SimeSoundManager;

    if-eqz v3, :cond_1

    .line 127
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mSoundManager:Lcom/samsung/inputmethod/comm/SimeSoundManager;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->tryPlayKeyDown(I)V

    .line 128
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mSoundManager:Lcom/samsung/inputmethod/comm/SimeSoundManager;

    invoke-virtual {v3, v6}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->tryVibrate(I)V

    .line 131
    :cond_1
    instance-of v3, p1, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 132
    check-cast v1, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    .line 133
    .local v1, tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->getIndex()I

    move-result v3

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mActiveCandidateIndex:I

    goto :goto_0

    .line 137
    .end local v1           #tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    :pswitch_2
    instance-of v3, p1, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    if-eqz v3, :cond_2

    move-object v1, p1

    .line 138
    check-cast v1, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    .line 139
    .restart local v1       #tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->getIndex()I

    move-result v3

    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mActiveCandidateIndex:I

    if-eq v3, v4, :cond_0

    .line 140
    iput v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mActiveCandidateIndex:I

    goto :goto_0

    .line 144
    .end local v1           #tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    :cond_2
    iput v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mActiveCandidateIndex:I

    goto :goto_0

    .line 149
    :pswitch_3
    instance-of v3, p1, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    if-eqz v3, :cond_3

    move-object v1, p1

    .line 150
    check-cast v1, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    .line 151
    .restart local v1       #tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->getIndex()I

    move-result v3

    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mActiveCandidateIndex:I

    if-ne v3, v4, :cond_0

    .line 152
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mCvListener:Lcom/samsung/inputmethod/candidate/SimeCandViewListener;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->getIndex()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/samsung/inputmethod/candidate/SimeCandViewListener;->onClickChoice(I)Z

    goto :goto_0

    .line 156
    .end local v1           #tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    :cond_3
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mButtonRight:Landroid/widget/ImageButton;

    if-eq p1, v3, :cond_4

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mButtonBottom:Landroid/widget/ImageButton;

    if-ne p1, v3, :cond_0

    .line 157
    :cond_4
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mParent:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->cancelMiniPopupWindow()V

    goto :goto_0

    .line 162
    :pswitch_4
    const/4 v3, 0x1

    sput-boolean v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->minipopup_touch_outside:Z

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mTableMain:Landroid/widget/TableLayout;

    invoke-virtual {v0}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 533
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mActiveCandidateIndex:I

    .line 534
    return-void
.end method

.method public setActiveCandidate(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 538
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mDisplayedData:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 539
    :cond_0
    const/4 v0, 0x0

    .line 542
    :goto_0
    return v0

    .line 541
    :cond_1
    iput p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mActiveCandidateIndex:I

    .line 542
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setDisplayedData([Ljava/lang/String;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 438
    if-nez p1, :cond_0

    .line 440
    :goto_0
    return-void

    .line 439
    :cond_0
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mDisplayedData:[Ljava/lang/String;

    goto :goto_0
.end method

.method public updateButtons()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 420
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mParent:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->getMiniPopWindowType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    move-result-object v0

    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;->DOMAIN:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    if-ne v0, v1, :cond_1

    .line 421
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mButtonRight:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 422
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mButtonBottom:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mParent:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->getMiniPopWindowType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    move-result-object v0

    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;->SMILEY:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    if-ne v0, v1, :cond_2

    .line 425
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mButtonRight:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 426
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mButtonBottom:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 428
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mParent:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->getMiniPopWindowType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    move-result-object v0

    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;->WEBSITE:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    if-ne v0, v1, :cond_0

    .line 429
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mButtonRight:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 430
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->mButtonBottom:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method
