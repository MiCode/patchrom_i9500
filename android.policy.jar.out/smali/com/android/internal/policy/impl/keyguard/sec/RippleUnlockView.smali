.class public Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;
.super Landroid/opengl/GLSurfaceView;
.source "RippleUnlockView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;


# static fields
.field private static sRippleUnlockView:Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;


# instance fields
.field private final DBG:Z

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRenderer:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/16 v1, 0x8

    .line 50
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->DBG:Z

    .line 39
    const-string v0, "CircleUnlockRipple"

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->TAG:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->mContext:Landroid/content/Context;

    .line 53
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->mPowerManager:Landroid/os/PowerManager;

    .line 58
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->mRenderer:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;

    .line 59
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->mRenderer:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;

    const v2, 0x1100001

    const v3, 0x1100016

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setSoundRID(II)V

    .line 61
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->detectOpenGLES20()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 63
    const/16 v5, 0x10

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->mRenderer:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 65
    invoke-virtual {p0, v6}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 66
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    const-string v0, "WaterEffect"

    const-string v1, "this machine does not support OpenGL ES2.0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private detectOpenGLES20()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 85
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 86
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v1

    .line 87
    .local v1, info:Landroid/content/pm/ConfigurationInfo;
    if-eqz v1, :cond_0

    .line 88
    iget v3, v1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v4, 0x2

    if-lt v3, v4, :cond_0

    const/4 v2, 0x1

    .line 90
    :cond_0
    return v2
.end method

.method public static getInstance()Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->sRippleUnlockView:Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;
    .locals 1
    .parameter "context"

    .prologue
    .line 75
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->sRippleUnlockView:Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->sRippleUnlockView:Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    .line 77
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->sRippleUnlockView:Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    return-object v0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 117
    const-string v0, "CircleUnlockRipple"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->mRenderer:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->cleanUp()V

    .line 120
    const-string v0, "CircleUnlockRipple"

    const-string v1, "RENDERMODE_WHEN_DIRTY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 122
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 1
    .parameter "region"

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public getUnlockDelay()J
    .locals 2

    .prologue
    .line 166
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 171
    const-string v0, "CircleUnlockRipple"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleHoverEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->mRenderer:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseMove(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "view"
    .parameter "event"

    .prologue
    .line 104
    const-string v1, "CircleUnlockRipple"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTouchEvent event : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->mRenderer:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseMove(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 106
    .local v0, result:Z
    if-eqz v0, :cond_0

    .line 108
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "view"
    .parameter "event"

    .prologue
    .line 144
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 135
    if-nez p1, :cond_0

    .line 136
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onWindowVisibilityChanged(I)V

    .line 138
    :cond_0
    return-void
.end method

.method public playLockSound()V
    .locals 0

    .prologue
    .line 185
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 154
    const-string v0, "CircleUnlockRipple"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->mRenderer:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->reset()V

    .line 156
    return-void
.end method

.method public screenTurnedOn()V
    .locals 2

    .prologue
    .line 160
    const-string v0, "CircleUnlockRipple"

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->mRenderer:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->screenTurnedOn()V

    .line 162
    return-void
.end method

.method setBackground()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->mRenderer:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setRippleBackground()V

    .line 97
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 99
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 148
    const-string v0, "CircleUnlockRipple"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->mRenderer:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->show()V

    .line 150
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 3
    .parameter "startDelay"
    .parameter "rect"

    .prologue
    .line 178
    const-string v0, "CircleUnlockRipple"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showUnlockAffordance startDelay : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->mRenderer:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    .line 180
    return-void
.end method
