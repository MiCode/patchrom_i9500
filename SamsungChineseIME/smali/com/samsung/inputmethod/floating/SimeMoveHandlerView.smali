.class public Lcom/samsung/inputmethod/floating/SimeMoveHandlerView;
.super Landroid/widget/ImageButton;
.source "SimeMoveHandlerView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimeMoveHandlerView"


# instance fields
.field private mDownPoint:Landroid/graphics/Point;

.field mIme:Lcom/samsung/inputmethod/SamsungIME;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, -0x1

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 47
    check-cast p1, Lcom/samsung/inputmethod/SamsungIME;

    .end local p1
    iput-object p1, p0, Lcom/samsung/inputmethod/floating/SimeMoveHandlerView;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    .line 49
    const v0, 0x7f020033

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/floating/SimeMoveHandlerView;->setImageResource(I)V

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/floating/SimeMoveHandlerView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 51
    invoke-virtual {p0, p0}, Lcom/samsung/inputmethod/floating/SimeMoveHandlerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 55
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/inputmethod/floating/SimeMoveHandlerView;->mDownPoint:Landroid/graphics/Point;

    .line 56
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v7, 0x4000

    const/4 v6, 0x0

    .line 60
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    .line 62
    .local v0, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingCandHeight()I

    move-result v4

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getMoveHandlerHeight()I

    move-result v5

    sub-int v3, v4, v5

    .line 66
    .local v3, paddingTop:I
    invoke-virtual {p0, v6, v3, v6, v6}, Lcom/samsung/inputmethod/floating/SimeMoveHandlerView;->setPadding(IIII)V

    .line 68
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowWidth()I

    move-result v2

    .line 69
    .local v2, measuredWidth:I
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getMoveHandlerHeight()I

    move-result v1

    .line 72
    .local v1, measuredHeight:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/floating/SimeMoveHandlerView;->getPaddingTop()I

    move-result v4

    add-int/2addr v1, v4

    .line 73
    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 74
    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 75
    invoke-virtual {p0, v2, v1}, Lcom/samsung/inputmethod/floating/SimeMoveHandlerView;->setMeasuredDimension(II)V

    .line 76
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "arg0"
    .parameter "event"

    .prologue
    .line 82
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 83
    .local v0, action:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v3, v5

    .line 84
    .local v3, x:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v4, v5

    .line 86
    .local v4, y:I
    const/4 v1, 0x0

    .line 87
    .local v1, distanceX:I
    const/4 v2, 0x0

    .line 89
    .local v2, distanceY:I
    packed-switch v0, :pswitch_data_0

    .line 117
    :goto_0
    const/4 v5, 0x0

    return v5

    .line 93
    :pswitch_0
    iget-object v5, p0, Lcom/samsung/inputmethod/floating/SimeMoveHandlerView;->mDownPoint:Landroid/graphics/Point;

    iput v3, v5, Landroid/graphics/Point;->x:I

    .line 94
    iget-object v5, p0, Lcom/samsung/inputmethod/floating/SimeMoveHandlerView;->mDownPoint:Landroid/graphics/Point;

    iput v4, v5, Landroid/graphics/Point;->y:I

    .line 97
    iget-object v5, p0, Lcom/samsung/inputmethod/floating/SimeMoveHandlerView;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->hideExpandCandidateWindow()Z

    goto :goto_0

    .line 100
    :pswitch_1
    iget-object v5, p0, Lcom/samsung/inputmethod/floating/SimeMoveHandlerView;->mDownPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int v1, v3, v5

    .line 101
    iget-object v5, p0, Lcom/samsung/inputmethod/floating/SimeMoveHandlerView;->mDownPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int v2, v4, v5

    .line 108
    iget-object v5, p0, Lcom/samsung/inputmethod/floating/SimeMoveHandlerView;->mDownPoint:Landroid/graphics/Point;

    iput v3, v5, Landroid/graphics/Point;->x:I

    .line 109
    iget-object v5, p0, Lcom/samsung/inputmethod/floating/SimeMoveHandlerView;->mDownPoint:Landroid/graphics/Point;

    iput v4, v5, Landroid/graphics/Point;->y:I

    .line 110
    iget-object v5, p0, Lcom/samsung/inputmethod/floating/SimeMoveHandlerView;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->updateFloatingPanel(II)V

    goto :goto_0

    .line 114
    :pswitch_2
    iget-object v5, p0, Lcom/samsung/inputmethod/floating/SimeMoveHandlerView;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->saveFloatingKeyboardPosition()V

    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
