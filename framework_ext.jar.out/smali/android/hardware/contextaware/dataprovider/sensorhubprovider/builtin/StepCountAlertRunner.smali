.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/StepCountAlertRunner;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "StepCountAlertRunner.java"


# static fields
.field private static final DEFAULT_STEP_COUNT:I = 0xa


# instance fields
.field private mStepCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;)V
    .locals 1
    .parameter "context"
    .parameter "observable"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(Landroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;)V

    .line 36
    const/16 v0, 0xa

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/StepCountAlertRunner;->mStepCount:I

    .line 49
    return-void
.end method


# virtual methods
.method public final disable()V
    .locals 0

    .prologue
    .line 162
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 163
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->disable()V

    .line 164
    return-void
.end method

.method public final enable()V
    .locals 0

    .prologue
    .line 149
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 150
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->enable()V

    .line 151
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_STEP_COUNT_ALERT:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 97
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Action"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final getDataPacket()[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 81
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 82
    .local v0, packet:[B
    iget v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/StepCountAlertRunner;->mStepCount:I

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 83
    const/4 v1, 0x1

    aput-byte v2, v0, v1

    .line 85
    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x6

    return v0
.end method

.method protected final getPowerObserver()Landroid/hardware/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    .line 125
    return-object p0
.end method

.method protected final getPowerResetObserver()Landroid/hardware/contextaware/manager/IApPowerResetObserver;
    .locals 0

    .prologue
    .line 137
    return-object p0
.end method

.method public final setPropertyValue(ILjava/lang/Object;)V
    .locals 3
    .parameter "property"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p2, value:Ljava/lang/Object;,"TE;"
    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 110
    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2           #value:Ljava/lang/Object;,"TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/StepCountAlertRunner;->mStepCount:I

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProperty (Step Count) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/StepCountAlertRunner;->mStepCount:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 115
    :cond_0
    return-void
.end method
