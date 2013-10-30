.class public Lcom/nuance/swype/connect/configuration/ConnectConfiguration;
.super Ljava/lang/Object;
.source "ConnectConfiguration.java"


# static fields
.field private static final ASSET_DATA_FILES_FOLDER:Ljava/lang/String; = ""

.field private static final CONFIGURATION_FILE:Ljava/lang/String; = "connect.dat"

.field private static final CONFIGURATION_FILE_ON_APK:Ljava/lang/String; = "connect.dat"

.field public static final PROPERTY_ACCOUNT_ACCOUNT_EMAIL:Ljava/lang/String; = "ACCOUNT_ACCOUNT_EMAIL"

.field public static final PROPERTY_ALLOW_DATA_ROAMING:Ljava/lang/String; = "PROPERTY_ALLOW_DATA_ROAMING"

.field public static final PROPERTY_CATEGORY_FREQUENCY:Ljava/lang/String; = "CATEGORY_FREQUENCY"

.field public static final PROPERTY_DEFAULT_DELAY:Ljava/lang/String; = "DEFAULT_DELAY"

.field public static final PROPERTY_DEFAULT_LOADTIME:Ljava/lang/String; = "INITIAL_LOADTIME"

.field public static final PROPERTY_DLM_ADD_WORD_FREQUENCY:Ljava/lang/String; = "DLM_ADD_WORD_FREQUENCY"

.field public static final PROPERTY_DLM_SYNC_FREQUENCY:Ljava/lang/String; = "DLM_SYNC_FREQUENCY"

.field public static final PROPERTY_HTTP_ANALYTICS_TIME:Ljava/lang/String; = "PROPERTY_HTTP_ANALYTICS_TIME"

.field public static final PROPERTY_HTTP_LIMIT:Ljava/lang/String; = "PROPERTY_HTTP_LIMIT"

.field public static final PROPERTY_KEY_ACCOUNT:Ljava/lang/String; = "KEY_ACCOUNT"

.field public static final PROPERTY_KEY_BUILD:Ljava/lang/String; = "KEY_BUILD"

.field public static final PROPERTY_KEY_DEVICE:Ljava/lang/String; = "KEY_DEVICE"

.field public static final PROPERTY_LANG_AUTO_LIST:Ljava/lang/String; = "LANG_AUTO_LIST"

.field public static final PROPERTY_LOGGING:Ljava/lang/String; = "LOGGING"

.field public static final PROPERTY_MESSAGE_EXPERATION:Ljava/lang/String; = "MESSAGE_EXPERATION"

.field public static final PROPERTY_MQTT_ENABLED:Ljava/lang/String; = "MQTT_ENABLED"

.field public static final PROPERTY_MQTT_HOSTS:Ljava/lang/String; = "MQTT_HOSTS"

.field public static final PROPERTY_MQTT_KEEPALIVE:Ljava/lang/String; = "MQTT_KEEP_ALIVE"

.field public static final PROPERTY_MQTT_RECONNECT_CELLULAR:Ljava/lang/String; = "MQTT_RECONNECT_CELLULAR"

.field public static final PROPERTY_MQTT_RECONNECT_WIFI:Ljava/lang/String; = "MQTT_RECONNECT_WIFI"

.field public static final PROPERTY_POLLING_FREQUENCY:Ljava/lang/String; = "POLLING_FREQUENCY"

.field public static final PROPERTY_REPORTING_AGGREGATE_FREQUENCY:Ljava/lang/String; = "AGGREGATE_FREQUENCY"

.field public static final PROPERTY_REPORTING_AGGREGATE_TIME_LIMIT:Ljava/lang/String; = "AGGREGATE_TIME_LIMIT"

.field public static final PROPERTY_REPORTING_MAX_RESULTS:Ljava/lang/String; = "REPORTING_MAX_RESULTS"

.field public static final PROPERTY_REPORTING_STATISTICS_FREQUENCY:Ljava/lang/String; = "REPORTING_FREQUENCY"

.field public static final PROPERTY_REPORTING_TIME_LIMIT:Ljava/lang/String; = "REPORTING_TIME_LIMIT"

.field public static final PROPERTY_RESEARCH_UDB_UPLOAD_FREQUENCY:Ljava/lang/String; = "UDB_UPLOAD_FREQUENCY"

.field public static final PROPERTY_STABLE_CELLULAR_CONNECTION_THRESHOLD:Ljava/lang/String; = "STABLE_CELLUAR_CONNECTION_THRESHOLD"

.field public static final PROPERTY_STABLE_WIFI_CONNECTION_THRESHOLD:Ljava/lang/String; = "STABLE_WIFI_CONNECTION_THRESHOLD"

.field public static final PROPERTY_URL:Ljava/lang/String; = "URL"

.field public static final TYPE_BOOLEAN:I = 0x4

.field public static final TYPE_INT:I = 0x3

.field public static final TYPE_OBJECT:I = 0x1

.field public static final TYPE_STRING:I = 0x2

.field public static final TYPE_UNKNOWN:I = 0x0

.field public static final VERIFY_NEG_ONE_INT:I = 0x5

.field public static final VERIFY_NON_NEGATIVE_INT:I = 0x4

.field public static final VERIFY_POSITIVE_INT:I = 0x3

.field public static final VERIFY_TYPE:I = 0x1

.field public static final VERIFY_UNKNOWN:I = 0x0

.field public static final VERIFY_URL:I = 0x2


# instance fields
.field private final configurations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/swype/connect/configuration/ConnectProperty;",
            ">;"
        }
    .end annotation
.end field

.field private context:Lcom/nuance/swype/connect/ConnectClient;


# direct methods
.method public constructor <init>(Lcom/nuance/swype/connect/ConnectClient;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->context:Lcom/nuance/swype/connect/ConnectClient;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->configurations:Ljava/util/Map;

    .line 112
    invoke-direct {p0}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->setup()V

    .line 113
    return-void
.end method

.method public constructor <init>(Lcom/nuance/swype/connect/ConnectClient;Ljava/lang/String;)V
    .locals 2
    .parameter "service"
    .parameter "raw"

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->context:Lcom/nuance/swype/connect/ConnectClient;

    .line 122
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->configurations:Ljava/util/Map;

    .line 123
    invoke-direct {p0}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->setup()V

    .line 125
    invoke-virtual {p0, p2}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->createFromString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 126
    .local v0, propertyList:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->isValidConfigurationProperties(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->setConfigurationProperties(Ljava/util/Map;)V

    .line 130
    :cond_0
    return-void
.end method

.method private getAPKFileContents(Ljava/lang/String;)[B
    .locals 3
    .parameter "fullpath"

    .prologue
    .line 498
    iget-object v2, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->context:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/ConnectClient;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 500
    .local v0, am:Landroid/content/res/AssetManager;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 502
    .local v1, in:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    invoke-static {v1, v2}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->readBytes(Ljava/io/InputStream;I)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 505
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 510
    .end local v1           #in:Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 505
    .restart local v1       #in:Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 507
    .end local v1           #in:Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 510
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getConfigurationFilenameOnFilesystem()Ljava/lang/String;
    .locals 4

    .prologue
    .line 484
    iget-object v2, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->context:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/ConnectClient;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 485
    .local v0, dataDir:Ljava/lang/String;
    move-object v1, v0

    .line 486
    .local v1, nativeDataFileDir:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "connect.dat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static isBoolean(Ljava/lang/String;)Z
    .locals 1
    .parameter "propertyValue"

    .prologue
    .line 715
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 716
    const-string v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "false"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 718
    :cond_0
    const/4 v0, 0x1

    .line 720
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidConfiguration([B)Z
    .locals 2
    .parameter "digest"

    .prologue
    .line 355
    if-eqz p1, :cond_0

    .line 356
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->createFromDigest([B)Ljava/util/Map;

    move-result-object v0

    .line 357
    .local v0, propertyList:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->isValidConfigurationProperties(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->setConfigurationProperties(Ljava/util/Map;)V

    .line 360
    const/4 v1, 0x1

    .line 363
    .end local v0           #propertyList:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isValidConfigurationProperty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "propertyName"
    .parameter "propertyValue"

    .prologue
    .line 605
    iget-object v4, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->configurations:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 606
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/connect/configuration/ConnectProperty;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 607
    .local v2, name:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/connect/configuration/ConnectProperty;

    .line 610
    .local v3, prop:Lcom/nuance/swype/connect/configuration/ConnectProperty;
    :try_start_0
    invoke-virtual {v3}, Lcom/nuance/swype/connect/configuration/ConnectProperty;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->validateProperty(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 611
    const/4 v4, 0x1

    .line 617
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/connect/configuration/ConnectProperty;>;"
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #prop:Lcom/nuance/swype/connect/configuration/ConnectProperty;
    :goto_1
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 613
    .restart local v0       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/connect/configuration/ConnectProperty;>;"
    .restart local v2       #name:Ljava/lang/String;
    .restart local v3       #prop:Lcom/nuance/swype/connect/configuration/ConnectProperty;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private static nonNegativeInt(Ljava/lang/String;)Z
    .locals 1
    .parameter "propertyValue"

    .prologue
    .line 695
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ltz v0, :cond_0

    .line 696
    const/4 v0, 0x1

    .line 700
    :goto_0
    return v0

    .line 698
    :catch_0
    move-exception v0

    .line 700
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static nonNegativeOneInt(Ljava/lang/String;)Z
    .locals 2
    .parameter "propertyValue"

    .prologue
    .line 706
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/4 v1, -0x1

    if-lt v0, v1, :cond_0

    .line 707
    const/4 v0, 0x1

    .line 711
    :goto_0
    return v0

    .line 709
    :catch_0
    move-exception v0

    .line 711
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static positiveInt(Ljava/lang/String;)Z
    .locals 1
    .parameter "propertyValue"

    .prologue
    .line 684
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_0

    .line 685
    const/4 v0, 0x1

    .line 689
    :goto_0
    return v0

    .line 687
    :catch_0
    move-exception v0

    .line 689
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static readBytes(Ljava/io/InputStream;I)[B
    .locals 2
    .parameter "in"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 525
    new-array v0, p1, [B

    .line 526
    .local v0, data:[B
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 527
    return-object v0
.end method

.method private setConfigurationProperties(Ljava/util/Map;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 367
    .local p1, properties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->configurations:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 368
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/connect/configuration/ConnectProperty;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 369
    .local v2, name:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/connect/configuration/ConnectProperty;

    .line 370
    .local v3, prop:Lcom/nuance/swype/connect/configuration/ConnectProperty;
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 372
    .local v4, property:Ljava/lang/String;
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 373
    invoke-virtual {v3, v4}, Lcom/nuance/swype/connect/configuration/ConnectProperty;->setConfig(Ljava/lang/String;)V

    goto :goto_0

    .line 376
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/connect/configuration/ConnectProperty;>;"
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #prop:Lcom/nuance/swype/connect/configuration/ConnectProperty;
    .end local v4           #property:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private setup()V
    .locals 10

    .prologue
    .line 140
    iget-object v8, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->configurations:Ljava/util/Map;

    const-string v9, "URL"

    new-instance v0, Lcom/nuance/swype/connect/configuration/ConnectProperty;

    iget-object v1, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->context:Lcom/nuance/swype/connect/ConnectClient;

    const-string v2, "URL"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-string v5, "https://api.swypeconnect.com/"

    const/4 v6, 0x2

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/connect/configuration/ConnectProperty;-><init>(Lcom/nuance/swype/connect/ConnectClient;Ljava/lang/String;IZLjava/lang/Object;I)V

    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v8, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->configurations:Ljava/util/Map;

    const-string v9, "DEFAULT_DELAY"

    new-instance v0, Lcom/nuance/swype/connect/configuration/ConnectProperty;

    iget-object v1, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->context:Lcom/nuance/swype/connect/ConnectClient;

    const-string v2, "DEFAULT_DELAY"

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/16 v5, 0x12c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/connect/configuration/ConnectProperty;-><init>(Lcom/nuance/swype/connect/ConnectClient;Ljava/lang/String;IZLjava/lang/Object;I)V

    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v8, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->configurations:Ljava/util/Map;

    const-string v9, "POLLING_FREQUENCY"

    new-instance v0, Lcom/nuance/swype/connect/configuration/ConnectProperty;

    iget-object v1, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->context:Lcom/nuance/swype/connect/ConnectClient;

    const-string v2, "POLLING_FREQUENCY"

    const/4 v3, 0x3

    const/4 v4, 0x0

    const v5, 0x7e900

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x4

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/connect/configuration/ConnectProperty;-><init>(Lcom/nuance/swype/connect/ConnectClient;Ljava/lang/String;IZLjava/lang/Object;I)V

    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v6, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->configurations:Ljava/util/Map;

    const-string v8, "LOGGING"

    new-instance v0, Lcom/nuance/swype/connect/configuration/ConnectProperty;

    iget-object v1, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->context:Lcom/nuance/swype/connect/ConnectClient;

    const-string v2, "LOGGING"

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/connect/configuration/ConnectProperty;-><init>(Lcom/nuance/swype/connect/ConnectClient;Ljava/lang/String;IZLjava/lang/Object;)V

    invoke-interface {v6, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v6, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->configurations:Ljava/util/Map;

    const-string v8, "INITIAL_LOADTIME"

    new-instance v0, Lcom/nuance/swype/connect/configuration/ConnectProperty;

    iget-object v1, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->context:Lcom/nuance/swype/connect/ConnectClient;

    const-string v2, "INITIAL_LOADTIME"

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/16 v5, 0xe10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/connect/configuration/ConnectProperty;-><init>(Lcom/nuance/swype/connect/ConnectClient;Ljava/lang/String;IZLjava/lang/Object;)V

    invoke-interface {v6, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v8, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->configurations:Ljava/util/Map;

    const-string v9, "REPORTING_FREQUENCY"

    new-instance v0, Lcom/nuance/swype/connect/configuration/ConnectProperty;

    iget-object v1, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->context:Lcom/nuance/swype/connect/ConnectClient;

    const-string v2, "REPORTING_FREQUENCY"

    const/4 v3, 0x3

    const/4 v4, 0x0

    const v5, 0xa8c00

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/connect/configuration/ConnectProperty;-><init>(Lcom/nuance/swype/connect/ConnectClient;Ljava/lang/String;IZLjava/lang/Object;I)V

    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v6, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->configurations:Ljava/util/Map;

    const-string v8, "REPORTING_TIME_LIMIT"

    new-instance v0, Lcom/nuance/swype/connect/configuration/ConnectProperty;

    iget-object v1, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->context:Lcom/nuance/swype/connect/ConnectClient;

    const-string v2, "REPORTING_TIME_LIMIT"

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/16 v5, 0x5a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/connect/configuration/ConnectProperty;-><init>(Lcom/nuance/swype/connect/ConnectClient;Ljava/lang/String;IZLjava/lang/Object;)V

    invoke-interface {v6, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v6, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->configurations:Ljava/util/Map;

    const-string v8, "REPORTING_MAX_RESULTS"

    new-instance v0, Lcom/nuance/swype/connect/configuration/ConnectProperty;

    iget-object v1, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->context:Lcom/nuance/swype/connect/ConnectClient;

    const-string v2, "REPORTING_MAX_RESULTS"

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/16 v5, 0x2710

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/connect/configuration/ConnectProperty;-><init>(Lcom/nuance/swype/connect/ConnectClient;Ljava/lang/String;IZLjava/lang/Object;)V

    invoke-interface {v6, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v8, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->configurations:Ljava/util/Map;

    const-string v9, "AGGREGATE_FREQUENCY"

    new-instance v0, Lcom/nuance/swype/connect/configuration/ConnectProperty;

    iget-object v1, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->context:Lcom/nuance/swype/connect/ConnectClient;

    const-string v2, "AGGREGATE_FREQUENCY"

    const/4 v3, 0x3

    const/4 v4, 0x0

    const v5, 0xa8c00

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/connect/configuration/ConnectProperty;-><init>(Lcom/nuance/swype/connect/ConnectClient;Ljava/lang/String;IZLjava/lang/Object;I)V

    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v6, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->configurations:Ljava/util/Map;

    const-string v8, "AGGREGATE_TIME_LIMIT"

    new-instance v0, Lcom/nuance/swype/connect/configuration/ConnectProperty;

    iget-object v1, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->context:Lcom/nuance/swype/connect/ConnectClient;

    const-string v2, "AGGREGATE_TIME_LIMIT"

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/16 v5, 0x5a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/connect/configuration/ConnectProperty;-><init>(Lcom/nuance/swype/connect/ConnectClient;Ljava/lang/String;IZLjava/lang/Object;)V

    invoke-interface {v6, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v8, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->configurations:Ljava/util/Map;

    const-string v9, "UDB_UPLOAD_FREQUENCY"

    new-instance v0, Lcom/nuance/swype/connect/configuration/ConnectProperty;

    iget-object v1, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->context:Lcom/nuance/swype/connect/ConnectClient;

    const-string v2, "UDB_UPLOAD_FREQUENCY"

    const/4 v3, 0x3

    const/4 v4, 0x0

    const v5, 0x20f580

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x5

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/connect/configuration/ConnectProperty;-><init>(Lcom/nuance/swype/connect/ConnectClient;Ljava/lang/String;IZLjava/lang/Object;I)V

    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v8, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->configurations:Ljava/util/Map;

    const-string v9, "STABLE_CELLUAR_CONNECTION_THRESHOLD"

    new-instance v0, Lcom/nuance/swype/connect/configuration/ConnectProperty;

    iget-object v1, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->context:Lcom/nuance/swype/connect/ConnectClient;

    const-string v2, "STABLE_CELLUAR_CONNECTION_THRESHOLD"

    const/4 v3, 0x3

    const/4 v4, 0x0

    const v5, 0x493e0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x5

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/connect/configuration/ConnectProperty;-><init>(Lcom/nuance/swype/connect/ConnectClient;Ljava/lang/String;IZLjava/lang/Object;I)V

    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v8, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->configurations:Ljava/util/Map;

    const-string v9, "STABLE_WIFI_CONNECTION_THRESHOLD"

    new-instance v0, Lcom/nuance/swype/connect/configuration/ConnectProperty;

    iget-object v1, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->context:Lcom/nuance/swype/connect/ConnectClient;

    const-string v2, "STABLE_WIFI_CONNECTION_THRESHOLD"

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/16 v5, 0x1388

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x5

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/connect/configuration/ConnectProperty;-><init>(Lcom/nuance/swype/connect/ConnectClient;Ljava/lang/String;IZLjava/lang/Object;I)V

    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v6, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->configurations:Ljava/util/Map;

    const-string v8, "PROPERTY_ALLOW_DATA_ROAMING"

    new-instance v0, Lcom/nuance/swype/connect/configuration/ConnectProperty;

    iget-object v1, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->context:Lcom/nuance/swype/connect/ConnectClient;

    const-string v2, "PROPERTY_ALLOW_DATA_ROAMING"

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/connect/configuration/ConnectProperty;-><init>(Lcom/nuance/swype/connect/ConnectClient;Ljava/lang/String;IZLjava/lang/Object;)V

    invoke-interface {v6, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v8, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->configurations:Ljava/util/Map;

    const-string v9, "PROPERTY_HTTP_ANALYTICS_TIME"

    new-instance v0, Lcom/nuance/swype/connect/configuration/ConnectProperty;

    iget-object v1, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->context:Lcom/nuance/swype/connect/ConnectClient;

    const-string v2, "STABLE_WIFI_CONNECTION_THRESHOLD"

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/16 v5, 0xc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x5

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/connect/configuration/ConnectProperty;-><init>(Lcom/nuance/swype/connect/ConnectClient;Ljava/lang/String;IZLjava/lang/Object;I)V

    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v8, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->configurations:Ljava/util/Map;

    const-string v9, "PROPERTY_HTTP_LIMIT"

    new-instance v0, Lcom/nuance/swype/connect/configuration/ConnectProperty;

    iget-object v1, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->context:Lcom/nuance/swype/connect/ConnectClient;

    const-string v2, "PROPERTY_HTTP_LIMIT"

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/high16 v5, 0xa0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x5

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/connect/configuration/ConnectProperty;-><init>(Lcom/nuance/swype/connect/ConnectClient;Ljava/lang/String;IZLjava/lang/Object;I)V

    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v8, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->configurations:Ljava/util/Map;

    const-string v9, "DLM_SYNC_FREQUENCY"

    new-instance v0, Lcom/nuance/swype/connect/configuration/ConnectProperty;

    iget-object v1, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->context:Lcom/nuance/swype/connect/ConnectClient;

    const-string v2, "DLM_SYNC_FREQUENCY"

    const/4 v3, 0x3

    const/4 v4, 0x0

    const v5, 0x15180

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x5

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/connect/configuration/ConnectProperty;-><init>(Lcom/nuance/swype/connect/ConnectClient;Ljava/lang/String;IZLjava/lang/Object;I)V

    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v8, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->configurations:Ljava/util/Map;

    const-string v9, "DLM_ADD_WORD_FREQUENCY"

    new-instance v0, Lcom/nuance/swype/connect/configuration/ConnectProperty;

    iget-object v1, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->context:Lcom/nuance/swype/connect/ConnectClient;

    const-string v2, "DLM_ADD_WORD_FREQUENCY"

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/16 v5, 0xbb8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x5

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/connect/configuration/ConnectProperty;-><init>(Lcom/nuance/swype/connect/ConnectClient;Ljava/lang/String;IZLjava/lang/Object;I)V

    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object v6, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->configurations:Ljava/util/Map;

    const-string v8, "MQTT_ENABLED"

    new-instance v0, Lcom/nuance/swype/connect/configuration/ConnectProperty;

    iget-object v1, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->context:Lcom/nuance/swype/connect/ConnectClient;

    const-string v2, "MQTT_ENABLED"

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/connect/configuration/ConnectProperty;-><init>(Lcom/nuance/swype/connect/ConnectClient;Ljava/lang/String;IZLjava/lang/Object;)V

    invoke-interface {v6, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v6, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->configurations:Ljava/util/Map;

    const-string v8, "MQTT_HOSTS"

    new-instance v0, Lcom/nuance/swype/connect/configuration/ConnectProperty;

    iget-object v1, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->context:Lcom/nuance/swype/connect/ConnectClient;

    const-string v2, "MQTT_HOSTS"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/connect/configuration/ConnectProperty;-><init>(Lcom/nuance/swype/connect/ConnectClient;Ljava/lang/String;IZLjava/lang/Object;)V

    invoke-interface {v6, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v8, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->configurations:Ljava/util/Map;

    const-string v9, "MQTT_KEEP_ALIVE"

    new-instance v0, Lcom/nuance/swype/connect/configuration/ConnectProperty;

    iget-object v1, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->context:Lcom/nuance/swype/connect/ConnectClient;

    const-string v2, "MQTT_KEEP_ALIVE"

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/16 v5, 0x1c20

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/connect/configuration/ConnectProperty;-><init>(Lcom/nuance/swype/connect/ConnectClient;Ljava/lang/String;IZLjava/lang/Object;I)V

    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v8, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->configurations:Ljava/util/Map;

    const-string v9, "MQTT_RECONNECT_CELLULAR"

    new-instance v0, Lcom/nuance/swype/connect/configuration/ConnectProperty;

    iget-object v1, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->context:Lcom/nuance/swype/connect/ConnectClient;

    const-string v2, "MQTT_RECONNECT_CELLULAR"

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/16 v5, 0x708

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/connect/configuration/ConnectProperty;-><init>(Lcom/nuance/swype/connect/ConnectClient;Ljava/lang/String;IZLjava/lang/Object;I)V

    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v8, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->configurations:Ljava/util/Map;

    const-string v9, "MQTT_RECONNECT_WIFI"

    new-instance v0, Lcom/nuance/swype/connect/configuration/ConnectProperty;

    iget-object v1, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->context:Lcom/nuance/swype/connect/ConnectClient;

    const-string v2, "MQTT_RECONNECT_WIFI"

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/16 v5, 0x78

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/connect/configuration/ConnectProperty;-><init>(Lcom/nuance/swype/connect/ConnectClient;Ljava/lang/String;IZLjava/lang/Object;I)V

    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v6, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->configurations:Ljava/util/Map;

    const-string v8, "KEY_DEVICE"

    new-instance v0, Lcom/nuance/swype/connect/configuration/ConnectProperty;

    iget-object v1, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->context:Lcom/nuance/swype/connect/ConnectClient;

    const-string v2, "KEY_DEVICE"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/connect/configuration/ConnectProperty;-><init>(Lcom/nuance/swype/connect/ConnectClient;Ljava/lang/String;IZLjava/lang/Object;)V

    invoke-interface {v6, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    iget-object v6, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->configurations:Ljava/util/Map;

    const-string v8, "KEY_BUILD"

    new-instance v0, Lcom/nuance/swype/connect/configuration/ConnectProperty;

    iget-object v1, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->context:Lcom/nuance/swype/connect/ConnectClient;

    const-string v2, "KEY_BUILD"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/connect/configuration/ConnectProperty;-><init>(Lcom/nuance/swype/connect/ConnectClient;Ljava/lang/String;IZLjava/lang/Object;)V

    invoke-interface {v6, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object v6, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->configurations:Ljava/util/Map;

    const-string v8, "KEY_ACCOUNT"

    new-instance v0, Lcom/nuance/swype/connect/configuration/ConnectProperty;

    iget-object v1, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->context:Lcom/nuance/swype/connect/ConnectClient;

    const-string v2, "KEY_ACCOUNT"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/connect/configuration/ConnectProperty;-><init>(Lcom/nuance/swype/connect/ConnectClient;Ljava/lang/String;IZLjava/lang/Object;)V

    invoke-interface {v6, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    iget-object v6, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->configurations:Ljava/util/Map;

    const-string v8, "ACCOUNT_ACCOUNT_EMAIL"

    new-instance v0, Lcom/nuance/swype/connect/configuration/ConnectProperty;

    iget-object v1, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->context:Lcom/nuance/swype/connect/ConnectClient;

    const-string v2, "ACCOUNT_ACCOUNT_EMAIL"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-string v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/connect/configuration/ConnectProperty;-><init>(Lcom/nuance/swype/connect/ConnectClient;Ljava/lang/String;IZLjava/lang/Object;)V

    invoke-interface {v6, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iget-object v8, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->configurations:Ljava/util/Map;

    const-string v9, "CATEGORY_FREQUENCY"

    new-instance v0, Lcom/nuance/swype/connect/configuration/ConnectProperty;

    iget-object v1, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->context:Lcom/nuance/swype/connect/ConnectClient;

    const-string v2, "CATEGORY_FREQUENCY"

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/16 v5, 0x1c20

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/connect/configuration/ConnectProperty;-><init>(Lcom/nuance/swype/connect/ConnectClient;Ljava/lang/String;IZLjava/lang/Object;I)V

    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object v8, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->configurations:Ljava/util/Map;

    const-string v9, "MESSAGE_EXPERATION"

    new-instance v0, Lcom/nuance/swype/connect/configuration/ConnectProperty;

    iget-object v1, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->context:Lcom/nuance/swype/connect/ConnectClient;

    const-string v2, "MESSAGE_EXPERATION"

    const/4 v3, 0x3

    const/4 v4, 0x1

    const v5, 0x76a700

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/connect/configuration/ConnectProperty;-><init>(Lcom/nuance/swype/connect/ConnectClient;Ljava/lang/String;IZLjava/lang/Object;I)V

    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    iget-object v8, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->configurations:Ljava/util/Map;

    const-string v9, "LANG_AUTO_LIST"

    new-instance v0, Lcom/nuance/swype/connect/configuration/ConnectProperty;

    iget-object v1, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->context:Lcom/nuance/swype/connect/ConnectClient;

    const-string v2, "LANG_AUTO_LIST"

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/16 v5, 0x1e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x5

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/connect/configuration/ConnectProperty;-><init>(Lcom/nuance/swype/connect/ConnectClient;Ljava/lang/String;IZLjava/lang/Object;I)V

    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->getConfigurationDigest(Z)[B

    move-result-object v7

    .line 309
    .local v7, digestInConfigFile:[B
    invoke-direct {p0, v7}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->isValidConfiguration([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->getConfigurationDigest(Z)[B

    move-result-object v7

    .line 313
    invoke-direct {p0, v7}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->isValidConfiguration([B)Z

    .line 315
    :cond_0
    return-void
.end method

.method private validateProperty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "name"
    .parameter "propertyValue"

    .prologue
    .line 627
    const/4 v1, 0x0

    .line 629
    .local v1, returnValue:Z
    iget-object v4, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->configurations:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/configuration/ConnectProperty;

    .line 630
    .local v0, prop:Lcom/nuance/swype/connect/configuration/ConnectProperty;
    const/4 v3, 0x0

    .line 631
    .local v3, verification:I
    const/4 v2, 0x0

    .line 633
    .local v2, type:I
    if-eqz v0, :cond_0

    .line 634
    invoke-virtual {v0}, Lcom/nuance/swype/connect/configuration/ConnectProperty;->getVerification()I

    move-result v3

    .line 635
    invoke-virtual {v0}, Lcom/nuance/swype/connect/configuration/ConnectProperty;->getType()I

    move-result v2

    .line 638
    :cond_0
    packed-switch v3, :pswitch_data_0

    :cond_1
    :goto_0
    move v4, v1

    .line 678
    :goto_1
    return v4

    .line 640
    :pswitch_0
    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 651
    :pswitch_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 652
    const/4 v4, 0x1

    goto :goto_1

    .line 642
    :pswitch_2
    invoke-static {p2}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->isBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 643
    goto :goto_0

    .line 648
    :pswitch_3
    invoke-static {p2}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->nonNegativeInt(Ljava/lang/String;)Z

    move-result v1

    .line 649
    goto :goto_0

    .line 659
    :pswitch_4
    invoke-static {p2}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v1

    .line 660
    goto :goto_0

    .line 663
    :pswitch_5
    invoke-static {p2}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->nonNegativeInt(Ljava/lang/String;)Z

    move-result v1

    .line 664
    goto :goto_0

    .line 667
    :pswitch_6
    invoke-static {p2}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->positiveInt(Ljava/lang/String;)Z

    move-result v1

    .line 668
    goto :goto_0

    .line 671
    :pswitch_7
    invoke-static {p2}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->nonNegativeOneInt(Ljava/lang/String;)Z

    move-result v1

    .line 672
    goto :goto_0

    .line 638
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch

    .line 640
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public createFromDigest([B)Ljava/util/Map;
    .locals 2
    .parameter "digest"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 560
    invoke-static {p1}, Lcom/nuance/swype/connect/util/EncryptUtils;->decrypt([B)[B

    move-result-object v0

    .line 561
    .local v0, message:[B
    if-eqz v0, :cond_0

    .line 562
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v1}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->createFromString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 564
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final createFromString(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .parameter "rawText"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 537
    :try_start_0
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 539
    .local v2, props:Ljava/util/Properties;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 545
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    .end local v2           #props:Ljava/util/Properties;
    :goto_0
    return-object v1

    .line 547
    :catch_0
    move-exception v0

    .line 548
    .local v0, ex:Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createFromString failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 549
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->context:Lcom/nuance/swype/connect/ConnectClient;

    .line 386
    return-void
.end method

.method public getBooleanProperty(Ljava/lang/String;)Z
    .locals 5
    .parameter "name"

    .prologue
    .line 425
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ConnetConfiguration.getBooleanProperty("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 427
    const/4 v2, 0x0

    .line 428
    .local v2, returnValue:Z
    iget-object v3, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->configurations:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/connect/configuration/ConnectProperty;

    .line 430
    .local v1, property:Lcom/nuance/swype/connect/configuration/ConnectProperty;
    if-eqz v1, :cond_0

    .line 431
    :try_start_0
    invoke-virtual {v1}, Lcom/nuance/swype/connect/configuration/ConnectProperty;->getBoolean()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 438
    :cond_0
    :goto_0
    return v2

    .line 433
    :catch_0
    move-exception v0

    .line 434
    .local v0, ex:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBooleanProperty() Error reading system property "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final getConfigurationDigest(Z)[B
    .locals 1
    .parameter "isFromAPK"

    .prologue
    .line 449
    if-nez p1, :cond_0

    .line 450
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->getConfigurationFromFileSystem(Ljava/lang/String;)[B

    move-result-object v0

    .line 452
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "connect.dat"

    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->getAPKFileContents(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public getConfigurationFromFileSystem(Ljava/lang/String;)[B
    .locals 4
    .parameter "filename"

    .prologue
    .line 464
    if-nez p1, :cond_0

    .line 465
    invoke-direct {p0}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->getConfigurationFilenameOnFilesystem()Ljava/lang/String;

    move-result-object p1

    .line 468
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 470
    .local v0, configurationFile:Ljava/io/File;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    .local v1, in:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v1, v2}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->readBytes(Ljava/io/InputStream;I)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 474
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 479
    .end local v1           #in:Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 474
    .restart local v1       #in:Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 476
    .end local v1           #in:Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 479
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getIntProperty(Ljava/lang/String;)I
    .locals 5
    .parameter "name"

    .prologue
    .line 410
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ConnetConfiguration.getIntProperty("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 411
    const/high16 v2, -0x8000

    .line 412
    .local v2, returnValue:I
    iget-object v3, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->configurations:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/connect/configuration/ConnectProperty;

    .line 414
    .local v1, property:Lcom/nuance/swype/connect/configuration/ConnectProperty;
    if-eqz v1, :cond_0

    .line 415
    :try_start_0
    invoke-virtual {v1}, Lcom/nuance/swype/connect/configuration/ConnectProperty;->getInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 421
    :cond_0
    :goto_0
    return v2

    .line 417
    :catch_0
    move-exception v0

    .line 418
    .local v0, ex:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProperty() Error reading system property "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "name"

    .prologue
    .line 395
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ConnetConfiguration.getProperty("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 396
    const-string v2, ""

    .line 397
    .local v2, returnValue:Ljava/lang/String;
    iget-object v3, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->configurations:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/connect/configuration/ConnectProperty;

    .line 399
    .local v1, property:Lcom/nuance/swype/connect/configuration/ConnectProperty;
    if-eqz v1, :cond_0

    .line 400
    :try_start_0
    invoke-virtual {v1}, Lcom/nuance/swype/connect/configuration/ConnectProperty;->getString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 406
    :cond_0
    :goto_0
    return-object v2

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, ex:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProperty() Error reading system property "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final isValidConfigurationProperties(Ljava/util/Map;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 586
    .local p1, propertyList:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 587
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->isValidConfigurationProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 588
    const/4 v2, 0x0

    .line 593
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public overrideFromServer(Ljava/lang/String;I)V
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 736
    iget-object v2, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->configurations:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/connect/configuration/ConnectProperty;

    .line 738
    .local v1, prop:Lcom/nuance/swype/connect/configuration/ConnectProperty;
    if-eqz v1, :cond_0

    .line 740
    :try_start_0
    invoke-virtual {v1, p2}, Lcom/nuance/swype/connect/configuration/ConnectProperty;->setServerValue(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 745
    :cond_0
    :goto_0
    return-void

    .line 741
    :catch_0
    move-exception v0

    .line 742
    .local v0, ex:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error overriding configration value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public overrideFromServer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 724
    iget-object v2, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->configurations:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/connect/configuration/ConnectProperty;

    .line 726
    .local v1, prop:Lcom/nuance/swype/connect/configuration/ConnectProperty;
    if-eqz v1, :cond_0

    .line 728
    :try_start_0
    invoke-virtual {v1, p2}, Lcom/nuance/swype/connect/configuration/ConnectProperty;->setServerValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    :cond_0
    :goto_0
    return-void

    .line 729
    :catch_0
    move-exception v0

    .line 730
    .local v0, ex:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error overriding configration value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public overrideFromServer(Ljava/lang/String;Z)V
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 748
    iget-object v2, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->configurations:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/connect/configuration/ConnectProperty;

    .line 750
    .local v1, prop:Lcom/nuance/swype/connect/configuration/ConnectProperty;
    if-eqz v1, :cond_0

    .line 752
    :try_start_0
    invoke-virtual {v1, p2}, Lcom/nuance/swype/connect/configuration/ConnectProperty;->setServerValue(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 757
    :cond_0
    :goto_0
    return-void

    .line 753
    :catch_0
    move-exception v0

    .line 754
    .local v0, ex:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error overriding configration value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public overrideValues(Ljava/util/Map;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 765
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 766
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 768
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public removeConfigurationListener(Ljava/lang/String;Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;)V
    .locals 2
    .parameter "property"
    .parameter "listener"

    .prologue
    .line 788
    iget-object v1, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->configurations:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/configuration/ConnectProperty;

    .line 789
    .local v0, prop:Lcom/nuance/swype/connect/configuration/ConnectProperty;
    if-eqz v0, :cond_0

    .line 790
    invoke-virtual {v0, p2}, Lcom/nuance/swype/connect/configuration/ConnectProperty;->removeListener(Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;)V

    .line 792
    :cond_0
    return-void
.end method

.method public setConfigurationListener(Ljava/lang/String;Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;)V
    .locals 1
    .parameter "property"
    .parameter "listener"

    .prologue
    .line 771
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->setConfigurationListener(Ljava/lang/String;Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;Z)V

    .line 772
    return-void
.end method

.method public setConfigurationListener(Ljava/lang/String;Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;Z)V
    .locals 3
    .parameter "property"
    .parameter "listener"
    .parameter "sendNow"

    .prologue
    .line 776
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setConfigurationListener("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 777
    iget-object v1, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->configurations:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/configuration/ConnectProperty;

    .line 778
    .local v0, prop:Lcom/nuance/swype/connect/configuration/ConnectProperty;
    if-eqz v0, :cond_0

    .line 779
    invoke-virtual {v0, p2}, Lcom/nuance/swype/connect/configuration/ConnectProperty;->addListener(Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;)V

    .line 781
    if-eqz p3, :cond_0

    .line 782
    invoke-virtual {v0, p2}, Lcom/nuance/swype/connect/configuration/ConnectProperty;->sendValue(Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;)V

    .line 785
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 571
    .local v0, buf:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->configurations:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 572
    .local v2, key:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->configurations:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/connect/configuration/ConnectProperty;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/configuration/ConnectProperty;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 574
    .end local v2           #key:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public updateFromString(Ljava/lang/String;)Z
    .locals 8
    .parameter "configSettings"

    .prologue
    .line 318
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->createFromString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 319
    .local v5, propertyList:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v5, :cond_2

    invoke-virtual {p0, v5}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->isValidConfigurationProperties(Ljava/util/Map;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 320
    iget-object v6, p0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->configurations:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 321
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/connect/configuration/ConnectProperty;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/connect/configuration/ConnectProperty;

    .line 322
    .local v3, prop:Lcom/nuance/swype/connect/configuration/ConnectProperty;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 324
    .local v4, property:Ljava/lang/String;
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 326
    :try_start_0
    invoke-virtual {v3}, Lcom/nuance/swype/connect/configuration/ConnectProperty;->getType()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 331
    :pswitch_0
    invoke-virtual {v3, v4}, Lcom/nuance/swype/connect/configuration/ConnectProperty;->setConfigValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, e:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping property: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 328
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/nuance/swype/connect/configuration/ConnectProperty;->setConfigValue(I)V

    goto :goto_0

    .line 334
    :pswitch_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/nuance/swype/connect/configuration/ConnectProperty;->setConfigValue(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 343
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/connect/configuration/ConnectProperty;>;"
    .end local v3           #prop:Lcom/nuance/swype/connect/configuration/ConnectProperty;
    .end local v4           #property:Ljava/lang/String;
    :cond_1
    const/4 v6, 0x1

    .line 345
    .end local v2           #i$:Ljava/util/Iterator;
    :goto_1
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 326
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
