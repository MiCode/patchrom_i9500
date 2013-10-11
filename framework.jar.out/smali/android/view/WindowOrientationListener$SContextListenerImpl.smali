.class final Landroid/view/WindowOrientationListener$SContextListenerImpl;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"

# interfaces
.implements Landroid/hardware/scontext/SContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowOrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SContextListenerImpl"
.end annotation


# static fields
.field private static scontextRotation:I


# instance fields
.field private final mOrientationListener:Landroid/view/WindowOrientationListener;


# direct methods
.method public constructor <init>(Landroid/view/WindowOrientationListener;)V
    .locals 0
    .parameter "orientationListener"

    .prologue
    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    iput-object p1, p0, Landroid/view/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    .line 314
    return-void
.end method


# virtual methods
.method public getProposedRotation()I
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 317
    const-string v3, "WindowOrientationListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSContextAutoRotationListener.getProposedRotation, mbResultFaceDectection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/view/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    invoke-static {}, Landroid/view/WindowOrientationListener;->access$200()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v3, p0, Landroid/view/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    invoke-static {}, Landroid/view/WindowOrientationListener;->access$200()Z

    move-result v3

    if-ne v3, v6, :cond_0

    .line 319
    iget-object v3, p0, Landroid/view/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    #getter for: Landroid/view/WindowOrientationListener;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/view/WindowOrientationListener;->access$300(Landroid/view/WindowOrientationListener;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 320
    .local v2, wm:Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 321
    .local v0, disp:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 322
    .local v1, rotation:I
    packed-switch v1, :pswitch_data_0

    .line 340
    const/4 v3, -0x1

    invoke-static {v3}, Landroid/view/WindowOrientationListener;->access$402(I)I

    .line 344
    :goto_0
    const-string v3, "WindowOrientationListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSContextAutoRotationListener.getProposedRotation, sCurrentAppAngle: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/view/WindowOrientationListener;->access$400()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-static {}, Landroid/view/WindowOrientationListener;->access$400()I

    move-result v3

    .line 349
    .end local v0           #disp:Landroid/view/Display;
    .end local v1           #rotation:I
    .end local v2           #wm:Landroid/view/WindowManager;
    :goto_1
    return v3

    .line 325
    .restart local v0       #disp:Landroid/view/Display;
    .restart local v1       #rotation:I
    .restart local v2       #wm:Landroid/view/WindowManager;
    :pswitch_0
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/view/WindowOrientationListener;->access$402(I)I

    goto :goto_0

    .line 329
    :pswitch_1
    invoke-static {v6}, Landroid/view/WindowOrientationListener;->access$402(I)I

    goto :goto_0

    .line 333
    :pswitch_2
    const/4 v3, 0x2

    invoke-static {v3}, Landroid/view/WindowOrientationListener;->access$402(I)I

    goto :goto_0

    .line 337
    :pswitch_3
    const/4 v3, 0x3

    invoke-static {v3}, Landroid/view/WindowOrientationListener;->access$402(I)I

    goto :goto_0

    .line 348
    .end local v0           #disp:Landroid/view/Display;
    .end local v1           #rotation:I
    .end local v2           #wm:Landroid/view/WindowManager;
    :cond_0
    const-string v3, "WindowOrientationListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSContextAutoRotationListener.getProposedRotation, Rotation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Landroid/view/WindowOrientationListener$SContextListenerImpl;->scontextRotation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    sget v3, Landroid/view/WindowOrientationListener$SContextListenerImpl;->scontextRotation:I

    goto :goto_1

    .line 322
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .locals 9
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 354
    iget-object v3, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    .line 355
    .local v3, scontext:Landroid/hardware/scontext/SContext;
    invoke-virtual {v3}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 436
    :goto_0
    return-void

    .line 357
    :pswitch_0
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getAutoRotationContext()Landroid/hardware/scontext/SContextAutoRotation;

    move-result-object v0

    .line 358
    .local v0, autoRotationContext:Landroid/hardware/scontext/SContextAutoRotation;
    invoke-virtual {v0}, Landroid/hardware/scontext/SContextAutoRotation;->getAngle()I

    move-result v6

    sput v6, Landroid/view/WindowOrientationListener$SContextListenerImpl;->scontextRotation:I

    .line 359
    const-string v6, "WindowOrientationListener"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mSContextAutoRotationListener.onSContextChanged, Rotation: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Landroid/view/WindowOrientationListener$SContextListenerImpl;->scontextRotation:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    sget v6, Landroid/view/WindowOrientationListener$SContextListenerImpl;->scontextRotation:I

    iget-object v7, p0, Landroid/view/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    invoke-static {}, Landroid/view/WindowOrientationListener;->access$500()I

    move-result v7

    if-eq v6, v7, :cond_6

    sget v6, Landroid/view/WindowOrientationListener$SContextListenerImpl;->scontextRotation:I

    if-ltz v6, :cond_6

    .line 364
    iget-object v6, p0, Landroid/view/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    #getter for: Landroid/view/WindowOrientationListener;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/view/WindowOrientationListener;->access$300(Landroid/view/WindowOrientationListener;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "intelligent_rotation_mode"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_1

    move v2, v4

    .line 366
    .local v2, intelligent_rotation_enabled:Z
    :goto_1
    if-nez v2, :cond_2

    .line 367
    iget-object v4, p0, Landroid/view/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    invoke-virtual {v4, v5}, Landroid/view/WindowOrientationListener;->setFaceDetectionResult(Z)V

    .line 368
    iget-object v4, p0, Landroid/view/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    sget v5, Landroid/view/WindowOrientationListener$SContextListenerImpl;->scontextRotation:I

    invoke-virtual {v4, v5}, Landroid/view/WindowOrientationListener;->onProposedRotationChanged(I)V

    .line 430
    .end local v2           #intelligent_rotation_enabled:Z
    :cond_0
    :goto_2
    iget-object v4, p0, Landroid/view/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    sget v4, Landroid/view/WindowOrientationListener$SContextListenerImpl;->scontextRotation:I

    invoke-static {v4}, Landroid/view/WindowOrientationListener;->access$502(I)I

    goto :goto_0

    :cond_1
    move v2, v5

    .line 364
    goto :goto_1

    .line 373
    .restart local v2       #intelligent_rotation_enabled:Z
    :cond_2
    invoke-static {}, Landroid/view/WindowOrientationListener;->access$600()Lcom/sec/android/smartface/SmartFaceManager;

    move-result-object v6

    if-nez v6, :cond_3

    .line 374
    invoke-static {}, Lcom/sec/android/smartface/SmartFaceManager;->getSmartFaceManager()Lcom/sec/android/smartface/SmartFaceManager;

    move-result-object v6

    invoke-static {v6}, Landroid/view/WindowOrientationListener;->access$602(Lcom/sec/android/smartface/SmartFaceManager;)Lcom/sec/android/smartface/SmartFaceManager;

    .line 376
    :cond_3
    invoke-static {}, Landroid/view/WindowOrientationListener;->access$600()Lcom/sec/android/smartface/SmartFaceManager;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 377
    const/4 v1, 0x0

    .line 379
    .local v1, bFaceDeteced:Z
    const-string v6, "WindowOrientationListener"

    const-string v7, "fd ++ "

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-static {}, Landroid/view/WindowOrientationListener;->access$600()Lcom/sec/android/smartface/SmartFaceManager;

    move-result-object v6

    iget-object v7, p0, Landroid/view/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    invoke-static {}, Landroid/view/WindowOrientationListener;->access$500()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/smartface/SmartFaceManager;->checkForSmartRotation(I)Z

    move-result v1

    .line 381
    if-ne v1, v4, :cond_4

    .line 382
    iget-object v5, p0, Landroid/view/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    invoke-virtual {v5, v4}, Landroid/view/WindowOrientationListener;->setFaceDetectionResult(Z)V

    .line 383
    const-string v4, "WindowOrientationListener"

    const-string v5, "detected face, skip rotation  "

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :goto_3
    const-string v4, "WindowOrientationListener"

    const-string v5, "fd -- "

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 386
    :cond_4
    iget-object v4, p0, Landroid/view/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    invoke-virtual {v4, v5}, Landroid/view/WindowOrientationListener;->setFaceDetectionResult(Z)V

    .line 387
    iget-object v4, p0, Landroid/view/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    sget v5, Landroid/view/WindowOrientationListener$SContextListenerImpl;->scontextRotation:I

    invoke-virtual {v4, v5}, Landroid/view/WindowOrientationListener;->onProposedRotationChanged(I)V

    goto :goto_3

    .line 392
    .end local v1           #bFaceDeteced:Z
    :cond_5
    iget-object v4, p0, Landroid/view/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    invoke-virtual {v4, v5}, Landroid/view/WindowOrientationListener;->setFaceDetectionResult(Z)V

    .line 393
    iget-object v4, p0, Landroid/view/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    sget v5, Landroid/view/WindowOrientationListener$SContextListenerImpl;->scontextRotation:I

    invoke-virtual {v4, v5}, Landroid/view/WindowOrientationListener;->onProposedRotationChanged(I)V

    goto :goto_2

    .line 427
    .end local v2           #intelligent_rotation_enabled:Z
    :cond_6
    sget v4, Landroid/view/WindowOrientationListener$SContextListenerImpl;->scontextRotation:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 428
    iget-object v4, p0, Landroid/view/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    sget v5, Landroid/view/WindowOrientationListener$SContextListenerImpl;->scontextRotation:I

    invoke-virtual {v4, v5}, Landroid/view/WindowOrientationListener;->onProposedRotationChanged(I)V

    goto :goto_2

    .line 355
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method
