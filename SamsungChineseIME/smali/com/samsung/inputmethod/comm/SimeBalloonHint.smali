.class public Lcom/samsung/inputmethod/comm/SimeBalloonHint;
.super Landroid/widget/PopupWindow;
.source "SimeBalloonHint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/comm/SimeBalloonHint$1;,
        Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;,
        Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;
    }
.end annotation


# static fields
.field public static final TIME_DELAY_DISMISS:I = 0x96

.field public static final TIME_DELAY_SHOW:I


# instance fields
.field private mBalloonTimer:Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;

.field mBalloonView:Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;

.field private mContext:Landroid/content/Context;

.field private mForceDismiss:Z

.field private mMeasureSpecMode:I

.field private mPaddingRect:Landroid/graphics/Rect;

.field private mParent:Landroid/view/View;

.field private mParentLocationInWindow:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 2
    .parameter "context"
    .parameter "parent"
    .parameter "measureSpecMode"

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mPaddingRect:Landroid/graphics/Rect;

    .line 91
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mParentLocationInWindow:[I

    .line 95
    iput-object p1, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mContext:Landroid/content/Context;

    .line 96
    iput-object p2, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mParent:Landroid/view/View;

    .line 97
    iput p3, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mMeasureSpecMode:I

    .line 101
    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->setTouchable(Z)V

    .line 102
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    new-instance v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;

    invoke-direct {v0, p0, p1}, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;-><init>(Lcom/samsung/inputmethod/comm/SimeBalloonHint;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mBalloonView:Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;

    .line 105
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mBalloonView:Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->setClickable(Z)V

    .line 106
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mBalloonView:Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->setContentView(Landroid/view/View;)V

    .line 108
    new-instance v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;-><init>(Lcom/samsung/inputmethod/comm/SimeBalloonHint;Lcom/samsung/inputmethod/comm/SimeBalloonHint$1;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mBalloonTimer:Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;

    .line 109
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/inputmethod/comm/SimeBalloonHint;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mParentLocationInWindow:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/inputmethod/comm/SimeBalloonHint;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mParent:Landroid/view/View;

    return-object v0
.end method

.method private setBalloonSize(II)V
    .locals 9
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 264
    iget v7, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mMeasureSpecMode:I

    invoke-static {p1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 266
    .local v4, widthMeasureSpec:I
    iget v7, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mMeasureSpecMode:I

    invoke-static {p2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 268
    .local v0, heightMeasureSpec:I
    iget-object v7, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mBalloonView:Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;

    invoke-virtual {v7, v4, v0}, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->measure(II)V

    .line 270
    invoke-virtual {p0}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->getWidth()I

    move-result v3

    .line 272
    .local v3, oldWidth:I
    iget-object v7, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mBalloonView:Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->getPaddingLeft()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->getPaddingRight()I

    move-result v8

    add-int v2, v7, v8

    .line 274
    .local v2, newWidth:I
    iget-object v7, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mBalloonView:Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {p0}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->getPaddingTop()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->getPaddingBottom()I

    move-result v8

    add-int v1, v7, v8

    .line 276
    .local v1, newHeight:I
    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->setWidth(I)V

    .line 277
    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->setHeight(I)V

    .line 289
    iput-boolean v5, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mForceDismiss:Z

    .line 290
    invoke-virtual {p0}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 291
    sub-int v7, v3, v2

    if-gt v7, v6, :cond_0

    sub-int v7, v2, v3

    if-le v7, v6, :cond_1

    :cond_0
    move v5, v6

    :cond_1
    iput-boolean v5, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mForceDismiss:Z

    .line 293
    :cond_2
    return-void
.end method


# virtual methods
.method public delayedDismiss(J)V
    .locals 8
    .parameter "delay"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v3, 0x2

    const/4 v5, -0x1

    .line 242
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mBalloonTimer:Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;->isPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mBalloonTimer:Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;->removeTimer()Z

    .line 244
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mBalloonTimer:Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;->getAction()I

    move-result v7

    .line 245
    .local v7, pendingAction:I
    cmp-long v0, v1, p1

    if-eqz v0, :cond_0

    if-eq v3, v7, :cond_0

    .line 246
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mBalloonTimer:Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;->run()V

    .line 249
    .end local v7           #pendingAction:I
    :cond_0
    cmp-long v0, p1, v1

    if-gtz v0, :cond_1

    .line 250
    invoke-virtual {p0}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->dismiss()V

    .line 255
    :goto_0
    return-void

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mBalloonTimer:Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;

    const/4 v4, 0x0

    move-wide v1, p1

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;->startTimer(JI[III)V

    goto :goto_0
.end method

.method public delayedShow(J[I)V
    .locals 7
    .parameter "delay"
    .parameter "locationInParent"

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x1

    .line 210
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mBalloonTimer:Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;->isPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mBalloonTimer:Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;->removeTimer()Z

    .line 213
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_2

    .line 214
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 223
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mParentLocationInWindow:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 216
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mParent:Landroid/view/View;

    const/16 v1, 0x33

    const/4 v2, 0x0

    aget v2, p3, v2

    aget v4, p3, v3

    iget-object v5, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mParentLocationInWindow:[I

    aget v3, v5, v3

    add-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mBalloonTimer:Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;

    move-wide v1, p1

    move-object v4, p3

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;->startTimer(JI[III)V

    goto :goto_0
.end method

.method public delayedUpdate(J[III)V
    .locals 7
    .parameter "delay"
    .parameter "locationInParent"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x1

    .line 227
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mBalloonView:Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->invalidate()V

    .line 228
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mBalloonTimer:Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;->isPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mBalloonTimer:Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;->removeTimer()Z

    .line 231
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mParentLocationInWindow:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 233
    const/4 v0, 0x0

    aget v0, p3, v0

    aget v1, p3, v3

    iget-object v2, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mParentLocationInWindow:[I

    aget v2, v2, v3

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1, p4, p5}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->update(IIII)V

    .line 239
    :goto_0
    return-void

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mBalloonTimer:Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;

    const/4 v3, 0x3

    move-wide v1, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;->startTimer(JI[III)V

    goto :goto_0
.end method

.method public getBallonDistanceFromButton()I
    .locals 3

    .prologue
    .line 297
    iget-object v1, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0063

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 298
    .local v0, BallonDistanceFromButton:I
    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPadding()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mPaddingRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getPaddingBottom()I
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mPaddingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getPaddingLeft()I
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mPaddingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mPaddingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mPaddingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public needForceDismiss()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mForceDismiss:Z

    return v0
.end method

.method public removeTimer()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mBalloonTimer:Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;->isPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mBalloonTimer:Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonTimer;->removeTimer()Z

    .line 261
    :cond_0
    return-void
.end method

.method public setBalloonBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "drawable"

    .prologue
    const/4 v1, 0x0

    .line 122
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mBalloonView:Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 130
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mBalloonView:Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    if-eqz p1, :cond_1

    .line 126
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mPaddingRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mPaddingRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public setBalloonConfig(FFZIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "diff"
    .parameter "textSize"
    .parameter "textBold"
    .parameter "textColor"
    .parameter "width"
    .parameter "height"
    .parameter "prev"
    .parameter "current"
    .parameter "next"

    .prologue
    .line 182
    invoke-direct {p0, p5, p6}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->setBalloonSize(II)V

    .line 183
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mBalloonView:Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->setSpaceConfig(FFZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public setBalloonConfig(Landroid/graphics/drawable/Drawable;II)V
    .locals 1
    .parameter "icon"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mBalloonView:Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 173
    invoke-direct {p0, p2, p3}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->setBalloonSize(II)V

    .line 174
    return-void
.end method

.method public setBalloonConfig(Ljava/lang/String;FZIII)V
    .locals 1
    .parameter "label"
    .parameter "textSize"
    .parameter "textBold"
    .parameter "textColor"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mBalloonView:Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->setTextConfig(Ljava/lang/String;FZI)V

    .line 157
    invoke-direct {p0, p5, p6}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->setBalloonSize(II)V

    .line 158
    return-void
.end method

.method public setInScreen(Z)V
    .locals 0
    .parameter "isInScreen"

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->setLayoutInScreenEnabled(Z)V

    .line 138
    return-void
.end method

.method public setParentView(Landroid/view/View;)V
    .locals 0
    .parameter "parentView"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->mParent:Landroid/view/View;

    .line 134
    return-void
.end method
