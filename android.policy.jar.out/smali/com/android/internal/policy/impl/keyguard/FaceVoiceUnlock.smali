.class public Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;
.super Ljava/lang/Object;
.source "FaceVoiceUnlock.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;
.implements Lcom/samsung/voiceshell/VoiceEngineResultListener;


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "FULLockscreen"


# instance fields
.field private final BACKUP_LOCK_TIMEOUT:I

.field private final MSG_CANCEL:I

.field private final MSG_DESTROY_WAKEUP_CMD:I

.field private final MSG_INIT_WAKEUP_CMD:I

.field private final MSG_POKE_WAKELOCK:I

.field private final MSG_REPORT_FAILED_ATTEMPT:I

.field private final MSG_SERVICE_CONNECTED:I

.field private final MSG_SERVICE_DISCONNECTED:I

.field private final MSG_START_VERIFY_CMD:I

.field private final MSG_TERMINATE_VERIFY_CMD:I

.field private final MSG_TIMEOUT:I

.field private final MSG_UNLOCK:I

.field private mBoundToService:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mFaceUnlockCallback:Lcom/android/internal/policy/IFaceLockCallback;

.field private mFaceUnlockView:Landroid/view/View;

.field protected mFaceUnlocked:Z

.field private mHandler:Landroid/os/Handler;

.field private volatile mIsRunning:Z

.field private mIsVoiceUnlockOn:Z

.field mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mService:Lcom/android/internal/policy/IFaceLockInterface;

.field private mServiceRunning:Z

.field private final mServiceRunningLock:Ljava/lang/Object;

.field private mTalkbackEnabled:Z

.field mVoiceUnlockViewCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;

.field private mVoiceVerifyStarted:Z

.field protected mWakeUnlocked:Z

.field private mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

.field private mWakeUpHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;)V
    .locals 8
    .parameter "context"
    .parameter "voiceUnlockViewCallback"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mServiceRunning:Z

    .line 56
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mServiceRunningLock:Ljava/lang/Object;

    .line 58
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mBoundToService:Z

    .line 63
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->MSG_SERVICE_CONNECTED:I

    .line 64
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->MSG_SERVICE_DISCONNECTED:I

    .line 65
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->MSG_UNLOCK:I

    .line 66
    const/4 v5, 0x3

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->MSG_CANCEL:I

    .line 67
    const/4 v5, 0x4

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->MSG_REPORT_FAILED_ATTEMPT:I

    .line 68
    const/4 v5, 0x5

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->MSG_POKE_WAKELOCK:I

    .line 69
    const/4 v5, 0x6

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->MSG_TIMEOUT:I

    .line 74
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mIsRunning:Z

    .line 78
    const/16 v5, 0x1388

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->BACKUP_LOCK_TIMEOUT:I

    .line 84
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mVoiceVerifyStarted:Z

    .line 85
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mWakeUnlocked:Z

    .line 86
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mIsVoiceUnlockOn:Z

    .line 87
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mTalkbackEnabled:Z

    .line 88
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mFaceUnlocked:Z

    .line 90
    const/16 v5, 0xa

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->MSG_INIT_WAKEUP_CMD:I

    .line 91
    const/16 v5, 0xb

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->MSG_START_VERIFY_CMD:I

    .line 92
    const/16 v5, 0xc

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->MSG_TERMINATE_VERIFY_CMD:I

    .line 93
    const/16 v5, 0xd

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->MSG_DESTROY_WAKEUP_CMD:I

    .line 605
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock$2;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock$2;-><init>(Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mConnection:Landroid/content/ServiceConnection;

    .line 678
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock$3;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock$3;-><init>(Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mFaceUnlockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    .line 100
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mContext:Landroid/content/Context;

    .line 101
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v5, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 102
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    .line 103
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mVoiceUnlockViewCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "enabled_accessibility_services"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, accesibilityService:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 108
    const-string v5, "(?i).*talkback.*"

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mTalkbackEnabled:Z

    .line 109
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mTalkbackEnabled:Z

    if-eqz v5, :cond_3

    .line 110
    const-string v5, "FULLockscreen"

    const-string v6, "tb on"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mTalkbackEnabled:Z

    if-nez v5, :cond_1

    .line 117
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "driving_mode_on"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 119
    .local v1, drivingMode:I
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "driving_mode_unlock_screen_contents"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 122
    .local v2, unlockDrivingMode:I
    if-ne v1, v4, :cond_4

    if-ne v2, v4, :cond_4

    .line 123
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mTalkbackEnabled:Z

    .line 124
    const-string v5, "FULLockscreen"

    const-string v6, "drv mode on"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .end local v1           #drivingMode:I
    .end local v2           #unlockDrivingMode:I
    :cond_1
    :goto_1
    const-string v5, "FULLockscreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mTalkbackEnabled ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mTalkbackEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_face_with_voice"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_2

    move v3, v4

    :cond_2
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mIsVoiceUnlockOn:Z

    .line 134
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mIsVoiceUnlockOn:Z

    .line 135
    const-string v3, "FULLockscreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsVoiceUnlockOn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mIsVoiceUnlockOn:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->initWakeUpHandler()V

    .line 138
    return-void

    .line 112
    :cond_3
    const-string v5, "FULLockscreen"

    const-string v6, "tb off"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 126
    .restart local v1       #drivingMode:I
    .restart local v2       #unlockDrivingMode:I
    :cond_4
    const-string v5, "FULLockscreen"

    const-string v6, "drv mode off"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mVoiceVerifyStarted:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mVoiceVerifyStarted:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;Lcom/android/internal/policy/IFaceLockInterface;)Lcom/android/internal/policy/IFaceLockInterface;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkIfVoiceUnlockErrorShowed()Z
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mVoiceUnlockViewCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;->isErrorShowed()Z

    move-result v0

    return v0
.end method

.method private displayPrepareMsg()V
    .locals 4

    .prologue
    .line 204
    const-string v0, "FULLockscreen"

    const-string v1, "displayPrepareMsg()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mVoiceUnlockViewCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;->displayPrepareMsg()V

    .line 206
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 207
    return-void
.end method

.method private displayRecognitionMsg(J)V
    .locals 3
    .parameter "millis"

    .prologue
    .line 211
    const-string v0, "FULLockscreen"

    const-string v1, "displayRecognitionMsg()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v1, 0x1388

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 213
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mVoiceUnlockViewCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;->displayRecognitionMsg(J)V

    .line 214
    return-void
.end method

.method private displayVerifyFailMsg()V
    .locals 3

    .prologue
    .line 229
    const-string v0, "FULLockscreen"

    const-string v1, "displayVerifyFailMsg()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mIsVoiceUnlockOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mTalkbackEnabled:Z

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mWakeUpHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v1, 0x1388

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 234
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mVoiceUnlockViewCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;->displayVerifyFailMsg()V

    .line 235
    return-void
.end method

.method private displayVerifyFailMsgDelayed(J)V
    .locals 5
    .parameter "timeoutMillis"

    .prologue
    .line 218
    const-string v1, "FULLockscreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayVerifyFailMsgDelayed("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mIsVoiceUnlockOn:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mTalkbackEnabled:Z

    if-nez v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mWakeUpHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mVoiceUnlockViewCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;->displayVerifyFailMsgDelayed(J)V

    .line 223
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    const/16 v3, 0x1388

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 224
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    add-long/2addr v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 225
    return-void
.end method

.method private displayVerifySuccessMsg()V
    .locals 4

    .prologue
    .line 239
    const-string v0, "FULLockscreen"

    const-string v1, "displayVerifySuccessMsg()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v1, 0x1388

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 241
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mVoiceUnlockViewCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;->displayVerifySuccessMsg()V

    .line 242
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 243
    return-void
.end method

.method private hideVoiceLayout()V
    .locals 2

    .prologue
    .line 247
    const-string v0, "FULLockscreen"

    const-string v1, "hideVoiceLayout()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mVoiceUnlockViewCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;->hideVoiceLayout()V

    .line 249
    return-void
.end method

.method private initWakeUpHandler()V
    .locals 2

    .prologue
    .line 142
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock$1;-><init>(Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mWakeUpHandler:Landroid/os/Handler;

    .line 199
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mWakeUpHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 200
    return-void
.end method

.method private startUi(Landroid/os/IBinder;IIII)V
    .locals 9
    .parameter "windowToken"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 628
    const-string v0, "FULLockscreen"

    const-string v1, "startUi()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v8

    .line 630
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mServiceRunning:Z

    if-nez v0, :cond_0

    .line 631
    const-string v0, "FULLockscreen"

    const-string v1, "Starting Face Unlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 633
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakLivelinessEnabled()Z

    move-result v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/policy/IFaceLockInterface;->startUi(Landroid/os/IBinder;IIIIZ)V

    .line 637
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mWakeUpHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 642
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mServiceRunning:Z

    .line 646
    :goto_0
    monitor-exit v8

    .line 647
    :goto_1
    return-void

    .line 638
    :catch_0
    move-exception v7

    .line 639
    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "FULLockscreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caught exception starting Face Unlock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    monitor-exit v8

    goto :goto_1

    .line 646
    .end local v7           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 644
    :cond_0
    :try_start_3
    const-string v0, "FULLockscreen"

    const-string v1, "startUi() attempted while running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private stopUi()V
    .locals 5

    .prologue
    .line 653
    const-string v1, "FULLockscreen"

    const-string v2, "stopUi()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v2

    .line 658
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mServiceRunning:Z

    if-eqz v1, :cond_0

    .line 659
    const-string v1, "FULLockscreen"

    const-string v3, "Stopping Face Unlock"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 661
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    invoke-interface {v1}, Lcom/android/internal/policy/IFaceLockInterface;->stopUi()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 665
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mServiceRunning:Z

    .line 672
    :goto_1
    monitor-exit v2

    .line 673
    return-void

    .line 662
    :catch_0
    move-exception v0

    .line 663
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "FULLockscreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught exception stopping Face Unlock: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 672
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 670
    :cond_0
    :try_start_3
    const-string v1, "FULLockscreen"

    const-string v3, "stopUi() attempted while not running"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private updateVolume(I)V
    .locals 2
    .parameter "rmsVolume"

    .prologue
    .line 253
    const-string v0, "FULLockscreen"

    const-string v1, "updateVolume()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mVoiceUnlockViewCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;->updateVolume(I)V

    .line 255
    return-void
.end method


# virtual methods
.method public OnEnrollResult(III)V
    .locals 0
    .parameter "job"
    .parameter "count"
    .parameter "check"

    .prologue
    .line 762
    return-void
.end method

.method public OnRmsForWave(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 766
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->updateVolume(I)V

    .line 767
    return-void
.end method

.method public OnSpectrumData([I)V
    .locals 0
    .parameter "stats"

    .prologue
    .line 771
    return-void
.end method

.method public OnVerifyResult(IS)V
    .locals 4
    .parameter "verifyResult"
    .parameter "commandResult"

    .prologue
    const/4 v3, 0x1

    .line 719
    const-string v0, "FULLockscreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnVerifyResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    if-ne p1, v3, :cond_2

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mWakeUnlocked:Z

    .line 739
    :cond_0
    if-ne p1, v3, :cond_6

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mFaceUnlocked:Z

    if-eqz v0, :cond_6

    .line 740
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->checkIfVoiceUnlockErrorShowed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 741
    const-string v0, "FULLockscreen"

    const-string v1, "Wakeup + Face Success"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->displayVerifySuccessMsg()V

    .line 757
    :cond_1
    :goto_0
    return-void

    .line 723
    :cond_2
    const/4 v0, -0x3

    if-ne p1, v0, :cond_3

    .line 724
    const-string v0, "FULLockscreen"

    const-string v1, "OnVerifyResult() verify cancel result returned"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 726
    :cond_3
    const/16 v0, -0xa

    if-eq p1, v0, :cond_4

    const/16 v0, -0xb

    if-ne p1, v0, :cond_0

    .line 727
    :cond_4
    const-string v0, "FULLockscreen"

    const-string v1, "OnVerifyResult() failed due to data file exception"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 744
    :cond_5
    const-string v0, "FULLockscreen"

    const-string v1, "Error already has showed due to timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 747
    :cond_6
    if-eq p1, v3, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mFaceUnlocked:Z

    if-eqz v0, :cond_1

    .line 748
    const-string v0, "FULLockscreen"

    const-string v1, "Wakeup Fail after FaceLock recognition successed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->checkIfVoiceUnlockErrorShowed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 750
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->displayVerifyFailMsg()V

    .line 752
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 754
    :cond_7
    const-string v0, "FULLockscreen"

    const-string v1, "Error already has showed due to timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public cleanUp()V
    .locals 2

    .prologue
    .line 404
    const-string v0, "FULLockscreen"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->hideVoiceLayout()V

    .line 408
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mWakeUpHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 409
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    if-eqz v0, :cond_0

    .line 411
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mFaceUnlockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/IFaceLockInterface;->unregisterCallback(Lcom/android/internal/policy/IFaceLockCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->stopUi()V

    .line 416
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    .line 418
    :cond_0
    return-void

    .line 412
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getQuality()I
    .locals 1

    .prologue
    .line 424
    const v0, 0x8000

    return v0
.end method

.method handleCancel()V
    .locals 3

    .prologue
    .line 562
    const-string v0, "FULLockscreen"

    const-string v1, "handleCancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 567
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Biometric:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->showBackupSecurity(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 568
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->stop()Z

    .line 569
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v1, 0x1388

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 570
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    .line 433
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 456
    const-string v0, "FULLockscreen"

    const-string v1, "Unhandled message"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const/4 v0, 0x0

    .line 459
    :goto_0
    return v0

    .line 435
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->handleServiceConnected()V

    .line 459
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 438
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->handleServiceDisconnected()V

    goto :goto_1

    .line 441
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->handleUnlock(I)V

    goto :goto_1

    .line 444
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->handleCancel()V

    goto :goto_1

    .line 447
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->handleReportFailedAttempt()V

    goto :goto_1

    .line 450
    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->handlePokeWakelock(I)V

    goto :goto_1

    .line 453
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->handleTimeout()V

    goto :goto_1

    .line 433
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method handlePokeWakelock(I)V
    .locals 4
    .parameter "millis"

    .prologue
    .line 589
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 590
    .local v0, powerManager:Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 591
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    int-to-long v2, p1

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 593
    :cond_0
    return-void
.end method

.method handleReportFailedAttempt()V
    .locals 2

    .prologue
    .line 576
    const-string v0, "FULLockscreen"

    const-string v1, "handleReportFailedAttempt()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 581
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->reportFailedUnlockAttempt()V

    .line 582
    return-void
.end method

.method handleServiceConnected()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 467
    const-string v0, "FULLockscreen"

    const-string v2, "handleServiceConnected()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mBoundToService:Z

    if-nez v0, :cond_1

    .line 475
    const-string v0, "FULLockscreen"

    const-string v2, "Dropping startUi() in handleServiceConnected() because no longer bound"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 480
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mFaceUnlockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    invoke-interface {v0, v2}, Lcom/android/internal/policy/IFaceLockInterface;->registerCallback(Lcom/android/internal/policy/IFaceLockCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 491
    .local v1, windowToken:Landroid/os/IBinder;
    if-eqz v1, :cond_2

    .line 495
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 498
    const/4 v0, 0x2

    new-array v7, v0, [I

    .line 499
    .local v7, position:[I
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->getLocationInWindow([I)V

    .line 500
    aget v2, v7, v4

    const/4 v0, 0x1

    aget v3, v7, v0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->startUi(Landroid/os/IBinder;IIII)V

    goto :goto_0

    .line 481
    .end local v1           #windowToken:Landroid/os/IBinder;
    .end local v7           #position:[I
    :catch_0
    move-exception v6

    .line 482
    .local v6, e:Landroid/os/RemoteException;
    const-string v0, "FULLockscreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught exception connecting to Face Unlock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    .line 484
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mBoundToService:Z

    .line 485
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mIsRunning:Z

    goto :goto_0

    .line 503
    .end local v6           #e:Landroid/os/RemoteException;
    .restart local v1       #windowToken:Landroid/os/IBinder;
    :cond_2
    const-string v0, "FULLockscreen"

    const-string v2, "windowToken is null in handleServiceConnected()"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method handleServiceDisconnected()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 513
    const-string v0, "FULLockscreen"

    const-string v1, "handleServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 517
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    .line 518
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mServiceRunning:Z

    .line 519
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mBoundToService:Z

    .line 521
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mIsRunning:Z

    .line 522
    return-void

    .line 519
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method handleTimeout()V
    .locals 4

    .prologue
    .line 596
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mWakeUnlocked:Z

    if-nez v0, :cond_0

    .line 597
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->displayVerifyFailMsg()V

    .line 598
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 600
    :cond_0
    return-void
.end method

.method handleUnlock(I)V
    .locals 5
    .parameter "authenticatedUserId"

    .prologue
    const/4 v4, 0x1

    .line 528
    const-string v1, "FULLockscreen"

    const-string v2, "handleUnlock()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mIsVoiceUnlockOn:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mTalkbackEnabled:Z

    if-nez v1, :cond_2

    .line 530
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mFaceUnlocked:Z

    .line 531
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mWakeUnlocked:Z

    if-nez v1, :cond_1

    .line 532
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->stopFaceLock()Z

    .line 533
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 534
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 538
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v2, 0x1388

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 539
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->displayPrepareMsg()V

    .line 556
    :goto_1
    return-void

    .line 536
    :cond_0
    const-string v1, "FULLockscreen"

    const-string v2, "mFaceUnlockView is null in handleUnlock()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 542
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->stop()Z

    .line 547
    :goto_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v0

    .line 548
    .local v0, currentUserId:I
    if-ne p1, v0, :cond_3

    .line 549
    const-string v1, "FULLockscreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unlocking for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->reportSuccessfulUnlockAttempt()V

    .line 551
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto :goto_1

    .line 545
    .end local v0           #currentUserId:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->stop()Z

    goto :goto_2

    .line 553
    .restart local v0       #currentUserId:I
    :cond_3
    const-string v1, "FULLockscreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring unlock for authenticated user ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") because the current user is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public initializeView(Landroid/view/View;)V
    .locals 2
    .parameter "biometricUnlockView"

    .prologue
    .line 267
    const-string v0, "FULLockscreen"

    const-string v1, "initializeView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    .line 269
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mIsRunning:Z

    return v0
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .parameter "keyguardScreenCallback"

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 259
    return-void
.end method

.method public start()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 292
    const-string v0, "FULLockscreen"

    const-string v1, "start()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 294
    const-string v0, "FULLockscreen"

    const-string v1, "start() called off of the UI thread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mIsRunning:Z

    if-eqz v0, :cond_1

    .line 298
    const-string v0, "FULLockscreen"

    const-string v1, "start() called when already running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mIsVoiceUnlockOn:Z

    if-eqz v0, :cond_2

    .line 302
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mFaceUnlocked:Z

    .line 303
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mWakeUnlocked:Z

    .line 306
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mBoundToService:Z

    if-nez v0, :cond_3

    .line 307
    const-string v0, "FULLockscreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Binding to Face Unlock service for user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/internal/policy/IFaceLockInterface;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mConnection:Landroid/content/ServiceConnection;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;II)Z

    .line 313
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mBoundToService:Z

    .line 318
    :goto_0
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mIsRunning:Z

    .line 319
    return v4

    .line 315
    :cond_3
    const-string v0, "FULLockscreen"

    const-string v1, "Attempt to bind to Face Unlock when already bound"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stop()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 326
    const-string v1, "FULLockscreen"

    const-string v2, "stop()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 328
    const-string v1, "FULLockscreen"

    const-string v2, "stop() called from non-UI thread"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 334
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mIsVoiceUnlockOn:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mTalkbackEnabled:Z

    if-nez v1, :cond_1

    .line 336
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 337
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->hideVoiceLayout()V

    .line 338
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mWakeUpHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 341
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mIsRunning:Z

    .line 343
    .local v0, mWasRunning:Z
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->stopUi()V

    .line 345
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mBoundToService:Z

    if-eqz v1, :cond_3

    .line 346
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    if-eqz v1, :cond_2

    .line 348
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mFaceUnlockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    invoke-interface {v1, v2}, Lcom/android/internal/policy/IFaceLockInterface;->unregisterCallback(Lcom/android/internal/policy/IFaceLockCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :cond_2
    :goto_0
    const-string v1, "FULLockscreen"

    const-string v2, "Unbinding from Face Unlock service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 355
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mBoundToService:Z

    .line 362
    :goto_1
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mIsRunning:Z

    .line 363
    return v0

    .line 360
    :cond_3
    const-string v1, "FULLockscreen"

    const-string v2, "Attempt to unbind from Face Unlock when not bound"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 349
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public stopAndShowBackup()V
    .locals 2

    .prologue
    .line 282
    const-string v0, "FULLockscreen"

    const-string v1, "stopAndShowBackup()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 284
    return-void
.end method

.method public stopFaceLock()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 370
    const-string v1, "FULLockscreen"

    const-string v2, "stop()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 372
    const-string v1, "FULLockscreen"

    const-string v2, "stop() called from non-UI thread"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mIsRunning:Z

    .line 377
    .local v0, mWasRunning:Z
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->stopUi()V

    .line 379
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mBoundToService:Z

    if-eqz v1, :cond_2

    .line 380
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    if-eqz v1, :cond_1

    .line 382
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mFaceUnlockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    invoke-interface {v1, v2}, Lcom/android/internal/policy/IFaceLockInterface;->unregisterCallback(Lcom/android/internal/policy/IFaceLockCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :cond_1
    :goto_0
    const-string v1, "FULLockscreen"

    const-string v2, "Unbinding from Face Unlock service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 389
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mBoundToService:Z

    .line 396
    :goto_1
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->mIsRunning:Z

    .line 397
    return v0

    .line 394
    :cond_2
    const-string v1, "FULLockscreen"

    const-string v2, "Attempt to unbind from Face Unlock when not bound"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 383
    :catch_0
    move-exception v1

    goto :goto_0
.end method
