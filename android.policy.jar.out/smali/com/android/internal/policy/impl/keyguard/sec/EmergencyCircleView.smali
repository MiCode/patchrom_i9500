.class public Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;
.super Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;
.source "EmergencyCircleView.java"


# static fields
.field private static final ACTION_EMERGENCY_LIST:Ljava/lang/String; = "com.android.phone.EmergencyDialer.LIST"

.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "EmergencyCircleView"


# instance fields
.field private isIgnoreTouch:Z

.field private mAnim:Landroid/animation/ObjectAnimator;

.field private mCircleUnlockView:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;

.field private mDistance:D

.field private mFadeView:Landroid/view/View;

.field private mFirstBorder:I

.field private mIsFirst:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRootLayout:Landroid/widget/FrameLayout;

.field private mSecondBorder:I

.field private mStartX:F

.field private mStartY:F

.field private mTouchListerner:Landroid/view/View$OnTouchListener;

.field private mUnlockView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;-><init>(Landroid/content/Context;)V

    .line 84
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;->mDistance:D

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;->mIsFirst:Z

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;->isIgnoreTouch:Z

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;->mFirstBorder:I

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;->mSecondBorder:I

    .line 99
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;->mPowerManager:Landroid/os/PowerManager;

    .line 100
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 101
    return-void
.end method

.method private VoIPIsInUse()Z
    .locals 6

    .prologue
    .line 187
    const/4 v0, 0x0

    .line 189
    .local v0, bVoIP_InUse:Z
    :try_start_0
    const-string v3, "voip"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v2

    .line 190
    .local v2, voipInterfaceService:Landroid/os/IVoIPInterface;
    if-eqz v2, :cond_0

    .line 191
    invoke-interface {v2}, Landroid/os/IVoIPInterface;->isVoIPActivated()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 195
    .end local v2           #voipInterfaceService:Landroid/os/IVoIPInterface;
    :cond_0
    :goto_0
    const-string v3, "EmergencyCircleView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bVoIP_InUse = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return v0

    .line 192
    :catch_0
    move-exception v1

    .line 193
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "EmergencyCircleView"

    const-string v4, "VoIPIsInUse() failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method doTransition(Landroid/view/View;F)V
    .locals 3
    .parameter "view"
    .parameter "to"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;->mAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 164
    :cond_0
    const-string v0, "alpha"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;->mAnim:Landroid/animation/ObjectAnimator;

    .line 165
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 166
    return-void
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const-wide/high16 v9, 0x4000

    const/4 v8, 0x0

    .line 110
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;->isIgnoreTouch:Z

    if-eqz v4, :cond_1

    .line 111
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v5, :cond_0

    .line 112
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;->isIgnoreTouch:Z

    .line 114
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v4

    .line 157
    :goto_0
    return v4

    .line 117
    :cond_1
    invoke-virtual {p2, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 118
    .local v2, touchedEventX:F
    invoke-virtual {p2, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 120
    .local v3, touchedEventY:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 157
    :cond_2
    :goto_1
    :pswitch_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0

    .line 122
    :pswitch_1
    const-string v4, "EmergencyCircleView"

    const-string v5, "onTouchEvent - DOWN"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;->mStartX:F

    .line 124
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;->mStartY:F

    .line 125
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;->mDistance:D

    .line 126
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;->doTransition(Landroid/view/View;F)V

    .line 129
    :pswitch_2
    const-string v4, "EmergencyCircleView"

    const-string v5, "onTouchEvent - MOVE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;->mStartX:F

    sub-float v4, v2, v4

    float-to-int v0, v4

    .line 131
    .local v0, diffX:I
    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;->mStartY:F

    sub-float v4, v3, v4

    float-to-int v1, v4

    .line 133
    .local v1, diffY:I
    int-to-double v4, v0

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    int-to-double v6, v1

    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;->mDistance:D

    .line 135
    iget-wide v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;->mDistance:D

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;->mSecondBorder:I

    int-to-double v6, v6

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_2

    .line 136
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;->mIsFirst:Z

    .line 137
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;->takeEmergencyCallList()V

    goto :goto_1

    .line 141
    .end local v0           #diffX:I
    .end local v1           #diffY:I
    :pswitch_3
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;->isIgnoreTouch:Z

    .line 144
    :pswitch_4
    const-string v4, "EmergencyCircleView"

    const-string v5, "onTouchEvent - UP"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/high16 v4, 0x3f80

    invoke-virtual {p0, p1, v4}, Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;->doTransition(Landroid/view/View;F)V

    .line 146
    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;->mFirstBorder:I

    int-to-double v4, v4

    iget-wide v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;->mDistance:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_2

    iget-wide v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;->mDistance:D

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;->mSecondBorder:I

    int-to-double v6, v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_2

    .line 147
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 148
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;->mIsFirst:Z

    .line 149
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;->takeEmergencyCallList()V

    goto :goto_1

    .line 120
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public takeEmergencyCallList()V
    .locals 5

    .prologue
    .line 169
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 170
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 172
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()Z

    .line 183
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;->VoIPIsInUse()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->resumeVoIPCall()V

    goto :goto_0

    .line 178
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 179
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 181
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
