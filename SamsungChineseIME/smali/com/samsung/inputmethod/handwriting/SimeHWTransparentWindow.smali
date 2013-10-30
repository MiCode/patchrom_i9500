.class Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;
.super Landroid/app/Dialog;
.source "SimeHWTransparentWindow.java"


# instance fields
.field private listenView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 44
    const v0, 0x1030054

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 45
    invoke-direct {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;->initDockWindow()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "theme"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 73
    invoke-direct {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;->initDockWindow()V

    .line 74
    return-void
.end method

.method private initDockWindow()V
    .locals 3

    .prologue
    const/16 v2, 0x108

    .line 158
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 159
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isPlatformKey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    const/16 v1, 0x7dc

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 164
    :goto_0
    const-string v1, "Handwrite Window"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 166
    const/16 v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 167
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 172
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 173
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 179
    return-void

    .line 162
    :cond_0
    const/16 v1, 0x3eb

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;->listenView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 188
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 190
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;->listenView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getSize()I
    .locals 3

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 88
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v2, 0x30

    if-eq v1, v2, :cond_0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v2, 0x50

    if-ne v1, v2, :cond_1

    .line 89
    :cond_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 91
    :goto_0
    return v1

    :cond_1
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0
.end method

.method public setGravity(I)V
    .locals 9
    .parameter "gravity"

    .prologue
    const/16 v8, 0x50

    const/16 v7, 0x30

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 141
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 143
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq v6, v7, :cond_0

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-ne v6, v8, :cond_3

    :cond_0
    move v2, v5

    .line 145
    .local v2, oldIsVertical:Z
    :goto_0
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 147
    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq v6, v7, :cond_1

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-ne v6, v8, :cond_4

    :cond_1
    move v1, v5

    .line 149
    .local v1, newIsVertical:Z
    :goto_1
    if-eq v2, v1, :cond_2

    .line 150
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 151
    .local v3, tmp:I
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 152
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 153
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 155
    .end local v3           #tmp:I
    :cond_2
    return-void

    .end local v1           #newIsVertical:Z
    .end local v2           #oldIsVertical:Z
    :cond_3
    move v2, v4

    .line 143
    goto :goto_0

    .restart local v2       #oldIsVertical:Z
    :cond_4
    move v1, v4

    .line 147
    goto :goto_1
.end method

.method public setListenView(Landroid/view/View;)V
    .locals 0
    .parameter "ls"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;->listenView:Landroid/view/View;

    .line 183
    return-void
.end method

.method public setPosition(IIII)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v3, -0x1

    .line 118
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 120
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v2, 0x30

    if-eq v1, v2, :cond_0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v2, 0x50

    if-ne v1, v2, :cond_1

    .line 121
    :cond_0
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 122
    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 127
    :goto_0
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 128
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 129
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 130
    return-void

    .line 124
    :cond_1
    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 125
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0
.end method

.method public setSize(I)V
    .locals 4
    .parameter "size"

    .prologue
    const/4 v3, -0x1

    .line 105
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 107
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v2, 0x30

    if-eq v1, v2, :cond_0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v2, 0x50

    if-ne v1, v2, :cond_1

    .line 108
    :cond_0
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 109
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 114
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 115
    return-void

    .line 111
    :cond_1
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 112
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0
.end method

.method public setToken(Landroid/os/IBinder;)V
    .locals 2
    .parameter "token"

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 50
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 51
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isPlatformKey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    const/16 v1, 0x7dc

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 56
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 57
    return-void

    .line 54
    :cond_0
    const/16 v1, 0x3eb

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0
.end method
