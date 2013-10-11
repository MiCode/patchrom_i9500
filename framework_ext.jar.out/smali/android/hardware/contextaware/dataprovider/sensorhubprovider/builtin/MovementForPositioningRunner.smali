.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/MovementForPositioningRunner;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "MovementForPositioningRunner.java"


# static fields
.field private static final DEFAULT_MOVE_DISTANCE:D = 100.0

.field private static final DEFAULT_MOVE_DURATION:I = 0x14

.field private static final DEFAULT_MOVE_MIN_DURATION:I = 0x5

.field private static final DEFAULT_NOMOVE_DURATION:I = 0x3c


# instance fields
.field private mMoveDistanceThrs:D

.field private mMoveDurationThrs:I

.field private mMoveMinDurationThrs:I

.field private mNoMoveDurationThrs:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;)V
    .locals 2
    .parameter "context"
    .parameter "observable"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(Landroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;)V

    .line 46
    const/16 v0, 0x3c

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/MovementForPositioningRunner;->mNoMoveDurationThrs:I

    .line 49
    const/16 v0, 0x14

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/MovementForPositioningRunner;->mMoveDurationThrs:I

    .line 52
    const/4 v0, 0x5

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/MovementForPositioningRunner;->mMoveMinDurationThrs:I

    .line 55
    const-wide/high16 v0, 0x4059

    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/MovementForPositioningRunner;->mMoveDistanceThrs:D

    .line 68
    return-void
.end method


# virtual methods
.method public final disable()V
    .locals 0

    .prologue
    .line 205
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 206
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->disable()V

    .line 207
    return-void
.end method

.method public final enable()V
    .locals 0

    .prologue
    .line 192
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 193
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->enable()V

    .line 194
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_MOVEMENT_FOR_POSITIONING:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 125
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Alert"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final getDataPacket()[B
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 100
    const/4 v2, 0x7

    new-array v1, v2, [B

    .line 102
    .local v1, packet:[B
    iget v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/MovementForPositioningRunner;->mNoMoveDurationThrs:I

    invoke-static {v2, v6}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    .line 103
    .local v0, data:[B
    aget-byte v2, v0, v4

    aput-byte v2, v1, v4

    .line 104
    aget-byte v2, v0, v5

    aput-byte v2, v1, v5

    .line 105
    iget v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/MovementForPositioningRunner;->mMoveDurationThrs:I

    invoke-static {v2, v6}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    .line 106
    aget-byte v2, v0, v4

    aput-byte v2, v1, v6

    .line 107
    const/4 v2, 0x3

    aget-byte v3, v0, v5

    aput-byte v3, v1, v2

    .line 108
    iget v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/MovementForPositioningRunner;->mMoveMinDurationThrs:I

    invoke-static {v2, v6}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    .line 109
    const/4 v2, 0x4

    aget-byte v3, v0, v4

    aput-byte v3, v1, v2

    .line 110
    const/4 v2, 0x5

    aget-byte v3, v0, v5

    aput-byte v3, v1, v2

    .line 111
    const/4 v2, 0x6

    iget-wide v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/MovementForPositioningRunner;->mMoveDistanceThrs:D

    double-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 113
    return-object v1
.end method

.method protected final getInstLibType()B
    .locals 1

    .prologue
    .line 89
    const/16 v0, 0x9

    return v0
.end method

.method protected final getPowerObserver()Landroid/hardware/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    .line 168
    return-object p0
.end method

.method protected final getPowerResetObserver()Landroid/hardware/contextaware/manager/IApPowerResetObserver;
    .locals 0

    .prologue
    .line 180
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
    .line 137
    .local p2, value:Ljava/lang/Object;,"TE;"
    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    .line 138
    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2           #value:Ljava/lang/Object;,"TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/MovementForPositioningRunner;->mNoMoveDurationThrs:I

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProperty (Enter Threshold) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/MovementForPositioningRunner;->mNoMoveDurationThrs:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 142
    .restart local p2       #value:Ljava/lang/Object;,"TE;"
    :cond_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    .line 143
    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2           #value:Ljava/lang/Object;,"TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/MovementForPositioningRunner;->mMoveDurationThrs:I

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProperty (Exit Distance Threshold) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/MovementForPositioningRunner;->mMoveDurationThrs:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 147
    .restart local p2       #value:Ljava/lang/Object;,"TE;"
    :cond_2
    const/16 v0, 0xb

    if-ne p1, v0, :cond_3

    .line 148
    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2           #value:Ljava/lang/Object;,"TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/MovementForPositioningRunner;->mMoveMinDurationThrs:I

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProperty (Exit Time Threshold) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/MovementForPositioningRunner;->mMoveMinDurationThrs:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 152
    .restart local p2       #value:Ljava/lang/Object;,"TE;"
    :cond_3
    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    .line 153
    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2           #value:Ljava/lang/Object;,"TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/MovementForPositioningRunner;->mMoveDistanceThrs:D

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProperty (Movement Threshold) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/MovementForPositioningRunner;->mMoveDistanceThrs:D

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
