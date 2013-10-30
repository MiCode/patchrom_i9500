.class public Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;
.super Ljava/lang/Object;
.source "SimeSkbMiniPopWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopupListener;,
        Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MiniPopupWindow"

.field public static final USER_SYMBOL_LIST:Ljava/lang/String; = "usersymbollist"

.field private static mSymbolHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static miniSymbolScreenon:Z

.field public static minipopup_touch_outside:Z


# instance fields
.field private domainText:[Ljava/lang/String;

.field private domainText_HK:[Ljava/lang/String;

.field itemHeight:I

.field itemWidth:I

.field private keyboardSize:I

.field private mColum:I

.field private mDataHander:[Ljava/lang/String;

.field private mIme:Lcom/samsung/inputmethod/SamsungIME;

.field private mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

.field private mListener:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopupListener;

.field private mMyType:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

.field mParent:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

.field private mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mRow:I

.field private mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

.field public mWindowHeight:I

.field public mWindowWidth:I

.field private smileyText:[Ljava/lang/String;

.field private symbolsFirstLine:[Ljava/lang/String;

.field private webSiteText:[Ljava/lang/String;

.field private webSiteText_CTC:[Ljava/lang/String;

.field private webSiteText_HK:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    sput-boolean v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->miniSymbolScreenon:Z

    .line 42
    sput-boolean v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->minipopup_touch_outside:Z

    return-void
.end method

.method public constructor <init>(Lcom/samsung/inputmethod/SamsungIME;)V
    .locals 9
    .parameter "ime"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v1, 0x6

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->keyboardSize:I

    .line 52
    iput v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemWidth:I

    .line 53
    iput v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemHeight:I

    .line 69
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "gmail.com"

    aput-object v2, v1, v4

    const-string v2, "sohu.com"

    aput-object v2, v1, v5

    const-string v2, "sina.com"

    aput-object v2, v1, v6

    const-string v2, "163.com"

    aput-object v2, v1, v7

    const-string v2, "hotmail.com"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "126.com"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "qq.com"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "263.net"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->webSiteText:[Ljava/lang/String;

    .line 70
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "gmail.com"

    aput-object v2, v1, v4

    const-string v2, "sohu.com"

    aput-object v2, v1, v5

    const-string v2, "sina.com"

    aput-object v2, v1, v6

    const-string v2, "163.com"

    aput-object v2, v1, v7

    const-string v2, "hotmail.com"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "189.cn"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "qq.com"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "126.com"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->webSiteText_CTC:[Ljava/lang/String;

    .line 71
    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "gmail.com"

    aput-object v2, v1, v4

    const-string v2, "sina.com"

    aput-object v2, v1, v5

    const-string v2, "hotmail.com"

    aput-object v2, v1, v6

    const-string v2, "yahoo.com"

    aput-object v2, v1, v7

    iput-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->webSiteText_HK:[Ljava/lang/String;

    .line 73
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ".net"

    aput-object v2, v1, v4

    const-string v2, ".org"

    aput-object v2, v1, v5

    const-string v2, ".edu"

    aput-object v2, v1, v6

    const-string v2, ".cn"

    aput-object v2, v1, v7

    const-string v2, ".gov"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, ".kr"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->domainText:[Ljava/lang/String;

    .line 74
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ".net"

    aput-object v2, v1, v4

    const-string v2, ".org"

    aput-object v2, v1, v5

    const-string v2, ".edu"

    aput-object v2, v1, v6

    const-string v2, ".com"

    aput-object v2, v1, v7

    const-string v2, ".gov"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, ".kr"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, ".tw"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, ".hk"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->domainText_HK:[Ljava/lang/String;

    .line 77
    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->keyboardSize:I

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->smileyText:[Ljava/lang/String;

    .line 79
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "-"

    aput-object v2, v1, v4

    const-string v2, "@"

    aput-object v2, v1, v5

    const-string v2, "\'"

    aput-object v2, v1, v6

    const-string v2, "!"

    aput-object v2, v1, v7

    const-string v2, "?"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, ","

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->symbolsFirstLine:[Ljava/lang/String;

    .line 83
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    .line 84
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Lcom/samsung/inputmethod/SamsungIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 85
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f03000e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;

    iput-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;

    .line 87
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;

    invoke-virtual {v1, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->setVisibility(I)V

    .line 90
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-direct {v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 92
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isPlatformKey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 v2, 0x7dc

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 96
    :cond_0
    sget-boolean v1, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_MINIPOPUP_CLOSE_BUTTON_HIDE:Z

    if-eqz v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 101
    :goto_0
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 102
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 103
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 104
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    new-instance v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopupListener;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopupListener;-><init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;)V

    iput-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mListener:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopupListener;

    .line 108
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;

    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mListener:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopupListener;

    invoke-virtual {v1, p1, v2, p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->initialize(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/candidate/SimeCandViewListener;Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;)V

    .line 109
    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;->SMILEY:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    iput-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mMyType:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mSymbolHistory:Ljava/util/ArrayList;

    .line 113
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->initSymbolHistory()V

    .line 116
    return-void

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mDataHander:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;)Lcom/samsung/inputmethod/SimeInputModeSwitcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;Lcom/samsung/inputmethod/SimeInputModeSwitcher;)Lcom/samsung/inputmethod/SimeInputModeSwitcher;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;)Lcom/samsung/inputmethod/SamsungIME;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    return-object v0
.end method

.method static synthetic access$402(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    return-object p1
.end method

.method static synthetic access$500(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->commitResultText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mMyType:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    return-object v0
.end method

.method private calculateWindowRect()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x4

    const-wide v8, 0x4007333333333333L

    const-wide/high16 v6, 0x3ff8

    const/4 v5, 0x2

    .line 124
    const/4 v2, 0x0

    .line 125
    .local v2, totalWidth:I
    const/4 v1, 0x0

    .line 127
    .local v1, totalHeight:I
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteFSMode()Z

    move-result v3

    if-nez v3, :cond_2

    .line 128
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getWidth()I

    move-result v2

    .line 129
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getHeight()I

    move-result v1

    .line 134
    :goto_0
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v0

    .line 135
    .local v0, dim:I
    const/16 v3, 0x140

    if-ne v0, v3, :cond_3

    .line 136
    const/16 v3, 0x64

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemWidth:I

    .line 137
    const/16 v3, 0x4b

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemHeight:I

    .line 151
    :goto_1
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->initSmileyData()V

    .line 153
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v3

    sget-object v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-eq v3, v4, :cond_0

    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v3

    sget-object v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_ONE_HAND:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v3, v4, :cond_c

    .line 154
    :cond_0
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mMyType:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    sget-object v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;->SMILEY:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    if-ne v3, v4, :cond_7

    .line 155
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->smileyText:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->setDisplayedData([Ljava/lang/String;)V

    .line 156
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->smileyText:[Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mDataHander:[Ljava/lang/String;

    .line 157
    iput v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mRow:I

    .line 158
    const/4 v3, 0x6

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mColum:I

    .line 160
    int-to-float v3, v1

    const v4, 0x3f19999a

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowHeight:I

    .line 161
    int-to-float v3, v2

    const v4, 0x3f2e147b

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowWidth:I

    .line 304
    :cond_1
    :goto_2
    return-void

    .line 131
    .end local v0           #dim:I
    :cond_2
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getWidth()I

    move-result v2

    .line 132
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getHeight()I

    move-result v3

    mul-int/lit8 v1, v3, 0x2

    goto :goto_0

    .line 138
    .restart local v0       #dim:I
    :cond_3
    const/16 v3, 0xf0

    if-ne v0, v3, :cond_4

    .line 139
    const/16 v3, 0x50

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemWidth:I

    .line 140
    const/16 v3, 0x2d

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemHeight:I

    goto :goto_1

    .line 141
    :cond_4
    const/16 v3, 0xa0

    if-ne v0, v3, :cond_5

    .line 142
    const/16 v3, 0x37

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemWidth:I

    .line 143
    const/16 v3, 0x23

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemHeight:I

    goto :goto_1

    .line 144
    :cond_5
    const/16 v3, 0x1e0

    if-ne v0, v3, :cond_6

    .line 145
    const/16 v3, 0x96

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemWidth:I

    .line 146
    const/16 v3, 0x78

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemHeight:I

    goto :goto_1

    .line 148
    :cond_6
    const/16 v3, 0x50

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemWidth:I

    .line 149
    const/16 v3, 0x37

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemHeight:I

    goto :goto_1

    .line 163
    :cond_7
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mMyType:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    sget-object v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;->DOMAIN:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    if-ne v3, v4, :cond_9

    .line 164
    invoke-static {}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->imIsHKTWModel()Z

    move-result v3

    if-eqz v3, :cond_8

    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_INCLUDE_HKTW_LANGUAGE:Z

    if-nez v3, :cond_8

    .line 165
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->domainText_HK:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->setDisplayedData([Ljava/lang/String;)V

    .line 166
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->domainText_HK:[Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mDataHander:[Ljava/lang/String;

    .line 167
    iput v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mRow:I

    .line 168
    iput v10, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mColum:I

    .line 170
    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemWidth:I

    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mColum:I

    mul-int/2addr v3, v4

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowWidth:I

    .line 171
    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemHeight:I

    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mRow:I

    mul-int/2addr v3, v4

    int-to-double v3, v3

    mul-double/2addr v3, v6

    double-to-int v3, v3

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowHeight:I

    goto :goto_2

    .line 174
    :cond_8
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->domainText:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->setDisplayedData([Ljava/lang/String;)V

    .line 175
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->domainText:[Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mDataHander:[Ljava/lang/String;

    .line 176
    iput v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mRow:I

    .line 177
    iput v11, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mColum:I

    .line 179
    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemWidth:I

    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mColum:I

    mul-int/2addr v3, v4

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowWidth:I

    .line 180
    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemHeight:I

    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mRow:I

    mul-int/2addr v3, v4

    int-to-double v3, v3

    mul-double/2addr v3, v6

    double-to-int v3, v3

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowHeight:I

    goto/16 :goto_2

    .line 183
    :cond_9
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mMyType:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    sget-object v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;->WEBSITE:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    if-ne v3, v4, :cond_1

    .line 184
    invoke-static {}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->imIsHKTWModel()Z

    move-result v3

    if-eqz v3, :cond_a

    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_INCLUDE_HKTW_LANGUAGE:Z

    if-nez v3, :cond_a

    .line 185
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->webSiteText_HK:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->setDisplayedData([Ljava/lang/String;)V

    .line 186
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->webSiteText_HK:[Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mDataHander:[Ljava/lang/String;

    .line 187
    iput v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mRow:I

    .line 188
    iput v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mColum:I

    .line 190
    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemWidth:I

    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mColum:I

    mul-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowWidth:I

    .line 191
    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemHeight:I

    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mRow:I

    mul-int/2addr v3, v4

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowHeight:I

    goto/16 :goto_2

    .line 192
    :cond_a
    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_CTC_WEBSITE:Z

    if-eqz v3, :cond_b

    .line 193
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->webSiteText_CTC:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->setDisplayedData([Ljava/lang/String;)V

    .line 194
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->webSiteText_CTC:[Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mDataHander:[Ljava/lang/String;

    .line 196
    iput v10, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mRow:I

    .line 197
    iput v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mColum:I

    .line 199
    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemWidth:I

    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mColum:I

    mul-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowWidth:I

    .line 200
    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemHeight:I

    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mRow:I

    mul-int/2addr v3, v4

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowHeight:I

    goto/16 :goto_2

    .line 202
    :cond_b
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->webSiteText:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->setDisplayedData([Ljava/lang/String;)V

    .line 203
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->webSiteText:[Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mDataHander:[Ljava/lang/String;

    .line 205
    iput v10, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mRow:I

    .line 206
    iput v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mColum:I

    .line 208
    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemWidth:I

    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mColum:I

    mul-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowWidth:I

    .line 209
    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemHeight:I

    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mRow:I

    mul-int/2addr v3, v4

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowHeight:I

    goto/16 :goto_2

    .line 213
    :cond_c
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mMyType:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    sget-object v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;->SMILEY:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    if-ne v3, v4, :cond_e

    .line 214
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->smileyText:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->setDisplayedData([Ljava/lang/String;)V

    .line 215
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->smileyText:[Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mDataHander:[Ljava/lang/String;

    .line 216
    iput v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mRow:I

    .line 217
    const/4 v3, 0x6

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mColum:I

    .line 219
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v5, :cond_d

    .line 220
    int-to-float v3, v1

    const v4, 0x3f570a3d

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowHeight:I

    .line 221
    int-to-float v3, v2

    const/high16 v4, 0x3f00

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowWidth:I

    goto/16 :goto_2

    .line 224
    :cond_d
    int-to-float v3, v1

    const v4, 0x3f266666

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowHeight:I

    .line 225
    int-to-float v3, v2

    const v4, 0x3f451eb8

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowWidth:I

    goto/16 :goto_2

    .line 228
    :cond_e
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mMyType:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    sget-object v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;->DOMAIN:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    if-ne v3, v4, :cond_12

    .line 229
    invoke-static {}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->imIsHKTWModel()Z

    move-result v3

    if-eqz v3, :cond_10

    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_INCLUDE_HKTW_LANGUAGE:Z

    if-nez v3, :cond_10

    .line 230
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->domainText_HK:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->setDisplayedData([Ljava/lang/String;)V

    .line 231
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->domainText_HK:[Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mDataHander:[Ljava/lang/String;

    .line 232
    iput v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mRow:I

    .line 233
    iput v10, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mColum:I

    .line 234
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v5, :cond_f

    .line 235
    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemWidth:I

    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mColum:I

    mul-int/2addr v3, v4

    int-to-double v3, v3

    mul-double/2addr v3, v6

    double-to-int v3, v3

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowWidth:I

    .line 236
    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemHeight:I

    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mRow:I

    mul-int/2addr v3, v4

    int-to-double v3, v3

    mul-double/2addr v3, v6

    double-to-int v3, v3

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowHeight:I

    goto/16 :goto_2

    .line 239
    :cond_f
    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemWidth:I

    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mColum:I

    mul-int/2addr v3, v4

    int-to-double v3, v3

    mul-double/2addr v3, v6

    double-to-int v3, v3

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowWidth:I

    .line 240
    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemHeight:I

    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mRow:I

    mul-int/2addr v3, v4

    int-to-double v3, v3

    mul-double/2addr v3, v6

    double-to-int v3, v3

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowHeight:I

    goto/16 :goto_2

    .line 243
    :cond_10
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->domainText:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->setDisplayedData([Ljava/lang/String;)V

    .line 244
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->domainText:[Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mDataHander:[Ljava/lang/String;

    .line 245
    iput v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mRow:I

    .line 246
    iput v11, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mColum:I

    .line 247
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v5, :cond_11

    .line 248
    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemWidth:I

    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mColum:I

    mul-int/2addr v3, v4

    int-to-double v3, v3

    mul-double/2addr v3, v6

    double-to-int v3, v3

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowWidth:I

    .line 249
    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemHeight:I

    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mRow:I

    mul-int/2addr v3, v4

    int-to-double v3, v3

    mul-double/2addr v3, v6

    double-to-int v3, v3

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowHeight:I

    goto/16 :goto_2

    .line 252
    :cond_11
    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemWidth:I

    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mColum:I

    mul-int/2addr v3, v4

    int-to-double v3, v3

    mul-double/2addr v3, v6

    double-to-int v3, v3

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowWidth:I

    .line 253
    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemHeight:I

    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mRow:I

    mul-int/2addr v3, v4

    int-to-double v3, v3

    mul-double/2addr v3, v6

    double-to-int v3, v3

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowHeight:I

    goto/16 :goto_2

    .line 258
    :cond_12
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mMyType:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    sget-object v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;->WEBSITE:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    if-ne v3, v4, :cond_1

    .line 261
    invoke-static {}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->imIsHKTWModel()Z

    move-result v3

    if-eqz v3, :cond_14

    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_INCLUDE_HKTW_LANGUAGE:Z

    if-nez v3, :cond_14

    .line 262
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->webSiteText_HK:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->setDisplayedData([Ljava/lang/String;)V

    .line 263
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->webSiteText_HK:[Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mDataHander:[Ljava/lang/String;

    .line 264
    iput v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mRow:I

    .line 265
    iput v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mColum:I

    .line 266
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v5, :cond_13

    .line 267
    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemWidth:I

    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mColum:I

    mul-int/2addr v3, v4

    int-to-double v3, v3

    mul-double/2addr v3, v8

    double-to-int v3, v3

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowWidth:I

    .line 268
    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemHeight:I

    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mRow:I

    mul-int/2addr v3, v4

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowHeight:I

    goto/16 :goto_2

    .line 270
    :cond_13
    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemWidth:I

    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mColum:I

    mul-int/2addr v3, v4

    int-to-double v3, v3

    mul-double/2addr v3, v8

    double-to-int v3, v3

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowWidth:I

    .line 271
    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemHeight:I

    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mRow:I

    mul-int/2addr v3, v4

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowHeight:I

    goto/16 :goto_2

    .line 274
    :cond_14
    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_CTC_WEBSITE:Z

    if-eqz v3, :cond_16

    .line 275
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->webSiteText_CTC:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->setDisplayedData([Ljava/lang/String;)V

    .line 276
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->webSiteText_CTC:[Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mDataHander:[Ljava/lang/String;

    .line 278
    iput v10, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mRow:I

    .line 279
    iput v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mColum:I

    .line 281
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v5, :cond_15

    .line 282
    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemWidth:I

    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mColum:I

    mul-int/2addr v3, v4

    int-to-double v3, v3

    mul-double/2addr v3, v8

    double-to-int v3, v3

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowWidth:I

    .line 283
    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemHeight:I

    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mRow:I

    mul-int/2addr v3, v4

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowHeight:I

    goto/16 :goto_2

    .line 285
    :cond_15
    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemWidth:I

    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mColum:I

    mul-int/2addr v3, v4

    int-to-double v3, v3

    mul-double/2addr v3, v8

    double-to-int v3, v3

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowWidth:I

    .line 286
    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemHeight:I

    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mRow:I

    mul-int/2addr v3, v4

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowHeight:I

    goto/16 :goto_2

    .line 289
    :cond_16
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->webSiteText:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->setDisplayedData([Ljava/lang/String;)V

    .line 290
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->webSiteText:[Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mDataHander:[Ljava/lang/String;

    .line 292
    iput v10, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mRow:I

    .line 293
    iput v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mColum:I

    .line 294
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v5, :cond_17

    .line 295
    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemWidth:I

    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mColum:I

    mul-int/2addr v3, v4

    int-to-double v3, v3

    mul-double/2addr v3, v8

    double-to-int v3, v3

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowWidth:I

    .line 296
    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemHeight:I

    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mRow:I

    mul-int/2addr v3, v4

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowHeight:I

    goto/16 :goto_2

    .line 298
    :cond_17
    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemWidth:I

    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mColum:I

    mul-int/2addr v3, v4

    int-to-double v3, v3

    mul-double/2addr v3, v8

    double-to-int v3, v3

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowWidth:I

    .line 299
    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemHeight:I

    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mRow:I

    mul-int/2addr v3, v4

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowHeight:I

    goto/16 :goto_2
.end method

.method private commitResultText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 517
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 518
    return-void
.end method

.method private initSmileyData()V
    .locals 5

    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->getSymbolHistory()Ljava/util/ArrayList;

    move-result-object v1

    .line 442
    .local v1, userSymArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->keyboardSize:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 444
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->smileyText:[Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v3, v0

    .line 445
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->saveSymbolHistoryToPreference()V

    .line 446
    const-string v2, "MiniPopupWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(user)smileyText["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->smileyText:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 450
    :cond_0
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->smileyText:[Ljava/lang/String;

    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->keyboardSize:I

    add-int/lit8 v3, v3, -0x1

    const-string v4, "?#*"

    aput-object v4, v2, v3

    .line 452
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->keyboardSize:I

    :goto_1
    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->keyboardSize:I

    mul-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_1

    .line 454
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->smileyText:[Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->symbolsFirstLine:[Ljava/lang/String;

    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->keyboardSize:I

    sub-int v4, v0, v4

    aget-object v3, v3, v4

    aput-object v3, v2, v0

    .line 455
    const-string v2, "MiniPopupWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "smileyText["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->smileyText:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 460
    :cond_1
    return-void
.end method


# virtual methods
.method public cancelMiniPopupWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 529
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->dimSoftKeyboard(Z)V

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 534
    sput-boolean v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->miniSymbolScreenon:Z

    .line 535
    sput-boolean v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->minipopup_touch_outside:Z

    .line 537
    return-void
.end method

.method public getMiniPopWindowType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mMyType:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    return-object v0
.end method

.method public getSymbolHistory()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 593
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mSymbolHistory:Ljava/util/ArrayList;

    return-object v0
.end method

.method public initSymbolHistory()V
    .locals 5

    .prologue
    .line 541
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 545
    .local v1, sp:Landroid/content/SharedPreferences;
    const/4 v3, 0x6

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "&"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "^"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "%"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "$"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "#"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "?#*"

    aput-object v4, v2, v3

    .line 550
    .local v2, splitTemp:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 551
    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mSymbolHistory:Ljava/util/ArrayList;

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 553
    :cond_0
    return-void
.end method

.method public isFixedSymbolInPopWin(Ljava/lang/String;)Z
    .locals 4
    .parameter "text"

    .prologue
    .line 557
    const/4 v0, 0x0

    .line 561
    .local v0, bRet:Z
    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mSymbolHistory:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 578
    :cond_0
    :goto_0
    return v0

    .line 565
    :cond_1
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->symbolsFirstLine:[Ljava/lang/String;

    array-length v2, v3

    .line 566
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 569
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->symbolsFirstLine:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 570
    const/4 v0, 0x1

    .line 571
    goto :goto_0

    .line 566
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public isShowingMiniPopupWindow()Z
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    const/4 v0, 0x1

    .line 524
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveSymbolHistoryToPreference()V
    .locals 7

    .prologue
    const/16 v2, 0x14

    .line 598
    sget-object v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mSymbolHistory:Ljava/util/ArrayList;

    if-nez v5, :cond_0

    .line 611
    :goto_0
    return-void

    .line 601
    :cond_0
    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 602
    .local v3, sp:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 603
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    sget-object v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mSymbolHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v2, :cond_1

    .line 604
    .local v2, itemCount:I
    :goto_1
    const-string v4, ""

    .line 606
    .local v4, temp:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v2, :cond_2

    .line 607
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mSymbolHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 606
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 603
    .end local v1           #i:I
    .end local v2           #itemCount:I
    .end local v4           #temp:Ljava/lang/String;
    :cond_1
    sget-object v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mSymbolHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_1

    .line 609
    .restart local v1       #i:I
    .restart local v2       #itemCount:I
    .restart local v4       #temp:Ljava/lang/String;
    :cond_2
    const-string v5, "usersymbollist"

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 610
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public saveSymbolsToHistory(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 583
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mSymbolHistory:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 588
    :goto_0
    return-void

    .line 586
    :cond_0
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mSymbolHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 587
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mSymbolHistory:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public showSymbolTable(II)V
    .locals 8
    .parameter "locationX"
    .parameter "locationY"

    .prologue
    const-wide/high16 v6, 0x3ff8

    .line 405
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 421
    :goto_0
    return-void

    .line 408
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getFloatingAnchorLocation()Landroid/graphics/Point;

    move-result-object v0

    .line 409
    .local v0, anchor:Landroid/graphics/Point;
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mMyType:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    sget-object v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;->SMILEY:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    if-ne v1, v2, :cond_1

    .line 410
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemHeight:I

    int-to-double v4, v4

    div-double/2addr v4, v6

    double-to-int v4, v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    .line 412
    :cond_1
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mMyType:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    sget-object v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;->DOMAIN:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    if-ne v1, v2, :cond_2

    .line 413
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemHeight:I

    int-to-double v4, v4

    div-double/2addr v4, v6

    double-to-int v4, v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    .line 415
    :cond_2
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mMyType:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    sget-object v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;->WEBSITE:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    if-ne v1, v2, :cond_3

    .line 416
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemHeight:I

    int-to-double v4, v4

    div-double/2addr v4, v6

    double-to-int v4, v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    .line 419
    :cond_3
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemHeight:I

    int-to-double v4, v4

    div-double/2addr v4, v6

    double-to-int v4, v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    goto/16 :goto_0
.end method

.method public showWindow(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V
    .locals 13
    .parameter "type"
    .parameter "anchorSoftKey"

    .prologue
    .line 307
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 309
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mMyType:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    .line 313
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->calculateWindowRect()V

    .line 316
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->updateButtons()V

    .line 324
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;

    iget v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mRow:I

    iget v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mColum:I

    invoke-virtual {v4, v5, v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->creatTable(II)Z

    .line 326
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->setVisibility(I)V

    .line 327
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->invalidate()V

    .line 329
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowWidth:I

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 330
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mMyType:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    sget-object v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;->WEBSITE:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    if-ne v4, v5, :cond_3

    .line 331
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowHeight:I

    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 337
    :goto_0
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getWidth()I

    move-result v1

    .line 338
    .local v1, totalWidth:I
    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowWidth:I

    sub-int v4, v1, v4

    div-int/lit8 v2, v4, 0x2

    .line 339
    .local v2, x:I
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getHeight()I

    move-result v4

    iget v5, p2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->getPaddingBottom()I

    move-result v5

    sub-int v3, v4, v5

    .line 342
    .local v3, y:I
    iget v4, p2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    if-ge v4, v2, :cond_0

    .line 343
    iget v2, p2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    .line 345
    :cond_0
    iget v4, p2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mRight:I

    iget v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowWidth:I

    add-int/2addr v5, v2

    if-le v4, v5, :cond_1

    .line 346
    iget v4, p2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mRight:I

    iget v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowWidth:I

    sub-int v2, v4, v5

    .line 349
    :cond_1
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 350
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_c

    .line 351
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v4

    sget-object v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v4, v5, :cond_7

    .line 352
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getFloatingAnchorLocation()Landroid/graphics/Point;

    move-result-object v0

    .line 353
    .local v0, anchor:Landroid/graphics/Point;
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mMyType:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    sget-object v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;->SMILEY:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    if-ne v4, v5, :cond_4

    .line 354
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v5

    const/16 v6, 0x53

    iget v7, v0, Landroid/graphics/Point;->x:I

    iget v8, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemWidth:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    iget v8, v0, Landroid/graphics/Point;->y:I

    iget v9, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemHeight:I

    int-to-double v9, v9

    const-wide/high16 v11, 0x3ff8

    div-double/2addr v9, v11

    double-to-int v9, v9

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 386
    .end local v0           #anchor:Landroid/graphics/Point;
    :goto_1
    const/4 v4, 0x1

    sput-boolean v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->miniSymbolScreenon:Z

    .line 388
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->dimSoftKeyboard(Z)V

    .line 391
    :cond_2
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;

    new-instance v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$1;

    invoke-direct {v5, p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$1;-><init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;)V

    invoke-virtual {v4, v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 403
    return-void

    .line 334
    .end local v1           #totalWidth:I
    .end local v2           #x:I
    .end local v3           #y:I
    :cond_3
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowHeight:I

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto/16 :goto_0

    .line 356
    .restart local v0       #anchor:Landroid/graphics/Point;
    .restart local v1       #totalWidth:I
    .restart local v2       #x:I
    .restart local v3       #y:I
    :cond_4
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mMyType:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    sget-object v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;->DOMAIN:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    if-ne v4, v5, :cond_5

    .line 357
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v5

    const/16 v6, 0x53

    iget v7, v0, Landroid/graphics/Point;->x:I

    iget v8, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemWidth:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    iget v8, v0, Landroid/graphics/Point;->y:I

    iget v9, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemHeight:I

    int-to-double v9, v9

    const-wide/high16 v11, 0x3ff8

    div-double/2addr v9, v11

    double-to-int v9, v9

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1

    .line 359
    :cond_5
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mMyType:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    sget-object v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;->WEBSITE:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    if-ne v4, v5, :cond_6

    .line 360
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v5

    const/16 v6, 0x53

    iget v7, v0, Landroid/graphics/Point;->x:I

    iget v8, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemWidth:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    iget v8, v0, Landroid/graphics/Point;->y:I

    iget v9, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemHeight:I

    int-to-double v9, v9

    const-wide/high16 v11, 0x3ff8

    div-double/2addr v9, v11

    double-to-int v9, v9

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1

    .line 363
    :cond_6
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v5

    const/16 v6, 0x53

    iget v7, v0, Landroid/graphics/Point;->x:I

    iget v8, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemWidth:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    iget v8, v0, Landroid/graphics/Point;->y:I

    iget v9, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->itemHeight:I

    int-to-double v9, v9

    const-wide/high16 v11, 0x3ff8

    div-double/2addr v9, v11

    double-to-int v9, v9

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_1

    .line 366
    .end local v0           #anchor:Landroid/graphics/Point;
    :cond_7
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v4

    sget-object v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_ONE_HAND:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v4, v5, :cond_8

    .line 367
    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mWindowWidth:I

    sub-int v2, v1, v4

    .line 368
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getHeight()I

    move-result v4

    iget v5, p2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    sub-int v3, v4, v5

    .line 369
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v5

    const/16 v6, 0x53

    invoke-virtual {v4, v5, v6, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_1

    .line 370
    :cond_8
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mMyType:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    sget-object v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;->SMILEY:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    if-ne v4, v5, :cond_9

    .line 371
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v5

    const/16 v6, 0x53

    invoke-virtual {v4, v5, v6, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_1

    .line 373
    :cond_9
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mMyType:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    sget-object v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;->DOMAIN:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    if-ne v4, v5, :cond_a

    .line 374
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v5

    const/16 v6, 0x53

    invoke-virtual {v4, v5, v6, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_1

    .line 376
    :cond_a
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mMyType:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    sget-object v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;->WEBSITE:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    if-ne v4, v5, :cond_b

    .line 377
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v5

    const/16 v6, 0x53

    invoke-virtual {v4, v5, v6, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_1

    .line 380
    :cond_b
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v5

    const/16 v6, 0x53

    invoke-virtual {v4, v5, v6, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_1

    .line 384
    :cond_c
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->update()V

    goto/16 :goto_1
.end method
