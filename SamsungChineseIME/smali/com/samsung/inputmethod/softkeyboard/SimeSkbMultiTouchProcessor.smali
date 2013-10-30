.class public Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;
.super Ljava/lang/Object;
.source "SimeSkbMultiTouchProcessor.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MultiTouch"


# instance fields
.field mActivePointerID:I

.field mCurEventIdx:I

.field private mMultiTouchListener:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchListener;

.field mNewEvent1:Landroid/view/MotionEvent;

.field mNewEvent2:Landroid/view/MotionEvent;

.field mNumEvent:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;->resetMultiTouchProcessor()V

    .line 38
    return-void
.end method

.method private initMultiTouchProcessor()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;->mNumEvent:I

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;->mCurEventIdx:I

    .line 101
    return-void
.end method

.method private resetMultiTouchProcessor()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 93
    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;->mActivePointerID:I

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;->mNumEvent:I

    .line 95
    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;->mCurEventIdx:I

    .line 96
    return-void
.end method

.method private setTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "me"

    .prologue
    .line 45
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;->mNumEvent:I

    packed-switch v0, :pswitch_data_0

    .line 65
    :goto_0
    return-void

    .line 48
    :pswitch_0
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;->mNewEvent1:Landroid/view/MotionEvent;

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;->mNumEvent:I

    goto :goto_0

    .line 55
    :pswitch_1
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;->mNewEvent2:Landroid/view/MotionEvent;

    .line 58
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;->mNumEvent:I

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public SetMultiTouchListener(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchListener;)V
    .locals 0
    .parameter "ls"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;->mMultiTouchListener:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchListener;

    .line 42
    return-void
.end method

.method public getTouchEvent()Landroid/view/MotionEvent;
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;->mCurEventIdx:I

    packed-switch v0, :pswitch_data_0

    .line 78
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 72
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;->mNewEvent1:Landroid/view/MotionEvent;

    goto :goto_0

    .line 75
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;->mNewEvent2:Landroid/view/MotionEvent;

    goto :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasMoreEvent()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 83
    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;->mCurEventIdx:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;->mCurEventIdx:I

    .line 84
    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;->mNumEvent:I

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;->mCurEventIdx:I

    if-ne v1, v2, :cond_1

    .line 86
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;->initMultiTouchProcessor()V

    .line 89
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;->mNumEvent:I

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;->mCurEventIdx:I

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public processMultiTouch(Landroid/view/MotionEvent;)Z
    .locals 20
    .parameter "me"

    .prologue
    .line 106
    invoke-direct/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;->initMultiTouchProcessor()V

    .line 108
    const/16 v16, 0x0

    .line 109
    .local v16, result:Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    .line 110
    .local v2, now:J
    const/4 v13, -0x1

    .line 111
    .local v13, downID:I
    const/16 v18, -0x1

    .line 112
    .local v18, upID:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v15

    .line 114
    .local v15, pointerCount:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 208
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;->setTouchEvent(Landroid/view/MotionEvent;)V

    .line 212
    :cond_0
    :goto_0
    return v16

    .line 116
    :pswitch_1
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v13

    .line 117
    invoke-direct/range {p0 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;->setTouchEvent(Landroid/view/MotionEvent;)V

    .line 118
    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;->mActivePointerID:I

    goto :goto_0

    .line 122
    :pswitch_2
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v18

    .line 123
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;->mActivePointerID:I

    move/from16 v0, v18

    if-ne v4, v0, :cond_1

    .line 124
    invoke-direct/range {p0 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;->setTouchEvent(Landroid/view/MotionEvent;)V

    .line 125
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;->mActivePointerID:I

    .line 131
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;->mMultiTouchListener:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchListener;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;->mMultiTouchListener:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchListener;

    invoke-interface {v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchListener;->checkIsMultiTouchState()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 132
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;->mMultiTouchListener:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchListener;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;->mActivePointerID:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    move/from16 v0, v18

    invoke-interface {v4, v5, v0, v6, v7}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchListener;->onMultiTouchFinished(IIFF)V

    goto :goto_0

    .line 128
    :cond_1
    const/16 v16, 0x1

    goto :goto_1

    .line 139
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    .line 142
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v11

    .line 143
    .local v11, dowIndex:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v13

    .line 144
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;->mActivePointerID:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 146
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;->mMultiTouchListener:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchListener;

    if-eqz v4, :cond_2

    .line 147
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;->mMultiTouchListener:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchListener;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;->mActivePointerID:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-interface {v4, v5, v13, v6, v7}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchListener;->onMultiTouchBegin(IIFF)V

    .line 150
    :cond_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;->mActivePointerID:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v19

    .line 151
    .local v19, upIndex:I
    const/4 v4, -0x1

    move/from16 v0, v19

    if-eq v0, v4, :cond_3

    .line 152
    const/4 v6, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v9

    move-wide v4, v2

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v17

    .line 156
    .local v17, up:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;->setTouchEvent(Landroid/view/MotionEvent;)V

    .line 165
    .end local v17           #up:Landroid/view/MotionEvent;
    .end local v19           #upIndex:I
    :cond_3
    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v9

    move-wide v4, v2

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v12

    .line 168
    .local v12, down:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;->setTouchEvent(Landroid/view/MotionEvent;)V

    .line 169
    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;->mActivePointerID:I

    goto/16 :goto_0

    .line 175
    .end local v11           #dowIndex:I
    .end local v12           #down:Landroid/view/MotionEvent;
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    .line 178
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v19

    .line 179
    .restart local v19       #upIndex:I
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v18

    .line 180
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;->mActivePointerID:I

    move/from16 v0, v18

    if-ne v4, v0, :cond_4

    .line 181
    const/4 v6, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v9

    move-wide v4, v2

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v17

    .line 183
    .restart local v17       #up:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;->setTouchEvent(Landroid/view/MotionEvent;)V

    .line 184
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;->mActivePointerID:I

    goto/16 :goto_0

    .line 186
    .end local v17           #up:Landroid/view/MotionEvent;
    :cond_4
    const/16 v16, 0x1

    .line 188
    goto/16 :goto_0

    .line 191
    .end local v19           #upIndex:I
    :pswitch_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;->mActivePointerID:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    .line 192
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;->mActivePointerID:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    .line 193
    .local v10, activeIndex:I
    const/4 v4, -0x1

    if-eq v10, v4, :cond_0

    .line 194
    const/4 v6, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v9

    move-wide v4, v2

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v14

    .line 196
    .local v14, mv:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;->setTouchEvent(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 202
    .end local v10           #activeIndex:I
    .end local v14           #mv:Landroid/view/MotionEvent;
    :cond_5
    const/16 v16, 0x1

    .line 204
    goto/16 :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
