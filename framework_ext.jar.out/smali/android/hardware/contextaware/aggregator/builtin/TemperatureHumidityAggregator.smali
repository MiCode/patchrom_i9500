.class public Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;
.super Landroid/hardware/contextaware/aggregator/EnvironmentSensorAggregator;
.source "TemperatureHumidityAggregator.java"


# instance fields
.field private mCompensationEngine:Landroid/hardware/contextaware/lib/builtin/TemperatureHumidityCompensationLibEngine;

.field private mSleepTime:J

.field private mWakeupTime:J


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;)V
    .locals 3
    .parameter
    .parameter "observable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/contextaware/manager/ContextProvider;",
            ">;",
            "Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, collectionList:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/hardware/contextaware/manager/ContextProvider;>;"
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, v0, v0, p1, p2}, Landroid/hardware/contextaware/aggregator/EnvironmentSensorAggregator;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/CopyOnWriteArrayList;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;)V

    .line 35
    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mCompensationEngine:Landroid/hardware/contextaware/lib/builtin/TemperatureHumidityCompensationLibEngine;

    .line 36
    iput-wide v1, p0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mSleepTime:J

    .line 37
    iput-wide v1, p0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mWakeupTime:J

    .line 51
    return-void
.end method


# virtual methods
.method protected final checkCompensationData([D)Z
    .locals 2
    .parameter "compensationData"

    .prologue
    .line 184
    const/4 v0, 0x0

    .line 186
    .local v0, res:Z
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_1

    .line 187
    :cond_0
    const/4 v0, 0x1

    .line 190
    :cond_1
    return v0
.end method

.method protected final compensateForRawData([[D)[D
    .locals 24
    .parameter "rawSensorData"

    .prologue
    .line 83
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    .line 84
    :cond_0
    const/4 v11, 0x0

    .line 146
    :goto_0
    return-object v11

    .line 87
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->getContextValueNames()[Ljava/lang/String;

    move-result-object v18

    .line 88
    .local v18, names:[Ljava/lang/String;
    const/4 v2, 0x1

    new-array v7, v2, [D

    .line 89
    .local v7, temperature:[D
    const/4 v2, 0x1

    new-array v8, v2, [D

    .line 90
    .local v8, humidity:[D
    const/4 v2, 0x0

    aget-object v2, p1, v2

    array-length v0, v2

    move/from16 v17, v0

    .line 91
    .local v17, nLenTemp:I
    const/4 v2, 0x1

    aget-object v2, p1, v2

    array-length v0, v2

    move/from16 v16, v0

    .line 92
    .local v16, nLenHumid:I
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/aggregator/EnvironmentSensorAggregator;->getLoggingStatus()I

    move-result v21

    .line 93
    .local v21, status:I
    const-wide/16 v13, 0x0

    .line 94
    .local v13, interval:J
    const-wide/16 v19, 0x0

    .line 96
    .local v19, startTime:J
    if-eqz v17, :cond_2

    if-nez v16, :cond_3

    .line 97
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 100
    :cond_3
    const/4 v15, 0x0

    .line 102
    .local v15, nLen:I
    move/from16 v0, v17

    move/from16 v1, v16

    if-gt v0, v1, :cond_5

    .line 103
    mul-int/lit8 v15, v17, 0x2

    .line 108
    :goto_1
    new-array v11, v15, [D

    .line 110
    .local v11, compensatedData:[D
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mWakeupTime:J

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sleepTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mSleepTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", wakeupTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mWakeupTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 113
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mWakeupTime:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mSleepTime:J

    sub-long/2addr v2, v4

    div-int/lit8 v4, v15, 0x2

    int-to-long v4, v4

    div-long v13, v2, v4

    .line 115
    const/4 v2, 0x2

    if-le v15, v2, :cond_6

    .line 116
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mSleepTime:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mWakeupTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mSleepTime:J

    move-wide/from16 v22, v0

    sub-long v4, v4, v22

    div-int/lit8 v6, v15, 0x2

    add-int/lit8 v6, v6, -0x1

    int-to-long v0, v6

    move-wide/from16 v22, v0

    mul-long v22, v22, v13

    sub-long v4, v4, v22

    const-wide/16 v22, 0x2

    div-long v4, v4, v22

    add-long v19, v2, v4

    .line 121
    :goto_2
    const/4 v12, 0x0

    .local v12, i:I
    :goto_3
    div-int/lit8 v2, v15, 0x2

    if-ge v12, v2, :cond_8

    .line 122
    const/4 v2, 0x1

    move/from16 v0, v21

    if-ne v0, v2, :cond_7

    .line 123
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mCompensationEngine:Landroid/hardware/contextaware/lib/builtin/TemperatureHumidityCompensationLibEngine;

    invoke-virtual {v2, v7, v8}, Landroid/hardware/contextaware/lib/builtin/TemperatureHumidityCompensationLibEngine;->native_temperaturehumidity_getLastCompensatedData([D[D)V

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLastCompensatedData : compensatedTemp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v3, v7, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", compensatedHumid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v3, v8, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 140
    :cond_4
    :goto_4
    const/4 v2, 0x0

    aget-wide v2, v7, v2

    aput-wide v2, v11, v12

    .line 141
    add-int v2, v12, v17

    const/4 v3, 0x0

    aget-wide v3, v8, v3

    aput-wide v3, v11, v2

    .line 121
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 105
    .end local v11           #compensatedData:[D
    .end local v12           #i:I
    :cond_5
    mul-int/lit8 v15, v16, 0x2

    goto/16 :goto_1

    .line 118
    .restart local v11       #compensatedData:[D
    :cond_6
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mSleepTime:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mWakeupTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mSleepTime:J

    move-wide/from16 v22, v0

    sub-long v4, v4, v22

    const-wide/16 v22, 0x2

    div-long v4, v4, v22

    add-long v19, v2, v4

    goto :goto_2

    .line 128
    .restart local v12       #i:I
    :cond_7
    const/4 v2, 0x2

    move/from16 v0, v21

    if-ne v0, v2, :cond_4

    .line 129
    int-to-long v2, v12

    mul-long/2addr v2, v13

    add-long v9, v19, v2

    .line 130
    .local v9, timestamp:J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mCompensationEngine:Landroid/hardware/contextaware/lib/builtin/TemperatureHumidityCompensationLibEngine;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    aget-wide v3, v3, v12

    const/4 v5, 0x1

    aget-object v5, p1, v5

    aget-wide v5, v5, v12

    invoke-virtual/range {v2 .. v10}, Landroid/hardware/contextaware/lib/builtin/TemperatureHumidityCompensationLibEngine;->native_temperaturehumidity_getCompensatedData(DD[D[DJ)V

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RawData : rawTempData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p1, v3

    aget-wide v3, v3, v12

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", rawHumidData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, p1, v3

    aget-wide v3, v3, v12

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", compensatedTemp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v3, v7, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",  compensatedHumid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v3, v8, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", timestamp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 144
    .end local v9           #timestamp:J
    :cond_8
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mWakeupTime:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mSleepTime:J

    goto/16 :goto_0
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->AGGREGATOR_TEMPERATURE_HUMIDITY:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 214
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Temperature"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Humidity"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final getPowerObserver()Landroid/hardware/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    .line 236
    return-object p0
.end method

.method protected final getPowerResetObserver()Landroid/hardware/contextaware/manager/IApPowerResetObserver;
    .locals 0

    .prologue
    .line 248
    return-object p0
.end method

.method protected final getRawSensorValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 202
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Temperature"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Humidity"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final initializeAggregator()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Landroid/hardware/contextaware/lib/builtin/TemperatureHumidityCompensationLibEngine;

    invoke-direct {v0}, Landroid/hardware/contextaware/lib/builtin/TemperatureHumidityCompensationLibEngine;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mCompensationEngine:Landroid/hardware/contextaware/lib/builtin/TemperatureHumidityCompensationLibEngine;

    .line 62
    return-void
.end method

.method protected final notifyCompensationData([D)V
    .locals 7
    .parameter "compensationData"

    .prologue
    .line 158
    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->getContextValueNames()[Ljava/lang/String;

    move-result-object v4

    .line 159
    .local v4, names:[Ljava/lang/String;
    array-length v5, p1

    div-int/lit8 v3, v5, 0x2

    .line 160
    .local v3, nLen:I
    new-array v1, v3, [D

    .line 161
    .local v1, compensatedTemp:[D
    new-array v0, v3, [D

    .line 163
    .local v0, compensatedHumid:[D
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 164
    aget-wide v5, p1, v2

    aput-wide v5, v1, v2

    .line 165
    add-int v5, v2, v3

    aget-wide v5, p1, v5

    aput-wide v5, v0, v2

    .line 163
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    :cond_0
    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v5, v6, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 169
    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-virtual {v5, v6, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 171
    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->notifyObserver()V

    .line 172
    return-void
.end method

.method protected final terminateAggregator()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mCompensationEngine:Landroid/hardware/contextaware/lib/builtin/TemperatureHumidityCompensationLibEngine;

    .line 72
    return-void
.end method

.method protected final updateApSleep()V
    .locals 6

    .prologue
    .line 258
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->updateApSleep()V

    .line 259
    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getTimeStampForApStatus()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    mul-long v0, v2, v4

    .line 260
    .local v0, timeStamp:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timeStamp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 261
    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mSleepTime:J

    .line 262
    return-void
.end method
