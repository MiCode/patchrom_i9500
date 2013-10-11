.class final Landroid/view/ViewRootImpl$GestureSurfaceTouch;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "GestureSurfaceTouch"
.end annotation


# instance fields
.field private final TOUCH_DISABLE:I

.field private final TOUCH_ENABLE:I

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "baseContext"

    .prologue
    .line 489
    iput-object p1, p0, Landroid/view/ViewRootImpl$GestureSurfaceTouch;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 486
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/ViewRootImpl$GestureSurfaceTouch;->TOUCH_DISABLE:I

    .line 487
    const/4 v0, 0x2

    iput v0, p0, Landroid/view/ViewRootImpl$GestureSurfaceTouch;->TOUCH_ENABLE:I

    .line 490
    iput-object p2, p0, Landroid/view/ViewRootImpl$GestureSurfaceTouch;->mContext:Landroid/content/Context;

    .line 491
    return-void
.end method


# virtual methods
.method public onInitSweep(I)Z
    .locals 3
    .parameter "status"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 519
    if-ne p1, v2, :cond_1

    .line 520
    iget-object v0, p0, Landroid/view/ViewRootImpl$GestureSurfaceTouch;->this$0:Landroid/view/ViewRootImpl;

    #setter for: Landroid/view/ViewRootImpl;->g_bNotTouched:Z
    invoke-static {v0, v2}, Landroid/view/ViewRootImpl;->access$102(Landroid/view/ViewRootImpl;Z)Z

    .line 525
    :cond_0
    :goto_0
    return v1

    .line 521
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 522
    iget-object v0, p0, Landroid/view/ViewRootImpl$GestureSurfaceTouch;->this$0:Landroid/view/ViewRootImpl;

    #setter for: Landroid/view/ViewRootImpl;->g_bNotTouched:Z
    invoke-static {v0, v1}, Landroid/view/ViewRootImpl;->access$102(Landroid/view/ViewRootImpl;Z)Z

    goto :goto_0
.end method

.method public onPalm(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "e"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 531
    sget-boolean v1, Landroid/view/ViewRootImpl;->g_IsBootCompleted:Z

    if-nez v1, :cond_0

    .line 532
    const-string/jumbo v1, "sys.boot_completed"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Landroid/view/ViewRootImpl;->g_IsBootCompleted:Z

    .line 533
    :cond_0
    sget-boolean v1, Landroid/view/ViewRootImpl;->g_IsBootCompleted:Z

    if-eqz v1, :cond_1

    .line 535
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 536
    const-string v1, "ViewRootImpl"

    const-string v2, "[Surface Touch Event] Palm Touch Up"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v1, p0, Landroid/view/ViewRootImpl$GestureSurfaceTouch;->this$0:Landroid/view/ViewRootImpl;

    #setter for: Landroid/view/ViewRootImpl;->g_bPalmTouched:Z
    invoke-static {v1, v4}, Landroid/view/ViewRootImpl;->access$202(Landroid/view/ViewRootImpl;Z)Z

    .line 538
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PALM_UP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 539
    .local v0, statusIntent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/view/ViewRootImpl$GestureSurfaceTouch;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 549
    .end local v0           #statusIntent:Landroid/content/Intent;
    :cond_1
    :goto_0
    return v4

    .line 541
    :cond_2
    const-string v1, "ViewRootImpl"

    const-string v2, "[Surface Touch Event] Palm Touch Down"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v1, p0, Landroid/view/ViewRootImpl$GestureSurfaceTouch;->this$0:Landroid/view/ViewRootImpl;

    #setter for: Landroid/view/ViewRootImpl;->g_bPalmTouched:Z
    invoke-static {v1, v3}, Landroid/view/ViewRootImpl;->access$202(Landroid/view/ViewRootImpl;Z)Z

    .line 543
    iget-object v1, p0, Landroid/view/ViewRootImpl$GestureSurfaceTouch;->this$0:Landroid/view/ViewRootImpl;

    #setter for: Landroid/view/ViewRootImpl;->g_bPalmTouchedKey:Z
    invoke-static {v1, v3}, Landroid/view/ViewRootImpl;->access$002(Landroid/view/ViewRootImpl;Z)Z

    .line 544
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PALM_DOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 545
    .restart local v0       #statusIntent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/view/ViewRootImpl$GestureSurfaceTouch;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onSweepDown(I)Z
    .locals 4
    .parameter "direction"

    .prologue
    const/4 v3, 0x1

    .line 496
    sget-boolean v1, Landroid/view/ViewRootImpl;->g_IsBootCompleted:Z

    if-nez v1, :cond_0

    .line 497
    const-string/jumbo v1, "sys.boot_completed"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Landroid/view/ViewRootImpl;->g_IsBootCompleted:Z

    .line 498
    :cond_0
    if-ne p1, v3, :cond_2

    sget-boolean v1, Landroid/view/ViewRootImpl;->g_IsBootCompleted:Z

    if-eqz v1, :cond_2

    .line 499
    const-string v1, "ViewRootImpl"

    const-string v2, "[Surface Touch Event] Palm Sweep - Right"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SWEEP_RIGHT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 501
    .local v0, statusIntent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/view/ViewRootImpl$GestureSurfaceTouch;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 513
    .end local v0           #statusIntent:Landroid/content/Intent;
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 502
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    sget-boolean v1, Landroid/view/ViewRootImpl;->g_IsBootCompleted:Z

    if-eqz v1, :cond_3

    .line 503
    const-string v1, "ViewRootImpl"

    const-string v2, "[Surface Touch Event] Palm Sweep - Left"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SWEEP_LEFT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 505
    .restart local v0       #statusIntent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/view/ViewRootImpl$GestureSurfaceTouch;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 506
    .end local v0           #statusIntent:Landroid/content/Intent;
    :cond_3
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    sget-boolean v1, Landroid/view/ViewRootImpl;->g_IsBootCompleted:Z

    if-eqz v1, :cond_1

    .line 507
    iget-object v1, p0, Landroid/view/ViewRootImpl$GestureSurfaceTouch;->this$0:Landroid/view/ViewRootImpl;

    #setter for: Landroid/view/ViewRootImpl;->g_bPalmTouchedKey:Z
    invoke-static {v1, v3}, Landroid/view/ViewRootImpl;->access$002(Landroid/view/ViewRootImpl;Z)Z

    .line 508
    const-string v1, "ViewRootImpl"

    const-string v2, "[Surface Touch Event] Palm Sweep - Down"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SWEEP_DOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 510
    .restart local v0       #statusIntent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/view/ViewRootImpl$GestureSurfaceTouch;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onTwist(Landroid/view/MotionEvent;Landroid/view/MotionEvent;F)Z
    .locals 4
    .parameter "e1"
    .parameter "e2"
    .parameter "angle"

    .prologue
    const/4 v3, 0x0

    .line 555
    sget-boolean v1, Landroid/view/ViewRootImpl;->g_IsBootCompleted:Z

    if-nez v1, :cond_0

    .line 556
    const-string/jumbo v1, "sys.boot_completed"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Landroid/view/ViewRootImpl;->g_IsBootCompleted:Z

    .line 557
    :cond_0
    sget-boolean v1, Landroid/view/ViewRootImpl;->g_IsBootCompleted:Z

    if-eqz v1, :cond_1

    .line 559
    cmpl-float v1, p3, v3

    if-lez v1, :cond_2

    .line 560
    const-string v1, "ViewRootImpl"

    const-string v2, "[Surface Touch Event] Twist Right"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TWIST_RIGHT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 562
    .local v0, statusIntent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/view/ViewRootImpl$GestureSurfaceTouch;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 570
    .end local v0           #statusIntent:Landroid/content/Intent;
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 563
    :cond_2
    cmpg-float v1, p3, v3

    if-gez v1, :cond_1

    .line 564
    const-string v1, "ViewRootImpl"

    const-string v2, "[Surface Touch Event] Twist Left"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TWIST_LEFT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 566
    .restart local v0       #statusIntent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/view/ViewRootImpl$GestureSurfaceTouch;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
