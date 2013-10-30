.class public Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;
.super Landroid/widget/RelativeLayout;
.source "SimeCandVerSymbolContainer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_CANDIDATE_IN_ONEPAGE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SimeCandVerSymbolContainer"


# instance fields
.field private MIN_ITEM_HEIGHT:F

.field private mCandidateListLayout:Landroid/widget/LinearLayout;

.field private mCandidateMargin:F

.field private mCandidateSeperatorColor:I

.field private mCandidateSeperatorWidth:I

.field mCandidateTextColor:Landroid/content/res/ColorStateList;

.field private mCandidateTextSize:I

.field private mCandidateTextSize_small:I

.field private mCellParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mContext:Landroid/content/Context;

.field private mDimScrollView:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mScrollView:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollView;

.field private mScrollViewContainer:Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;

.field private mSelectIndex:I

.field private mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

.field private mSeparatorParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mService:Landroid/inputmethodservice/InputMethodService;

.field private symbolsVertical:[Ljava/lang/String;

.field private symbolsVertical_email:[Ljava/lang/String;

.field private symbolsVertical_email_hktw:[Ljava/lang/String;

.field private symbolsVertical_full:[Ljava/lang/String;

.field private symbolsVertical_num:[Ljava/lang/String;

.field private symbolsVertical_url:[Ljava/lang/String;

.field private symbolsVertical_url_hktw:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 96
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mScrollView:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollView;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mScrollViewContainer:Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mCellParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mSeparatorParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mCandidateListLayout:Landroid/widget/LinearLayout;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mCandidateTextColor:Landroid/content/res/ColorStateList;

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mCandidateMargin:F

    .line 73
    iput v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mSelectIndex:I

    .line 75
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ","

    aput-object v1, v0, v3

    const-string v1, "."

    aput-object v1, v0, v4

    const-string v1, "?"

    aput-object v1, v0, v5

    const-string v1, "!"

    aput-object v1, v0, v6

    const-string v1, "/"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u2026"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "@"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ":"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->symbolsVertical:[Ljava/lang/String;

    .line 77
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\uff0c"

    aput-object v1, v0, v3

    const-string v1, "\u3002"

    aput-object v1, v0, v4

    const-string v1, "\uff1f"

    aput-object v1, v0, v5

    const-string v1, "\uff01"

    aput-object v1, v0, v6

    const-string v1, "\u3001"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u2026\u2026"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "@"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\uff1a"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->symbolsVertical_full:[Ljava/lang/String;

    .line 79
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "-"

    aput-object v1, v0, v3

    const-string v1, "/"

    aput-object v1, v0, v4

    const-string v1, ":"

    aput-object v1, v0, v5

    const-string v1, "+"

    aput-object v1, v0, v6

    const-string v1, "\u00d7"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u00f7"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "="

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "%"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->symbolsVertical_num:[Ljava/lang/String;

    .line 81
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "@"

    aput-object v1, v0, v3

    const-string v1, "."

    aput-object v1, v0, v4

    const-string v1, "_"

    aput-object v1, v0, v5

    const-string v1, "-"

    aput-object v1, v0, v6

    const-string v1, ".net"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, ".cn"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ".org"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ".edu"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->symbolsVertical_email:[Ljava/lang/String;

    .line 83
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "@"

    aput-object v1, v0, v3

    const-string v1, "."

    aput-object v1, v0, v4

    const-string v1, "_"

    aput-object v1, v0, v5

    const-string v1, "-"

    aput-object v1, v0, v6

    const-string v1, ".net"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, ".com"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ".org"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ".edu"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->symbolsVertical_email_hktw:[Ljava/lang/String;

    .line 85
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/"

    aput-object v1, v0, v3

    const-string v1, "."

    aput-object v1, v0, v4

    const-string v1, "_"

    aput-object v1, v0, v5

    const-string v1, "-"

    aput-object v1, v0, v6

    const-string v1, ".net"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, ".cn"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ".org"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ".edu"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->symbolsVertical_url:[Ljava/lang/String;

    .line 87
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/"

    aput-object v1, v0, v3

    const-string v1, "."

    aput-object v1, v0, v4

    const-string v1, "_"

    aput-object v1, v0, v5

    const-string v1, "-"

    aput-object v1, v0, v6

    const-string v1, ".net"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, ".com"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ".org"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ".edu"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->symbolsVertical_url_hktw:[Ljava/lang/String;

    .line 98
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mContext:Landroid/content/Context;

    .line 100
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mPaint:Landroid/graphics/Paint;

    .line 101
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 102
    return-void
.end method

.method private creatCellCandidateView(I)Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    .locals 6
    .parameter "candIndexGlobal"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 273
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->getCurrentSymbolTableString(I)Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, candStr:Ljava/lang/String;
    new-instance v1, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;-><init>(Landroid/content/Context;)V

    .line 275
    .local v1, tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    invoke-virtual {v1, p0}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 276
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v5, :cond_0

    .line 277
    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mCandidateTextSize_small:I

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setTextSize(IF)V

    .line 280
    :goto_0
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mCandidateTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 281
    const v2, 0x7f020025

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setBackgroundResource(I)V

    .line 282
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setGravity(I)V

    .line 283
    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setSingleLine()V

    .line 284
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 285
    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mCandidateMargin:F

    float-to-int v2, v2

    iget v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mCandidateMargin:F

    float-to-int v3, v3

    invoke-virtual {v1, v4, v2, v4, v3}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setPadding(IIII)V

    .line 287
    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->MIN_ITEM_HEIGHT:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setMinHeight(I)V

    .line 288
    invoke-virtual {v1, v5}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setClickable(Z)V

    .line 291
    const-string v2, "\u3002"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 292
    const-string v2, "  \u3002"

    invoke-virtual {v1, v2, p1}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setText(Ljava/lang/CharSequence;I)V

    .line 298
    :goto_1
    return-object v1

    .line 279
    :cond_0
    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mCandidateTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setTextSize(IF)V

    goto :goto_0

    .line 293
    :cond_1
    const-string v2, "\u3001"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 294
    const-string v2, "  \u3001"

    invoke-virtual {v1, v2, p1}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setText(Ljava/lang/CharSequence;I)V

    goto :goto_1

    .line 296
    :cond_2
    invoke-virtual {v1, v0, p1}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->setText(Ljava/lang/CharSequence;I)V

    goto :goto_1
.end method

.method private creatSeparator()Landroid/view/View;
    .locals 4

    .prologue
    .line 214
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeCandSepView;

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandSepView;-><init>(Landroid/content/Context;)V

    .line 216
    .local v0, sepView:Lcom/samsung/inputmethod/candidate/SimeCandSepView;
    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandSepView$sepType;->HORIZON_34:Lcom/samsung/inputmethod/candidate/SimeCandSepView$sepType;

    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mCandidateSeperatorColor:I

    iget v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mCandidateSeperatorWidth:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandSepView;->setAttribute(Lcom/samsung/inputmethod/candidate/SimeCandSepView$sepType;II)V

    .line 218
    return-object v0
.end method

.method private createSymbolTable()V
    .locals 5

    .prologue
    .line 224
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mCandidateListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    .line 226
    const/4 v2, 0x0

    .line 227
    .local v2, tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    const/4 v1, 0x0

    .line 229
    .local v1, sepView:Landroid/view/View;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v3, 0x8

    if-ge v0, v3, :cond_1

    .line 231
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->creatCellCandidateView(I)Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    move-result-object v2

    .line 232
    invoke-direct {p0}, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->creatSeparator()Landroid/view/View;

    move-result-object v1

    .line 233
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mCandidateListLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mCellParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    const/4 v3, 0x7

    if-ne v0, v3, :cond_0

    .line 229
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    :cond_0
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mCandidateListLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mSeparatorParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 242
    :cond_1
    return-void
.end method

.method private getCurrentSymbolTableString(I)Ljava/lang/String;
    .locals 4
    .parameter "index"

    .prologue
    .line 245
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mService:Landroid/inputmethodservice/InputMethodService;

    check-cast v3, Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v1

    .line 246
    .local v1, inputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;
    const/4 v2, 0x0

    .line 247
    .local v2, returnString:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    .line 249
    .local v0, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEmailEditor()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 250
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isHKTWModelByCSC()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 251
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->symbolsVertical_email_hktw:[Ljava/lang/String;

    aget-object v2, v3, p1

    .line 269
    :goto_0
    return-object v2

    .line 253
    :cond_0
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->symbolsVertical_email:[Ljava/lang/String;

    aget-object v2, v3, p1

    goto :goto_0

    .line 254
    :cond_1
    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isURLEditor()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 255
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isHKTWModelByCSC()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 256
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->symbolsVertical_url_hktw:[Ljava/lang/String;

    aget-object v2, v3, p1

    goto :goto_0

    .line 258
    :cond_2
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->symbolsVertical_url:[Ljava/lang/String;

    aget-object v2, v3, p1

    goto :goto_0

    .line 259
    :cond_3
    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isNum34Keyboard()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 260
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->symbolsVertical_num:[Ljava/lang/String;

    aget-object v2, v3, p1

    goto :goto_0

    .line 261
    :cond_4
    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChinese34Keyboard()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 262
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->symbolsVertical_full:[Ljava/lang/String;

    aget-object v2, v3, p1

    goto :goto_0

    .line 264
    :cond_5
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->symbolsVertical:[Ljava/lang/String;

    aget-object v2, v3, p1

    goto :goto_0
.end method


# virtual methods
.method public dimScrollView(Z)V
    .locals 0
    .parameter "dimSkb"

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mDimScrollView:Z

    .line 155
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->invalidate()V

    .line 156
    return-void
.end method

.method public initialize(Landroid/inputmethodservice/InputMethodService;)V
    .locals 8
    .parameter "service"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 107
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 108
    .local v2, r:Landroid/content/res/Resources;
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mService:Landroid/inputmethodservice/InputMethodService;

    .line 110
    const v3, 0x7f0a0023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->MIN_ITEM_HEIGHT:F

    .line 112
    const v3, 0x7f0c005b

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;

    iput-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mScrollViewContainer:Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;

    .line 113
    const v3, 0x7f0c005c

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollView;

    iput-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mScrollView:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollView;

    .line 114
    const v3, 0x7f0c005d

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mCandidateListLayout:Landroid/widget/LinearLayout;

    .line 116
    const v3, 0x7f080019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mCandidateSeperatorColor:I

    .line 117
    const v3, 0x7f0a003f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mCandidateSeperatorWidth:I

    .line 118
    const v3, 0x7f0202cd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 120
    iget v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mCandidateSeperatorWidth:I

    .line 121
    .local v1, nSeperatorHeight:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x4

    sub-int v0, v3, v1

    .line 123
    .local v0, nCellItemHeight:I
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v0, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mCellParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 126
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mSeparatorParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 129
    const v3, 0x7f0a0021

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mCandidateTextSize:I

    .line 130
    const v3, 0x7f0a0022

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mCandidateTextSize_small:I

    .line 131
    const/high16 v3, 0x7f08

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mCandidateTextColor:Landroid/content/res/ColorStateList;

    .line 133
    invoke-direct {p0}, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->createSymbolTable()V

    .line 135
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mScrollView:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollView;

    invoke-virtual {v3, v7, v7}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollView;->scrollTo(II)V

    .line 137
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 143
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 145
    iget-boolean v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mDimScrollView:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 147
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x6000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 148
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 151
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 163
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v1

    .line 164
    .local v1, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 165
    .local v0, config:Landroid/content/res/Configuration;
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v7

    div-int/lit8 v5, v7, 0x5

    .line 166
    .local v5, measuredWidth:I
    const/4 v7, 0x3

    invoke-virtual {v1, v7}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getSkbHeight(I)I

    move-result v4

    .line 168
    .local v4, measuredHeight:I
    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a007f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v6, v7

    .line 169
    .local v6, topmargin:I
    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0080

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v2, v7

    .line 171
    .local v2, leftmargin:I
    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mScrollViewContainer:Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 173
    .local v3, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-direct {p0}, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->createSymbolTable()V

    .line 175
    iget v7, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 176
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v7

    sget-object v8, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v7, v8, :cond_0

    .line 177
    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0088

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v2, v7

    .line 178
    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0087

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v6, v7

    .line 180
    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0086

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v5, v7

    .line 181
    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0085

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v4, v7

    .line 202
    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v2, v6, v7, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 203
    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mScrollViewContainer:Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;

    invoke-virtual {v7, v3}, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    const/high16 v7, 0x4000

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 207
    const/high16 v7, 0x4000

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 209
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 211
    return-void

    .line 183
    :cond_0
    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0084

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v2, v7

    .line 184
    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0083

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v6, v7

    .line 186
    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0082

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v5, v7

    .line 187
    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0081

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v4, v7

    goto :goto_0

    .line 190
    :cond_1
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v7

    sget-object v8, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v7, v8, :cond_2

    .line 191
    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0088

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v2, v7

    .line 192
    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0087

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v6, v7

    .line 194
    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0086

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v5, v7

    .line 195
    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0085

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v4, v7

    goto/16 :goto_0

    .line 197
    :cond_2
    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a007e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v5, v7

    .line 198
    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a007d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v4, v7

    goto/16 :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    .line 303
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 305
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 328
    :cond_0
    :goto_0
    return v5

    .line 307
    :pswitch_0
    instance-of v3, p1, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 309
    check-cast v2, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;

    .line 310
    .local v2, tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;->getIndex()I

    move-result v3

    iput v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mSelectIndex:I

    goto :goto_0

    .line 315
    .end local v2           #tv:Lcom/samsung/inputmethod/candidate/SimeCandCellTextView;
    :pswitch_1
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mService:Landroid/inputmethodservice/InputMethodService;

    check-cast v3, Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 316
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    iget v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mSelectIndex:I

    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->getCurrentSymbolTableString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 317
    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->playSoundEffect(I)V

    .line 318
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 319
    iget v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mSelectIndex:I

    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->getCurrentSymbolTableString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 320
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->mService:Landroid/inputmethodservice/InputMethodService;

    check-cast v3, Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3, v5}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto :goto_0

    .line 305
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
