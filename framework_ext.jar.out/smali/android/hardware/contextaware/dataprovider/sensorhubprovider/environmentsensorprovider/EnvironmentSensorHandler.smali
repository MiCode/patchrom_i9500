.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;
.source "EnvironmentSensorHandler.java"


# static fields
.field private static final DEFAULT_INTERVAL:I = 0x3c

.field private static volatile instance:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;


# instance fields
.field private mInterval:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;-><init>()V

    .line 31
    const/16 v0, 0x3c

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->mInterval:I

    return-void
.end method

.method public static getInstance()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;
    .locals 2

    .prologue
    .line 42
    sget-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->instance:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;

    if-nez v0, :cond_1

    .line 43
    const-class v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->instance:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;

    invoke-direct {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;-><init>()V

    sput-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->instance:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;

    .line 47
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_1
    sget-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->instance:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getParserKey(I)Ljava/lang/String;
    .locals 6
    .parameter "type"

    .prologue
    .line 130
    const/4 v4, 0x0

    .line 132
    .local v4, parserKey:Ljava/lang/String;
    invoke-static {}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;->values()[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;

    move-result-object v0

    .local v0, arr$:[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 133
    .local v2, j:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;
    iget-byte v5, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;->value:B

    if-eq p1, v5, :cond_1

    .line 132
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-super {p0, v5}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;->checkParserMap(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 140
    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    .line 144
    .end local v2           #j:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;
    :cond_2
    return-object v4
.end method


# virtual methods
.method protected final getInterval()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->mInterval:I

    return v0
.end method

.method public final parse([BI)I
    .locals 10
    .parameter "packet"
    .parameter "next"

    .prologue
    const/4 v8, -0x1

    .line 62
    move v6, p2

    .line 64
    .local v6, tmpNext:I
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;->checkParserMap()Z

    move-result v9

    if-nez v9, :cond_0

    move v7, v8

    .line 119
    :goto_0
    return v7

    .line 68
    :cond_0
    array-length v9, p1

    sub-int/2addr v9, v6

    add-int/lit8 v9, v9, -0x1

    if-gez v9, :cond_1

    move v7, v8

    .line 69
    goto :goto_0

    .line 72
    :cond_1
    add-int/lit8 v7, v6, 0x1

    .end local v6           #tmpNext:I
    .local v7, tmpNext:I
    aget-byte v2, p1, v6

    .line 73
    .local v2, loggingStatus:I
    const/4 v9, 0x2

    if-eq v2, v9, :cond_2

    const/4 v9, 0x1

    if-eq v2, v9, :cond_2

    .line 75
    const-string v9, "logging status is false."

    invoke-static {v9}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move v6, v7

    .end local v7           #tmpNext:I
    .restart local v6       #tmpNext:I
    move v7, v8

    .line 76
    goto :goto_0

    .line 79
    .end local v6           #tmpNext:I
    .restart local v7       #tmpNext:I
    :cond_2
    array-length v9, p1

    sub-int/2addr v9, v7

    add-int/lit8 v9, v9, -0x1

    if-gez v9, :cond_3

    move v6, v7

    .end local v7           #tmpNext:I
    .restart local v6       #tmpNext:I
    move v7, v8

    .line 80
    goto :goto_0

    .line 83
    .end local v6           #tmpNext:I
    .restart local v7       #tmpNext:I
    :cond_3
    add-int/lit8 v6, v7, 0x1

    .end local v7           #tmpNext:I
    .restart local v6       #tmpNext:I
    aget-byte v3, p1, v7

    .line 84
    .local v3, packageCount:I
    if-gtz v3, :cond_4

    .line 85
    const-string v9, "packageCount is zero."

    invoke-static {v9}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move v7, v8

    .line 86
    goto :goto_0

    .line 89
    :cond_4
    const/4 v0, 0x0

    .local v0, i:I
    move v7, v6

    .end local v6           #tmpNext:I
    .restart local v7       #tmpNext:I
    :goto_1
    if-ge v0, v3, :cond_a

    .line 90
    array-length v9, p1

    sub-int/2addr v9, v7

    add-int/lit8 v9, v9, -0x1

    if-gez v9, :cond_5

    move v6, v7

    .end local v7           #tmpNext:I
    .restart local v6       #tmpNext:I
    move v7, v8

    .line 91
    goto :goto_0

    .line 94
    .end local v6           #tmpNext:I
    .restart local v7       #tmpNext:I
    :cond_5
    add-int/lit8 v6, v7, 0x1

    .end local v7           #tmpNext:I
    .restart local v6       #tmpNext:I
    aget-byte v5, p1, v7

    .line 96
    .local v5, sensorType:I
    invoke-direct {p0, v5}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->getParserKey(I)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, key:Ljava/lang/String;
    if-nez v1, :cond_7

    .line 89
    :cond_6
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v7, v6

    .end local v6           #tmpNext:I
    .restart local v7       #tmpNext:I
    goto :goto_1

    .line 101
    .end local v7           #tmpNext:I
    .restart local v6       #tmpNext:I
    :cond_7
    invoke-super {p0, v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;->checkParserMap(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 105
    invoke-super {p0, v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;->getParser(Ljava/lang/String;)Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 106
    invoke-super {p0, v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;->getParser(Ljava/lang/String;)Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;

    move-result-object v4

    check-cast v4, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;

    .line 108
    .local v4, provider:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;
    if-eqz v4, :cond_8

    .line 109
    invoke-virtual {v4, v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->setLoggingStatus(I)V

    .line 113
    :goto_3
    invoke-super {p0, v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;->getParser(Ljava/lang/String;)Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;

    move-result-object v9

    invoke-interface {v9, p1, v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;->parse([BI)I

    move-result v6

    .line 114
    goto :goto_2

    .line 111
    :cond_8
    const-string v9, "EnvironmentSensorProvider is null"

    invoke-static {v9}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_3

    .line 115
    .end local v4           #provider:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;
    :cond_9
    const-string v9, "getParser() is null"

    invoke-static {v9}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_2

    .end local v1           #key:Ljava/lang/String;
    .end local v5           #sensorType:I
    .end local v6           #tmpNext:I
    .restart local v7       #tmpNext:I
    :cond_a
    move v6, v7

    .line 119
    .end local v7           #tmpNext:I
    .restart local v6       #tmpNext:I
    goto :goto_0
.end method

.method protected final setInterval(I)V
    .locals 0
    .parameter "interval"

    .prologue
    .line 154
    iput p1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->mInterval:I

    .line 155
    return-void
.end method
