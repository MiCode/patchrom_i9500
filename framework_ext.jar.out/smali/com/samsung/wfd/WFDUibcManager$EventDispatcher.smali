.class Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;
.super Lcom/samsung/wfd/WFDUibcManager$EventQueue;
.source "WFDUibcManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/WFDUibcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventDispatcher"
.end annotation


# instance fields
.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/MotionEvent$PointerCoords;",
            ">;"
        }
    .end annotation
.end field

.field public volatile running:Z

.field final synthetic this$0:Lcom/samsung/wfd/WFDUibcManager;


# direct methods
.method constructor <init>(Lcom/samsung/wfd/WFDUibcManager;)V
    .locals 1

    .prologue
    .line 152
    iput-object p1, p0, Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;->this$0:Lcom/samsung/wfd/WFDUibcManager;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/wfd/WFDUibcManager$EventQueue;-><init>(Lcom/samsung/wfd/WFDUibcManager;Lcom/samsung/wfd/WFDUibcManager$1;)V

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;->running:Z

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;->mMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 36

    .prologue
    .line 159
    const/16 v2, 0xa

    new-array v8, v2, [Landroid/view/MotionEvent$PointerProperties;

    .line 160
    .local v8, aPonterProp:[Landroid/view/MotionEvent$PointerProperties;
    const/16 v2, 0xa

    new-array v9, v2, [Landroid/view/MotionEvent$PointerCoords;

    .line 161
    .local v9, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;
    const/16 v22, 0x0

    .local v22, i:I
    :goto_0
    const/16 v2, 0xa

    move/from16 v0, v22

    if-ge v0, v2, :cond_0

    .line 162
    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v2, v8, v22

    .line 163
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v9, v22

    .line 161
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 165
    :cond_0
    new-instance v19, Landroid/util/DisplayMetrics;

    invoke-direct/range {v19 .. v19}, Landroid/util/DisplayMetrics;-><init>()V

    .line 166
    .local v19, displayMetrics:Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;->this$0:Lcom/samsung/wfd/WFDUibcManager;

    #getter for: Lcom/samsung/wfd/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/wfd/WFDUibcManager;->access$200(Lcom/samsung/wfd/WFDUibcManager;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/view/WindowManager;

    .line 167
    .local v35, wm:Landroid/view/WindowManager;
    const v24, 0x38d1b717

    .line 168
    .local v24, kX:F
    const v25, 0x38d1b717

    .line 170
    .local v25, kY:F
    const/high16 v23, 0x3f10

    .line 172
    .local v23, kR:F
    const/16 v27, 0x0

    .line 174
    .local v27, me:Landroid/view/MotionEvent;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;->running:Z

    if-eqz v2, :cond_18

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/wfd/WFDUibcManager$EventQueue;->getNextEvent()Landroid/view/InputEvent;

    move-result-object v21

    .line 176
    .local v21, ev:Landroid/view/InputEvent;
    if-eqz v21, :cond_1

    .line 183
    move-object/from16 v0, v21

    instance-of v2, v0, Landroid/view/MotionEvent;

    if-eqz v2, :cond_17

    .line 185
    invoke-interface/range {v35 .. v35}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 186
    invoke-interface/range {v35 .. v35}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v33

    .line 187
    .local v33, rotation:I
    const v2, 0x38d1b717

    move-object/from16 v0, v19

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    mul-float v24, v2, v3

    .line 188
    const v2, 0x38d1b717

    move-object/from16 v0, v19

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    mul-float v25, v2, v3

    move-object/from16 v28, v21

    .line 190
    check-cast v28, Landroid/view/MotionEvent;

    .line 191
    .local v28, newEv:Landroid/view/MotionEvent;
    invoke-virtual/range {v28 .. v28}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v18

    .line 192
    .local v18, count:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;->this$0:Lcom/samsung/wfd/WFDUibcManager;

    const/4 v3, 0x0

    #setter for: Lcom/samsung/wfd/WFDUibcManager;->mSPCOrientation:Z
    invoke-static {v2, v3}, Lcom/samsung/wfd/WFDUibcManager;->access$302(Lcom/samsung/wfd/WFDUibcManager;Z)Z

    .line 193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;->this$0:Lcom/samsung/wfd/WFDUibcManager;

    const/4 v3, -0x1

    #setter for: Lcom/samsung/wfd/WFDUibcManager;->mCameraOrientation:I
    invoke-static {v2, v3}, Lcom/samsung/wfd/WFDUibcManager;->access$402(Lcom/samsung/wfd/WFDUibcManager;I)I

    .line 198
    if-eqz v33, :cond_2

    const/4 v2, 0x2

    move/from16 v0, v33

    if-ne v2, v0, :cond_7

    .line 201
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;->this$0:Lcom/samsung/wfd/WFDUibcManager;

    const/4 v3, 0x0

    #setter for: Lcom/samsung/wfd/WFDUibcManager;->mLandscapeOrientation:Z
    invoke-static {v2, v3}, Lcom/samsung/wfd/WFDUibcManager;->access$502(Lcom/samsung/wfd/WFDUibcManager;Z)Z

    .line 234
    :goto_2
    const/16 v34, 0x0

    .line 236
    .local v34, skip:Z
    const/16 v22, 0x0

    :goto_3
    move/from16 v0, v22

    move/from16 v1, v18

    if-ge v0, v1, :cond_16

    .line 237
    aget-object v2, v8, v22

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    .line 238
    aget-object v2, v9, v22

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    .line 239
    aget-object v2, v8, v22

    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 240
    aget-object v2, v9, v22

    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;->this$0:Lcom/samsung/wfd/WFDUibcManager;

    #getter for: Lcom/samsung/wfd/WFDUibcManager;->mLandscapeOrientation:Z
    invoke-static {v2}, Lcom/samsung/wfd/WFDUibcManager;->access$500(Lcom/samsung/wfd/WFDUibcManager;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 242
    move-object/from16 v0, v19

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    mul-float v29, v23, v2

    .line 243
    .local v29, newWidth:F
    move-object/from16 v0, v19

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    sub-float v2, v2, v29

    const/high16 v3, 0x4000

    div-float v32, v2, v3

    .line 244
    .local v32, pad:F
    aget-object v2, v9, v22

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v30, v25, v2

    .line 245
    .local v30, normX:F
    cmpg-float v2, v30, v29

    if-ltz v2, :cond_3

    add-float v2, v29, v32

    cmpl-float v2, v30, v2

    if-lez v2, :cond_4

    :cond_3
    const/16 v34, 0x1

    .line 246
    :cond_4
    aget-object v2, v9, v22

    const/4 v3, 0x0

    move-object/from16 v0, v19

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    sub-float v5, v30, v32

    mul-float/2addr v4, v5

    div-float v4, v4, v29

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 247
    aget-object v2, v9, v22

    const/4 v3, 0x1

    aget-object v4, v9, v22

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v4, v4, v25

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 279
    .end local v29           #newWidth:F
    .end local v30           #normX:F
    .end local v32           #pad:F
    :cond_5
    :goto_4
    if-eqz v34, :cond_6

    .line 236
    :cond_6
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    .line 209
    .end local v34           #skip:Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;->this$0:Lcom/samsung/wfd/WFDUibcManager;

    #getter for: Lcom/samsung/wfd/WFDUibcManager;->mCoupleShot:Z
    invoke-static {v2}, Lcom/samsung/wfd/WFDUibcManager;->access$600(Lcom/samsung/wfd/WFDUibcManager;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;->this$0:Lcom/samsung/wfd/WFDUibcManager;

    #getter for: Lcom/samsung/wfd/WFDUibcManager;->mOrientation:I
    invoke-static {v2}, Lcom/samsung/wfd/WFDUibcManager;->access$000(Lcom/samsung/wfd/WFDUibcManager;)I

    move-result v2

    if-lez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;->this$0:Lcom/samsung/wfd/WFDUibcManager;

    #getter for: Lcom/samsung/wfd/WFDUibcManager;->mOrientation:I
    invoke-static {v2}, Lcom/samsung/wfd/WFDUibcManager;->access$000(Lcom/samsung/wfd/WFDUibcManager;)I

    move-result v2

    const/16 v3, 0x2d

    if-lt v2, v3, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;->this$0:Lcom/samsung/wfd/WFDUibcManager;

    #getter for: Lcom/samsung/wfd/WFDUibcManager;->mOrientation:I
    invoke-static {v2}, Lcom/samsung/wfd/WFDUibcManager;->access$000(Lcom/samsung/wfd/WFDUibcManager;)I

    move-result v2

    const/16 v3, 0x13b

    if-le v2, v3, :cond_b

    .line 214
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;->this$0:Lcom/samsung/wfd/WFDUibcManager;

    const/4 v3, 0x0

    #setter for: Lcom/samsung/wfd/WFDUibcManager;->mCameraOrientation:I
    invoke-static {v2, v3}, Lcom/samsung/wfd/WFDUibcManager;->access$402(Lcom/samsung/wfd/WFDUibcManager;I)I

    .line 231
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;->this$0:Lcom/samsung/wfd/WFDUibcManager;

    const/4 v3, 0x1

    #setter for: Lcom/samsung/wfd/WFDUibcManager;->mLandscapeOrientation:Z
    invoke-static {v2, v3}, Lcom/samsung/wfd/WFDUibcManager;->access$502(Lcom/samsung/wfd/WFDUibcManager;Z)Z

    goto/16 :goto_2

    .line 216
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;->this$0:Lcom/samsung/wfd/WFDUibcManager;

    #getter for: Lcom/samsung/wfd/WFDUibcManager;->mOrientation:I
    invoke-static {v2}, Lcom/samsung/wfd/WFDUibcManager;->access$000(Lcom/samsung/wfd/WFDUibcManager;)I

    move-result v2

    const/16 v3, 0x2d

    if-lt v2, v3, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;->this$0:Lcom/samsung/wfd/WFDUibcManager;

    #getter for: Lcom/samsung/wfd/WFDUibcManager;->mOrientation:I
    invoke-static {v2}, Lcom/samsung/wfd/WFDUibcManager;->access$000(Lcom/samsung/wfd/WFDUibcManager;)I

    move-result v2

    const/16 v3, 0x73

    if-ge v2, v3, :cond_c

    .line 218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;->this$0:Lcom/samsung/wfd/WFDUibcManager;

    const/4 v3, 0x1

    #setter for: Lcom/samsung/wfd/WFDUibcManager;->mCameraOrientation:I
    invoke-static {v2, v3}, Lcom/samsung/wfd/WFDUibcManager;->access$402(Lcom/samsung/wfd/WFDUibcManager;I)I

    goto :goto_5

    .line 220
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;->this$0:Lcom/samsung/wfd/WFDUibcManager;

    #getter for: Lcom/samsung/wfd/WFDUibcManager;->mOrientation:I
    invoke-static {v2}, Lcom/samsung/wfd/WFDUibcManager;->access$000(Lcom/samsung/wfd/WFDUibcManager;)I

    move-result v2

    const/16 v3, 0x73

    if-lt v2, v3, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;->this$0:Lcom/samsung/wfd/WFDUibcManager;

    #getter for: Lcom/samsung/wfd/WFDUibcManager;->mOrientation:I
    invoke-static {v2}, Lcom/samsung/wfd/WFDUibcManager;->access$000(Lcom/samsung/wfd/WFDUibcManager;)I

    move-result v2

    const/16 v3, 0xe1

    if-ge v2, v3, :cond_d

    .line 222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;->this$0:Lcom/samsung/wfd/WFDUibcManager;

    const/4 v3, 0x2

    #setter for: Lcom/samsung/wfd/WFDUibcManager;->mCameraOrientation:I
    invoke-static {v2, v3}, Lcom/samsung/wfd/WFDUibcManager;->access$402(Lcom/samsung/wfd/WFDUibcManager;I)I

    goto :goto_5

    .line 226
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;->this$0:Lcom/samsung/wfd/WFDUibcManager;

    const/4 v3, 0x3

    #setter for: Lcom/samsung/wfd/WFDUibcManager;->mCameraOrientation:I
    invoke-static {v2, v3}, Lcom/samsung/wfd/WFDUibcManager;->access$402(Lcom/samsung/wfd/WFDUibcManager;I)I

    goto :goto_5

    .line 249
    .restart local v34       #skip:Z
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;->this$0:Lcom/samsung/wfd/WFDUibcManager;

    #getter for: Lcom/samsung/wfd/WFDUibcManager;->mSPCOrientation:Z
    invoke-static {v2}, Lcom/samsung/wfd/WFDUibcManager;->access$300(Lcom/samsung/wfd/WFDUibcManager;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 250
    move-object/from16 v0, v19

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    mul-float v29, v23, v2

    .line 251
    .restart local v29       #newWidth:F
    move-object/from16 v0, v19

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    sub-float v2, v2, v29

    const/high16 v3, 0x4000

    div-float v32, v2, v3

    .line 252
    .restart local v32       #pad:F
    const v2, 0x38d1b717

    aget-object v3, v9, v22

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v2, v3

    mul-float v31, v2, v29

    .line 253
    .local v31, normY:F
    aget-object v2, v9, v22

    const/4 v3, 0x1

    aget-object v4, v9, v22

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v4, v4, v24

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 254
    aget-object v2, v9, v22

    const/4 v3, 0x0

    move-object/from16 v0, v19

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    sub-float v4, v4, v32

    sub-float v4, v4, v31

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_4

    .line 255
    .end local v29           #newWidth:F
    .end local v31           #normY:F
    .end local v32           #pad:F
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;->this$0:Lcom/samsung/wfd/WFDUibcManager;

    #getter for: Lcom/samsung/wfd/WFDUibcManager;->mCameraOrientation:I
    invoke-static {v2}, Lcom/samsung/wfd/WFDUibcManager;->access$400(Lcom/samsung/wfd/WFDUibcManager;)I

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;->this$0:Lcom/samsung/wfd/WFDUibcManager;

    #getter for: Lcom/samsung/wfd/WFDUibcManager;->mCameraOrientation:I
    invoke-static {v2}, Lcom/samsung/wfd/WFDUibcManager;->access$400(Lcom/samsung/wfd/WFDUibcManager;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_14

    .line 256
    :cond_10
    move-object/from16 v0, v19

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    mul-float v29, v23, v2

    .line 257
    .restart local v29       #newWidth:F
    move-object/from16 v0, v19

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    sub-float v2, v2, v29

    const/high16 v3, 0x4000

    div-float v32, v2, v3

    .line 258
    .restart local v32       #pad:F
    aget-object v2, v9, v22

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v30, v24, v2

    .line 259
    .restart local v30       #normX:F
    cmpg-float v2, v30, v32

    if-ltz v2, :cond_11

    add-float v2, v29, v32

    cmpl-float v2, v30, v2

    if-lez v2, :cond_12

    :cond_11
    const/16 v34, 0x1

    .line 261
    :cond_12
    sub-float v30, v30, v32

    div-float v30, v30, v29

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;->this$0:Lcom/samsung/wfd/WFDUibcManager;

    #getter for: Lcom/samsung/wfd/WFDUibcManager;->mCameraOrientation:I
    invoke-static {v2}, Lcom/samsung/wfd/WFDUibcManager;->access$400(Lcom/samsung/wfd/WFDUibcManager;)I

    move-result v2

    if-nez v2, :cond_13

    .line 263
    aget-object v2, v9, v22

    const/4 v3, 0x0

    aget-object v4, v9, v22

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v4, v4, v24

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 264
    aget-object v2, v9, v22

    const/4 v3, 0x1

    move-object/from16 v0, v19

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    move-object/from16 v0, v19

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    mul-float v5, v5, v30

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_4

    .line 265
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;->this$0:Lcom/samsung/wfd/WFDUibcManager;

    #getter for: Lcom/samsung/wfd/WFDUibcManager;->mCameraOrientation:I
    invoke-static {v2}, Lcom/samsung/wfd/WFDUibcManager;->access$400(Lcom/samsung/wfd/WFDUibcManager;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 266
    aget-object v2, v9, v22

    const/4 v3, 0x0

    move-object/from16 v0, v19

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    aget-object v5, v9, v22

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v5, v5, v24

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 267
    aget-object v2, v9, v22

    const/4 v3, 0x1

    move-object/from16 v0, v19

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    mul-float v4, v4, v30

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_4

    .line 270
    .end local v29           #newWidth:F
    .end local v30           #normX:F
    .end local v32           #pad:F
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;->this$0:Lcom/samsung/wfd/WFDUibcManager;

    #getter for: Lcom/samsung/wfd/WFDUibcManager;->mCameraOrientation:I
    invoke-static {v2}, Lcom/samsung/wfd/WFDUibcManager;->access$400(Lcom/samsung/wfd/WFDUibcManager;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_15

    .line 271
    aget-object v2, v9, v22

    const/4 v3, 0x0

    move-object/from16 v0, v19

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    aget-object v5, v9, v22

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v5, v5, v24

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 272
    aget-object v2, v9, v22

    const/4 v3, 0x1

    move-object/from16 v0, v19

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    aget-object v5, v9, v22

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v5, v5, v25

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_4

    .line 274
    :cond_15
    aget-object v2, v9, v22

    const/4 v3, 0x0

    aget-object v4, v9, v22

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v4, v4, v24

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 275
    aget-object v2, v9, v22

    const/4 v3, 0x1

    aget-object v4, v9, v22

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v4, v4, v25

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_4

    .line 281
    :cond_16
    if-nez v34, :cond_1

    .line 285
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x64

    sub-long/2addr v2, v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual/range {v28 .. v28}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-virtual/range {v28 .. v28}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f80

    const/high16 v13, 0x3f80

    invoke-virtual/range {v28 .. v28}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual/range {v28 .. v28}, Landroid/view/MotionEvent;->getSource()I

    move-result v16

    const/16 v17, 0x0

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v27

    .line 289
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v2, v0, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    const/16 v27, 0x0

    goto/16 :goto_1

    .line 323
    :catch_0
    move-exception v20

    .line 324
    .local v20, e:Ljava/lang/NullPointerException;
    const-string v2, "WFDUibcManager"

    const-string v3, "Null pointer exception"

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 327
    .end local v18           #count:I
    .end local v20           #e:Ljava/lang/NullPointerException;
    .end local v28           #newEv:Landroid/view/MotionEvent;
    .end local v33           #rotation:I
    .end local v34           #skip:Z
    :cond_17
    move-object/from16 v0, v21

    instance-of v2, v0, Landroid/view/KeyEvent;

    if-eqz v2, :cond_1

    move-object/from16 v26, v21

    .line 330
    check-cast v26, Landroid/view/KeyEvent;

    .line 331
    .local v26, ke:Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v2, v0, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    goto/16 :goto_1

    .line 335
    .end local v21           #ev:Landroid/view/InputEvent;
    .end local v26           #ke:Landroid/view/KeyEvent;
    :cond_18
    return-void
.end method
