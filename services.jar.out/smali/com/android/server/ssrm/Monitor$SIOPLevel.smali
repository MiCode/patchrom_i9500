.class public Lcom/android/server/ssrm/Monitor$SIOPLevel;
.super Ljava/lang/Object;
.source "Monitor.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SIOPLevel"
.end annotation


# instance fields
.field private LcdFPS:I

.field private aclOn:Z

.field private cpPowerBackOut:Z

.field private cpuMaxCore:I

.field private displayBrightness:I

.field private dualRecordingToSingle:Z

.field private flashLedDisable:Z

.field private gpuFrequency:I

.field private limitChargingCurrent:I

.field private lockFrequency:I

.field private name:Ljava/lang/String;

.field private realOPFreq:I

.field private recordingStop:Z

.field private temperatureThreshold:I

.field final synthetic this$0:Lcom/android/server/ssrm/Monitor;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;IIIIIIZZZZZI)V
    .locals 4
    .parameter
    .parameter "_name"
    .parameter "_temperature"
    .parameter "_frequency"
    .parameter "_cpuMaxCore"
    .parameter "_limitChargingCurrent"
    .parameter "_brightness"
    .parameter "_LcdFPS"
    .parameter "_flashLedDisable"
    .parameter "_aclOn"
    .parameter "_recordingStop"
    .parameter "_dualRecordingToSingle"
    .parameter "_cpPowerBackOut"
    .parameter "_gpuFrequency"

    .prologue
    .line 571
    iput-object p1, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->this$0:Lcom/android/server/ssrm/Monitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 565
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->realOPFreq:I

    .line 567
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->gpuFrequency:I

    .line 572
    iput-object p2, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->name:Ljava/lang/String;

    .line 573
    iput p3, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->temperatureThreshold:I

    .line 574
    iput p4, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I

    .line 575
    iput p5, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I

    .line 576
    iput p6, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I

    .line 577
    iput p7, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I

    .line 578
    iput p8, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->LcdFPS:I

    .line 579
    iput-boolean p9, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->flashLedDisable:Z

    .line 580
    iput-boolean p10, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->aclOn:Z

    .line 581
    iput-boolean p11, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->recordingStop:Z

    .line 582
    move/from16 v0, p12

    iput-boolean v0, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->dualRecordingToSingle:Z

    .line 583
    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpPowerBackOut:Z

    .line 584
    move/from16 v0, p14

    iput v0, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->gpuFrequency:I

    .line 586
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$900()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIOPLevel:: Name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ArmFreq = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->realOPFreq:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ArmCoreNum = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ChargeCurrent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", LCDBrightness = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Flash = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->flashLedDisable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ACL = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->aclOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Temp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->temperatureThreshold:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", recordingStop = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->recordingStop:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", dualRecordingToSingle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->dualRecordingToSingle:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cpPowerBackOut = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpPowerBackOut:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", gpuFrequency = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->gpuFrequency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 553
    iget v0, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/ssrm/Monitor$SIOPLevel;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 553
    iput p1, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I

    return p1
.end method

.method static synthetic access$2000(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 553
    iget v0, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/ssrm/Monitor$SIOPLevel;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 553
    iput p1, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 553
    iget-boolean v0, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->aclOn:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 553
    iget v0, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->temperatureThreshold:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 553
    iget v0, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 553
    iget v0, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I

    return v0
.end method

.method static synthetic access$2502(Lcom/android/server/ssrm/Monitor$SIOPLevel;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 553
    iput p1, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 553
    iget v0, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->LcdFPS:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 553
    iget-boolean v0, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->flashLedDisable:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 553
    iget-boolean v0, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->recordingStop:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 553
    iget-boolean v0, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->dualRecordingToSingle:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 553
    iget-boolean v0, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpPowerBackOut:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 553
    iget v0, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->gpuFrequency:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 553
    iget v0, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->realOPFreq:I

    return v0
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 631
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 610
    instance-of v2, p1, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    if-nez v2, :cond_1

    .line 615
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 614
    check-cast v0, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    .line 615
    .local v0, secondObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;
    iget v2, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->temperatureThreshold:I

    iget v3, v0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->temperatureThreshold:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I

    iget v3, v0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I

    iget v3, v0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I

    iget v3, v0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I

    iget v3, v0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->LcdFPS:I

    iget v3, v0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->LcdFPS:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->flashLedDisable:Z

    iget-boolean v3, v0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->flashLedDisable:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->aclOn:Z

    iget-boolean v3, v0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->aclOn:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->recordingStop:Z

    iget-boolean v3, v0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->recordingStop:Z

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->realOPFreq:I

    iget v3, v0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->realOPFreq:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->dualRecordingToSingle:Z

    iget-boolean v3, v0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->dualRecordingToSingle:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpPowerBackOut:Z

    iget-boolean v3, v0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpPowerBackOut:Z

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->gpuFrequency:I

    iget v3, v0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->gpuFrequency:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method getLcdFrequency()I
    .locals 1

    .prologue
    .line 604
    iget v0, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->LcdFPS:I

    return v0
.end method

.method getLockFrequency()I
    .locals 1

    .prologue
    .line 601
    iget v0, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I

    return v0
.end method

.method getTemperatureThreshold()I
    .locals 1

    .prologue
    .line 607
    iget v0, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->temperatureThreshold:I

    return v0
.end method
