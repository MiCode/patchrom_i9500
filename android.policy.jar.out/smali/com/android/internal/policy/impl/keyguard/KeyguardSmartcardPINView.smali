.class public Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;
.source "KeyguardSmartcardPINView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mSmartcardAuthProgress:Z


# instance fields
.field private mEntry:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mPM:Landroid/os/PowerManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-string v0, "KeyguardSmartcardPINView"

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mEntry:Ljava/lang/String;

    .line 211
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mHandler:Landroid/os/Handler;

    .line 79
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    const-string v1, "KeyguardSmartcardPINView "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mPM:Landroid/os/PowerManager;

    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mPM:Landroid/os/PowerManager;

    const v1, 0x1000001a

    const-string v2, "keyguard"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 83
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 85
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    sput-boolean p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z

    return p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;ZLjava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->verifyPasswordAndUnlock(ZLjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private disableDevicePermanently()V
    .locals 3

    .prologue
    .line 386
    const-string v0, "PasswordUnlockScreen"

    const-string v1, "disableDevicePermanently start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 388
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v1, 0x104022d

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 389
    return-void
.end method

.method private isDeviceDisabledForMaxFailedAttempt()Z
    .locals 7

    .prologue
    .line 362
    const/4 v2, 0x0

    .line 363
    .local v2, lDeviceDisableForMaxFailedAttempt:Z
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "enterprise_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 366
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/enterprise/PasswordPolicy;->getMaximumFailedPasswordsForDeviceDisable()I

    move-result v3

    .line 368
    .local v3, lMaxNumFailedAttemptForDisable:I
    const-string v4, "PasswordUnlockScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "max failed attempt for device disable :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    if-lez v3, :cond_0

    .line 372
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getCurrentFailedPasswordAttempts()I

    move-result v1

    .line 373
    .local v1, lCurNumFailedAttempts:I
    const-string v4, "PasswordUnlockScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current failed attempt for device  :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    if-lt v1, v3, :cond_1

    const/4 v2, 0x1

    .line 379
    .end local v1           #lCurNumFailedAttempts:I
    :cond_0
    :goto_0
    const-string v4, "PasswordUnlockScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDeviceDisabledForMaxFailedAttempt return :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    return v2

    .line 376
    .restart local v1       #lCurNumFailedAttempts:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private verifyPasswordAndUnlock(ZLjava/lang/String;I)V
    .locals 15
    .parameter "status"
    .parameter "entry"
    .parameter "errorMsgId"

    .prologue
    .line 288
    const/4 v12, 0x0

    sput-boolean v12, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z

    .line 291
    sget-object v12, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "verifyPasswordAndUnlock: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    if-eqz p1, :cond_2

    .line 293
    const/4 v4, 0x0

    .line 294
    .local v4, enforcePwdChange:Z
    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v12}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v12

    if-lez v12, :cond_0

    .line 296
    const/4 v4, 0x1

    .line 297
    :cond_0
    if-eqz v4, :cond_1

    .line 298
    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v8

    .line 300
    .local v8, mDPM:Landroid/app/admin/DevicePolicyManager;
    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v11

    .line 302
    .local v11, quality:I
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v10

    .line 303
    .local v10, minLength:I
    invoke-virtual {v8, v11}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v9

    .line 304
    .local v9, maxLength:I
    new-instance v6, Landroid/content/Intent;

    const-string v12, "android.app.action.CHANGE_DEVICE_PASSWORD"

    invoke-direct {v6, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 306
    .local v6, it:Landroid/content/Intent;
    const-string v12, "lockscreen.password_type"

    invoke-virtual {v6, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 307
    const-string v12, "lockscreen.password_min"

    invoke-virtual {v6, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 308
    const-string v12, "lockscreen.password_max"

    invoke-virtual {v6, v12, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 309
    const-string v12, "lockscreen.password_old"

    move-object/from16 v0, p2

    invoke-virtual {v6, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    const-string v12, "confirm_credentials"

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 311
    const/high16 v12, 0x1000

    invoke-virtual {v6, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 312
    const/high16 v12, 0x40

    invoke-virtual {v6, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 313
    const/high16 v12, 0x80

    invoke-virtual {v6, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 314
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 321
    .end local v6           #it:Landroid/content/Intent;
    .end local v8           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v9           #maxLength:I
    .end local v10           #minLength:I
    .end local v11           #quality:I
    :cond_1
    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mImmAbs:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 322
    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v12}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->reportSuccessfulUnlockAttempt()V

    .line 323
    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 326
    new-instance v3, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v12}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 327
    .local v3, dem:Landroid/dirEncryption/DirEncryptionManager;
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/dirEncryption/DirEncryptionManager;->setPassword(Ljava/lang/String;)I

    .line 355
    .end local v3           #dem:Landroid/dirEncryption/DirEncryptionManager;
    .end local v4           #enforcePwdChange:Z
    :goto_0
    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mPasswordEntry:Landroid/widget/TextView;

    const-string v13, ""

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mEntry:Ljava/lang/String;

    .line 357
    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 358
    return-void

    .line 330
    :cond_2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x3

    if-le v12, v13, :cond_5

    const v12, 0x1040270

    move/from16 v0, p3

    if-ne v0, v12, :cond_5

    .line 334
    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v12}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->reportFailedUnlockAttempt()V

    .line 336
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v7

    .line 337
    .local v7, lDeviceDisableForMaxFailedAttempt:Z
    if-nez v7, :cond_4

    .line 338
    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v12}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->getFailedAttempts()I

    move-result v12

    rem-int/lit8 v12, v12, 0x5

    if-nez v12, :cond_3

    .line 339
    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v1

    .line 341
    .local v1, deadline:J
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->handleAttemptLockout(J)V

    .line 343
    new-instance v5, Landroid/content/Intent;

    const-string v12, "android.intent.action.PATTERN_LOCK_FAIL"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 345
    .local v5, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 347
    .end local v1           #deadline:J
    .end local v5           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const/4 v13, 0x1

    move/from16 v0, p3

    invoke-interface {v12, v0, v13}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_0

    .line 349
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->disableDevicePermanently()V

    goto :goto_0

    .line 353
    .end local v7           #lDeviceDisableForMaxFailedAttempt:Z
    :cond_5
    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const/4 v13, 0x1

    move/from16 v0, p3

    invoke-interface {v12, v0, v13}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_0
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .locals 1

    .prologue
    .line 117
    const v0, 0x1020319

    return v0
.end method

.method public getWrongPasswordStringId()I
    .locals 1

    .prologue
    .line 196
    const v0, 0x104086f

    return v0
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 122
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    const-string v3, "onFinishInflate "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->onFinishInflate()V

    .line 124
    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z

    if-nez v2, :cond_0

    .line 125
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->initializeCACAuthentication()V

    .line 126
    :cond_0
    const v2, 0x1020325

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 127
    .local v0, ok:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 128
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/LiftToActivateListener;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/policy/impl/keyguard/LiftToActivateListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 143
    :cond_1
    const v2, 0x102031a

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 144
    .local v1, pinDelete:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 145
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 146
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView$3;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 171
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 172
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 175
    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z

    if-eqz v2, :cond_3

    .line 176
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mPasswordEntry:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mEntry:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v3, 0x104026f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 178
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 184
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    .line 187
    return-void

    .line 180
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 181
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 182
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mPasswordEntry:Landroid/widget/TextView;

    const v3, 0x1040276

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHint(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 98
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    const-string v1, "onPause "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 103
    :cond_0
    return-void
.end method

.method public onResume(I)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 106
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v1, 0x104026f

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 109
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->onResume(I)V

    goto :goto_0
.end method

.method protected resetState()V
    .locals 2

    .prologue
    .line 89
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    const-string v1, "resetState "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 94
    :cond_0
    return-void
.end method

.method public showUsabilityHint()V
    .locals 2

    .prologue
    .line 191
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    const-string v1, "showUsabilityHint "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 4

    .prologue
    .line 201
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    const-string v1, "verifyPasswordAndUnlock: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mEntry:Ljava/lang/String;

    .line 203
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mEntry:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mEntry:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 205
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    const-string v1, "Using Smartcard(CAC) authentication: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView;->mEntry:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 209
    :cond_0
    return-void
.end method
