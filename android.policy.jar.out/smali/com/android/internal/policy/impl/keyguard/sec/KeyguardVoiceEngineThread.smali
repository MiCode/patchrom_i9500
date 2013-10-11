.class public Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;
.super Ljava/lang/Thread;
.source "KeyguardVoiceEngineThread.java"

# interfaces
.implements Lcom/samsung/voiceshell/VoiceEngineResultListener;


# instance fields
.field private final MSG_DESTROY_WAKEUP_CMD:I

.field private final MSG_INIT_WAKEUP_CMD:I

.field private final MSG_LAUNCH_CMD:I

.field private final MSG_QUIT_LOOPER:I

.field private final MSG_SET_VOICE_RECOGNITION_FAIL_CMD:I

.field private final MSG_START_VERIFY_CMD:I

.field private final MSG_TERMINATE_VERIFY_CMD:I

.field private final STATUS_DRIVING_MODE_ENABLED:I

.field private final STATUS_PACKAGE_ENABLE:I

.field private final STATUS_TALKBACK_SERVICE_ENABLED:I

.field private final STATUS_VOICE_ENGINE_SUPPORT:I

.field private final STATUS_WAKE_UP_SETTINGS:I

.field private final TAG:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mIsAvailable:Z

.field private mIsRunning:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mVEPowerManager:Landroid/os/PowerManager;

.field private mVThreadHandler:Landroid/os/Handler;

.field private mVoiceVerifyStarted:Z

.field private mWakeUpCallback:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;

.field private mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;)V
    .locals 3
    .parameter "context"
    .parameter "wakeUpCallback"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 62
    const-string v0, "KeyguardVoiceEngineThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 32
    const-string v0, "KeyguardVoiceEngineThread"

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->TAG:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    .line 35
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mVoiceVerifyStarted:Z

    .line 36
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mIsRunning:Z

    .line 37
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mIsAvailable:Z

    .line 45
    const/16 v0, 0x6e

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->MSG_INIT_WAKEUP_CMD:I

    .line 46
    const/16 v0, 0x78

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->MSG_START_VERIFY_CMD:I

    .line 47
    const/16 v0, 0x82

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->MSG_TERMINATE_VERIFY_CMD:I

    .line 48
    const/16 v0, 0x8c

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->MSG_DESTROY_WAKEUP_CMD:I

    .line 49
    const/16 v0, 0x96

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->MSG_QUIT_LOOPER:I

    .line 50
    const/16 v0, 0xa0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->MSG_LAUNCH_CMD:I

    .line 51
    const/16 v0, 0xaa

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->MSG_SET_VOICE_RECOGNITION_FAIL_CMD:I

    .line 53
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->STATUS_WAKE_UP_SETTINGS:I

    .line 54
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->STATUS_PACKAGE_ENABLE:I

    .line 55
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->STATUS_TALKBACK_SERVICE_ENABLED:I

    .line 56
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->STATUS_DRIVING_MODE_ENABLED:I

    .line 57
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->STATUS_VOICE_ENGINE_SUPPORT:I

    .line 63
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCallback:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;

    .line 65
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 66
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mVEPowerManager:Landroid/os/PowerManager;

    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mAudioManager:Landroid/media/AudioManager;

    .line 69
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->checkCondition()V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mVoiceVerifyStarted:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->dismissLockScreen()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mVoiceVerifyStarted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;)Landroid/os/PowerManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mVEPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;Landroid/os/PowerManager;)Landroid/os/PowerManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mVEPowerManager:Landroid/os/PowerManager;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->updateNotification(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;)Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCallback:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mIsRunning:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;Lcom/android/internal/widget/LockPatternUtils;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p1
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;Landroid/media/AudioManager;)Landroid/media/AudioManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mAudioManager:Landroid/media/AudioManager;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->isSecure()Z

    move-result v0

    return v0
.end method

.method private checkCondition()V
    .locals 14

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 79
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mIsAvailable:Z

    .line 80
    const/4 v6, 0x0

    .line 83
    .local v6, status:I
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "wake_up_lock_screen"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v9, :cond_4

    move v4, v9

    .line 85
    .local v4, isMultipleWakeUpOn:Z
    :goto_0
    if-eqz v4, :cond_0

    .line 86
    add-int/lit8 v6, v6, 0x1

    .line 88
    :try_start_0
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string v12, "com.vlingo.midas"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 90
    .local v3, info:Landroid/content/pm/ApplicationInfo;
    iget-boolean v11, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v11, :cond_5

    .line 91
    add-int/lit8 v6, v6, 0x2

    .line 92
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mIsAvailable:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v3           #info:Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_1
    iget-boolean v11, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mIsAvailable:Z

    if-eqz v11, :cond_1

    .line 108
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "enabled_accessibility_services"

    invoke-static {v11, v12}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, accesibilityService:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 111
    const-string v11, "(?i).*talkback.*"

    invoke-virtual {v0, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    .line 112
    .local v7, talkbackEnabled:Z
    if-eqz v7, :cond_1

    .line 113
    add-int/lit8 v6, v6, 0x4

    .line 114
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mIsAvailable:Z

    .line 119
    .end local v0           #accesibilityService:Ljava/lang/String;
    .end local v7           #talkbackEnabled:Z
    :cond_1
    iget-boolean v11, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mIsAvailable:Z

    if-eqz v11, :cond_2

    .line 120
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "driving_mode_on"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 122
    .local v1, drivingMode:I
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "driving_mode_unlock_screen_contents"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 125
    .local v8, unlockDrivingMode:I
    if-ne v1, v9, :cond_2

    if-ne v8, v9, :cond_2

    .line 126
    add-int/lit8 v6, v6, 0x8

    .line 127
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mIsAvailable:Z

    .line 131
    .end local v1           #drivingMode:I
    .end local v8           #unlockDrivingMode:I
    :cond_2
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mIsAvailable:Z

    if-eqz v9, :cond_3

    .line 133
    :try_start_1
    const-string v9, "KeyguardVoiceEngineThread"

    const-string v10, "Create WakeUpCmdRecognizer"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    new-instance v9, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    invoke-direct {v9, p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;-><init>(Lcom/samsung/voiceshell/VoiceEngineResultListener;)V

    iput-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    .line 135
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->setContext(Landroid/content/Context;)V

    .line 136
    const-string v9, "KeyguardVoiceEngineThread"

    const-string v10, "Create WakeUpCmdRecognizer - finished"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    invoke-virtual {v9}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->getEnableWakeUp()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    .line 140
    .local v5, isSupportMultipleWakeUp:Z
    if-eqz v5, :cond_6

    .line 141
    add-int/lit8 v6, v6, 0x10

    .line 153
    .end local v5           #isSupportMultipleWakeUp:Z
    :cond_3
    :goto_2
    const-string v9, "KeyguardVoiceEngineThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "condition = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void

    .end local v4           #isMultipleWakeUpOn:Z
    :cond_4
    move v4, v10

    .line 83
    goto/16 :goto_0

    .line 94
    .restart local v3       #info:Landroid/content/pm/ApplicationInfo;
    .restart local v4       #isMultipleWakeUpOn:Z
    :cond_5
    const/4 v11, 0x0

    :try_start_2
    iput-boolean v11, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mIsAvailable:Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 96
    .end local v3           #info:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .line 97
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mIsAvailable:Z

    .line 98
    const-string v11, "KeyguardVoiceEngineThread"

    const-string v12, "package not found"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 143
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5       #isSupportMultipleWakeUp:Z
    :cond_6
    const/4 v9, 0x0

    :try_start_3
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mIsAvailable:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 146
    .end local v5           #isSupportMultipleWakeUp:Z
    :catch_1
    move-exception v2

    .line 147
    .local v2, e:Ljava/lang/Exception;
    const-string v9, "KeyguardVoiceEngineThread"

    const-string v10, "Error while initializing WakeUpCmdRecognizer"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private dismissLockScreen()V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCallback:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCallback:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;->unlock()V

    .line 353
    :cond_0
    return-void
.end method

.method private isActiveStreamExist()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 381
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 382
    const-string v1, "KeyguardVoiceEngineThread"

    const-string v2, "mAudioManager null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :goto_0
    return v0

    .line 385
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isFMActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 386
    const-string v1, "KeyguardVoiceEngineThread"

    const-string v2, "FM is active"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 388
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 389
    const-string v1, "KeyguardVoiceEngineThread"

    const-string v2, "Music is active"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 391
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isRecordActive()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 392
    const-string v1, "KeyguardVoiceEngineThread"

    const-string v2, "Recording is active"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 395
    :cond_3
    const-string v0, "KeyguardVoiceEngineThread"

    const-string v1, "No active stream"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSecure()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 374
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v1, :cond_1

    .line 377
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->isSimPinSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSimPinSecure()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 356
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 357
    .local v0, monitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    if-nez v0, :cond_1

    .line 365
    :cond_0
    :goto_0
    return v2

    .line 360
    :cond_1
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isDualModeDevice()I

    move-result v3

    if-eqz v3, :cond_2

    .line 361
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getPINPUKRequest()Z

    move-result v2

    goto :goto_0

    .line 364
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    .line 365
    .local v1, simState:Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v3, :cond_3

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v3, :cond_3

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v3, :cond_3

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v3, :cond_3

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v3, :cond_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private launch(S)V
    .locals 3
    .parameter "cmd"

    .prologue
    .line 333
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/16 v2, 0xa0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 334
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 335
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 336
    return-void
.end method

.method private updateNotification(Z)V
    .locals 5
    .parameter "on"

    .prologue
    const/4 v4, 0x0

    .line 400
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mContext:Landroid/content/Context;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 402
    .local v0, service:Landroid/app/StatusBarManager;
    const-string v1, "keyguard_wakeup"

    const v2, 0x1080762

    const-string v3, "Keyguard wakeup"

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 404
    if-eqz p1, :cond_0

    .line 405
    const-string v1, "keyguard_wakeup"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 409
    :goto_0
    return-void

    .line 407
    :cond_0
    const-string v1, "keyguard_wakeup"

    invoke-virtual {v0, v1, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private wakeUpInit()V
    .locals 2

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mIsAvailable:Z

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 300
    :cond_0
    return-void
.end method


# virtual methods
.method public OnEnrollResult(III)V
    .locals 0
    .parameter "job"
    .parameter "count"
    .parameter "check"

    .prologue
    .line 441
    return-void
.end method

.method public OnRmsForWave(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 446
    return-void
.end method

.method public OnSpectrumData([I)V
    .locals 0
    .parameter "stats"

    .prologue
    .line 450
    return-void
.end method

.method public OnVerifyResult(IS)V
    .locals 3
    .parameter "verifyResult"
    .parameter "commandResult"

    .prologue
    .line 413
    const-string v0, "KeyguardVoiceEngineThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnVerifyResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mIsRunning:Z

    if-nez v0, :cond_1

    .line 416
    const-string v0, "KeyguardVoiceEngineThread"

    const-string v1, "mIsRunning is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->onPause()V

    .line 423
    const/4 v0, -0x3

    if-ne p1, v0, :cond_2

    .line 424
    const-string v0, "KeyguardVoiceEngineThread"

    const-string v1, "OnVerifyResult() verify cancel result returned"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 426
    :cond_2
    const/16 v0, -0xa

    if-eq p1, v0, :cond_3

    const/16 v0, -0xb

    if-ne p1, v0, :cond_4

    .line 427
    :cond_3
    const-string v0, "KeyguardVoiceEngineThread"

    const-string v1, "OnVerifyResult() failed due to data file exception"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 429
    :cond_4
    const/16 v0, -0xc

    if-ne p1, v0, :cond_5

    .line 430
    const-string v0, "KeyguardVoiceEngineThread"

    const-string v1, "OnVerifyResult() voice recognition failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->setVoiceRecognitionFailCue()V

    goto :goto_0

    .line 433
    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 434
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->launch(S)V

    goto :goto_0
.end method

.method public cleanUp()V
    .locals 2

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mIsAvailable:Z

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 327
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x8c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 328
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 330
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mIsAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 315
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mIsAvailable:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->isActiveStreamExist()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mVEPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mVEPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 309
    :cond_0
    return-void
.end method

.method protected removeAllMsgs()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 287
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 288
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 289
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x8c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 290
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 291
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 292
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/16 v1, 0xaa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 294
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mIsAvailable:Z

    if-nez v0, :cond_0

    .line 283
    :goto_0
    return-void

    .line 163
    :cond_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 165
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread$1;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    .line 280
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->wakeUpInit()V

    .line 282
    invoke-static {}, Landroid/os/Looper;->loop()V

    goto :goto_0
.end method

.method public setVoiceRecognitionFailCue()V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCallback:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCallback:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;->setVoiceRecognitionFailCue()V

    .line 345
    :cond_0
    return-void
.end method
