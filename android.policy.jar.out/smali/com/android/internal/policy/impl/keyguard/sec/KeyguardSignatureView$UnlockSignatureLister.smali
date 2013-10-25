.class Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;
.super Ljava/lang/Object;
.source "KeyguardSignatureView.java"

# interfaces
.implements Lcom/android/internal/widget/SignView$OnSignatureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockSignatureLister"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 298
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)V

    return-void
.end method


# virtual methods
.method public notifySignServiceError()V
    .locals 3

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignServiceRunningLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$100(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 379
    :try_start_0
    const-string v0, "KeyguardSignatureView"

    const-string v2, "notifySignServiceError start"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 382
    const-string v0, "KeyguardSignatureView"

    const-string v2, "oh, sign service is alive now, just set to sign view."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/widget/SignView;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/SignView;->setSignService(Lcom/android/internal/policy/ISignServiceInterface;)V

    .line 384
    monitor-exit v1

    .line 397
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mServiceConnection:Landroid/content/ServiceConnection;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$1200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Landroid/content/ServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 388
    const-string v0, "KeyguardSignatureView"

    const-string v2, "onSignServiceError unbind by force."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$1300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mServiceConnection:Landroid/content/ServiceConnection;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$1200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 392
    :cond_1
    const-string v0, "KeyguardSignatureView"

    const-string v2, "onSignServiceError bind sign service by force."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->bindToSignatureLock()V

    .line 394
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    const/4 v2, 0x1

    #setter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mBoundToSignService:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$1402(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;Z)Z

    .line 396
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAddSignFailed(I)V
    .locals 0
    .parameter "reason"

    .prologue
    .line 372
    return-void
.end method

.method public onAddSignSucceeded(I)V
    .locals 0
    .parameter "nCount"

    .prologue
    .line 375
    return-void
.end method

.method public onSignatureCleared()V
    .locals 2

    .prologue
    .line 314
    const-string v0, "KeyguardSignatureView"

    const-string v1, "onSignatureCleared is called by SignView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return-void
.end method

.method public onSignatureDetected()V
    .locals 6

    .prologue
    .line 324
    const-string v2, "KeyguardSignatureView"

    const-string v3, "onSignatureDetected is called by SignView"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 330
    const-string v2, "KeyguardSignatureView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Verification score for inputted signature is (* "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v4

    const/16 v5, 0xa

    invoke-interface {v4, v5}, Lcom/android/internal/policy/ISignServiceInterface;->getVerifyScore(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " *) current threshold is (* "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/widget/SignView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/SignView;->getThresholdValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " *)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/widget/SignView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/SignView;->getVerifyResult()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 342
    const-string v2, "KeyguardSignatureView"

    const-string v3, "sign verification is successful, go to unlock screen"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;->SUCCESS:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$702(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;)Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;

    .line 345
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$900(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->reportSuccessfulUnlockAttempt()V

    .line 346
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$900(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 369
    :goto_1
    return-void

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 348
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;->FAIL:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$702(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;)Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;

    .line 350
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$1008(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)I

    .line 352
    const-string v2, "KeyguardSignatureView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sign verification is failed, count("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mFailedAttempts:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$1000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mFailedAttempts:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$1000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2

    .line 356
    const-string v2, "KeyguardSignatureView"

    const-string v3, "user failed to unlock with signature until maximum try, go to unlock screen"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$900(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v2

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Signature:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-interface {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->showBackupSecurity(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_1

    .line 361
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$1100(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10404b0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mGuideText:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$500(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, guideMessage:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mHelpText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$600(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/widget/SignView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_1
.end method

.method public onSignatureInputting()V
    .locals 3

    .prologue
    .line 318
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$800()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KeyguardSignatureView"

    const-string v1, "onSignatureInputting is called by SignView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$900(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 321
    return-void
.end method

.method public onSignatureStart()V
    .locals 2

    .prologue
    .line 300
    const-string v0, "KeyguardSignatureView"

    const-string v1, "onSignatureStart is called by SignView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$600(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mGuideText:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$500(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/widget/SignView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 308
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;->INIT:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$700()Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 309
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;->IDENTIFYING:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$702(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;)Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;

    .line 311
    :cond_0
    return-void
.end method
