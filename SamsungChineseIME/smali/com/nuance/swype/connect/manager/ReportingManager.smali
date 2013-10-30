.class public Lcom/nuance/swype/connect/manager/ReportingManager;
.super Lcom/nuance/swype/connect/manager/AbstractCommandManager;
.source "ReportingManager.java"


# static fields
.field public static final AGGREGATE_EXPIRATION:Ljava/lang/String; = "AGGREGATE_EXPIRATION"

.field public static final AGGREGATE_GENERIC:Ljava/lang/String; = "AGGREGATE_GENERIC"

.field protected static final AGGREGATE_LAST_RUN:Ljava/lang/String; = "REPORTING_AGGREGATE_LAST_RUN"

.field public static final AGGREGATE_LIMIT:Ljava/lang/String; = "AGGREGATE_LIMIT"

.field public static final AGGREGATE_TIMER:Ljava/lang/String; = "AGGREGATE_TIMER"

.field public static final COMMAND_AGGREGATE:Ljava/lang/String; = "aggregate"

.field public static final COMMAND_FAMILY:Ljava/lang/String; = "report"

.field public static final COMMAND_INDIVIDUAL:Ljava/lang/String; = "individual"

.field public static final COMMAND_TRACKING:Ljava/lang/String; = "tracking"

.field public static final COMMAND_VERSION:I = 0x5

.field public static final MANAGER_NAME:Ljava/lang/String; = "report"

.field private static final MESSAGES_HANDLED:[I = null

.field public static final METRICS_ALLOWED_PREF:Ljava/lang/String; = "REPORTING_METRICS_ALLOWED"

.field public static final REPORTING_EXPIRATION:Ljava/lang/String; = "REPORTING_EXPIRATION"

.field public static final REPORTING_GENERIC:Ljava/lang/String; = "REPORTING_GENERIC"

.field protected static final REPORTING_LAST_RUN:Ljava/lang/String; = "REPORTING_LAST_RUN"

.field public static final REPORTING_LIMIT:Ljava/lang/String; = "REPORTING_LIMIT"

.field public static final REPORTING_TIMER:Ljava/lang/String; = "REPORTING_TIMER"

.field protected static final TRACKING_INTERVAL:I = 0x3c


# instance fields
.field private aggregateChangeListener:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

.field protected aggregateCount:I

.field protected aggregateDataExpiration:I

.field protected aggregateLimit:I

.field dataSource:Lcom/nuance/swype/connect/sqlite/ReportingDataSource;

.field private individualChangeListener:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

.field private lastAggregateTime:J

.field private lastIndividualTime:J

.field private lastReport:J

.field protected metricsAllowed:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected reportingAggregateInterval:I

.field protected reportingCount:I

.field protected reportingDataExpriation:I

.field protected reportingLimit:I

.field protected reportingStatisticsInterval:I

.field private trackingNextRun:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nuance/swype/connect/manager/ReportingManager;->MESSAGES_HANDLED:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xcbt 0x0t 0x0t 0x0t
        0xcct 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
        0xf5t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/nuance/swype/connect/ConnectClient;)V
    .locals 7
    .parameter "ctx"

    .prologue
    const-wide/16 v5, 0x0

    const v0, 0x54600

    const v1, 0xc350

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 119
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V

    .line 50
    iput v0, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->reportingStatisticsInterval:I

    .line 51
    iput v0, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->reportingAggregateInterval:I

    .line 52
    const v0, 0x69780

    iput v0, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->reportingDataExpriation:I

    .line 53
    const v0, 0x76a700

    iput v0, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->aggregateDataExpiration:I

    .line 54
    iput v1, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->reportingLimit:I

    .line 55
    iput v1, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->aggregateLimit:I

    .line 57
    iput v4, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->reportingCount:I

    .line 58
    iput v4, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->aggregateCount:I

    .line 61
    iput-wide v5, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->trackingNextRun:J

    .line 76
    iput-wide v5, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->lastReport:J

    .line 80
    new-instance v0, Lcom/nuance/swype/connect/manager/ReportingManager$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/connect/manager/ReportingManager$1;-><init>(Lcom/nuance/swype/connect/manager/ReportingManager;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->aggregateChangeListener:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

    .line 96
    new-instance v0, Lcom/nuance/swype/connect/manager/ReportingManager$2;

    invoke-direct {v0, p0}, Lcom/nuance/swype/connect/manager/ReportingManager$2;-><init>(Lcom/nuance/swype/connect/manager/ReportingManager;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->individualChangeListener:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

    .line 120
    const/4 v0, 0x5

    iput v0, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->version:I

    .line 121
    const-string v0, "report"

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->commandFamily:Ljava/lang/String;

    .line 122
    sget-object v0, Lcom/nuance/swype/connect/manager/ReportingManager;->MESSAGES_HANDLED:[I

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->messages:[I

    .line 125
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "aggregate"

    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 127
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "individual"

    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 129
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "tracking"

    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/connect/manager/ReportingManager;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/connect/manager/ReportingManager;->sendReportTracking(ZZ)V

    return-void
.end method

.method private cleanStoredReports(JZ)V
    .locals 1
    .parameter "time"
    .parameter "aggregate"

    .prologue
    .line 384
    if-eqz p3, :cond_0

    .line 385
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->dataSource:Lcom/nuance/swype/connect/sqlite/ReportingDataSource;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->clearAggregate(J)Z

    .line 389
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->dataSource:Lcom/nuance/swype/connect/sqlite/ReportingDataSource;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->clearIndividual(J)Z

    goto :goto_0
.end method

.method private determineUsageNextRun(Z)V
    .locals 11
    .parameter "aggregate"

    .prologue
    .line 281
    const-string v7, "REPORTING_LAST_RUN"

    .line 282
    .local v7, type:Ljava/lang/String;
    const-string v1, "REPORTING_GENERIC"

    .line 283
    .local v1, intentName:Ljava/lang/String;
    iget v2, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->reportingStatisticsInterval:I

    .line 285
    .local v2, interval:I
    if-eqz p1, :cond_0

    .line 286
    const-string v7, "REPORTING_AGGREGATE_LAST_RUN"

    .line 287
    const-string v1, "AGGREGATE_GENERIC"

    .line 288
    iget v2, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->reportingAggregateInterval:I

    .line 291
    :cond_0
    iget-object v8, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v8}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v8

    invoke-static {}, Lcom/nuance/swype/connect/util/TimeConversion;->getCurrentTime()J

    move-result-wide v9

    invoke-interface {v8, v7, v9, v10}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 292
    .local v3, lastRun:J
    int-to-long v8, v2

    invoke-static {v8, v9, v3, v4}, Lcom/nuance/swype/connect/util/TimeConversion;->convertSecondsToTimeStamp(JJ)J

    move-result-wide v5

    .line 294
    .local v5, nextRun:J
    new-instance v8, Lcom/nuance/swype/connect/util/Alarm$Builder;

    iget-object v9, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v9}, Lcom/nuance/swype/connect/ConnectClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-class v10, Lcom/nuance/swype/connect/manager/ReportingManager;

    invoke-direct {v8, v9, v10, v1}, Lcom/nuance/swype/connect/util/Alarm$Builder;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v8, v5, v6}, Lcom/nuance/swype/connect/util/Alarm$Builder;->triggerTime(J)Lcom/nuance/swype/connect/util/Alarm$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nuance/swype/connect/util/Alarm$Builder;->build()Lcom/nuance/swype/connect/util/Alarm;

    move-result-object v0

    .line 297
    .local v0, alarm:Lcom/nuance/swype/connect/util/Alarm;
    invoke-virtual {v0}, Lcom/nuance/swype/connect/util/Alarm;->set()V

    .line 298
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "determineUsageNextRun "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method private enforceLimits(Z)V
    .locals 2
    .parameter "aggregate"

    .prologue
    .line 302
    if-eqz p1, :cond_1

    .line 303
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->dataSource:Lcom/nuance/swype/connect/sqlite/ReportingDataSource;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->numAggregate()I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->aggregateCount:I

    .line 304
    iget v0, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->aggregateCount:I

    iget v1, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->aggregateLimit:I

    if-lt v0, v1, :cond_0

    .line 305
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->dataSource:Lcom/nuance/swype/connect/sqlite/ReportingDataSource;

    iget v1, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->aggregateLimit:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->limitAggregate(I)Z

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->dataSource:Lcom/nuance/swype/connect/sqlite/ReportingDataSource;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->numAggregate()I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->aggregateCount:I

    .line 315
    :goto_0
    return-void

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->dataSource:Lcom/nuance/swype/connect/sqlite/ReportingDataSource;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->numIndividual()I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->reportingCount:I

    .line 310
    iget v0, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->reportingCount:I

    iget v1, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->reportingLimit:I

    if-lt v0, v1, :cond_2

    .line 311
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->dataSource:Lcom/nuance/swype/connect/sqlite/ReportingDataSource;

    iget v1, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->reportingLimit:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->limitIndividual(I)Z

    .line 313
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->dataSource:Lcom/nuance/swype/connect/sqlite/ReportingDataSource;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->numIndividual()I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->reportingCount:I

    goto :goto_0
.end method

.method private loadPreferences()V
    .locals 4

    .prologue
    .line 207
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v1

    const-string v2, "REPORTING_METRICS_ALLOWED"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, metrics:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 211
    new-instance v1, Ljava/util/HashSet;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->metricsAllowed:Ljava/util/HashSet;

    .line 214
    :cond_0
    return-void
.end method

.method private processAggregateResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 4
    .parameter "response"

    .prologue
    const/4 v3, 0x1

    .line 519
    iget v0, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    if-ne v0, v3, :cond_0

    .line 520
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->dataSource:Lcom/nuance/swype/connect/sqlite/ReportingDataSource;

    iget-wide v1, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->lastAggregateTime:J

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->clearAggregate(J)Z

    .line 527
    :cond_0
    invoke-direct {p0, v3}, Lcom/nuance/swype/connect/manager/ReportingManager;->setLastRunToNow(Z)V

    .line 528
    invoke-direct {p0, v3}, Lcom/nuance/swype/connect/manager/ReportingManager;->determineUsageNextRun(Z)V

    .line 529
    return-void
.end method

.method private processIndividualResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 4
    .parameter "response"

    .prologue
    const/4 v3, 0x0

    .line 537
    iget v0, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 538
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->dataSource:Lcom/nuance/swype/connect/sqlite/ReportingDataSource;

    iget-wide v1, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->lastIndividualTime:J

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->clearIndividual(J)Z

    .line 545
    :cond_0
    invoke-direct {p0, v3}, Lcom/nuance/swype/connect/manager/ReportingManager;->setLastRunToNow(Z)V

    .line 546
    invoke-direct {p0, v3}, Lcom/nuance/swype/connect/manager/ReportingManager;->determineUsageNextRun(Z)V

    .line 547
    return-void
.end method

.method private processTrackingResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 7
    .parameter "response"

    .prologue
    .line 484
    iget-object v4, p1, Lcom/nuance/swype/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v5, "36"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/nuance/swype/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v5, "36"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/json/JSONArray;

    if-eqz v4, :cond_0

    .line 486
    iget-object v4, p1, Lcom/nuance/swype/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v5, "36"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    .line 489
    .local v3, metrics:Lorg/json/JSONArray;
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->metricsAllowed:Ljava/util/HashSet;

    .line 490
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 492
    :try_start_0
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->metricsAllowed:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 493
    :catch_0
    move-exception v1

    .line 494
    .local v1, e:Lorg/json/JSONException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error found while parsing tracking responses for reporting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 499
    .end local v1           #e:Lorg/json/JSONException;
    .end local v2           #i:I
    .end local v3           #metrics:Lorg/json/JSONArray;
    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->metricsAllowed:Ljava/util/HashSet;

    .line 502
    :cond_1
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/ReportingManager;->sendAllowedMetricsToHost()V

    .line 503
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/ReportingManager;->savePreferences()V

    .line 505
    const-wide/16 v4, 0x3c

    invoke-static {v4, v5}, Lcom/nuance/swype/connect/util/TimeConversion;->convertSecondsToTimeStamp(J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->trackingNextRun:J

    .line 506
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tracking next run set to: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->trackingNextRun:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/nuance/swype/connect/util/TimeConversion;->getCurrentTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 509
    iget-object v4, p1, Lcom/nuance/swype/connect/util/Response;->identifier:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 510
    .local v0, aggregate:Z
    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/manager/ReportingManager;->sendReports(Z)V

    .line 511
    return-void
.end method

.method private savePreferences()V
    .locals 4

    .prologue
    .line 218
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->metricsAllowed:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->metricsAllowed:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "REPORTING_METRICS_ALLOWED"

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->metricsAllowed:Ljava/util/HashSet;

    const-string v3, ","

    invoke-static {v2, v3}, Lcom/nuance/swype/connect/util/StringUtils;->implode(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 224
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "REPORTING_METRICS_ALLOWED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private sendAllowedMetricsToHost()V
    .locals 3

    .prologue
    .line 606
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 607
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "DEFAULT_KEY"

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->metricsAllowed:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 608
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v2, 0x8a

    invoke-virtual {v1, v2, v0}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILandroid/os/Bundle;)V

    .line 611
    return-void
.end method

.method private sendReportTracking(ZZ)V
    .locals 6
    .parameter "runCheck"
    .parameter "aggregate"

    .prologue
    .line 343
    const/4 v1, 0x1

    .line 345
    .local v1, sendCommand:Z
    if-eqz p1, :cond_0

    .line 347
    if-eqz p2, :cond_2

    .line 348
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->dataSource:Lcom/nuance/swype/connect/sqlite/ReportingDataSource;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->hasAggregate()Z

    move-result v2

    if-nez v2, :cond_0

    .line 349
    invoke-direct {p0, p2}, Lcom/nuance/swype/connect/manager/ReportingManager;->setLastRunToNow(Z)V

    .line 350
    invoke-direct {p0, p2}, Lcom/nuance/swype/connect/manager/ReportingManager;->determineUsageNextRun(Z)V

    .line 351
    const/4 v1, 0x0

    .line 362
    :cond_0
    :goto_0
    const-string v2, "ConnectStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendReportTracking("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Checking if we need to send report tracking: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->trackingNextRun:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/nuance/swype/connect/util/TimeConversion;->getCurrentTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 367
    invoke-static {}, Lcom/nuance/swype/connect/util/TimeConversion;->getCurrentTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->trackingNextRun:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    .line 368
    invoke-direct {p0, p2}, Lcom/nuance/swype/connect/manager/ReportingManager;->sendReports(Z)V

    .line 375
    :cond_1
    :goto_1
    return-void

    .line 354
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->dataSource:Lcom/nuance/swype/connect/sqlite/ReportingDataSource;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->hasIndividual()Z

    move-result v2

    if-nez v2, :cond_0

    .line 355
    invoke-direct {p0, p2}, Lcom/nuance/swype/connect/manager/ReportingManager;->setLastRunToNow(Z)V

    .line 356
    invoke-direct {p0, p2}, Lcom/nuance/swype/connect/manager/ReportingManager;->determineUsageNextRun(Z)V

    .line 357
    const/4 v1, 0x0

    goto :goto_0

    .line 369
    :cond_3
    if-eqz v1, :cond_1

    .line 370
    const-string v2, "tracking"

    invoke-virtual {p0, v2}, Lcom/nuance/swype/connect/manager/ReportingManager;->createCommand(Ljava/lang/String;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 371
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/nuance/swype/connect/util/Command;->identifier:Ljava/lang/String;

    .line 372
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/nuance/swype/connect/util/Command;->allowDuplicateOfCommand:Z

    .line 373
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/ReportingManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    goto :goto_1
.end method

.method private sendReports(Z)V
    .locals 12
    .parameter "aggregate"

    .prologue
    const/4 v11, 0x1

    .line 420
    invoke-static {}, Lcom/nuance/swype/connect/util/TimeConversion;->getCurrentTime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->lastReport:J

    .line 421
    const-string v8, "ConnectStats"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ReportingManager.sendReports("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const/4 v2, 0x0

    .line 425
    .local v2, allowedCollect:Z
    if-eqz p1, :cond_1

    .line 426
    iget-object v8, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v8}, Lcom/nuance/swype/connect/ConnectClient;->getReportingUsageStatus()Z

    move-result v2

    .line 431
    :goto_0
    if-nez v2, :cond_2

    .line 433
    iget-wide v8, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->lastReport:J

    invoke-direct {p0, v8, v9, p1}, Lcom/nuance/swype/connect/manager/ReportingManager;->cleanStoredReports(JZ)V

    .line 434
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/ReportingManager;->setLastRunToNow(Z)V

    .line 435
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/ReportingManager;->determineUsageNextRun(Z)V

    .line 481
    :cond_0
    :goto_1
    return-void

    .line 428
    :cond_1
    iget-object v8, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v8}, Lcom/nuance/swype/connect/ConnectClient;->getReportingStatisticsStatus()Z

    move-result v2

    goto :goto_0

    .line 437
    :cond_2
    const/4 v7, 0x0

    .line 438
    .local v7, sentEither:Z
    const/4 v3, 0x0

    .line 439
    .local v3, dataPoints:[Ljava/lang/String;
    iget-object v8, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->metricsAllowed:Ljava/util/HashSet;

    if-eqz v8, :cond_3

    .line 440
    iget-object v8, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->metricsAllowed:Ljava/util/HashSet;

    iget-object v9, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->metricsAllowed:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .end local v3           #dataPoints:[Ljava/lang/String;
    check-cast v3, [Ljava/lang/String;

    .line 444
    .restart local v3       #dataPoints:[Ljava/lang/String;
    :cond_3
    if-eqz p1, :cond_5

    .line 446
    iget-object v8, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->dataSource:Lcom/nuance/swype/connect/sqlite/ReportingDataSource;

    invoke-virtual {v8}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->getLastAggregatePoint()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->lastAggregateTime:J

    .line 447
    iget-object v8, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->dataSource:Lcom/nuance/swype/connect/sqlite/ReportingDataSource;

    iget-wide v9, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->lastAggregateTime:J

    invoke-virtual {v8, v3, v9, v10}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->getAggregatePoints([Ljava/lang/String;J)Lorg/json/JSONArray;

    move-result-object v1

    .line 449
    .local v1, aggregatePoints:Lorg/json/JSONArray;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_4

    .line 450
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 451
    .local v6, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "61"

    invoke-virtual {v6, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    const-string v8, "aggregate"

    invoke-virtual {p0, v8, v6}, Lcom/nuance/swype/connect/manager/ReportingManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 455
    .local v0, aggregateCommand:Lcom/nuance/swype/connect/util/Command;
    iput-boolean v11, v0, Lcom/nuance/swype/connect/util/Command;->wifiOnly:Z

    .line 456
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/ReportingManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    .line 457
    const/4 v7, 0x1

    .line 476
    .end local v0           #aggregateCommand:Lcom/nuance/swype/connect/util/Command;
    .end local v1           #aggregatePoints:Lorg/json/JSONArray;
    .end local v6           #parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    :goto_2
    if-nez v7, :cond_0

    .line 477
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/ReportingManager;->setLastRunToNow(Z)V

    .line 478
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/ReportingManager;->determineUsageNextRun(Z)V

    goto :goto_1

    .line 460
    :cond_5
    iget-object v8, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->dataSource:Lcom/nuance/swype/connect/sqlite/ReportingDataSource;

    invoke-virtual {v8}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->getLastIndividualPoint()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->lastIndividualTime:J

    .line 461
    iget-object v8, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->dataSource:Lcom/nuance/swype/connect/sqlite/ReportingDataSource;

    iget-wide v9, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->lastIndividualTime:J

    invoke-virtual {v8, v3, v9, v10}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->getIndividualPoints([Ljava/lang/String;J)Lorg/json/JSONArray;

    move-result-object v5

    .line 463
    .local v5, individualPoints:Lorg/json/JSONArray;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_4

    .line 465
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 466
    .restart local v6       #parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "62"

    invoke-virtual {v6, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    const-string v8, "individual"

    invoke-virtual {p0, v8, v6}, Lcom/nuance/swype/connect/manager/ReportingManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v4

    .line 470
    .local v4, individualCommand:Lcom/nuance/swype/connect/util/Command;
    iput-boolean v11, v4, Lcom/nuance/swype/connect/util/Command;->wifiOnly:Z

    .line 471
    invoke-virtual {p0, v4}, Lcom/nuance/swype/connect/manager/ReportingManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    .line 472
    const/4 v7, 0x1

    goto :goto_2
.end method

.method private setLastRunToNow(Z)V
    .locals 4
    .parameter "aggregate"

    .prologue
    .line 406
    if-eqz p1, :cond_0

    .line 407
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "REPORTING_AGGREGATE_LAST_RUN"

    invoke-static {}, Lcom/nuance/swype/connect/util/TimeConversion;->getCurrentTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveLong(Ljava/lang/String;J)Z

    .line 413
    :goto_0
    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "REPORTING_LAST_RUN"

    invoke-static {}, Lcom/nuance/swype/connect/util/TimeConversion;->getCurrentTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveLong(Ljava/lang/String;J)Z

    goto :goto_0
.end method


# virtual methods
.method public addStatFromBundle(Landroid/os/Bundle;)V
    .locals 19
    .parameter "bundle"

    .prologue
    .line 555
    const-string v1, "STAT_TYPE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "STAT_ID"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 602
    :cond_0
    :goto_0
    return-void

    .line 560
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/connect/manager/ReportingManager;->dataSource:Lcom/nuance/swype/connect/sqlite/ReportingDataSource;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/connect/manager/ReportingManager;->dataSource:Lcom/nuance/swype/connect/sqlite/ReportingDataSource;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 565
    const-string v1, "STAT_TYPE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 566
    .local v18, type:Ljava/lang/String;
    const-string v1, "STAT_ID"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 567
    .local v2, key:Ljava/lang/String;
    const-string v1, "STAT_NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 568
    .local v3, name:Ljava/lang/String;
    const-string v1, "STAT_EXTRA"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 569
    .local v5, extra:Ljava/lang/String;
    const-string v1, "STAT_TIMESTAMP"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 572
    .local v6, timestamp:J
    const-string v1, "point"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 573
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/connect/manager/ReportingManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectClient;->getReportingUsageStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 577
    const-string v1, "STAT_VALUE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 578
    .local v4, value:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/connect/manager/ReportingManager;->dataSource:Lcom/nuance/swype/connect/sqlite/ReportingDataSource;

    invoke-virtual/range {v1 .. v7}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->createIndividualPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 580
    move-object/from16 v0, p0

    iget v1, v0, Lcom/nuance/swype/connect/manager/ReportingManager;->reportingCount:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/nuance/swype/connect/manager/ReportingManager;->reportingCount:I

    .line 581
    move-object/from16 v0, p0

    iget v1, v0, Lcom/nuance/swype/connect/manager/ReportingManager;->reportingCount:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/nuance/swype/connect/manager/ReportingManager;->reportingLimit:I

    if-le v1, v8, :cond_0

    .line 582
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/nuance/swype/connect/manager/ReportingManager;->enforceLimits(Z)V

    goto :goto_0

    .line 585
    .end local v4           #value:Ljava/lang/String;
    :cond_2
    const-string v1, "aggregate"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 586
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/connect/manager/ReportingManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectClient;->getReportingStatisticsStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 590
    const-string v1, "STAT_POINT_VALUE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v11

    .line 592
    .local v11, pointValue:D
    const-string v1, "STAT_POINT_INTERVAL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v13

    .line 594
    .local v13, pointInterval:D
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nuance/swype/connect/manager/ReportingManager;->dataSource:Lcom/nuance/swype/connect/sqlite/ReportingDataSource;

    move-object v9, v2

    move-object v10, v3

    move-object v15, v5

    move-wide/from16 v16, v6

    invoke-virtual/range {v8 .. v17}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->createAggregatePoint(Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 596
    move-object/from16 v0, p0

    iget v1, v0, Lcom/nuance/swype/connect/manager/ReportingManager;->aggregateCount:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/nuance/swype/connect/manager/ReportingManager;->aggregateCount:I

    .line 597
    move-object/from16 v0, p0

    iget v1, v0, Lcom/nuance/swype/connect/manager/ReportingManager;->aggregateCount:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/nuance/swype/connect/manager/ReportingManager;->aggregateLimit:I

    if-le v1, v8, :cond_0

    .line 598
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/nuance/swype/connect/manager/ReportingManager;->enforceLimits(Z)V

    goto/16 :goto_0
.end method

.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .parameter "type"
    .parameter "data"

    .prologue
    const/4 v1, 0x1

    .line 268
    if-eqz p1, :cond_0

    .line 269
    const-string v0, "REPORTING_GENERIC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/nuance/swype/connect/manager/ReportingManager;->sendReportTracking(ZZ)V

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    const-string v0, "AGGREGATE_GENERIC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    invoke-direct {p0, v1, v1}, Lcom/nuance/swype/connect/manager/ReportingManager;->sendReportTracking(ZZ)V

    goto :goto_0
.end method

.method public clearStoredStatistics()V
    .locals 3

    .prologue
    .line 399
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->dataSource:Lcom/nuance/swype/connect/sqlite/ReportingDataSource;

    if-eqz v2, :cond_0

    .line 400
    invoke-static {}, Lcom/nuance/swype/connect/util/TimeConversion;->getCurrentTime()J

    move-result-wide v0

    .line 401
    .local v0, time:J
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->dataSource:Lcom/nuance/swype/connect/sqlite/ReportingDataSource;

    invoke-virtual {v2, v0, v1}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->clearAggregate(J)Z

    .line 403
    .end local v0           #time:J
    :cond_0
    return-void
.end method

.method public clearStoredUsage()V
    .locals 3

    .prologue
    .line 392
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->dataSource:Lcom/nuance/swype/connect/sqlite/ReportingDataSource;

    if-eqz v2, :cond_0

    .line 393
    invoke-static {}, Lcom/nuance/swype/connect/util/TimeConversion;->getCurrentTime()J

    move-result-wide v0

    .line 394
    .local v0, time:J
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->dataSource:Lcom/nuance/swype/connect/sqlite/ReportingDataSource;

    invoke-virtual {v2, v0, v1}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->clearIndividual(J)Z

    .line 396
    .end local v0           #time:J
    :cond_0
    return-void
.end method

.method public deregister()V
    .locals 0

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/ReportingManager;->clearStoredStatistics()V

    .line 196
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/ReportingManager;->clearStoredUsage()V

    .line 197
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->dataSource:Lcom/nuance/swype/connect/sqlite/ReportingDataSource;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->dataSource:Lcom/nuance/swype/connect/sqlite/ReportingDataSource;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->close()V

    .line 190
    :cond_0
    invoke-super {p0}, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->destroy()V

    .line 191
    return-void
.end method

.method public getDependencies()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 180
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "session"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->dataSource:Lcom/nuance/swype/connect/sqlite/ReportingDataSource;

    if-nez v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/ReportingManager;->initializeData()V

    .line 137
    :cond_0
    return-void
.end method

.method protected initializeData()V
    .locals 2

    .prologue
    .line 200
    new-instance v0, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;

    iget-object v1, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-direct {v0, v1}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->dataSource:Lcom/nuance/swype/connect/sqlite/ReportingDataSource;

    .line 201
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->dataSource:Lcom/nuance/swype/connect/sqlite/ReportingDataSource;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->openSafe()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->dataSource:Lcom/nuance/swype/connect/sqlite/ReportingDataSource;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->verifyDatabase()V

    .line 204
    :cond_0
    return-void
.end method

.method public onFailure(Lcom/nuance/swype/connect/util/Command;)V
    .locals 4
    .parameter "c"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 615
    const-string v0, "ReportingManager.onFailure"

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 618
    const-string v0, "aggregate"

    iget-object v1, p1, Lcom/nuance/swype/connect/util/Command;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 619
    iget-wide v0, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->lastAggregateTime:J

    invoke-direct {p0, v0, v1, v3}, Lcom/nuance/swype/connect/manager/ReportingManager;->cleanStoredReports(JZ)V

    .line 620
    invoke-direct {p0, v3}, Lcom/nuance/swype/connect/manager/ReportingManager;->setLastRunToNow(Z)V

    .line 621
    invoke-direct {p0, v3}, Lcom/nuance/swype/connect/manager/ReportingManager;->determineUsageNextRun(Z)V

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 622
    :cond_1
    const-string v0, "individual"

    iget-object v1, p1, Lcom/nuance/swype/connect/util/Command;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    iget-wide v0, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->lastIndividualTime:J

    invoke-direct {p0, v0, v1, v2}, Lcom/nuance/swype/connect/manager/ReportingManager;->cleanStoredReports(JZ)V

    .line 624
    invoke-direct {p0, v2}, Lcom/nuance/swype/connect/manager/ReportingManager;->setLastRunToNow(Z)V

    .line 625
    invoke-direct {p0, v2}, Lcom/nuance/swype/connect/manager/ReportingManager;->determineUsageNextRun(Z)V

    goto :goto_0
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "message"

    .prologue
    .line 231
    const/4 v1, 0x0

    .line 232
    .local v1, handled:Z
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 251
    :goto_0
    return v1

    .line 235
    :sswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 236
    .local v0, data:Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/ReportingManager;->addStatFromBundle(Landroid/os/Bundle;)V

    .line 237
    const/4 v1, 0x1

    .line 238
    goto :goto_0

    .line 241
    .end local v0           #data:Landroid/os/Bundle;
    :sswitch_1
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/ReportingManager;->sendReportingNow()V

    .line 242
    const/4 v1, 0x1

    .line 243
    goto :goto_0

    .line 246
    :sswitch_2
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/ReportingManager;->sendAllowedMetricsToHost()V

    .line 247
    const/4 v1, 0x1

    goto :goto_0

    .line 232
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_1
        0xcb -> :sswitch_0
        0xcc -> :sswitch_0
        0xf5 -> :sswitch_2
    .end sparse-switch
.end method

.method public onResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "tracking"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/ReportingManager;->processTrackingResponse(Lcom/nuance/swype/connect/util/Response;)V

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "aggregate"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/ReportingManager;->processAggregateResponse(Lcom/nuance/swype/connect/util/Response;)V

    goto :goto_0

    .line 261
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "individual"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/ReportingManager;->processIndividualResponse(Lcom/nuance/swype/connect/util/Response;)V

    goto :goto_0
.end method

.method public prepareForUpgrade()V
    .locals 0

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/ReportingManager;->sendReportingNow()V

    .line 176
    return-void
.end method

.method protected sendReportingNow()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 323
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "REPORTING_LAST_RUN"

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveLong(Ljava/lang/String;J)Z

    .line 324
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "REPORTING_AGGREGATE_LAST_RUN"

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveLong(Ljava/lang/String;J)Z

    .line 326
    new-instance v0, Lcom/nuance/swype/connect/util/Alarm$Builder;

    iget-object v1, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/nuance/swype/connect/manager/ReportingManager;

    const-string v3, "REPORTING_GENERIC"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/connect/util/Alarm$Builder;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/swype/connect/util/Alarm$Builder;->build()Lcom/nuance/swype/connect/util/Alarm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/util/Alarm;->cancel()V

    .line 330
    new-instance v0, Lcom/nuance/swype/connect/util/Alarm$Builder;

    iget-object v1, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/nuance/swype/connect/manager/ReportingManager;

    const-string v3, "AGGREGATE_GENERIC"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/connect/util/Alarm$Builder;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/swype/connect/util/Alarm$Builder;->build()Lcom/nuance/swype/connect/util/Alarm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/util/Alarm;->cancel()V

    .line 334
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/manager/ReportingManager;->determineUsageNextRun(Z)V

    .line 335
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/manager/ReportingManager;->determineUsageNextRun(Z)V

    .line 336
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 140
    invoke-static {}, Lcom/nuance/swype/connect/util/TimeConversion;->getCurrentTime()J

    move-result-wide v0

    iget v2, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->aggregateDataExpiration:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1, v4}, Lcom/nuance/swype/connect/manager/ReportingManager;->cleanStoredReports(JZ)V

    .line 141
    invoke-static {}, Lcom/nuance/swype/connect/util/TimeConversion;->getCurrentTime()J

    move-result-wide v0

    iget v2, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->reportingDataExpriation:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1, v5}, Lcom/nuance/swype/connect/manager/ReportingManager;->cleanStoredReports(JZ)V

    .line 143
    sget-object v0, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->managerStartState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    .line 144
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->trackingNextRun:J

    .line 146
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getConfiguration()Lcom/nuance/swype/connect/configuration/ConnectConfiguration;

    move-result-object v0

    const-string v1, "AGGREGATE_FREQUENCY"

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->aggregateChangeListener:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

    invoke-virtual {v0, v1, v2, v4}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->setConfigurationListener(Ljava/lang/String;Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;Z)V

    .line 149
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getConfiguration()Lcom/nuance/swype/connect/configuration/ConnectConfiguration;

    move-result-object v0

    const-string v1, "REPORTING_FREQUENCY"

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->individualChangeListener:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

    invoke-virtual {v0, v1, v2, v4}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->setConfigurationListener(Ljava/lang/String;Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;Z)V

    .line 153
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ReportingManager;->dataSource:Lcom/nuance/swype/connect/sqlite/ReportingDataSource;

    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/ReportingManager;->initializeData()V

    .line 157
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/ReportingManager;->loadPreferences()V

    .line 160
    invoke-direct {p0, v4}, Lcom/nuance/swype/connect/manager/ReportingManager;->enforceLimits(Z)V

    .line 161
    invoke-direct {p0, v5}, Lcom/nuance/swype/connect/manager/ReportingManager;->enforceLimits(Z)V

    .line 164
    invoke-direct {p0, v4}, Lcom/nuance/swype/connect/manager/ReportingManager;->determineUsageNextRun(Z)V

    .line 165
    invoke-direct {p0, v5}, Lcom/nuance/swype/connect/manager/ReportingManager;->determineUsageNextRun(Z)V

    .line 167
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/ReportingManager;->sendAllowedMetricsToHost()V

    .line 169
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/ReportingManager;->managerStartComplete()V

    .line 170
    return-void
.end method
