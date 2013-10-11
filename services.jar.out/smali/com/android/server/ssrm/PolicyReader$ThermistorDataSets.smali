.class public Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;
.super Ljava/lang/Object;
.source "PolicyReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/PolicyReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThermistorDataSets"
.end annotation


# instance fields
.field private ACL:Ljava/lang/String;

.field private ARMCore:I

.field private ARMFreq:I

.field private Flash:Ljava/lang/String;

.field private chargeCurent:I

.field private mCPPowerBackOut:Ljava/lang/String;

.field private mDualRecordingToSingle:Ljava/lang/String;

.field private mGPUFreq:I

.field private mLcdBrightness:I

.field private mLevel:I

.field private mRecordingStop:Ljava/lang/String;

.field private mTemprature:I

.field final synthetic this$0:Lcom/android/server/ssrm/PolicyReader;


# direct methods
.method public constructor <init>(Lcom/android/server/ssrm/PolicyReader;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 394
    iput-object p1, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->this$0:Lcom/android/server/ssrm/PolicyReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    iput v1, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->mLevel:I

    .line 397
    iput v1, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->mTemprature:I

    .line 398
    iput v1, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->ARMFreq:I

    .line 399
    iput v1, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->mLcdBrightness:I

    .line 400
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->ACL:Ljava/lang/String;

    .line 401
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->Flash:Ljava/lang/String;

    .line 402
    iput v1, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->ARMCore:I

    .line 403
    iput v1, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->chargeCurent:I

    .line 404
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->mRecordingStop:Ljava/lang/String;

    .line 405
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->mDualRecordingToSingle:Ljava/lang/String;

    .line 406
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->mCPPowerBackOut:Ljava/lang/String;

    .line 407
    iput v1, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->mGPUFreq:I

    return-void
.end method


# virtual methods
.method public getAclState()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 493
    const/4 v0, 0x0

    .line 494
    .local v0, flag:Z
    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->ACL:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 495
    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->ACL:Ljava/lang/String;

    const-string v3, "on"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->ACL:Ljava/lang/String;

    const-string v3, "ON"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 496
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    .line 500
    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v0

    .line 498
    goto :goto_0
.end method

.method public getArmCore()I
    .locals 1

    .prologue
    .line 487
    iget v0, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->ARMCore:I

    return v0
.end method

.method public getArmFreq()I
    .locals 1

    .prologue
    .line 481
    iget v0, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->ARMFreq:I

    return v0
.end method

.method public getChargeCurrent()I
    .locals 1

    .prologue
    .line 467
    iget v0, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->chargeCurent:I

    return v0
.end method

.method public getFlashState()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 471
    const/4 v0, 0x0

    .line 472
    .local v0, flag:Z
    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->Flash:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 473
    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->Flash:Ljava/lang/String;

    const-string v3, "off"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->Flash:Ljava/lang/String;

    const-string v3, "OFF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 474
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    .line 478
    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v0

    .line 476
    goto :goto_0
.end method

.method public getGPUFreq()I
    .locals 1

    .prologue
    .line 484
    iget v0, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->mGPUFreq:I

    return v0
.end method

.method public getLcdBrightness()I
    .locals 1

    .prologue
    .line 490
    iget v0, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->mLcdBrightness:I

    return v0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 503
    iget v0, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->mLevel:I

    return v0
.end method

.method public getSurfaceTemp()I
    .locals 1

    .prologue
    .line 506
    iget v0, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->mTemprature:I

    return v0
.end method

.method public isCPPowerBackOut()Z
    .locals 2

    .prologue
    .line 453
    const-string v0, "on"

    iget-object v1, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->mCPPowerBackOut:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    const/4 v0, 0x1

    .line 456
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDualRecordingToSingle()Z
    .locals 2

    .prologue
    .line 460
    const-string v0, "on"

    iget-object v1, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->mDualRecordingToSingle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    const/4 v0, 0x1

    .line 463
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecordingStop()Z
    .locals 2

    .prologue
    .line 446
    const-string v0, "on"

    iget-object v1, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->mRecordingStop:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    const/4 v0, 0x1

    .line 449
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAcl(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 431
    iput-object p1, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->ACL:Ljava/lang/String;

    .line 432
    return-void
.end method

.method public setArmCore(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 428
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->ARMCore:I

    .line 429
    return-void
.end method

.method public setArmFreq(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 416
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->ARMFreq:I

    .line 417
    return-void
.end method

.method public setCPPowerBackOut(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 437
    iput-object p1, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->mCPPowerBackOut:Ljava/lang/String;

    .line 438
    return-void
.end method

.method public setChargeCurrent(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 434
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->chargeCurent:I

    .line 435
    return-void
.end method

.method public setDualRecordingToSingle(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 443
    iput-object p1, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->mDualRecordingToSingle:Ljava/lang/String;

    .line 444
    return-void
.end method

.method public setFlash(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 425
    iput-object p1, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->Flash:Ljava/lang/String;

    .line 426
    return-void
.end method

.method public setGPUFreq(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 419
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->mGPUFreq:I

    .line 420
    return-void
.end method

.method public setLcdBrightness(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 422
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->mLcdBrightness:I

    .line 423
    return-void
.end method

.method public setLevel(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 410
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->mLevel:I

    .line 411
    return-void
.end method

.method public setRecordingStop(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 440
    iput-object p1, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->mRecordingStop:Ljava/lang/String;

    .line 441
    return-void
.end method

.method public setSurfaceTemp(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 413
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->mTemprature:I

    .line 414
    return-void
.end method
