.class public Lorg/eclipse/paho/client/mqttv3/internal/FileLock;
.super Ljava/lang/Object;
.source "FileLock.java"


# instance fields
.field private file:Ljava/io/RandomAccessFile;

.field private fileLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 8
    .parameter "lockFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v4, "java.nio.channels.FileLock"

    invoke-static {v4}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->isClassAvailable(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 31
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v4, p1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->file:Ljava/io/RandomAccessFile;

    .line 32
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getChannel"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 33
    .local v2, m:Ljava/lang/reflect/Method;
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->file:Ljava/io/RandomAccessFile;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 34
    .local v0, channel:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "tryLock"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 35
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->fileLock:Ljava/lang/Object;

    .line 36
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 45
    .end local v0           #channel:Ljava/lang/Object;
    .end local v2           #m:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v3

    .line 38
    .local v3, nsme:Ljava/lang/NoSuchMethodException;
    iput-object v7, p0, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->fileLock:Ljava/lang/Object;

    goto :goto_0

    .line 39
    .end local v3           #nsme:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 40
    .local v1, iae:Ljava/lang/IllegalArgumentException;
    iput-object v7, p0, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->fileLock:Ljava/lang/Object;

    goto :goto_0

    .line 41
    .end local v1           #iae:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 42
    .local v1, iae:Ljava/lang/IllegalAccessException;
    iput-object v7, p0, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->fileLock:Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public release()V
    .locals 4

    .prologue
    .line 52
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->fileLock:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->fileLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "release"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 54
    .local v0, m:Ljava/lang/reflect/Method;
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->fileLock:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 59
    .end local v0           #m:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->file:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_1

    .line 61
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 65
    :cond_1
    :goto_1
    return-void

    .line 62
    :catch_0
    move-exception v1

    goto :goto_1

    .line 56
    :catch_1
    move-exception v1

    goto :goto_0
.end method
