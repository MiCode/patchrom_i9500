.class public Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;
.super Ljava/lang/Object;
.source "TraceFileDestination.java"

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceDestination;


# instance fields
.field private buffer:Ljava/io/ByteArrayOutputStream;

.field private currentFileSize:I

.field private dos:Ljava/io/DataOutputStream;

.field private enabled:Z

.field private fileCount:I

.field private fileIndex:I

.field private maxFileSize:I

.field private out:Ljava/io/FileOutputStream;

.field private traceDirectory:Ljava/io/File;

.field private traceProperties:Ljava/util/Properties;

.field private tracePropertiesFile:Ljava/io/File;

.field private tracePropertiesUpdate:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->enabled:Z

    .line 36
    iput v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->fileIndex:I

    .line 37
    iput v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->currentFileSize:I

    .line 40
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->tracePropertiesUpdate:J

    .line 61
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->traceProperties:Ljava/util/Properties;

    .line 63
    const-string v1, "org.eclipse.paho.client.mqttv3.trace"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, tracePropertiesFilename:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 65
    new-instance v1, Ljava/io/File;

    const-string v2, "user.dir"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mqtt-trace.properties"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->tracePropertiesFile:Ljava/io/File;

    .line 69
    :goto_0
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->updateTraceProperties()Z

    .line 70
    return-void

    .line 67
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->tracePropertiesFile:Ljava/io/File;

    goto :goto_0
.end method

.method private updateTraceProperties()Z
    .locals 10

    .prologue
    const/4 v3, 0x1

    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    .line 82
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->tracePropertiesFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 85
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->tracePropertiesFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iget-wide v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->tracePropertiesUpdate:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 89
    :try_start_0
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->traceProperties:Ljava/util/Properties;

    new-instance v5, Ljava/io/FileInputStream;

    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->tracePropertiesFile:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 90
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->tracePropertiesFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->tracePropertiesUpdate:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->traceProperties:Ljava/util/Properties;

    const-string v5, "org.eclipse.paho.client.mqttv3.trace.outputName"

    const-string v6, "user.dir"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, directory:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->traceDirectory:Ljava/io/File;

    .line 109
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->traceDirectory:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 110
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->traceProperties:Ljava/util/Properties;

    invoke-virtual {v3}, Ljava/util/Properties;->clear()V

    .line 111
    iput-wide v8, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->tracePropertiesUpdate:J

    .line 112
    iput-boolean v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->enabled:Z

    .line 146
    .end local v0           #directory:Ljava/lang/String;
    :goto_0
    return v2

    .line 93
    :catch_0
    move-exception v1

    .line 94
    .local v1, e:Ljava/lang/Exception;
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->traceProperties:Ljava/util/Properties;

    invoke-virtual {v3}, Ljava/util/Properties;->clear()V

    .line 95
    iput-wide v8, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->tracePropertiesUpdate:J

    .line 96
    iput-boolean v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->enabled:Z

    goto :goto_0

    .line 116
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #directory:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->traceProperties:Ljava/util/Properties;

    const-string v5, "org.eclipse.paho.client.mqttv3.trace.count"

    const-string v6, "1"

    invoke-virtual {v4, v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->fileCount:I

    .line 117
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->traceProperties:Ljava/util/Properties;

    const-string v5, "org.eclipse.paho.client.mqttv3.trace.limit"

    const-string v6, "5000000"

    invoke-virtual {v4, v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->maxFileSize:I

    .line 120
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->initialiseFile()V

    .line 123
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->out:Ljava/io/FileOutputStream;

    if-nez v4, :cond_1

    .line 124
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->traceProperties:Ljava/util/Properties;

    invoke-virtual {v3}, Ljava/util/Properties;->clear()V

    .line 125
    iput-wide v8, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->tracePropertiesUpdate:J

    .line 126
    iput-boolean v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->enabled:Z

    goto :goto_0

    .line 130
    :cond_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->buffer:Ljava/io/ByteArrayOutputStream;

    .line 131
    new-instance v2, Ljava/io/DataOutputStream;

    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->dos:Ljava/io/DataOutputStream;

    .line 132
    iput-boolean v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->enabled:Z

    move v2, v3

    .line 133
    goto :goto_0

    .line 138
    .end local v0           #directory:Ljava/lang/String;
    :cond_2
    iget-boolean v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->enabled:Z

    goto :goto_0

    .line 143
    :cond_3
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->traceProperties:Ljava/util/Properties;

    invoke-virtual {v3}, Ljava/util/Properties;->clear()V

    .line 144
    iput-wide v8, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->tracePropertiesUpdate:J

    .line 145
    iput-boolean v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->enabled:Z

    goto :goto_0
.end method


# virtual methods
.method public initialiseFile()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 156
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->out:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_0

    .line 158
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->out:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 161
    :goto_0
    iput-object v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->out:Ljava/io/FileOutputStream;

    .line 163
    :cond_0
    iput v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->currentFileSize:I

    .line 164
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->traceDirectory:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mqtt-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->fileIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".trc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 165
    .local v1, traceFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 169
    :cond_1
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->out:Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 175
    :goto_1
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, e:Ljava/io/FileNotFoundException;
    iput-boolean v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->enabled:Z

    .line 172
    iput-object v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->out:Ljava/io/FileOutputStream;

    goto :goto_1

    .line 159
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .end local v1           #traceFile:Ljava/io/File;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public isEnabled(Ljava/lang/String;)Z
    .locals 4
    .parameter "resource"

    .prologue
    .line 151
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->enabled:Z

    if-eqz v0, :cond_1

    const-string v0, "on"

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->traceProperties:Ljava/util/Properties;

    const-string v2, "org.eclipse.paho.client.mqttv3.trace.client.*.status"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "on"

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->traceProperties:Ljava/util/Properties;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "org.eclipse.paho.client.mqttv3.trace.client."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized write(Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;)V
    .locals 7
    .parameter "point"

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->dos:Ljava/io/DataOutputStream;

    iget-short v5, p1, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;->source:S

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 179
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->dos:Ljava/io/DataOutputStream;

    iget-wide v5, p1, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;->timestamp:J

    invoke-virtual {v4, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 180
    iget-byte v2, p1, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;->type:B

    .line 181
    .local v2, meta:B
    iget-object v4, p1, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;->inserts:[Ljava/lang/Object;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;->inserts:[Ljava/lang/Object;

    array-length v4, v4

    if-lez v4, :cond_0

    .line 182
    or-int/lit8 v4, v2, 0x20

    int-to-byte v2, v4

    .line 184
    :cond_0
    iget-object v4, p1, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;->throwable:Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    .line 185
    or-int/lit8 v4, v2, 0x40

    int-to-byte v2, v4

    .line 187
    :cond_1
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 188
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->dos:Ljava/io/DataOutputStream;

    iget-short v5, p1, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;->id:S

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 189
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->dos:Ljava/io/DataOutputStream;

    iget-object v5, p1, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;->threadName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 190
    iget-object v4, p1, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;->inserts:[Ljava/lang/Object;

    if-eqz v4, :cond_3

    iget-object v4, p1, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;->inserts:[Ljava/lang/Object;

    array-length v4, v4

    if-lez v4, :cond_3

    .line 191
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->dos:Ljava/io/DataOutputStream;

    iget-object v5, p1, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;->inserts:[Ljava/lang/Object;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 192
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p1, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;->inserts:[Ljava/lang/Object;

    array-length v4, v4

    if-ge v1, v4, :cond_3

    .line 193
    iget-object v4, p1, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;->inserts:[Ljava/lang/Object;

    aget-object v4, v4, v1

    if-eqz v4, :cond_2

    .line 194
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->dos:Ljava/io/DataOutputStream;

    iget-object v5, p1, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;->inserts:[Ljava/lang/Object;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 192
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    :cond_2
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->dos:Ljava/io/DataOutputStream;

    const-string v5, "null"

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 223
    .end local v1           #i:I
    .end local v2           #meta:B
    :catch_0
    move-exception v0

    .line 224
    .local v0, e:Ljava/lang/Exception;
    const/4 v4, 0x0

    :try_start_1
    iput-boolean v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->enabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    .end local v0           #e:Ljava/lang/Exception;
    :goto_2
    monitor-exit p0

    return-void

    .line 201
    .restart local v2       #meta:B
    :cond_3
    :try_start_2
    iget-object v4, p1, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;->throwable:Ljava/lang/Throwable;

    if-eqz v4, :cond_4

    .line 202
    iget-object v4, p1, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;->throwable:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 203
    .local v3, stack:[Ljava/lang/StackTraceElement;
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->dos:Ljava/io/DataOutputStream;

    array-length v5, v3

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 204
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->dos:Ljava/io/DataOutputStream;

    iget-object v5, p1, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;->throwable:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 205
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    array-length v4, v3

    if-ge v1, v4, :cond_4

    .line 206
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->dos:Ljava/io/DataOutputStream;

    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 209
    .end local v1           #i:I
    .end local v3           #stack:[Ljava/lang/StackTraceElement;
    :cond_4
    iget v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->fileCount:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_6

    iget v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->currentFileSize:I

    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->maxFileSize:I

    if-le v4, v5, :cond_6

    .line 211
    iget v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->fileIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->fileIndex:I

    .line 212
    iget v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->fileIndex:I

    iget v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->fileCount:I

    if-ne v4, v5, :cond_5

    .line 213
    const/4 v4, 0x0

    iput v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->fileIndex:I

    .line 215
    :cond_5
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->initialiseFile()V

    .line 217
    :cond_6
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->out:Ljava/io/FileOutputStream;

    if-eqz v4, :cond_7

    .line 218
    iget v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->currentFileSize:I

    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->currentFileSize:I

    .line 219
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->buffer:Ljava/io/ByteArrayOutputStream;

    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->out:Ljava/io/FileOutputStream;

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 220
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->out:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 222
    :cond_7
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 178
    .end local v2           #meta:B
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
