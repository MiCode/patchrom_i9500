.class public Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;
.super Ljava/lang/Object;
.source "SimeKeyboardSetPopupWindow.java"


# static fields
.field private static final DEBUG:Z

.field public static final INSTANCE:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mWindow:Landroid/widget/PopupWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;->TAG:Ljava/lang/String;

    .line 41
    new-instance v0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;

    invoke-direct {v0}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;-><init>()V

    sput-object v0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;->INSTANCE:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;->mWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;->mWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;->mWindow:Landroid/widget/PopupWindow;

    .line 158
    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;->mWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show(Lcom/samsung/inputmethod/SamsungIME;Landroid/view/View;)V
    .locals 11
    .parameter "ime"
    .parameter "anchorView"

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;->dismiss()V

    .line 71
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 72
    :cond_0
    sget-object v7, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "show(), null pointer! ime: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", anchorView: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :goto_0
    return-void

    .line 77
    :cond_1
    new-instance v7, Landroid/widget/PopupWindow;

    invoke-direct {v7, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;->mWindow:Landroid/widget/PopupWindow;

    .line 79
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SamsungIME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f03000d

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;

    .line 82
    .local v1, popupView:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;
    invoke-virtual {v1, p1, p0}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->build(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;)V

    .line 84
    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 85
    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;->mWindow:Landroid/widget/PopupWindow;

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;->mWindow:Landroid/widget/PopupWindow;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 88
    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;->mWindow:Landroid/widget/PopupWindow;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 89
    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;->mWindow:Landroid/widget/PopupWindow;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 90
    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;->mWindow:Landroid/widget/PopupWindow;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 92
    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;->mWindow:Landroid/widget/PopupWindow;

    new-instance v8, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow$1;

    invoke-direct {v8, p0}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow$1;-><init>(Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;)V

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 107
    const/4 v7, 0x2

    new-array v5, v7, [I

    .line 108
    .local v5, viewLocInWin:[I
    invoke-virtual {p2, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 109
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 110
    .local v6, viewWidth:I
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 112
    .local v4, viewHeight:I
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v2

    .line 114
    .local v2, skbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;
    if-nez v2, :cond_2

    .line 115
    sget-object v7, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "show(), skbContainer is null. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 119
    :cond_2
    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getHeight()I

    move-result v3

    .line 121
    .local v3, skbHeight:I
    array-length v7, v5

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 122
    const/4 v7, 0x0

    aget v7, v5, v7

    div-int/lit8 v8, v6, 0x2

    add-int/2addr v7, v8

    invoke-virtual {v1, v7}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->adjustPointers(I)V

    .line 125
    :cond_3
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v7

    sget-object v8, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v7, v8, :cond_4

    .line 126
    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;->mWindow:Landroid/widget/PopupWindow;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-virtual {v7, v8, v9}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 128
    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;->mWindow:Landroid/widget/PopupWindow;

    const/4 v8, 0x0

    neg-int v9, v3

    invoke-virtual {v7, v2, v8, v9}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto/16 :goto_0

    .line 130
    :cond_4
    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;->mWindow:Landroid/widget/PopupWindow;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-virtual {v7, v8, v9}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 133
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v0

    .line 135
    .local v0, inputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteFSMode()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 137
    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;->mWindow:Landroid/widget/PopupWindow;

    const/16 v8, 0x53

    const/4 v9, 0x0

    add-int v10, v3, v4

    invoke-virtual {v7, v2, v8, v9, v10}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0

    .line 140
    :cond_5
    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;->mWindow:Landroid/widget/PopupWindow;

    const/4 v8, 0x0

    neg-int v9, v3

    invoke-virtual {v7, v2, v8, v9}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto/16 :goto_0
.end method
