.class public Lcom/nuance/swype/connect/security/ManagersConfiguration;
.super Ljava/lang/Object;
.source "ManagersConfiguration.java"


# static fields
.field private static final ASSET_DATA_FILES_FOLDER:Ljava/lang/String; = ""

.field private static final CONFIGURATION_FILE:Ljava/lang/String; = "managers.dat"

.field private static final CONFIGURATION_FILE_ON_APK:Ljava/lang/String; = "managers.dat"


# instance fields
.field private context:Landroid/content/Context;

.field private managers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Service;)V
    .locals 2
    .parameter "service"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/nuance/swype/connect/security/ManagersConfiguration;->context:Landroid/content/Context;

    .line 46
    invoke-virtual {p0}, Lcom/nuance/swype/connect/security/ManagersConfiguration;->getConfigurationDigest()[B

    move-result-object v0

    .line 47
    .local v0, digestInConfigFile:[B
    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/security/ManagersConfiguration;->createFromDigest([B)Ljava/util/ArrayList;

    move-result-object v1

    .line 49
    .local v1, managerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 50
    iput-object v1, p0, Lcom/nuance/swype/connect/security/ManagersConfiguration;->managers:Ljava/util/ArrayList;

    .line 53
    .end local v1           #managerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public createFromDigest([B)Ljava/util/ArrayList;
    .locals 2
    .parameter "digest"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    invoke-static {p1}, Lcom/nuance/swype/connect/util/EncryptUtils;->decrypt([B)[B

    move-result-object v0

    .line 127
    .local v0, message:[B
    if-eqz v0, :cond_0

    .line 128
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v1}, Lcom/nuance/swype/connect/security/ManagersConfiguration;->createFromString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 130
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public createFromString(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .parameter "rawText"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v3, newManagers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 106
    .local v0, bufReader:Ljava/io/BufferedReader;
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, line:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 115
    .end local v2           #line:Ljava/lang/String;
    .end local v3           #newManagers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-object v3

    .line 110
    .restart local v2       #line:Ljava/lang/String;
    .restart local v3       #newManagers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 114
    .end local v2           #line:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 115
    .local v1, ex:Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getAPKFileContents(Ljava/lang/String;)[B
    .locals 4
    .parameter "fullpath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v3, p0, Lcom/nuance/swype/connect/security/ManagersConfiguration;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 82
    .local v0, am:Landroid/content/res/AssetManager;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 83
    .local v1, is:Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v2, v3, [B

    .line 85
    .local v2, result:[B
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    .line 86
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v1           #is:Ljava/io/InputStream;
    .end local v2           #result:[B
    :goto_0
    return-object v2

    .line 89
    :catch_0
    move-exception v3

    .line 91
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getConfigurationDigest()[B
    .locals 1

    .prologue
    .line 60
    :try_start_0
    const-string v0, "managers.dat"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/security/ManagersConfiguration;->getAPKFileContents(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    .line 61
    :catch_0
    move-exception v0

    .line 64
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getManagerList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/nuance/swype/connect/security/ManagersConfiguration;->managers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/nuance/swype/connect/security/ManagersConfiguration;->managers:Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
