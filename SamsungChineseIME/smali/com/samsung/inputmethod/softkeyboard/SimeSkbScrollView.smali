.class public Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;
.super Landroid/widget/ScrollView;
.source "SimeSkbScrollView.java"


# static fields
.field private static DEBUG:Z

.field private static EMOTION_TEXT_WIDTH_UNIT:I

.field private static NORMAL_TEXT_WIDTH_UNIT:I

.field private static TAG:Ljava/lang/String;

.field private static mEmotionsStr:[Ljava/lang/String;

.field private static mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final MAX_ROW_COUNT:I

.field public final PAGE_COLUMN_CNT:I

.field public final PAGE_ROW_CNT:I

.field public final VIEW_PAGE_CNT:I

.field private mBalloonHeightF:F

.field private mBalloonWidthF:F

.field private mContentHeight:I

.field private mContentWidth:I

.field private mContext:Landroid/content/Context;

.field private mCurPageIdx:I

.field private mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

.field private mInitialized:Z

.field private mKeyLabelTextSize:I

.field private mPostPageIdx:I

.field private mRowHeight:I

.field private mRowMargin:I

.field private mScrollable:Z

.field private mSymbListLayout:Landroid/widget/LinearLayout;

.field private mTextMargin:I

.field private mTextWidth:I

.field private mTextWidthMax:I

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private mViewHeight:I

.field private mViewLeftPadding:I

.field private mViewTopPadding:I

.field private mViewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    sput-boolean v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->DEBUG:Z

    .line 33
    const-string v0, "SimeSkbScrollView"

    sput-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->TAG:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mList:Ljava/util/ArrayList;

    .line 59
    sput v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->NORMAL_TEXT_WIDTH_UNIT:I

    .line 60
    sput v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->EMOTION_TEXT_WIDTH_UNIT:I

    .line 71
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u2192_\u2192"

    aput-object v1, v0, v2

    const-string v1, "\u256e(\u256f_\u2570)\u256d"

    aput-object v1, v0, v3

    const-string v1, "O(\u2229_\u2229)O"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "TAT"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "(\u2267\u2207\u2266)"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "(\u22673\u2266)"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "^_^"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "(^_-)"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "*^O^*"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\uff1d0\uff1d"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "=\u76bf="

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "-_-#"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "(>_<)"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "(\u256f\u0437\u2570)"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "(\uffe3\u2207\uffe3)"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Orz"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\uff3c(^o^)\uff0f"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "(^_^;)"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "@_@"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\u2299_\u2299"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "T_T"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "( \u00b4\u25bd` )\uff89"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Y(\uff3e_\uff3e)Y"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "(-_-) zzz"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mEmotionsStr:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 83
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 41
    iput v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mViewLeftPadding:I

    .line 42
    iput v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mViewTopPadding:I

    .line 43
    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mViewWidth:I

    .line 44
    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mViewHeight:I

    .line 45
    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mContentWidth:I

    .line 46
    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mContentHeight:I

    .line 47
    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mRowHeight:I

    .line 48
    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mRowMargin:I

    .line 49
    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mTextWidth:I

    .line 50
    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mTextWidthMax:I

    .line 51
    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mTextMargin:I

    .line 55
    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->PAGE_COLUMN_CNT:I

    .line 56
    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->PAGE_ROW_CNT:I

    .line 57
    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->VIEW_PAGE_CNT:I

    .line 58
    const/16 v0, 0x9

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->MAX_ROW_COUNT:I

    .line 63
    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mCurPageIdx:I

    .line 64
    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mPostPageIdx:I

    .line 65
    iput-boolean v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mInitialized:Z

    .line 67
    iput-boolean v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mScrollable:Z

    .line 68
    iput-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mSymbListLayout:Landroid/widget/LinearLayout;

    .line 69
    iput-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 84
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mContext:Landroid/content/Context;

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 93
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    iput v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mViewLeftPadding:I

    .line 42
    iput v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mViewTopPadding:I

    .line 43
    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mViewWidth:I

    .line 44
    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mViewHeight:I

    .line 45
    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mContentWidth:I

    .line 46
    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mContentHeight:I

    .line 47
    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mRowHeight:I

    .line 48
    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mRowMargin:I

    .line 49
    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mTextWidth:I

    .line 50
    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mTextWidthMax:I

    .line 51
    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mTextMargin:I

    .line 55
    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->PAGE_COLUMN_CNT:I

    .line 56
    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->PAGE_ROW_CNT:I

    .line 57
    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->VIEW_PAGE_CNT:I

    .line 58
    const/16 v0, 0x9

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->MAX_ROW_COUNT:I

    .line 63
    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mCurPageIdx:I

    .line 64
    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mPostPageIdx:I

    .line 65
    iput-boolean v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mInitialized:Z

    .line 67
    iput-boolean v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mScrollable:Z

    .line 68
    iput-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mSymbListLayout:Landroid/widget/LinearLayout;

    .line 69
    iput-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 94
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mContext:Landroid/content/Context;

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    iput v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mViewLeftPadding:I

    .line 42
    iput v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mViewTopPadding:I

    .line 43
    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mViewWidth:I

    .line 44
    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mViewHeight:I

    .line 45
    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mContentWidth:I

    .line 46
    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mContentHeight:I

    .line 47
    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mRowHeight:I

    .line 48
    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mRowMargin:I

    .line 49
    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mTextWidth:I

    .line 50
    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mTextWidthMax:I

    .line 51
    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mTextMargin:I

    .line 55
    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->PAGE_COLUMN_CNT:I

    .line 56
    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->PAGE_ROW_CNT:I

    .line 57
    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->VIEW_PAGE_CNT:I

    .line 58
    const/16 v0, 0x9

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->MAX_ROW_COUNT:I

    .line 63
    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mCurPageIdx:I

    .line 64
    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mPostPageIdx:I

    .line 65
    iput-boolean v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mInitialized:Z

    .line 67
    iput-boolean v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mScrollable:Z

    .line 68
    iput-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mSymbListLayout:Landroid/widget/LinearLayout;

    .line 69
    iput-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 89
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mContext:Landroid/content/Context;

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mPostPageIdx:I

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mPostPageIdx:I

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mContentHeight:I

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mCurPageIdx:I

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mCurPageIdx:I

    return p1
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->DEBUG:Z

    return v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private createRowLayout()Landroid/widget/LinearLayout;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 226
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 229
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 231
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mSymbListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    rem-int/lit8 v2, v2, 0x3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 232
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 236
    :goto_0
    sget-boolean v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 237
    sget-object v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---- row layout bottomMargin margin = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 239
    .local v1, rowlayout:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 241
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mSymbListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 242
    return-object v1

    .line 234
    .end local v1           #rowlayout:Landroid/widget/LinearLayout;
    :cond_1
    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mRowMargin:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method private createTextView(Ljava/lang/String;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;
    .locals 3
    .parameter "labelStr"

    .prologue
    .line 247
    new-instance v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;-><init>(Landroid/content/Context;)V

    .line 249
    .local v0, tv:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;
    const/4 v1, 0x0

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mKeyLabelTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;->setTextSize(IF)V

    .line 250
    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mTextWidth:I

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;->setMinWidth(I)V

    .line 251
    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mTextWidthMax:I

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;->setMaxWidth(I)V

    .line 252
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 254
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;->setClickable(Z)V

    .line 255
    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->getFixedWidthUnit(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;->setFixedWidth(I)V

    .line 258
    return-object v0
.end method

.method private getFixedWidthUnit(Ljava/lang/String;)I
    .locals 8
    .parameter "s"

    .prologue
    .line 264
    sget v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->NORMAL_TEXT_WIDTH_UNIT:I

    .line 265
    .local v4, widthUnit:I
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mEmotionsStr:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 266
    .local v3, str:Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 267
    sget v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->EMOTION_TEXT_WIDTH_UNIT:I

    .line 271
    .end local v3           #str:Ljava/lang/String;
    :cond_0
    sget-boolean v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 272
    sget-object v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-----------s = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  width = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_1
    return v4

    .line 265
    .restart local v3       #str:Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private pageDown()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 293
    sget-boolean v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 294
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------pagedown---before-----mCurPageIdx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mCurPageIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_0
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mCurPageIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mCurPageIdx:I

    .line 296
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mCurPageIdx:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 297
    invoke-virtual {p0, v3, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->scrollTo(II)V

    .line 298
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mCurPageIdx:I

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mCurPageIdx:I

    .line 302
    :goto_0
    sget-boolean v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 303
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after-----curPageIdx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mCurPageIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_1
    return-void

    .line 300
    :cond_2
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mContentHeight:I

    invoke-virtual {p0, v3, v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private pageUp()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 278
    sget-boolean v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 279
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------pageup---before-----mCurPageIdx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mCurPageIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_0
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mCurPageIdx:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mCurPageIdx:I

    .line 281
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mCurPageIdx:I

    if-gez v0, :cond_2

    .line 282
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mContentHeight:I

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v3, v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->scrollTo(II)V

    .line 283
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mCurPageIdx:I

    .line 287
    :goto_0
    sget-boolean v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 288
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after-----curPageIdx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mCurPageIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_1
    return-void

    .line 285
    :cond_2
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mContentHeight:I

    neg-int v0, v0

    invoke-virtual {p0, v3, v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private resetValue()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 424
    iput-boolean v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mInitialized:Z

    .line 425
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mCurPageIdx:I

    .line 426
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mPostPageIdx:I

    .line 427
    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mViewLeftPadding:I

    .line 428
    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mViewTopPadding:I

    .line 429
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mViewWidth:I

    .line 430
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mViewHeight:I

    .line 431
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mContentWidth:I

    .line 432
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mContentHeight:I

    .line 433
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mTextWidth:I

    .line 434
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mTextMargin:I

    .line 435
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mTextWidthMax:I

    .line 436
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mRowHeight:I

    .line 437
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mRowMargin:I

    .line 439
    sget-boolean v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 440
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->TAG:Ljava/lang/String;

    const-string v1, "----------resetValue---------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_0
    return-void
.end method

.method private setValue()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 452
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mViewWidth:I

    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mContentWidth:I

    .line 453
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mViewHeight:I

    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mContentHeight:I

    .line 454
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mTextWidthMax:I

    if-gez v0, :cond_0

    .line 455
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mContentWidth:I

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mTextWidthMax:I

    .line 456
    :cond_0
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mTextMargin:I

    if-gez v0, :cond_1

    .line 457
    iput v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mTextMargin:I

    .line 458
    :cond_1
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mTextWidth:I

    if-gez v0, :cond_2

    .line 459
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mTextWidthMax:I

    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mTextMargin:I

    mul-int/lit8 v1, v1, 0x5

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mTextWidth:I

    .line 460
    :cond_2
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mRowMargin:I

    if-gez v0, :cond_3

    .line 461
    iput v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mRowMargin:I

    .line 462
    :cond_3
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mRowHeight:I

    if-gez v0, :cond_4

    .line 463
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mContentHeight:I

    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mRowMargin:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mRowHeight:I

    .line 465
    :cond_4
    sget-boolean v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->DEBUG:Z

    if-eqz v0, :cond_5

    .line 466
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------mContentWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mContentWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------mContentHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mContentHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------mTextWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mTextWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------mTextWidthMax = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mTextWidthMax:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------mTextMargin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mTextMargin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------mRowMargin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mRowMargin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------mRowHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mRowHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_5
    return-void
.end method

.method private updateView(I)V
    .locals 23
    .parameter "pageIdx"

    .prologue
    .line 307
    sget-boolean v20, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->DEBUG:Z

    if-eqz v20, :cond_0

    .line 308
    sget-object v20, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->TAG:Ljava/lang/String;

    const-string v21, "------updateView----"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mSymbListLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 313
    const/4 v10, 0x0

    .line 314
    .local v10, rowCnt:I
    const/4 v14, 0x0

    .line 315
    .local v14, rowStart:I
    const/4 v13, 0x0

    .line 316
    .local v13, rowSize:I
    const/16 v19, 0x0

    .line 317
    .local v19, xPos:I
    const/4 v6, 0x0

    .line 318
    .local v6, itemWidth:I
    const/16 v16, 0x0

    .line 319
    .local v16, textwidth:F
    sget-object v20, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mList:Ljava/util/ArrayList;

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 320
    .local v17, totalNum:I
    const/4 v12, 0x0

    .line 321
    .local v12, rowLastTextView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;
    const/4 v11, 0x0

    .line 322
    .local v11, rowLastTextItemWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mViewWidth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mViewLeftPadding:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mTextWidthMax:I

    .line 324
    invoke-direct/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->createRowLayout()Landroid/widget/LinearLayout;

    move-result-object v15

    .line 326
    .local v15, rowlayout:Landroid/widget/LinearLayout;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v20, -0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mRowHeight:I

    move/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v4, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 328
    .local v4, cellParamWithMargin:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mTextMargin:I

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 329
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 332
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v20, -0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mRowHeight:I

    move/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v3, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 334
    .local v3, cellParamNoMargin:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 335
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 337
    const/4 v5, 0x0

    .line 338
    .local v5, itemPos:I
    :goto_0
    const/16 v20, 0x9

    move/from16 v0, v20

    if-ge v10, v0, :cond_7

    add-int v20, v14, v13

    move/from16 v0, v20

    move/from16 v1, v17

    if-ge v0, v1, :cond_7

    .line 339
    add-int v5, v14, v13

    .line 340
    sget-object v20, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mList:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->createTextView(Ljava/lang/String;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;

    move-result-object v18

    .line 341
    .local v18, tv:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    .line 342
    .local v9, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getHelveFont()Landroid/graphics/Typeface;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 343
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v16

    .line 344
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;->getFixedWidth()I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mTextWidth:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;->getFixedWidth()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mTextMargin:I

    move/from16 v22, v0

    mul-int v21, v21, v22

    add-int v6, v20, v21

    .line 346
    int-to-float v0, v6

    move/from16 v20, v0

    sub-float v7, v20, v16

    .line 347
    .local v7, keyOffset:F
    :goto_1
    int-to-float v0, v6

    move/from16 v20, v0

    const v21, 0x3dcccccd

    mul-float v20, v20, v21

    cmpg-float v20, v7, v20

    if-gtz v20, :cond_1

    .line 348
    invoke-virtual {v9}, Landroid/graphics/Paint;->getTextSize()F

    move-result v20

    const/high16 v21, 0x4040

    sub-float v20, v20, v21

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 349
    int-to-float v0, v6

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v21

    sub-float v7, v20, v21

    goto :goto_1

    .line 352
    :cond_1
    sget-boolean v20, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->DEBUG:Z

    if-eqz v20, :cond_2

    .line 353
    sget-object v20, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "itemPos="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    sget-object v20, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "-----textwidth = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    sget-object v20, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "-----itemwidth = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    sget-object v20, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "-----rowSize = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    sget-object v20, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "-----xpos = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_2
    if-nez v13, :cond_4

    .line 362
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mTextWidthMax:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-le v6, v0, :cond_3

    .line 363
    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mTextWidthMax:I

    .line 365
    :cond_3
    add-int v19, v19, v6

    .line 366
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;->setWidth(I)V

    .line 367
    move-object/from16 v0, v18

    invoke-virtual {v15, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 368
    add-int/lit8 v13, v13, 0x1

    .line 369
    move-object/from16 v12, v18

    .line 370
    move v11, v6

    goto/16 :goto_0

    .line 371
    :cond_4
    add-int v20, v19, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mTextMargin:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mTextWidthMax:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_5

    .line 373
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mTextMargin:I

    move/from16 v20, v0

    add-int v20, v20, v6

    add-int v19, v19, v20

    .line 374
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;->setWidth(I)V

    .line 375
    move-object/from16 v0, v18

    invoke-virtual {v15, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    add-int/lit8 v13, v13, 0x1

    .line 377
    move-object/from16 v12, v18

    .line 378
    move v11, v6

    goto/16 :goto_0

    .line 382
    :cond_5
    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mTextWidthMax:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_6

    .line 384
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mTextWidthMax:I

    move/from16 v20, v0

    sub-int v20, v20, v19

    add-int v20, v20, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mTextMargin:I

    move/from16 v21, v0

    add-int v8, v20, v21

    .line 385
    .local v8, newWidth:I
    invoke-virtual {v12, v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;->setWidth(I)V

    .line 386
    sget-boolean v20, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->DEBUG:Z

    if-eqz v20, :cond_6

    .line 387
    sget-object v20, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "----last view original width = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    sget-object v20, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "---------------expand the width to "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    .end local v8           #newWidth:I
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->createRowLayout()Landroid/widget/LinearLayout;

    move-result-object v15

    .line 392
    add-int/lit8 v10, v10, 0x1

    .line 393
    move v14, v5

    .line 394
    const/4 v13, 0x0

    .line 395
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 398
    .end local v7           #keyOffset:F
    .end local v9           #paint:Landroid/graphics/Paint;
    .end local v18           #tv:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mSymbListLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 399
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->scrollTo(II)V

    .line 400
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mCurPageIdx:I

    .line 401
    if-lez p1, :cond_9

    .line 403
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mPostPageIdx:I

    .line 404
    sget-boolean v20, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->DEBUG:Z

    if-eqz v20, :cond_8

    .line 405
    sget-object v20, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "-----mPostPageIdx = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mPostPageIdx:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_8
    new-instance v20, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView$1;-><init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->post(Ljava/lang/Runnable;)Z

    .line 419
    :cond_9
    sget-boolean v20, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->DEBUG:Z

    if-eqz v20, :cond_a

    .line 420
    sget-object v20, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "---------updateview------pageIdx="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_a
    return-void
.end method


# virtual methods
.method public getSymBalloonHeight()F
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mBalloonHeightF:F

    return v0
.end method

.method public getSymBalloonWidth()F
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mBalloonWidthF:F

    return v0
.end method

.method public getViewHeight()I
    .locals 3

    .prologue
    .line 216
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    .line 217
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mViewHeight:I

    if-gtz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getSkbHeight(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mViewHeight:I

    .line 220
    :cond_0
    sget-boolean v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 221
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-----getViewHeight, mViewHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mViewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_1
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mViewHeight:I

    return v0
.end method

.method public getViewWidth()I
    .locals 3

    .prologue
    .line 206
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    .line 207
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mViewWidth:I

    if-gtz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v0

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mViewWidth:I

    .line 210
    :cond_0
    sget-boolean v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 211
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-----getViewWidth, mViewWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mViewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_1
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mViewWidth:I

    return v0
.end method

.method public initialize(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, sourceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-boolean v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 165
    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->TAG:Ljava/lang/String;

    const-string v4, "----initialize-------------------"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_0
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    .line 167
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mContext:Landroid/content/Context;

    .line 169
    iget-boolean v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mInitialized:Z

    if-nez v3, :cond_4

    .line 170
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mSymbListLayout:Landroid/widget/LinearLayout;

    if-nez v3, :cond_3

    .line 171
    const v3, 0x7f0c0060

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mSymbListLayout:Landroid/widget/LinearLayout;

    .line 175
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mKeyLabelTextSize:I

    .line 177
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v3

    sget-object v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_ONE_HAND:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-eq v3, v4, :cond_1

    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v3

    sget-object v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v3, v4, :cond_2

    .line 179
    :cond_1
    const v1, 0x3f4ccccd

    .line 180
    .local v1, oneHandRatio:F
    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mKeyLabelTextSize:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mKeyLabelTextSize:I

    .line 183
    .end local v1           #oneHandRatio:F
    :cond_2
    if-eqz p1, :cond_4

    .line 184
    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 185
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 186
    .local v2, s:Ljava/lang/String;
    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 173
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #s:Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mSymbListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto :goto_0

    .line 189
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v4, 0x4000

    .line 193
    sget-boolean v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 194
    sget-object v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->TAG:Ljava/lang/String;

    const-string v3, "-----onMeasure----------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->getViewWidth()I

    move-result v1

    .line 196
    .local v1, measuredWidth:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->getViewHeight()I

    move-result v0

    .line 197
    .local v0, measuredHeight:I
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 199
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 201
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    .line 202
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 552
    iget-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mScrollable:Z

    if-eqz v0, :cond_0

    .line 553
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 555
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 445
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 446
    const/16 v0, 0x8

    if-ne p2, v0, :cond_0

    .line 447
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->resetValue()V

    .line 449
    :cond_0
    return-void
.end method

.method public setBalloonSize(FF)V
    .locals 0
    .parameter "balloonWidth"
    .parameter "balloonHeight"

    .prologue
    .line 149
    iput p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mBalloonWidthF:F

    .line 150
    iput p2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mBalloonHeightF:F

    .line 151
    return-void
.end method

.method public setContentPosition(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 108
    iput p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mViewLeftPadding:I

    .line 109
    iput p2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mViewTopPadding:I

    .line 110
    sget-boolean v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 111
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--------set view x = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mViewLeftPadding:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--------set view y = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mViewTopPadding:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    return-void
.end method

.method public setRowInfo(IIII)V
    .locals 3
    .parameter "rowHeight"
    .parameter "rowMargin"
    .parameter "textWidth"
    .parameter "textMargin"

    .prologue
    .line 135
    iput p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mRowHeight:I

    .line 136
    iput p2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mRowMargin:I

    .line 137
    iput p3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mTextWidth:I

    .line 138
    iput p4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mTextMargin:I

    .line 139
    sget-boolean v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 140
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->TAG:Ljava/lang/String;

    const-string v1, "----------setrow info ----------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----------------------rowHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----------------------rowMargin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----------------------textWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----------------------textMargin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    return-void
.end method

.method public setScrollable(Z)V
    .locals 0
    .parameter "bEnable"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mScrollable:Z

    .line 100
    return-void
.end method

.method public setTextSize(I)V
    .locals 3
    .parameter "textSize"

    .prologue
    .line 117
    iput p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mKeyLabelTextSize:I

    .line 118
    sget-boolean v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 119
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---------set view textSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    return-void
.end method

.method public setTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter "touchListner"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 105
    return-void
.end method

.method public setViewHeight(I)V
    .locals 3
    .parameter "height"

    .prologue
    .line 129
    iput p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mViewHeight:I

    .line 130
    sget-boolean v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 131
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---------set view height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mViewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    return-void
.end method

.method public setViewWidth(I)V
    .locals 3
    .parameter "width"

    .prologue
    .line 123
    iput p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mViewWidth:I

    .line 124
    sget-boolean v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 125
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---------set view width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    return-void
.end method

.method public showPage(I)Z
    .locals 7
    .parameter "pageIdx"

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 477
    const/4 v0, 0x0

    .line 478
    .local v0, bRet:Z
    sget-boolean v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 479
    sget-object v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "----showPage-----pageIdx = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    sget-object v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---------mCurpageIdx = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mCurPageIdx:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_0
    const/4 v2, 0x2

    if-lt v2, p1, :cond_1

    if-gez p1, :cond_3

    .line 483
    :cond_1
    sget-boolean v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 484
    sget-object v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->TAG:Ljava/lang/String;

    const-string v3, "----the page idx is not valid--------------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_2
    :goto_0
    return v0

    .line 485
    :cond_3
    iget-boolean v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mInitialized:Z

    if-nez v2, :cond_7

    .line 487
    sget-boolean v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 488
    sget-object v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->TAG:Ljava/lang/String;

    const-string v3, "------show for the first time---- "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_4
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 493
    .local v1, lp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 494
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->measure(II)V

    .line 496
    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mViewLeftPadding:I

    if-gez v2, :cond_5

    .line 497
    iput v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mViewLeftPadding:I

    .line 498
    sget-boolean v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 499
    sget-object v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->TAG:Ljava/lang/String;

    const-string v3, "-------default-----mViewLeftPadding----0---"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_5
    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mViewTopPadding:I

    if-gez v2, :cond_6

    .line 502
    iput v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mViewTopPadding:I

    .line 503
    sget-boolean v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->DEBUG:Z

    if-eqz v2, :cond_6

    .line 504
    sget-object v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->TAG:Ljava/lang/String;

    const-string v3, "---1----default-------mViewTopPadding----0-"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_6
    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mViewLeftPadding:I

    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mViewTopPadding:I

    invoke-virtual {p0, v2, v3, v5, v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->setPadding(IIII)V

    .line 507
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->setValue()V

    .line 508
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->updateView(I)V

    .line 509
    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->setVisibility(I)V

    .line 510
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mInitialized:Z

    .line 511
    const/4 v0, 0x1

    .line 512
    goto :goto_0

    .line 514
    .end local v1           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_7
    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mPostPageIdx:I

    if-lez v2, :cond_a

    .line 516
    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mPostPageIdx:I

    if-eq v2, p1, :cond_8

    .line 518
    iput p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mPostPageIdx:I

    .line 519
    sget-boolean v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->DEBUG:Z

    if-eqz v2, :cond_8

    .line 520
    sget-object v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "----showpage----reset mPostPageIdx ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mPostPageIdx:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_8
    :goto_1
    sget-boolean v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->DEBUG:Z

    if-eqz v2, :cond_9

    .line 543
    sget-object v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "------mCurPageIdx-------"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mCurPageIdx:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_9
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 524
    :cond_a
    sget-boolean v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->DEBUG:Z

    if-eqz v2, :cond_b

    .line 525
    sget-object v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "------scroll-------mCurPageIdx = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mCurPageIdx:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_b
    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mCurPageIdx:I

    if-ne v2, p1, :cond_c

    .line 527
    sget-boolean v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->DEBUG:Z

    if-eqz v2, :cond_8

    .line 528
    sget-object v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->TAG:Ljava/lang/String;

    const-string v3, "----------no change---------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 529
    :cond_c
    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mCurPageIdx:I

    if-ge v2, p1, :cond_e

    .line 530
    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mCurPageIdx:I

    add-int/lit8 v2, v2, 0x1

    if-ne p1, v2, :cond_d

    .line 531
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->pageDown()V

    goto :goto_1

    .line 533
    :cond_d
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->pageUp()V

    goto :goto_1

    .line 535
    :cond_e
    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mCurPageIdx:I

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_f

    .line 536
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->pageUp()V

    goto :goto_1

    .line 538
    :cond_f
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->pageDown()V

    goto :goto_1
.end method
