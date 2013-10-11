.class public abstract Landroid/hardware/contextaware/aggregator/EnvironmentSensorAggregator;
.super Landroid/hardware/contextaware/aggregator/Aggregator;
.source "EnvironmentSensorAggregator.java"


# instance fields
.field private mLoggingStatus:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/CopyOnWriteArrayList;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;)V
    .locals 1
    .parameter "context"
    .parameter "looper"
    .parameter
    .parameter "observable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/contextaware/manager/ContextProvider;",
            ">;",
            "Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    .local p3, collectionList:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/hardware/contextaware/manager/ContextProvider;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/contextaware/aggregator/Aggregator;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/CopyOnWriteArrayList;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;)V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/contextaware/aggregator/EnvironmentSensorAggregator;->mLoggingStatus:I

    .line 54
    return-void
.end method


# virtual methods
.method protected abstract checkCompensationData([D)Z
.end method

.method protected abstract compensateForRawData([[D)[D
.end method

.method protected final getDisplayContents(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "bundle"
    .parameter "key"

    .prologue
    const/4 v6, 0x0

    .line 200
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 201
    :cond_0
    const-string v7, "key is null"

    invoke-static {v7}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 225
    :goto_0
    return-object v6

    .line 205
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 206
    :cond_2
    const-string v7, "bundle is null"

    invoke-static {v7}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_3
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 211
    .local v4, str:Ljava/lang/StringBuffer;
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 213
    .local v5, strArray:[Ljava/lang/String;
    if-eqz v5, :cond_4

    array-length v7, v5

    if-gtz v7, :cond_5

    .line 214
    :cond_4
    const-string v7, "bundle.getStringArray(key) is null"

    invoke-static {v7}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :cond_5
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_6

    aget-object v2, v0, v1

    .line 219
    .local v2, j:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 221
    .end local v2           #j:Ljava/lang/String;
    :cond_6
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_7

    .line 222
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 225
    :cond_7
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method protected final getLoggingStatus()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Landroid/hardware/contextaware/aggregator/EnvironmentSensorAggregator;->mLoggingStatus:I

    return v0
.end method

.method protected final getRawSensorData(Landroid/os/Bundle;Ljava/lang/String;)[D
    .locals 1
    .parameter "context"
    .parameter "valueName"

    .prologue
    .line 145
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    return-object v0
.end method

.method protected getRawSensorValueNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected notifyCompensationData([D)V
    .locals 3
    .parameter "compensationData"

    .prologue
    .line 128
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, names:[Ljava/lang/String;
    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, p1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 131
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->notifyObserver()V

    .line 132
    return-void
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
    .line 167
    .local p2, value:Ljava/lang/Object;,"TE;"
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getSubCollectors()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 168
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 169
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/ContextProvider;

    .line 170
    .local v1, next:Landroid/hardware/contextaware/manager/ContextProvider;
    if-eqz v1, :cond_0

    .line 173
    instance-of v2, v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;

    if-eqz v2, :cond_0

    .line 176
    invoke-virtual {v1, p1, p2}, Landroid/hardware/contextaware/manager/ContextProvider;->setPropertyValue(ILjava/lang/Object;)V

    .line 179
    .end local v1           #next:Landroid/hardware/contextaware/manager/ContextProvider;
    :cond_1
    return-void
.end method

.method public final updateContext(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 10
    .parameter "type"
    .parameter "context"

    .prologue
    .line 65
    if-nez p2, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/EnvironmentSensorAggregator;->getRawSensorValueNames()[Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_2

    .line 70
    const-string v8, "getRawSensorValueNames() is null"

    invoke-static {v8}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/EnvironmentSensorAggregator;->getRawSensorValueNames()[Ljava/lang/String;

    move-result-object v8

    array-length v1, v8

    .line 74
    .local v1, bufSize:I
    if-gtz v1, :cond_3

    .line 75
    const-string v8, "length of getRawSensorValueNames() is zero"

    invoke-static {v8}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_3
    const-string v8, "LoggingStatus"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Landroid/hardware/contextaware/aggregator/EnvironmentSensorAggregator;->mLoggingStatus:I

    .line 81
    new-array v7, v1, [[D

    .line 82
    .local v7, rawData:[[D
    const/4 v6, 0x0

    .line 84
    .local v6, num:I
    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/EnvironmentSensorAggregator;->getRawSensorValueNames()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_6

    aget-object v3, v0, v4

    .line 85
    .local v3, i:Ljava/lang/String;
    invoke-virtual {p0, p2, v3}, Landroid/hardware/contextaware/aggregator/EnvironmentSensorAggregator;->getRawSensorData(Landroid/os/Bundle;Ljava/lang/String;)[D

    move-result-object v8

    aput-object v8, v7, v6

    .line 86
    aget-object v8, v7, v6

    if-eqz v8, :cond_4

    aget-object v8, v7, v6

    array-length v8, v8

    if-gtz v8, :cond_5

    .line 87
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "rawData["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "].length is null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 84
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 94
    .end local v3           #i:Ljava/lang/String;
    :cond_6
    invoke-virtual {p0, v7}, Landroid/hardware/contextaware/aggregator/EnvironmentSensorAggregator;->compensateForRawData([[D)[D

    move-result-object v2

    .line 95
    .local v2, compensationData:[D
    invoke-virtual {p0, v2}, Landroid/hardware/contextaware/aggregator/EnvironmentSensorAggregator;->checkCompensationData([D)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 99
    invoke-virtual {p0, v2}, Landroid/hardware/contextaware/aggregator/EnvironmentSensorAggregator;->notifyCompensationData([D)V

    goto :goto_0
.end method
