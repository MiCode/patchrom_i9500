.class Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;
.super Landroid/os/Handler;
.source "SimeSkbKeyboardContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LongPressTimer"
.end annotation


# static fields
.field public static final LONG_PRESS_KEYNUM1:I = 0x1

.field public static final LONG_PRESS_KEYNUM2:I = 0xa

.field public static final LONG_PRESS_TIMEOUT1:I = 0x1f4

.field private static final LONG_PRESS_TIMEOUT2:I = 0x64

.field private static final LONG_PRESS_TIMEOUT3:I = 0x14


# instance fields
.field private mResponseTimes:I

.field mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

.field final synthetic this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)V
    .locals 1
    .parameter
    .parameter "skbContainer"

    .prologue
    .line 2294
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2292
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->mResponseTimes:I

    .line 2295
    iput-object p2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    .line 2296
    return-void
.end method


# virtual methods
.method public getResponseTimes()I
    .locals 1

    .prologue
    .line 2335
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->mResponseTimes:I

    return v0
.end method

.method public reStartTimer()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x14

    .line 2307
    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->mResponseTimes:I

    const/4 v5, 0x1

    if-ge v4, v5, :cond_0

    .line 2308
    const-wide/16 v0, 0x1f4

    .line 2326
    .local v0, timeout:J
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-virtual {p0, p0, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 2327
    return-void

    .line 2309
    .end local v0           #timeout:J
    :cond_0
    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->mResponseTimes:I

    const/16 v5, 0xa

    if-ge v4, v5, :cond_1

    .line 2310
    const-wide/16 v0, 0x64

    .restart local v0       #timeout:J
    goto :goto_0

    .line 2315
    .end local v0           #timeout:J
    :cond_1
    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->mResponseTimes:I

    mul-int/lit8 v4, v4, 0x2

    rsub-int/lit8 v4, v4, 0x64

    int-to-long v0, v4

    .line 2316
    .restart local v0       #timeout:J
    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    :goto_1
    goto :goto_0

    :cond_2
    move-wide v0, v2

    goto :goto_1
.end method

.method public removeTimer()Z
    .locals 1

    .prologue
    .line 2330
    invoke-virtual {p0, p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2331
    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2340
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    invoke-static {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$600(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2406
    :cond_0
    :goto_0
    return-void

    .line 2343
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    invoke-static {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$600(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v1

    .line 2344
    .local v1, keyCode:I
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mWaitForTouchUp:Z
    invoke-static {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$700(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->isHover:Z
    invoke-static {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$800(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2345
    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->mResponseTimes:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->mResponseTimes:I

    .line 2346
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    invoke-static {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$600(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->repeatable()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2347
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    invoke-static {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$600(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->isUserDefKey()Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x43

    if-eq v1, v2, :cond_2

    const/16 v2, 0x38

    if-eq v1, v2, :cond_2

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_2

    const/4 v2, -0x1

    if-ne v2, v1, :cond_5

    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mbIsMultiTouch:Z
    invoke-static {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$900(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2353
    :cond_2
    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->mResponseTimes:I

    if-ne v4, v2, :cond_4

    .line 2354
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;
    invoke-static {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$100(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    invoke-static {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$600(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->tryHandleLongPressSwitch(ILcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2355
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #setter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mDiscardEvent:Z
    invoke-static {v2, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$1002(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;Z)Z

    .line 2356
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #calls: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->resetKeyPress(J)V
    invoke-static {v2, v6, v7}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$1100(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;J)V

    goto :goto_0

    .line 2358
    :cond_3
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    invoke-static {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$600(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v3

    #calls: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->responseKeyEvent(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V
    invoke-static {v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$1200(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V

    .line 2359
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->reStartTimer()V

    goto :goto_0

    .line 2362
    :cond_4
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    invoke-static {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$600(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v3

    #calls: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->responseKeyEvent(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V
    invoke-static {v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$1200(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V

    .line 2363
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->reStartTimer()V

    goto/16 :goto_0

    .line 2366
    :cond_5
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    invoke-static {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$600(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v3

    #calls: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->responseKeyEvent(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V
    invoke-static {v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$1200(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V

    .line 2367
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->reStartTimer()V

    goto/16 :goto_0

    .line 2369
    :cond_6
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    invoke-static {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$600(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLongLabel()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    invoke-static {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$600(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLongIconPopup()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 2371
    :cond_7
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;
    invoke-static {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$100(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    invoke-static {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$600(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->tryHandleLongPressSwitch(ILcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2372
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    invoke-static {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$600(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->isLongPressed()Z

    move-result v2

    if-nez v2, :cond_9

    .line 2373
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSimeSkbKeyboardPointing:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;
    invoke-static {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$1300(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

    move-result-object v2

    iget-boolean v2, v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->onPointing:Z

    if-eqz v2, :cond_8

    .line 2374
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSimeSkbKeyboardPointing:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;
    invoke-static {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$1300(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->getMultiDirection()I

    move-result v0

    .line 2375
    .local v0, direction:I
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSimeSkbKeyboardPointing:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;
    invoke-static {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$1300(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->onDownKeyEvent(I)V

    .line 2376
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->reStartTimer()V

    goto/16 :goto_0

    .line 2379
    .end local v0           #direction:I
    :cond_8
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2381
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkv:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;
    invoke-static {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$1400(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->onKeyLongPress()V

    .line 2382
    iput v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->mResponseTimes:I

    .line 2383
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->reStartTimer()V

    goto/16 :goto_0

    .line 2385
    :cond_9
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSimeSkbKeyboardPointing:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;
    invoke-static {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$1300(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

    move-result-object v2

    iget-boolean v2, v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->onPointing:Z

    if-nez v2, :cond_0

    .line 2386
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    invoke-static {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$600(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v3

    #calls: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->responseKeyEvent(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V
    invoke-static {v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$1200(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V

    .line 2387
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    invoke-static {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$600(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->setLongPressed(Z)V

    .line 2388
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #setter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mDiscardEvent:Z
    invoke-static {v2, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$1002(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;Z)Z

    .line 2389
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #calls: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->resetKeyPress(J)V
    invoke-static {v2, v6, v7}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$1100(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;J)V

    goto/16 :goto_0

    .line 2393
    :cond_a
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSimeSkbKeyboardPointing:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;
    invoke-static {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$1300(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->isPointingAction()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2395
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSimeSkbKeyboardPointing:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;
    invoke-static {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$1300(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->getMultiDirection()I

    move-result v0

    .line 2396
    .restart local v0       #direction:I
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSimeSkbKeyboardPointing:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;
    invoke-static {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$1300(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->onDownKeyEvent(I)V

    .line 2397
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->reStartTimer()V

    goto/16 :goto_0

    .line 2399
    .end local v0           #direction:I
    :cond_b
    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->mResponseTimes:I

    if-ne v4, v2, :cond_0

    .line 2401
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    iget-object v2, v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->invalidateAll()V

    .line 2402
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    #calls: Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->popupSymbols()V
    invoke-static {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->access$1500(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)V

    goto/16 :goto_0
.end method

.method public startTimer()V
    .locals 4

    .prologue
    .line 2299
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    add-long/2addr v0, v2

    invoke-virtual {p0, p0, v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 2300
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->mResponseTimes:I

    .line 2301
    return-void
.end method
