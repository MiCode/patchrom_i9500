.class public Lcom/sec/knox/container/EnterpriseContainerPasswordService;
.super Ljava/lang/Object;
.source "EnterpriseContainerPasswordService.java"

# interfaces
.implements Lcom/sec/knox/container/EnterpriseContainerConstants;


# static fields
.field private static final ALPHAS:Ljava/lang/String; = "abcdefghijklmnopqrstuvwxyz"

.field private static final CONTAINER_LOCK_PASSWORD_FILE:Ljava/lang/String; = "containerpassword"

.field private static final CONTAINER_PASSWORD_SALT_KEY:Ljava/lang/String; = "container.password_salt"

.field private static final DAY_IN_MILIS:J = 0x5265c00L

.field private static final DAY_IN_MINUTES:J = 0x5a0L

.field private static final DEFAUL_MAXIMUM_TIME_TO_LOCK:J = 0x1b7740L

.field private static final DIGIT_CHARS:Ljava/lang/String; = "\\d(?=\\d{1,})"

.field private static final EXPIRATION_GRACE_PERIOD_MS:J = 0x19bfcc00L

.field private static final INVALID_CONTAINER_ID:I = -0x1

.field private static final MAX_CONTAINER_NUMBER:I = 0x3

.field private static final MS_PER_DAY:J = 0x5265c00L

.field private static final NUMBERS:Ljava/lang/String; = "0123456789"

.field private static ORIGINAL_PASSWORD_HASH_SIZE:I = 0x0

.field private static final PASSWORD_MAXIMUM_LENGTH:I = 0x10

.field private static final PASSWORD_MINIMUM_LENGTH:I = 0x6

.field private static final PASSWORD_MINIMUM_LETTERS:I = 0x1

.field private static final PASSWORD_MINIMUM_NUMERICS:I = 0x1

.field private static final REQUEST_EXPIRE_PASSWORD:I = 0x15c3

.field private static final REQUEST_PASSWORD_TIMEOUT:I = 0x15c4

.field private static final REVERSE_ALPHAS:Ljava/lang/String; = "zyxwvutsrqponmlkjihgfedcba"

.field private static final REVERSE_NUMBERS:Ljava/lang/String; = "9876543210"

.field private static final SECOND_IN_MILIS:J = 0x3e8L

.field private static TAG:Ljava/lang/String; = null

.field private static final THRESHOLD_OF_LOOP_CHAR:I = 0x3

.field private static final THRESHOLD_OF_SEQUENTIAL_CHAR:I = 0x4

.field private static final WORD_CHARS:Ljava/lang/String; = "\\w(?=\\w{1,})"

.field private static containerPasswordFilePath:Ljava/lang/String;

.field private static mEnterpriseContainerPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mECS:Lcom/sec/knox/container/EnterpriseContainerService;

.field private mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

.field private mKEDM:Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

.field private mStateManager:Lcom/sec/knox/container/manager/StateManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    const-string v0, "EnterpriseContainerPasswordService"

    sput-object v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    .line 134
    sput-object v1, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEnterpriseContainerPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    .line 136
    sput-object v1, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->containerPasswordFilePath:Ljava/lang/String;

    .line 139
    const/16 v0, 0x48

    sput v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->ORIGINAL_PASSWORD_HASH_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    .line 133
    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 141
    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContentResolver:Landroid/content/ContentResolver;

    .line 142
    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mKEDM:Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    .line 143
    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    .line 158
    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    .line 159
    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mECS:Lcom/sec/knox/container/EnterpriseContainerService;

    .line 182
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContentResolver:Landroid/content/ContentResolver;

    .line 185
    const-string v0, "/data/system/container/containerpassword"

    sput-object v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->containerPasswordFilePath:Ljava/lang/String;

    .line 186
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mKEDM:Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    .line 187
    new-instance v0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    .line 188
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/manager/StateManager;)V
    .locals 0
    .parameter "context"
    .parameter "service"
    .parameter "sManager"

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;-><init>(Landroid/content/Context;)V

    .line 200
    iput-object p3, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    .line 201
    iput-object p2, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mECS:Lcom/sec/knox/container/EnterpriseContainerService;

    .line 202
    return-void
.end method

.method private computeLevenshteinDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 9
    .parameter "str1"
    .parameter "str2"

    .prologue
    const/4 v4, 0x0

    .line 1464
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    filled-new-array {v3, v5}, [I

    move-result-object v3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 1466
    .local v0, distance:[[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt v1, v3, :cond_0

    .line 1467
    aget-object v3, v0, v1

    aput v1, v3, v4

    .line 1466
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1468
    :cond_0
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt v2, v3, :cond_1

    .line 1469
    aget-object v3, v0, v4

    aput v2, v3, v2

    .line 1468
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1471
    :cond_1
    const/4 v1, 0x1

    :goto_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt v1, v3, :cond_4

    .line 1472
    const/4 v2, 0x1

    :goto_3
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt v2, v3, :cond_3

    .line 1473
    aget-object v5, v0, v1

    add-int/lit8 v3, v1, -0x1

    aget-object v3, v0, v3

    aget v3, v3, v2

    add-int/lit8 v3, v3, 0x1

    aget-object v6, v0, v1

    add-int/lit8 v7, v2, -0x1

    aget v6, v6, v7

    add-int/lit8 v6, v6, 0x1

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/lit8 v3, v1, -0x1

    aget-object v3, v0, v3

    add-int/lit8 v7, v2, -0x1

    aget v7, v3, v7

    add-int/lit8 v3, v1, -0x1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v8, v2, -0x1

    invoke-interface {p2, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-ne v3, v8, :cond_2

    move v3, v4

    :goto_4
    add-int/2addr v3, v7

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aput v3, v5, v2

    .line 1472
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1473
    :cond_2
    const/4 v3, 0x1

    goto :goto_4

    .line 1471
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1477
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    aget-object v3, v0, v3

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    aget v3, v3, v4

    return v3
.end method

.method private containsForbiddenStringDistance(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "containerId"
    .parameter "pwd"
    .parameter "storedPwd"

    .prologue
    const/4 v1, 0x0

    .line 1435
    if-nez p3, :cond_1

    .line 1447
    :cond_0
    :goto_0
    return v1

    .line 1438
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getKnoxPasswordPolicy(I)Lcom/sec/enterprise/knox/ContainerPasswordPolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/ContainerPasswordPolicy;->getMinimumCharacterChangeLength()I

    move-result v0

    .line 1439
    .local v0, minDistance:I
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "containsForbiddenStringDistance() minDistance= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1440
    if-gtz v0, :cond_2

    .line 1441
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v3, "Set Minimum change Length is false-Since if its not set,we return true for time bieng"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1447
    :cond_2
    invoke-direct {p0, p3, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->computeLevenshteinDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v2

    if-ge v2, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private findAdmin(Landroid/content/ComponentName;)Landroid/app/admin/DeviceAdminInfo;
    .locals 7
    .parameter "adminName"

    .prologue
    const/4 v5, 0x0

    .line 610
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 611
    .local v2, resolveIntent:Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 612
    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 614
    .local v1, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 615
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown admin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 618
    :cond_1
    :try_start_0
    new-instance v4, Landroid/app/admin/DeviceAdminInfo;

    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4, v6, v3}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v4

    .line 624
    :goto_0
    return-object v3

    .line 619
    :catch_0
    move-exception v0

    .line 620
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v3, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad device admin requested: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v5

    .line 621
    goto :goto_0

    .line 622
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 623
    .local v0, e:Ljava/io/IOException;
    sget-object v3, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad device admin requested: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v5

    .line 624
    goto :goto_0
.end method

.method private getCurrentPasswordHash(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 10
    .parameter "file"
    .parameter "permission"

    .prologue
    const/4 v6, 0x0

    .line 1216
    const/4 v3, 0x0

    .line 1218
    .local v3, raf:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    invoke-direct {v4, p1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 1219
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .local v4, raf:Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    long-to-int v2, v7

    .line 1220
    .local v2, length:I
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "verifyStoredData() Length old the RandomAccessFile: length"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    new-array v5, v2, [B

    .line 1224
    .local v5, storedPassword:[B
    const/4 v7, 0x0

    array-length v8, v5

    invoke-virtual {v4, v5, v7, v8}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    move-result v1

    .line 1225
    .local v1, got:I
    if-gtz v1, :cond_1

    .line 1240
    if-eqz v4, :cond_0

    .line 1241
    :try_start_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    move-object v5, v6

    .line 1247
    .end local v1           #got:I
    .end local v2           #length:I
    .end local v5           #storedPassword:[B
    :goto_1
    return-object v5

    .line 1243
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v1       #got:I
    .restart local v2       #length:I
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    .restart local v5       #storedPassword:[B
    :catch_0
    move-exception v0

    .line 1244
    .local v0, ex:Ljava/io/IOException;
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v8, "Unable to close hash data stream"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1240
    .end local v0           #ex:Ljava/io/IOException;
    :cond_1
    if-eqz v4, :cond_2

    .line 1241
    :try_start_3
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_2
    move-object v3, v4

    .line 1245
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_1

    .line 1243
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v0

    .line 1244
    .restart local v0       #ex:Ljava/io/IOException;
    sget-object v6, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v7, "Unable to close hash data stream"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1230
    .end local v0           #ex:Ljava/io/IOException;
    .end local v1           #got:I
    .end local v2           #length:I
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .end local v5           #storedPassword:[B
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v0

    .line 1231
    .local v0, ex:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_4
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v8, "File Not Found. Unable to verify the data"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1240
    if-eqz v3, :cond_3

    .line 1241
    :try_start_5
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .end local v0           #ex:Ljava/io/FileNotFoundException;
    :cond_3
    :goto_4
    move-object v5, v6

    .line 1247
    goto :goto_1

    .line 1243
    .restart local v0       #ex:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v0

    .line 1244
    .local v0, ex:Ljava/io/IOException;
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v8, "Unable to close hash data stream"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1233
    .end local v0           #ex:Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 1234
    .restart local v0       #ex:Ljava/io/IOException;
    :goto_5
    :try_start_6
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v8, "Unable to verify the data"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1240
    if-eqz v3, :cond_3

    .line 1241
    :try_start_7
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_4

    .line 1243
    :catch_5
    move-exception v0

    .line 1244
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v8, "Unable to close hash data stream"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1236
    .end local v0           #ex:Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 1237
    .local v0, ex:Ljava/lang/Exception;
    :goto_6
    :try_start_8
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1240
    if-eqz v3, :cond_3

    .line 1241
    :try_start_9
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_4

    .line 1243
    :catch_7
    move-exception v0

    .line 1244
    .local v0, ex:Ljava/io/IOException;
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v8, "Unable to close hash data stream"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1239
    .end local v0           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 1240
    :goto_7
    if-eqz v3, :cond_4

    .line 1241
    :try_start_a
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 1245
    :cond_4
    :goto_8
    throw v6

    .line 1243
    :catch_8
    move-exception v0

    .line 1244
    .restart local v0       #ex:Ljava/io/IOException;
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v8, "Unable to close hash data stream"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 1239
    .end local v0           #ex:Ljava/io/IOException;
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_7

    .line 1236
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_9
    move-exception v0

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_6

    .line 1233
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_a
    move-exception v0

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_5

    .line 1230
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_b
    move-exception v0

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_3
.end method

.method private getDPM()Landroid/app/admin/DevicePolicyManager;
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mDpm:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mDpm:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method private getLong(Ljava/lang/String;J)J
    .locals 2
    .parameter "secureSettingKey"
    .parameter "def"

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2, p3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getSalt()Ljava/lang/String;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 1327
    const-string v3, "container.password_salt"

    invoke-direct {p0, v3, v4, v5}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 1328
    .local v1, salt:J
    cmp-long v3, v1, v4

    if-nez v3, :cond_0

    .line 1330
    :try_start_0
    const-string v3, "SHA1PRNG"

    invoke-static {v3}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    .line 1331
    const-string v3, "container.password_salt"

    invoke-direct {p0, v3, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setLong(Ljava/lang/String;J)V

    .line 1332
    sget-object v3, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v4, "Initialized lock password salt"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1339
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1333
    :catch_0
    move-exception v0

    .line 1336
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Couldn\'t get SecureRandom number"

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private passwordToHash(Ljava/lang/String;)[B
    .locals 14
    .parameter "password"

    .prologue
    .line 1277
    if-nez p1, :cond_0

    .line 1278
    const/4 v3, 0x0

    .line 1313
    :goto_0
    return-object v3

    .line 1280
    :cond_0
    const/4 v0, 0x0

    .line 1281
    .local v0, algo:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1296
    .local v3, hashed:[B
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getSalt()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 1297
    .local v8, saltedPassword:[B
    const/4 v9, 0x0

    .line 1298
    .local v9, sha:[B
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 1299
    .local v5, md:Ljava/security/MessageDigest;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1300
    .local v6, s:J
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    const/16 v10, 0x400

    if-ge v4, v10, :cond_2

    .line 1301
    if-eqz v9, :cond_1

    .line 1302
    invoke-virtual {v5, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 1303
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/security/MessageDigest;->update([B)V

    .line 1304
    invoke-virtual {v5, v8}, Ljava/security/MessageDigest;->update([B)V

    .line 1305
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v9

    .line 1300
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1307
    :cond_2
    invoke-static {v9}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->toHex([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 1308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1309
    .local v1, e:J
    sget-object v10, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "passwordToHash time = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sub-long v12, v1, v6

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1310
    .end local v1           #e:J
    .end local v4           #i:I
    .end local v5           #md:Ljava/security/MessageDigest;
    .end local v6           #s:J
    .end local v8           #saltedPassword:[B
    .end local v9           #sha:[B
    :catch_0
    move-exception v1

    .line 1311
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    sget-object v10, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to encode string because of missing algorithm: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private passwordToHashOriginal(Ljava/lang/String;)[B
    .locals 9
    .parameter "password"

    .prologue
    .line 1259
    if-nez p1, :cond_0

    .line 1260
    const/4 v2, 0x0

    .line 1272
    :goto_0
    return-object v2

    .line 1262
    :cond_0
    const/4 v0, 0x0

    .line 1263
    .local v0, algo:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1265
    .local v2, hashed:[B
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getSalt()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 1266
    .local v4, saltedPassword:[B
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    .line 1267
    .local v5, sha1:[B
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 1268
    .local v3, md5:[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1269
    .end local v3           #md5:[B
    .end local v4           #saltedPassword:[B
    .end local v5           #sha1:[B
    :catch_0
    move-exception v1

    .line 1270
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    sget-object v6, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to encode string because of missing algorithm: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removeContainerCredentialFiles(ILjava/lang/String;)V
    .locals 5
    .parameter "containerID"
    .parameter "filePath"

    .prologue
    .line 1344
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1345
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1346
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1347
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Removed Successfully"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1354
    .end local v1           #file:Ljava/io/File;
    :goto_0
    return-void

    .line 1349
    .restart local v1       #file:Ljava/io/File;
    :cond_0
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Does not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1351
    .end local v1           #file:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1352
    .local v0, ex:Ljava/lang/Exception;
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendAdminCommandLocked(ILandroid/app/admin/DeviceAdminInfo;Ljava/lang/String;)V
    .locals 4
    .parameter "containerId"
    .parameter "admin"
    .parameter "action"

    .prologue
    .line 659
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 660
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 661
    const-string v1, "android.app.action.ACTION_PASSWORD_EXPIRING"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 662
    const-string v1, "expiration"

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v2, p1}, Lcom/sec/knox/container/manager/StateManager;->getPasswordExpirationDate(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 664
    :cond_0
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 665
    return-void
.end method

.method private setActivePasswordState(IIIIIIIIIZIII)V
    .locals 14
    .parameter "containerId"
    .parameter "quality"
    .parameter "length"
    .parameter "uppercase"
    .parameter "lowercase"
    .parameter "letters"
    .parameter "numbers"
    .parameter "nonletter"
    .parameter "symbols"
    .parameter "simplePassword"
    .parameter "charSeqLength"
    .parameter "digitSeqLength"
    .parameter "charMaxOccurencesCount"

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    invoke-virtual/range {v0 .. v13}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setActivePasswordState(IIIIIIIIIZIII)V

    .line 1105
    return-void
.end method

.method private setLong(Ljava/lang/String;J)V
    .locals 1
    .parameter "secureSettingKey"
    .parameter "value"

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2, p3}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 1362
    return-void
.end method

.method private setOldPasswordToHistory(I[B)V
    .locals 2
    .parameter "containerId"
    .parameter "passwordHash"

    .prologue
    .line 1365
    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v1, "setOldPasswordToHistory()"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    if-nez p2, :cond_0

    .line 1367
    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v1, "setOldPasswordToHistory(): PasswordHash is null"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    :goto_0
    return-void

    .line 1370
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordHistory(ILandroid/content/ComponentName;)I

    move-result v0

    if-lez v0, :cond_1

    .line 1371
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setOldPasswordToHistory(I[B)V

    goto :goto_0

    .line 1373
    :cond_1
    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v1, "setOldPasswordToHistory(): Password History Length is Zero"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setPasswordStateInfoCache(IIIIIIIIIZIII)V
    .locals 2
    .parameter "containerId"
    .parameter "quality"
    .parameter "length"
    .parameter "uppercase"
    .parameter "lowercase"
    .parameter "letters"
    .parameter "numbers"
    .parameter "nonletter"
    .parameter "symbols"
    .parameter "passwordSimple"
    .parameter "charSeqLength"
    .parameter "digitSeqLength"
    .parameter "charMaxOccurencesCount"

    .prologue
    .line 1711
    new-instance v0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;

    invoke-direct {v0}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;-><init>()V

    .line 1712
    .local v0, stateInfo:Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;
    if-eqz v0, :cond_0

    .line 1713
    invoke-virtual {v0, p1}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setContainerId(I)V

    .line 1714
    invoke-virtual {v0, p2}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordQuality(I)V

    .line 1715
    invoke-virtual {v0, p3}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordLength(I)V

    .line 1716
    invoke-virtual {v0, p4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordUppercase(I)V

    .line 1717
    invoke-virtual {v0, p5}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordLowercase(I)V

    .line 1718
    invoke-virtual {v0, p6}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordLetters(I)V

    .line 1719
    invoke-virtual {v0, p7}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordNumeric(I)V

    .line 1720
    invoke-virtual {v0, p8}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordNonLetter(I)V

    .line 1721
    invoke-virtual {v0, p9}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordSymbols(I)V

    .line 1722
    invoke-virtual {v0, p10}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordSimple(Z)V

    .line 1723
    invoke-virtual {v0, p11}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setCharSeqLength(I)V

    .line 1724
    invoke-virtual {v0, p12}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setDigitSeqLength(I)V

    .line 1725
    invoke-virtual {v0, p13}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setCharMaxOccurrencesCount(I)V

    .line 1726
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v1, v0}, Lcom/sec/knox/container/manager/StateManager;->updatePasswordStateInfoCache(Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;)Z

    .line 1728
    :cond_0
    return-void
.end method

.method private declared-synchronized setPasswordStatusInActive(Landroid/content/Context;I)V
    .locals 4
    .parameter "mContext"
    .parameter "containerId"

    .prologue
    .line 255
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    if-eqz v1, :cond_0

    .line 256
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v1, p2}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v1

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ACTIVE:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v2}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 258
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v2, p2}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v2

    sget-object v3, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_VERIFY_PWD_TIMEOUT:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v1, p2, v2, v3}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    .line 261
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v1, p2}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v0

    .line 262
    .local v0, state:Lcom/sec/knox/container/constants/CSState;
    sget-object v1, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New State :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    .end local v0           #state:Lcom/sec/knox/container/constants/CSState;
    :cond_0
    :goto_0
    sget-object v1, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v2, "Cache or Database instances are Null"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    monitor-exit p0

    return-void

    .line 264
    :cond_1
    :try_start_1
    sget-object v1, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timer Task password status is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v3, p2}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 255
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private storeHashofData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "file"
    .parameter "permission"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1130
    const/4 v5, 0x0

    .line 1131
    .local v5, result:Z
    const/4 v3, 0x0

    .line 1133
    .local v3, raf:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    invoke-direct {v4, p1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 1134
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .local v4, raf:Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-direct {p0, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v2

    .line 1139
    .local v2, hash:[B
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    sget v8, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->ORIGINAL_PASSWORD_HASH_SIZE:I

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 1140
    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 1141
    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1143
    :cond_0
    const/4 v6, 0x0

    array-length v7, v2

    invoke-virtual {v4, v2, v6, v7}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 1144
    const/4 v5, 0x1

    .line 1145
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 1146
    .local v0, c:Ljava/nio/channels/FileChannel;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    .line 1160
    if-eqz v4, :cond_3

    .line 1161
    :try_start_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1162
    const/4 v3, 0x0

    .line 1168
    .end local v0           #c:Ljava/nio/channels/FileChannel;
    .end local v2           #hash:[B
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    :cond_1
    :goto_0
    return v5

    .line 1164
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v0       #c:Ljava/nio/channels/FileChannel;
    .restart local v2       #hash:[B
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v1

    .line 1165
    .local v1, ex:Ljava/io/IOException;
    sget-object v6, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v7, "Unable to close store hash data stream"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    .line 1167
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 1147
    .end local v0           #c:Ljava/nio/channels/FileChannel;
    .end local v1           #ex:Ljava/io/IOException;
    .end local v2           #hash:[B
    :catch_1
    move-exception v1

    .line 1150
    .local v1, ex:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    sget-object v6, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v7, "File Not Found. Unable to store the data"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    sget-object v6, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1160
    if-eqz v3, :cond_1

    .line 1161
    :try_start_4
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1162
    const/4 v3, 0x0

    goto :goto_0

    .line 1164
    :catch_2
    move-exception v1

    .line 1165
    .local v1, ex:Ljava/io/IOException;
    sget-object v6, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v7, "Unable to close store hash data stream"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1152
    .end local v1           #ex:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 1154
    .restart local v1       #ex:Ljava/io/IOException;
    :goto_2
    :try_start_5
    sget-object v6, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v7, "Unable to store the data"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    sget-object v6, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1160
    if-eqz v3, :cond_1

    .line 1161
    :try_start_6
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 1162
    const/4 v3, 0x0

    goto :goto_0

    .line 1164
    :catch_4
    move-exception v1

    .line 1165
    sget-object v6, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v7, "Unable to close store hash data stream"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1156
    .end local v1           #ex:Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 1157
    .local v1, ex:Ljava/lang/Exception;
    :goto_3
    :try_start_7
    sget-object v6, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1160
    if-eqz v3, :cond_1

    .line 1161
    :try_start_8
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 1162
    const/4 v3, 0x0

    goto :goto_0

    .line 1164
    :catch_6
    move-exception v1

    .line 1165
    .local v1, ex:Ljava/io/IOException;
    sget-object v6, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v7, "Unable to close store hash data stream"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1159
    .end local v1           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 1160
    :goto_4
    if-eqz v3, :cond_2

    .line 1161
    :try_start_9
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 1162
    const/4 v3, 0x0

    .line 1166
    :cond_2
    :goto_5
    throw v6

    .line 1164
    :catch_7
    move-exception v1

    .line 1165
    .restart local v1       #ex:Ljava/io/IOException;
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v8, "Unable to close store hash data stream"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1159
    .end local v1           #ex:Ljava/io/IOException;
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_4

    .line 1156
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_8
    move-exception v1

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 1152
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_9
    move-exception v1

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_2

    .line 1147
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_a
    move-exception v1

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_1

    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v0       #c:Ljava/nio/channels/FileChannel;
    .restart local v2       #hash:[B
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :cond_3
    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_0
.end method

.method private storePassword(ILjava/lang/String;)V
    .locals 33
    .parameter "containerID"
    .parameter "password"

    .prologue
    .line 1037
    if-nez p2, :cond_0

    .line 1038
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v3, "storePassword() Password is Null"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    :goto_0
    return-void

    .line 1043
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->containerPasswordFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "rw"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v3, v1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->storeHashofData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1045
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v3, "Hash of Password stored"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1052
    :goto_1
    invoke-static/range {p2 .. p2}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v4

    .line 1053
    .local v4, realQuality:I
    if-eqz v4, :cond_8

    .line 1054
    const/4 v8, 0x0

    .line 1055
    .local v8, letters:I
    const/4 v6, 0x0

    .line 1056
    .local v6, uppercase:I
    const/4 v7, 0x0

    .line 1057
    .local v7, lowercase:I
    const/4 v9, 0x0

    .line 1058
    .local v9, numbers:I
    const/4 v11, 0x0

    .line 1059
    .local v11, symbols:I
    const/4 v10, 0x0

    .line 1060
    .local v10, nonletter:I
    const/16 v32, 0x0

    .local v32, i:I
    :goto_2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    move/from16 v0, v32

    if-ge v0, v2, :cond_5

    .line 1061
    move-object/from16 v0, p2

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v30

    .line 1062
    .local v30, c:C
    const/16 v2, 0x41

    move/from16 v0, v30

    if-lt v0, v2, :cond_2

    const/16 v2, 0x5a

    move/from16 v0, v30

    if-gt v0, v2, :cond_2

    .line 1063
    add-int/lit8 v8, v8, 0x1

    .line 1064
    add-int/lit8 v6, v6, 0x1

    .line 1060
    :goto_3
    add-int/lit8 v32, v32, 0x1

    goto :goto_2

    .line 1047
    .end local v4           #realQuality:I
    .end local v6           #uppercase:I
    .end local v7           #lowercase:I
    .end local v8           #letters:I
    .end local v9           #numbers:I
    .end local v10           #nonletter:I
    .end local v11           #symbols:I
    .end local v30           #c:C
    .end local v32           #i:I
    :cond_1
    :try_start_1
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v3, "Failed to store the Hash of Password"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1049
    :catch_0
    move-exception v31

    .line 1050
    .local v31, ex:Ljava/lang/Exception;
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    invoke-static/range {v31 .. v31}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1065
    .end local v31           #ex:Ljava/lang/Exception;
    .restart local v4       #realQuality:I
    .restart local v6       #uppercase:I
    .restart local v7       #lowercase:I
    .restart local v8       #letters:I
    .restart local v9       #numbers:I
    .restart local v10       #nonletter:I
    .restart local v11       #symbols:I
    .restart local v30       #c:C
    .restart local v32       #i:I
    :cond_2
    const/16 v2, 0x61

    move/from16 v0, v30

    if-lt v0, v2, :cond_3

    const/16 v2, 0x7a

    move/from16 v0, v30

    if-gt v0, v2, :cond_3

    .line 1066
    add-int/lit8 v8, v8, 0x1

    .line 1067
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1068
    :cond_3
    const/16 v2, 0x30

    move/from16 v0, v30

    if-lt v0, v2, :cond_4

    const/16 v2, 0x39

    move/from16 v0, v30

    if-gt v0, v2, :cond_4

    .line 1069
    add-int/lit8 v9, v9, 0x1

    .line 1070
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1072
    :cond_4
    add-int/lit8 v11, v11, 0x1

    .line 1073
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1076
    .end local v30           #c:C
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->checkSequentialChars(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->checkRepeatingChars(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    const/4 v12, 0x1

    .line 1079
    .local v12, simplePassword:Z
    :goto_4
    const-string v2, "\\w(?=\\w{1,})"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getSequenceLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 1080
    .local v13, charSeqLength:I
    const-string v2, "\\d(?=\\d{1,})"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getSequenceLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 1081
    .local v14, digitSeqLength:I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getMaximumCharOccurrencesCount(Ljava/lang/String;)I

    move-result v15

    .line 1083
    .local v15, charMaxOccurencesCount:I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct/range {v2 .. v15}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setActivePasswordState(IIIIIIIIIZIII)V

    .line 1087
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct/range {v2 .. v15}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setPasswordStateInfoCache(IIIIIIIIIZIII)V

    goto/16 :goto_0

    .line 1076
    .end local v12           #simplePassword:Z
    .end local v13           #charSeqLength:I
    .end local v14           #digitSeqLength:I
    .end local v15           #charMaxOccurencesCount:I
    :cond_7
    const/4 v12, 0x0

    goto :goto_4

    .line 1092
    .end local v6           #uppercase:I
    .end local v7           #lowercase:I
    .end local v8           #letters:I
    .end local v9           #numbers:I
    .end local v10           #nonletter:I
    .end local v11           #symbols:I
    .end local v32           #i:I
    :cond_8
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v16, p0

    move/from16 v17, p1

    invoke-direct/range {v16 .. v29}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setActivePasswordState(IIIIIIIIIZIII)V

    .line 1094
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v16, p0

    move/from16 v17, p1

    invoke-direct/range {v16 .. v29}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setPasswordStateInfoCache(IIIIIIIIIZIII)V

    goto/16 :goto_0
.end method

.method private static toHex([B)Ljava/lang/String;
    .locals 6
    .parameter "ary"

    .prologue
    .line 1317
    const-string v0, "0123456789ABCDEF"

    .line 1318
    .local v0, hex:Ljava/lang/String;
    const-string v2, ""

    .line 1319
    .local v2, ret:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 1320
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v5, p0, v1

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1321
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v5, p0, v1

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1319
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1323
    :cond_0
    return-object v2
.end method

.method private verifyStoredData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "file"
    .parameter "permission"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1173
    const/4 v3, 0x0

    .line 1175
    .local v3, raf:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    invoke-direct {v4, p1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 1176
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .local v4, raf:Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    long-to-int v2, v7

    .line 1177
    .local v2, length:I
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "verifyStoredData() Length old the RandomAccessFile: length"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    new-array v5, v2, [B

    .line 1181
    .local v5, storedPassword:[B
    const/4 v7, 0x0

    array-length v8, v5

    invoke-virtual {v4, v5, v7, v8}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a

    move-result v1

    .line 1182
    .local v1, got:I
    if-gtz v1, :cond_2

    .line 1205
    if-eqz v4, :cond_0

    .line 1206
    :try_start_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v3, v4

    .line 1212
    .end local v1           #got:I
    .end local v2           #length:I
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .end local v5           #storedPassword:[B
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    :cond_1
    :goto_1
    return v6

    .line 1208
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v1       #got:I
    .restart local v2       #length:I
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    .restart local v5       #storedPassword:[B
    :catch_0
    move-exception v0

    .line 1209
    .local v0, ex:Ljava/io/IOException;
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v8, "Unable to close verify hash data stream"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1190
    .end local v0           #ex:Ljava/io/IOException;
    :cond_2
    :try_start_3
    sget v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->ORIGINAL_PASSWORD_HASH_SIZE:I

    if-ne v2, v7, :cond_4

    .line 1191
    invoke-direct {p0, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->passwordToHashOriginal(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v5, v7}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a

    move-result v6

    .line 1205
    if-eqz v4, :cond_3

    .line 1206
    :try_start_4
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    :goto_2
    move-object v3, v4

    .line 1210
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_1

    .line 1208
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v0

    .line 1209
    .restart local v0       #ex:Ljava/io/IOException;
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v8, "Unable to close verify hash data stream"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1193
    .end local v0           #ex:Ljava/io/IOException;
    :cond_4
    :try_start_5
    invoke-direct {p0, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v5, v7}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_a

    move-result v6

    .line 1205
    if-eqz v4, :cond_5

    .line 1206
    :try_start_6
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_5
    :goto_3
    move-object v3, v4

    .line 1210
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_1

    .line 1208
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v0

    .line 1209
    .restart local v0       #ex:Ljava/io/IOException;
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v8, "Unable to close verify hash data stream"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1195
    .end local v0           #ex:Ljava/io/IOException;
    .end local v1           #got:I
    .end local v2           #length:I
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .end local v5           #storedPassword:[B
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v0

    .line 1196
    .local v0, ex:Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_7
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v8, "File Not Found. Unable to verify the data"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1205
    if-eqz v3, :cond_1

    .line 1206
    :try_start_8
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_1

    .line 1208
    :catch_4
    move-exception v0

    .line 1209
    .local v0, ex:Ljava/io/IOException;
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v8, "Unable to close verify hash data stream"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1198
    .end local v0           #ex:Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 1199
    .restart local v0       #ex:Ljava/io/IOException;
    :goto_5
    :try_start_9
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v8, "Unable to verify the data"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1205
    if-eqz v3, :cond_1

    .line 1206
    :try_start_a
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_1

    .line 1208
    :catch_6
    move-exception v0

    .line 1209
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v8, "Unable to close verify hash data stream"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1201
    .end local v0           #ex:Ljava/io/IOException;
    :catch_7
    move-exception v0

    .line 1202
    .local v0, ex:Ljava/lang/Exception;
    :goto_6
    :try_start_b
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1205
    if-eqz v3, :cond_1

    .line 1206
    :try_start_c
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto/16 :goto_1

    .line 1208
    :catch_8
    move-exception v0

    .line 1209
    .local v0, ex:Ljava/io/IOException;
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v8, "Unable to close verify hash data stream"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1204
    .end local v0           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 1205
    :goto_7
    if-eqz v3, :cond_6

    .line 1206
    :try_start_d
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 1210
    :cond_6
    :goto_8
    throw v6

    .line 1208
    :catch_9
    move-exception v0

    .line 1209
    .restart local v0       #ex:Ljava/io/IOException;
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v8, "Unable to close verify hash data stream"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 1204
    .end local v0           #ex:Ljava/io/IOException;
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_7

    .line 1201
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_a
    move-exception v0

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_6

    .line 1198
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_b
    move-exception v0

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_5

    .line 1195
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_c
    move-exception v0

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_4
.end method


# virtual methods
.method public checkMaximumCharacterOccurrences(ILjava/lang/String;)Z
    .locals 4
    .parameter "containerId"
    .parameter "password"

    .prologue
    .line 1481
    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getKnoxPasswordPolicy(I)Lcom/sec/enterprise/knox/ContainerPasswordPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/ContainerPasswordPolicy;->getMaximumCharacterOccurences()I

    move-result v0

    .line 1482
    .local v0, maxOccurrence:I
    sget-object v1, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkMaximumCharacterOccurrences() maxOccurrence= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1483
    if-lez v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getMaximumCharOccurrencesCount(Ljava/lang/String;)I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 1484
    :cond_0
    const/4 v1, 0x0

    .line 1486
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public checkMaximumCharacterSequenceLength(ILjava/lang/String;)Z
    .locals 12
    .parameter "containerId"
    .parameter "password"

    .prologue
    .line 1510
    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getKnoxPasswordPolicy(I)Lcom/sec/enterprise/knox/ContainerPasswordPolicy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/enterprise/knox/ContainerPasswordPolicy;->getMaximumCharacterSequenceLength()I

    move-result v4

    .line 1511
    .local v4, maxLength:I
    sget-object v9, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkMaximumCharacterSequenceLength() maxLength= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    if-gtz v4, :cond_0

    .line 1513
    const/4 v9, 0x0

    .line 1535
    :goto_0
    return v9

    .line 1515
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\\w(?=\\w{"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",})"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 1516
    .local v5, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v5, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1517
    .local v3, match:Ljava/util/regex/Matcher;
    :cond_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1518
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    .line 1522
    .local v8, start:I
    invoke-virtual {p2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1523
    .local v0, c:C
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {p2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    sub-int v1, v9, v0

    .line 1524
    .local v1, charDiff:I
    if-nez v1, :cond_2

    const/4 v7, 0x0

    .line 1526
    .local v7, sequencePattern:I
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v9, v4, 0x1

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1527
    .local v6, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1528
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v4, :cond_4

    .line 1529
    add-int v9, v0, v7

    int-to-char v0, v9

    .line 1530
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1528
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1524
    .end local v2           #i:I
    .end local v6           #sb:Ljava/lang/StringBuilder;
    .end local v7           #sequencePattern:I
    :cond_2
    if-lez v1, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, -0x1

    goto :goto_1

    .line 1532
    .restart local v2       #i:I
    .restart local v6       #sb:Ljava/lang/StringBuilder;
    .restart local v7       #sequencePattern:I
    :cond_4
    add-int v9, v8, v4

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1533
    const/4 v9, 0x1

    goto :goto_0

    .line 1535
    .end local v0           #c:C
    .end local v1           #charDiff:I
    .end local v2           #i:I
    .end local v6           #sb:Ljava/lang/StringBuilder;
    .end local v7           #sequencePattern:I
    .end local v8           #start:I
    :cond_5
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public checkMaximumNumericSequenceLength(ILjava/lang/String;)Z
    .locals 12
    .parameter "containerId"
    .parameter "password"

    .prologue
    .line 1539
    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getKnoxPasswordPolicy(I)Lcom/sec/enterprise/knox/ContainerPasswordPolicy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/enterprise/knox/ContainerPasswordPolicy;->getMaximumNumericSequenceLength()I

    move-result v3

    .line 1540
    .local v3, length:I
    sget-object v9, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkMaximumNumericSequenceLength() length= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    if-gtz v3, :cond_0

    .line 1542
    const/4 v9, 0x0

    .line 1564
    :goto_0
    return v9

    .line 1544
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\\d(?=\\d{"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",})"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 1545
    .local v5, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v5, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 1546
    .local v4, match:Ljava/util/regex/Matcher;
    :cond_1
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1547
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    .line 1551
    .local v8, start:I
    invoke-virtual {p2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1552
    .local v0, c:C
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {p2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    sub-int v1, v9, v0

    .line 1553
    .local v1, charDiff:I
    if-nez v1, :cond_2

    const/4 v7, 0x0

    .line 1555
    .local v7, sequencePattern:I
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v9, v3, 0x1

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1556
    .local v6, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1557
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v3, :cond_4

    .line 1558
    add-int v9, v0, v7

    int-to-char v0, v9

    .line 1559
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1557
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1553
    .end local v2           #i:I
    .end local v6           #sb:Ljava/lang/StringBuilder;
    .end local v7           #sequencePattern:I
    :cond_2
    if-lez v1, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, -0x1

    goto :goto_1

    .line 1561
    .restart local v2       #i:I
    .restart local v6       #sb:Ljava/lang/StringBuilder;
    .restart local v7       #sequencePattern:I
    :cond_4
    add-int v9, v8, v3

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1562
    const/4 v9, 0x1

    goto :goto_0

    .line 1564
    .end local v0           #c:C
    .end local v1           #charDiff:I
    .end local v2           #i:I
    .end local v6           #sb:Ljava/lang/StringBuilder;
    .end local v7           #sequencePattern:I
    .end local v8           #start:I
    :cond_5
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public checkMinimumCharacterChangeLength(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "containerId"
    .parameter "newPassword"
    .parameter "oldPassword"

    .prologue
    .line 1455
    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v1, "checkMinimumCharacterChangeLength"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->containsForbiddenStringDistance(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public checkOldPasswordHistory(ILjava/lang/String;)Z
    .locals 4
    .parameter "containerId"
    .parameter "password"

    .prologue
    const/4 v1, 0x0

    .line 1378
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v3, "checkOldPasswordHistory()"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    if-nez p2, :cond_0

    .line 1380
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v3, "checkOldPasswordHistory(): Password is null"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    :goto_0
    return v1

    .line 1383
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordHistory(ILandroid/content/ComponentName;)I

    move-result v2

    if-lez v2, :cond_2

    .line 1384
    invoke-direct {p0, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v0

    .line 1385
    .local v0, pwdHash:[B
    if-eqz v0, :cond_1

    .line 1386
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v1, p1, v0}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->checkOldPasswordHistory(I[B)Z

    move-result v1

    goto :goto_0

    .line 1388
    :cond_1
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v3, "checkOldPasswordHistory(): passwordToHash is null"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1391
    .end local v0           #pwdHash:[B
    :cond_2
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v3, "checkOldPasswordHistory(): Password History Length is Zero"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public checkRepeatingChars(Ljava/lang/String;)Z
    .locals 7
    .parameter "password"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1630
    const/4 v2, 0x0

    .line 1632
    .local v2, loop:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v3, :cond_2

    .line 1633
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1634
    .local v0, beforeChar:C
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 1635
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v0, v5, :cond_0

    .line 1636
    add-int/lit8 v2, v2, 0x1

    .line 1639
    :goto_1
    const/4 v5, 0x3

    if-lt v2, v5, :cond_1

    .line 1640
    sget-object v4, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ChooseLockPassword has internal loop password : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1646
    .end local v0           #beforeChar:C
    .end local v1           #i:I
    :goto_2
    return v3

    .line 1638
    .restart local v0       #beforeChar:C
    .restart local v1       #i:I
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 1643
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1634
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #beforeChar:C
    .end local v1           #i:I
    :cond_2
    move v3, v4

    .line 1646
    goto :goto_2
.end method

.method public checkSequentialChars(Ljava/lang/String;)Z
    .locals 7
    .parameter "password"

    .prologue
    const/4 v4, 0x1

    .line 1607
    const-string v5, "0123456789"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v1, v5, -0x4

    .line 1608
    .local v1, maxLoop:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-gt v0, v1, :cond_2

    .line 1609
    const-string v5, "0123456789"

    add-int/lit8 v6, v0, 0x4

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1610
    .local v2, pattern:Ljava/lang/String;
    const-string v5, "9876543210"

    add-int/lit8 v6, v0, 0x4

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1611
    .local v3, reversePattern:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1612
    :cond_0
    sget-object v5, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v6, "ChooseLockPassword has Sequential password"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1626
    .end local v2           #pattern:Ljava/lang/String;
    .end local v3           #reversePattern:Ljava/lang/String;
    :goto_1
    return v4

    .line 1608
    .restart local v2       #pattern:Ljava/lang/String;
    .restart local v3       #reversePattern:Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1617
    .end local v2           #pattern:Ljava/lang/String;
    .end local v3           #reversePattern:Ljava/lang/String;
    :cond_2
    const-string v5, "abcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v1, v5, -0x4

    .line 1618
    const/4 v0, 0x0

    :goto_2
    if-gt v0, v1, :cond_5

    .line 1619
    const-string v5, "abcdefghijklmnopqrstuvwxyz"

    add-int/lit8 v6, v0, 0x4

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1620
    .restart local v2       #pattern:Ljava/lang/String;
    const-string v5, "zyxwvutsrqponmlkjihgfedcba"

    add-int/lit8 v6, v0, 0x4

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1621
    .restart local v3       #reversePattern:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1622
    :cond_3
    sget-object v5, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v6, "ChooseLockPassword has Sequential password"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1618
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1626
    .end local v2           #pattern:Ljava/lang/String;
    .end local v3           #reversePattern:Ljava/lang/String;
    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public executeTimeout(I)V
    .locals 5
    .parameter "containerId"

    .prologue
    .line 238
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TimeoutRunnable deactivating password for container id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v3, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v3

    sget-object v4, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_VERIFY_PWD_TIMEOUT:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v2, p1, v3, v4}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-result-object v1

    .line 241
    .local v1, temp:Lcom/sec/knox/container/constants/CSState;
    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    if-eq v2, v1, :cond_0

    .line 242
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setPasswordStatusInActive(Landroid/content/Context;I)V

    .line 243
    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->killTimer(I)V

    .line 244
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v3, "deactivating password firing intentcom.samsung.redex.proxy.activity.show_dialog"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.redex.proxy.activity.show_dialog"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 246
    .local v0, passwordChangedToVerify:Landroid/content/Intent;
    const-string v2, "containerid"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 248
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 252
    .end local v0           #passwordChangedToVerify:Landroid/content/Intent;
    :goto_0
    return-void

    .line 250
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->killTimer(I)V

    goto :goto_0
.end method

.method public getAllowBluetoothMode(ILandroid/content/ComponentName;)I
    .locals 1
    .parameter "containerId"
    .parameter "admin"

    .prologue
    .line 900
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAllowBluetoothMode(ILandroid/content/ComponentName;)I

    move-result v0

    .line 904
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getAllowBrowser(ILandroid/content/ComponentName;)Z
    .locals 1
    .parameter "containerId"
    .parameter "admin"

    .prologue
    .line 984
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 985
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAllowBrowser(ILandroid/content/ComponentName;)Z

    move-result v0

    .line 988
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAllowCamera(ILandroid/content/ComponentName;)Z
    .locals 1
    .parameter "containerId"
    .parameter "admin"

    .prologue
    .line 970
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 971
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAllowCamera(ILandroid/content/ComponentName;)Z

    move-result v0

    .line 974
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAllowDesktopSync(ILandroid/content/ComponentName;)Z
    .locals 1
    .parameter "containerId"
    .parameter "admin"

    .prologue
    .line 914
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 915
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAllowDesktopSync(ILandroid/content/ComponentName;)Z

    move-result v0

    .line 918
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAllowInternetSharing(ILandroid/content/ComponentName;)Z
    .locals 1
    .parameter "containerId"
    .parameter "admin"

    .prologue
    .line 886
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAllowInternetSharing(ILandroid/content/ComponentName;)Z

    move-result v0

    .line 890
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAllowIrDA(ILandroid/content/ComponentName;)Z
    .locals 1
    .parameter "containerId"
    .parameter "admin"

    .prologue
    .line 928
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 929
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAllowIrDA(ILandroid/content/ComponentName;)Z

    move-result v0

    .line 932
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAllowPOPIMAPEmail(ILandroid/content/ComponentName;)Z
    .locals 1
    .parameter "containerId"
    .parameter "admin"

    .prologue
    .line 956
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAllowPOPIMAPEmail(ILandroid/content/ComponentName;)Z

    move-result v0

    .line 960
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAllowStorageCard(ILandroid/content/ComponentName;)Z
    .locals 1
    .parameter "containerId"
    .parameter "admin"

    .prologue
    .line 942
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAllowStorageCard(ILandroid/content/ComponentName;)Z

    move-result v0

    .line 946
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAllowTextMessaging(ILandroid/content/ComponentName;)Z
    .locals 1
    .parameter "containerId"
    .parameter "admin"

    .prologue
    .line 872
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAllowTextMessaging(ILandroid/content/ComponentName;)Z

    move-result v0

    .line 876
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAllowWifi(ILandroid/content/ComponentName;)Z
    .locals 1
    .parameter "containerId"
    .parameter "admin"

    .prologue
    .line 858
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAllowWifi(ILandroid/content/ComponentName;)Z

    move-result v0

    .line 862
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCurrentFailedPasswordAttempts(I)I
    .locals 1
    .parameter "containerID"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/manager/StateManager;->getFailedPasswordAttempts(I)I

    move-result v0

    return v0
.end method

.method public getKnoxPasswordPolicy(I)Lcom/sec/enterprise/knox/ContainerPasswordPolicy;
    .locals 1
    .parameter "mContainerId"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mKEDM:Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mKEDM:Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    invoke-virtual {v0, p1}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getEnterpriseContainerManager(I)Lcom/sec/enterprise/knox/EnterpriseContainerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getPasswordPolicy()Lcom/sec/enterprise/knox/ContainerPasswordPolicy;

    move-result-object v0

    .line 209
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMaximumCharOccurrencesCount(Ljava/lang/String;)I
    .locals 10
    .parameter "string"

    .prologue
    .line 1490
    sget-object v8, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v9, "getMaximumCharacterOccurrencesCount()"

    invoke-static {v8, v9}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    const/4 v7, 0x0

    .line 1493
    .local v7, maxCount:I
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1494
    .local v4, hm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 1495
    .local v2, ca:[C
    move-object v0, v2

    .local v0, arr$:[C
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_2

    aget-char v1, v0, v5

    .line 1496
    .local v1, c:C
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 1497
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1498
    .local v3, count:I
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1499
    if-ge v7, v3, :cond_0

    .line 1500
    move v7, v3

    .line 1495
    .end local v3           #count:I
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1503
    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1506
    .end local v1           #c:C
    :cond_2
    return v7
.end method

.method public getMaximumFailedPasswordsForWipe(ILandroid/content/ComponentName;)I
    .locals 3
    .parameter "containerId"
    .parameter "admin"

    .prologue
    .line 433
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v1, :cond_0

    .line 434
    sget-object v1, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v2, "getMaximumFailedPasswordsForWipe"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :try_start_0
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getMaximumFailedPasswordsForWipe(ILandroid/content/ComponentName;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 442
    :goto_0
    return v1

    .line 437
    :catch_0
    move-exception v0

    .line 438
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 442
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMaximumTimeToLock(ILandroid/content/ComponentName;)J
    .locals 5
    .parameter "containerId"
    .parameter "admin"

    .prologue
    .line 452
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v3, "getMaximumTimeToLock()"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-wide/16 v0, 0x0

    .line 454
    .local v0, timeMs:J
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v2, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getMaximumTimeToLock(ILandroid/content/ComponentName;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 456
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMaximumTimeToLock is getting called from container with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " millisecs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v2, v0

    .line 464
    :goto_0
    return-wide v2

    .line 460
    :cond_0
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v3, "getMaximumTimeToLock Failed "

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v3, "getMaximumTimeToLock: returning default value: 30 minutes"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const-wide/32 v2, 0x1b7740

    goto :goto_0
.end method

.method public getMinPasswordComplexChars(ILandroid/content/ComponentName;)I
    .locals 1
    .parameter "containerID"
    .parameter "admin"

    .prologue
    .line 360
    invoke-virtual {p0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumSymbols(ILandroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getPasswordExpiration(ILandroid/content/ComponentName;)J
    .locals 2
    .parameter "containerId"
    .parameter "admin"

    .prologue
    .line 481
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getPasswordExpirationDate(ILandroid/content/ComponentName;)J

    move-result-wide v0

    .line 485
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getPasswordExpirationTimeout(ILandroid/content/ComponentName;)J
    .locals 2
    .parameter "containerId"
    .parameter "admin"

    .prologue
    .line 668
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getPasswordExpirationTimeout(ILandroid/content/ComponentName;)J

    move-result-wide v0

    .line 671
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getPasswordHistory(ILandroid/content/ComponentName;)I
    .locals 2
    .parameter "containerID"
    .parameter "admin"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 343
    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v1, "getPasswordHistory DOES EXISTS"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getPasswordHistory(ILandroid/content/ComponentName;)I

    move-result v0

    .line 348
    :goto_0
    return v0

    .line 347
    :cond_0
    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v1, "getPasswordHistory does NOT exists"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPasswordMaximumLength(II)I
    .locals 1
    .parameter "containerId"
    .parameter "quality"

    .prologue
    .line 675
    const/16 v0, 0x10

    return v0
.end method

.method public getPasswordMinimumLength(ILandroid/content/ComponentName;)I
    .locals 4
    .parameter "containerId"
    .parameter "admin"

    .prologue
    .line 679
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v1, :cond_1

    .line 680
    sget-object v1, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordMinimumLength(): containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getPasswordMinimumLength(ILandroid/content/ComponentName;)I

    move-result v0

    .line 683
    .local v0, minimumLength:I
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    if-nez p2, :cond_0

    .line 684
    const/4 v0, 0x6

    .line 691
    .end local v0           #minimumLength:I
    :cond_0
    :goto_0
    return v0

    .line 688
    :cond_1
    sget-object v1, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v2, "getPasswordMinimumLength(): mEcppStorageProvider is NULL"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPasswordMinimumLetters(ILandroid/content/ComponentName;)I
    .locals 2
    .parameter "containerId"
    .parameter "admin"

    .prologue
    .line 705
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v1, :cond_1

    .line 706
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getPasswordMinimumLetters(ILandroid/content/ComponentName;)I

    move-result v0

    .line 707
    .local v0, minimumLetters:I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    if-nez p2, :cond_0

    .line 708
    const/4 v0, 0x1

    .line 713
    .end local v0           #minimumLetters:I
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPasswordMinimumLowerCase(ILandroid/content/ComponentName;)I
    .locals 1
    .parameter "containerId"
    .parameter "admin"

    .prologue
    .line 723
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getPasswordMinimumLowerCase(ILandroid/content/ComponentName;)I

    move-result v0

    .line 727
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPasswordMinimumNonLetter(ILandroid/content/ComponentName;)I
    .locals 1
    .parameter "containerId"
    .parameter "admin"

    .prologue
    .line 737
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getPasswordMinimumNonLetter(ILandroid/content/ComponentName;)I

    move-result v0

    .line 741
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPasswordMinimumNumeric(ILandroid/content/ComponentName;)I
    .locals 2
    .parameter "containerId"
    .parameter "admin"

    .prologue
    .line 751
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v1, :cond_1

    .line 752
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getPasswordMinimumNumeric(ILandroid/content/ComponentName;)I

    move-result v0

    .line 754
    .local v0, minimumNumerics:I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    if-nez p2, :cond_0

    .line 755
    const/4 v0, 0x1

    .line 760
    .end local v0           #minimumNumerics:I
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPasswordMinimumSymbols(ILandroid/content/ComponentName;)I
    .locals 1
    .parameter "containerId"
    .parameter "admin"

    .prologue
    .line 770
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getPasswordMinimumSymbols(ILandroid/content/ComponentName;)I

    move-result v0

    .line 774
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPasswordMinimumUpperCase(ILandroid/content/ComponentName;)I
    .locals 1
    .parameter "containerId"
    .parameter "admin"

    .prologue
    .line 784
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getPasswordMinimumUpperCase(ILandroid/content/ComponentName;)I

    move-result v0

    .line 788
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPasswordQuality(ILandroid/content/ComponentName;)I
    .locals 2
    .parameter "containerId"
    .parameter "admin"

    .prologue
    .line 798
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v1, :cond_1

    .line 799
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getPasswordQuality(ILandroid/content/ComponentName;)I

    move-result v0

    .line 800
    .local v0, minimumQuality:I
    const/high16 v1, 0x5

    if-ge v0, v1, :cond_0

    if-nez p2, :cond_0

    .line 801
    const/high16 v0, 0x5

    .line 806
    .end local v0           #minimumQuality:I
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSequenceLength(Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .parameter "password"
    .parameter "type"

    .prologue
    .line 1568
    sget-object v9, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v10, "getSequenceLength()"

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1570
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 1571
    .local v6, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 1572
    .local v4, match:Ljava/util/regex/Matcher;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1574
    .local v3, length:I
    const/4 v7, 0x0

    .local v7, prevDiff:I
    const/4 v8, 0x0

    .line 1575
    .local v8, start:I
    const/4 v1, 0x0

    .local v1, count:I
    const/4 v5, 0x0

    .line 1576
    .local v5, maxCount:I
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1577
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v9

    if-le v9, v8, :cond_1

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    .line 1581
    :cond_1
    const/4 v1, 0x0

    .line 1582
    :goto_1
    add-int/lit8 v9, v3, -0x1

    if-ge v8, v9, :cond_3

    .line 1583
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1584
    .local v0, c:C
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    sub-int v2, v9, v0

    .line 1585
    .local v2, currDiff:I
    if-nez v1, :cond_2

    .line 1586
    move v7, v2

    .line 1588
    :cond_2
    if-ne v7, v2, :cond_3

    const/4 v9, -0x1

    if-lt v2, v9, :cond_3

    const/4 v9, 0x1

    if-gt v2, v9, :cond_3

    .line 1589
    add-int/lit8 v1, v1, 0x1

    .line 1582
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1594
    .end local v0           #c:C
    .end local v2           #currDiff:I
    :cond_3
    if-ge v5, v1, :cond_0

    .line 1595
    move v5, v1

    goto :goto_0

    .line 1599
    :cond_4
    if-lez v5, :cond_5

    .line 1600
    add-int/lit8 v5, v5, 0x1

    .line 1602
    :cond_5
    return v5
.end method

.method public getSimplePasswordEnabled(ILandroid/content/ComponentName;)Z
    .locals 1
    .parameter "containerId"
    .parameter "admin"

    .prologue
    .line 816
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getSimplePasswordEnabled(ILandroid/content/ComponentName;)Z

    move-result v0

    .line 819
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isActivePasswordSufficient(IZ)Z
    .locals 9
    .parameter "containerId"
    .parameter "calledFromMDM"

    .prologue
    const/high16 v8, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 1650
    const/4 v2, 0x0

    .line 1651
    .local v2, stateInfo:Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;
    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v5, p1}, Lcom/sec/knox/container/manager/StateManager;->getPasswordStateInfoCache(I)Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;

    move-result-object v2

    .line 1652
    if-nez v2, :cond_1

    .line 1653
    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v5, p1}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getPasswordStateInfoFromDB(I)Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;

    move-result-object v2

    .line 1654
    if-nez v2, :cond_1

    .line 1655
    sget-object v3, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v5, "isActivePasswordSufficient() : Cache not found!!"

    invoke-static {v3, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1698
    :cond_0
    :goto_0
    return v4

    .line 1660
    :cond_1
    invoke-virtual {p0, p1, v7}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordQuality(ILandroid/content/ComponentName;)I

    move-result v1

    .line 1661
    .local v1, quality:I
    invoke-virtual {v2}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->getPasswordQuality()I

    move-result v5

    if-ge v5, v1, :cond_2

    if-ne v1, v8, :cond_0

    :cond_2
    invoke-virtual {v2}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->getPasswordLength()I

    move-result v5

    invoke-virtual {p0, p1, v7}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumLength(ILandroid/content/ComponentName;)I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 1667
    invoke-virtual {p0, p1, v7}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getSimplePasswordEnabled(ILandroid/content/ComponentName;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1668
    invoke-virtual {v2}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->isPasswordSimple()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1669
    sget-object v3, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v5, "isActivePasswordSufficient() : simple password is not allowed"

    invoke-static {v3, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1673
    :cond_3
    if-eqz p2, :cond_7

    .line 1674
    sget-object v5, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v6, "isActivePasswordSufficient called from MDM"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1675
    invoke-virtual {p0, p1, v7}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->isPasswordForbidden(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1676
    sget-object v3, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v5, "forbidden password in use"

    invoke-static {v3, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1679
    :cond_4
    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getKnoxPasswordPolicy(I)Lcom/sec/enterprise/knox/ContainerPasswordPolicy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/enterprise/knox/ContainerPasswordPolicy;->getMaximumCharacterSequenceLength()I

    move-result v0

    .line 1680
    .local v0, maxLength:I
    if-lez v0, :cond_5

    invoke-virtual {v2}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->getCharSeqLength()I

    move-result v5

    if-le v5, v0, :cond_5

    .line 1681
    sget-object v3, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v5, "Character Sequence length exceeded"

    invoke-static {v3, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1684
    :cond_5
    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getKnoxPasswordPolicy(I)Lcom/sec/enterprise/knox/ContainerPasswordPolicy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/enterprise/knox/ContainerPasswordPolicy;->getMaximumNumericSequenceLength()I

    move-result v0

    .line 1685
    if-lez v0, :cond_6

    invoke-virtual {v2}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->getDigitSeqLength()I

    move-result v5

    if-le v5, v0, :cond_6

    .line 1686
    sget-object v3, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v5, "Digit Sequence length exceeded"

    invoke-static {v3, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1689
    :cond_6
    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getKnoxPasswordPolicy(I)Lcom/sec/enterprise/knox/ContainerPasswordPolicy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/enterprise/knox/ContainerPasswordPolicy;->getMaximumCharacterOccurences()I

    move-result v0

    .line 1690
    if-lez v0, :cond_7

    invoke-virtual {v2}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->getCharMaxOccurrencesCount()I

    move-result v5

    if-le v5, v0, :cond_7

    .line 1691
    sget-object v3, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v5, "Maximum Character occurence exceeded"

    invoke-static {v3, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1695
    .end local v0           #maxLength:I
    :cond_7
    if-eq v1, v8, :cond_8

    move v4, v3

    .line 1696
    goto/16 :goto_0

    .line 1698
    :cond_8
    invoke-virtual {v2}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->getPasswordUppercase()I

    move-result v5

    invoke-virtual {p0, p1, v7}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumUpperCase(ILandroid/content/ComponentName;)I

    move-result v6

    if-lt v5, v6, :cond_9

    invoke-virtual {v2}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->getPasswordLowercase()I

    move-result v5

    invoke-virtual {p0, p1, v7}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumLowerCase(ILandroid/content/ComponentName;)I

    move-result v6

    if-lt v5, v6, :cond_9

    invoke-virtual {v2}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->getPasswordLetters()I

    move-result v5

    invoke-virtual {p0, p1, v7}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumLetters(ILandroid/content/ComponentName;)I

    move-result v6

    if-lt v5, v6, :cond_9

    invoke-virtual {v2}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->getPasswordNumeric()I

    move-result v5

    invoke-virtual {p0, p1, v7}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumNumeric(ILandroid/content/ComponentName;)I

    move-result v6

    if-lt v5, v6, :cond_9

    invoke-virtual {v2}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->getPasswordSymbols()I

    move-result v5

    invoke-virtual {p0, p1, v7}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumSymbols(ILandroid/content/ComponentName;)I

    move-result v6

    if-lt v5, v6, :cond_9

    invoke-virtual {v2}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->getPasswordNonLetter()I

    move-result v5

    invoke-virtual {p0, p1, v7}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumNonLetter(ILandroid/content/ComponentName;)I

    move-result v6

    if-lt v5, v6, :cond_9

    :goto_1
    move v4, v3

    goto/16 :goto_0

    :cond_9
    move v3, v4

    goto :goto_1
.end method

.method public isPasswordContainsValidChars(Ljava/lang/String;)Z
    .locals 3
    .parameter "password"

    .prologue
    .line 1731
    if-eqz p1, :cond_2

    .line 1733
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1734
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1736
    .local v0, c:C
    const/16 v2, 0x20

    if-le v0, v2, :cond_0

    const/16 v2, 0x7f

    if-le v0, v2, :cond_1

    .line 1737
    :cond_0
    const/4 v2, 0x1

    .line 1741
    .end local v0           #c:C
    .end local v1           #i:I
    :goto_1
    return v2

    .line 1733
    .restart local v0       #c:C
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1741
    .end local v0           #c:C
    .end local v1           #i:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isPasswordForbidden(ILjava/lang/String;)Z
    .locals 7
    .parameter "containerId"
    .parameter "password"

    .prologue
    const/4 v4, 0x1

    .line 1402
    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getKnoxPasswordPolicy(I)Lcom/sec/enterprise/knox/ContainerPasswordPolicy;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sec/enterprise/knox/ContainerPasswordPolicy;->getForbiddenStrings(Z)Ljava/util/List;

    move-result-object v1

    .line 1404
    .local v1, forbiddenStringArray:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1405
    .local v0, currentpasswordHash:[B
    if-nez p2, :cond_0

    .line 1406
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->containerPasswordFilePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".key"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "r"

    invoke-direct {p0, v5, v6}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getCurrentPasswordHash(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 1409
    :cond_0
    if-eqz v1, :cond_3

    .line 1410
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1411
    .local v3, string:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 1412
    if-nez p2, :cond_2

    .line 1413
    if-eqz v0, :cond_1

    invoke-direct {p0, v3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v0, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1424
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #string:Ljava/lang/String;
    :goto_0
    return v4

    .line 1416
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #string:Ljava/lang/String;
    :cond_2
    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 1422
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #string:Ljava/lang/String;
    :cond_3
    sget-object v4, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v5, "forbiddenStringArray is NULL"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    :cond_4
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isPasswordVisisbilityEnabled(I)Z
    .locals 1
    .parameter "containerId"

    .prologue
    .line 835
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->isPasswordVisisbilityEnabled(I)Z

    move-result v0

    .line 839
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected declared-synchronized killTimer(I)V
    .locals 8
    .parameter "containerId"

    .prologue
    .line 274
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 275
    .local v3, token:J
    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 276
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.sec.knox.container.INTENT_ALARM_TIMEOUT"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 277
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "containerid"

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 278
    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    const/16 v6, 0x15c4

    const/high16 v7, 0x4800

    invoke-static {v5, v6, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 280
    .local v2, pi:Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 281
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    monitor-exit p0

    return-void

    .line 274
    .end local v0           #am:Landroid/app/AlarmManager;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #pi:Landroid/app/PendingIntent;
    .end local v3           #token:J
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public onChangePasswordSuccess(I)V
    .locals 8
    .parameter "containerId"

    .prologue
    .line 629
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 631
    .local v4, mActiveAdminList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    sget-object v6, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v7, "onChangePasswordSuccess() changepassword succeeded sending ACTION_PASSWORD_SUCCEEDED to admins"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 635
    .local v0, N:I
    if-gtz v0, :cond_1

    .line 656
    :cond_0
    return-void

    .line 639
    :cond_1
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v6, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerPackagesInfoFromCache(I)Ljava/util/HashMap;

    move-result-object v5

    .line 641
    .local v5, pkgsInfo:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;>;"
    if-eqz v5, :cond_0

    .line 642
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 643
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 644
    .local v1, admin:Landroid/content/ComponentName;
    if-nez v1, :cond_3

    .line 642
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 647
    :cond_3
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->findAdmin(Landroid/content/ComponentName;)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v2

    .line 649
    .local v2, dai:Landroid/app/admin/DeviceAdminInfo;
    if-eqz v2, :cond_2

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 651
    const-string v6, "android.app.action.ACTION_PASSWORD_CHANGED"

    invoke-direct {p0, p1, v2, v6}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->sendAdminCommandLocked(ILandroid/app/admin/DeviceAdminInfo;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public passwordHasExpired(I)Z
    .locals 13
    .parameter "containerId"

    .prologue
    const-wide/16 v11, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 994
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    if-nez v6, :cond_0

    .line 995
    sget-object v6, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v7, "passwordHasExpired error: mStateManager is null"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    :goto_0
    return v8

    .line 999
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1000
    .local v0, now:J
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v6, p1}, Lcom/sec/knox/container/manager/StateManager;->getPasswordExpirationDate(I)J

    move-result-wide v2

    .line 1001
    .local v2, passwordExpirationDate:J
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v6, p1}, Lcom/sec/knox/container/manager/StateManager;->getPasswordExpirationTimeout(I)J

    move-result-wide v4

    .line 1003
    .local v4, passwordExpirationTimeout:J
    sget-object v9, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "passwordHasExpired(): checking if password has expired: passwordExpirationTimeout = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ", passwordExpirationDate = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ", (now >= passwordExpirationDate) = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    cmp-long v6, v0, v2

    if-ltz v6, :cond_1

    move v6, v7

    :goto_1
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    cmp-long v6, v4, v11

    if-lez v6, :cond_2

    cmp-long v6, v2, v11

    if-lez v6, :cond_2

    cmp-long v6, v0, v2

    if-ltz v6, :cond_2

    .line 1010
    sget-object v6, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v8, "passwordHasExpired(): password has expired"

    invoke-static {v6, v8}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v7

    .line 1011
    goto :goto_0

    :cond_1
    move v6, v8

    .line 1003
    goto :goto_1

    .line 1013
    :cond_2
    sget-object v6, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v7, "passwordHasExpired(): password still valid"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "admin"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->removeActiveAdmin(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeActiveAdmin(): remove admin from Eccp DB succed: admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const/4 v0, 0x1

    .line 234
    :goto_0
    return v0

    .line 230
    :cond_0
    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeActiveAdmin(): remove admin from Eccp DB failed: admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeContainer(I)Z
    .locals 2
    .parameter "containerId"

    .prologue
    .line 213
    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->containerPasswordFilePath:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->removeContainerCredentialFiles(ILjava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->removeContainer(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v1, "removeContainer(): remove container from Eccp DB succed"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const/4 v0, 0x1

    .line 221
    :goto_0
    return v0

    .line 218
    :cond_0
    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v1, "removeContainer(): remove container from Eccp DB failed"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reportFailedPasswordAttempt(I)Z
    .locals 6
    .parameter "containerId"

    .prologue
    const/4 v3, 0x1

    .line 374
    sget-object v4, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v5, "reportFailedPasswordAttempt(): failedPasswordAttempts max  --1"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getMaximumFailedPasswordsForWipe(ILandroid/content/ComponentName;)I

    move-result v2

    .line 376
    .local v2, maximumFailedPasswordsForWipe:I
    const/4 v1, 0x0

    .line 378
    .local v1, failedPasswordAttempts:I
    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v4, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v4

    sget-object v5, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v5}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 380
    sget-object v4, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v5, "reportFailedPasswordAttempt(): getting failedPasswordAttempts from DB"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    :try_start_0
    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, p1}, Lcom/sec/knox/container/manager/StateManager;->getFailedPasswordAttempts(Landroid/content/Context;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 393
    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 394
    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v4, p1, v1}, Lcom/sec/knox/container/manager/StateManager;->setFailedPasswordAttempts(II)Z

    .line 395
    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, p1, v1}, Lcom/sec/knox/container/manager/StateManager;->setFailedPasswordAttempts(Landroid/content/Context;II)Z

    .line 397
    if-lez v2, :cond_1

    if-lt v1, v2, :cond_1

    .line 400
    sget-object v4, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v5, "reportFailedPasswordAttempt(): failedPasswordAttempts max than maximumFailedPasswordsForWipe!!: WIPING(Removing container)"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :goto_1
    return v3

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 388
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    sget-object v4, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v5, "reportFailedPasswordAttempt(): getting failedPasswordAttempts from mStateManager"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v4, p1}, Lcom/sec/knox/container/manager/StateManager;->getFailedPasswordAttempts(I)I

    move-result v1

    goto :goto_0

    .line 403
    :cond_1
    if-gtz v2, :cond_2

    const/16 v4, 0xa

    if-lt v1, v4, :cond_2

    .line 405
    sget-object v4, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v5, "reportFailedPasswordAttempt(): failedPasswordAttempts is more than 10 and no policy set Container will get locked. And only admin can remove the lock"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 410
    :cond_2
    sget-object v3, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v4, "reportFailedPasswordAttempt(): failedPasswordAttempts max  --2"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public reportSuccessfulPasswordAttempt(I)V
    .locals 4
    .parameter "containerId"

    .prologue
    .line 415
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v2, p1}, Lcom/sec/knox/container/manager/StateManager;->getFailedPasswordAttempts(I)I

    move-result v1

    .line 417
    .local v1, failedPasswordAttempts:I
    if-eqz v1, :cond_0

    .line 418
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v3, "reportSuccessfulPasswordAttempt(): resetting failedPasswordAttempts to 0"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const/4 v1, 0x0

    .line 421
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v2, p1, v1}, Lcom/sec/knox/container/manager/StateManager;->setFailedPasswordAttempts(II)Z

    .line 423
    :try_start_0
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p1, v1}, Lcom/sec/knox/container/manager/StateManager;->setFailedPasswordAttempts(Landroid/content/Context;II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    :goto_0
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v3, "reportSuccessfulPasswordAttempt(): resetting --11"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :cond_0
    return-void

    .line 425
    :catch_0
    move-exception v0

    .line 426
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public resetPassword(ILjava/lang/String;I)Z
    .locals 2
    .parameter "containerId"
    .parameter "password"
    .parameter "flags"

    .prologue
    .line 843
    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getKnoxPasswordPolicy(I)Lcom/sec/enterprise/knox/ContainerPasswordPolicy;

    move-result-object v0

    .line 844
    .local v0, passwordPolicy:Lcom/sec/enterprise/knox/ContainerPasswordPolicy;
    if-eqz v0, :cond_0

    .line 845
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/ContainerPasswordPolicy;->enforcePwdChange()Z

    move-result v1

    .line 848
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public satisfyFIPSPassword()Z
    .locals 1

    .prologue
    .line 329
    const/4 v0, 0x1

    return v0
.end method

.method protected declared-synchronized scheduleTimer(Landroid/content/Context;IZ)V
    .locals 12
    .parameter "context"
    .parameter "containerId"
    .parameter "forceStart"

    .prologue
    .line 294
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 295
    .local v7, token:J
    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    const-string v10, "alarm"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 296
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v9, "com.sec.knox.container.INTENT_ALARM_TIMEOUT"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 297
    .local v1, intent:Landroid/content/Intent;
    const-string v9, "containerid"

    invoke-virtual {v1, v9, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 298
    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    const/16 v10, 0x15c4

    const/high16 v11, 0x4800

    invoke-static {v9, v10, v1, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 300
    .local v4, pi:Landroid/app/PendingIntent;
    invoke-virtual {v0, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 301
    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v9, p2}, Lcom/sec/knox/container/manager/StateManager;->getContainerVerifyOnlyOnChangeMode(I)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 302
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    :goto_0
    monitor-exit p0

    return-void

    .line 306
    :cond_0
    const/4 v9, 0x1

    if-ne p3, v9, :cond_1

    const-wide/16 v5, 0x1

    .line 311
    .local v5, timeoutMm:J
    :goto_1
    const-wide/16 v9, 0x1

    cmp-long v9, v5, v9

    if-gez v9, :cond_2

    .line 312
    :try_start_1
    sget-object v9, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "scheduleTimer(): cached timeout not updated: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ". Updating it with the MDM DB version"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const/4 v9, 0x0

    invoke-virtual {p0, p2, v9}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getMaximumTimeToLock(ILandroid/content/ComponentName;)J

    move-result-wide v5

    .line 315
    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v9, p2, v5, v6}, Lcom/sec/knox/container/manager/StateManager;->setMaximumTimeToLock(IJ)Z

    .line 319
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 320
    .local v2, now:J
    sget-object v9, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "scheduleTimer(): force restart: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    sget-object v9, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setting am scheduleTimer() timeout value: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const/4 v9, 0x3

    add-long v10, v2, v5

    invoke-virtual {v0, v9, v10, v11, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 323
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 294
    .end local v0           #am:Landroid/app/AlarmManager;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #now:J
    .end local v4           #pi:Landroid/app/PendingIntent;
    .end local v5           #timeoutMm:J
    .end local v7           #token:J
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 306
    .restart local v0       #am:Landroid/app/AlarmManager;
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v4       #pi:Landroid/app/PendingIntent;
    .restart local v7       #token:J
    :cond_1
    :try_start_2
    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v9, p2}, Lcom/sec/knox/container/manager/StateManager;->getMaximumTimeToLock(I)J

    move-result-wide v5

    goto :goto_1

    .line 317
    .restart local v5       #timeoutMm:J
    :cond_2
    sget-object v9, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "scheduleTimer(): cached timeout is updated: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method protected declared-synchronized scheduleTimerOnUserInteraction(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "containerId"

    .prologue
    .line 285
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v2, p2}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v2

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ACTIVE:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v3}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 286
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v3, "State is active reseting timer"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 288
    .local v0, token:J
    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->scheduleTimer(Landroid/content/Context;IZ)V

    .line 289
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    .end local v0           #token:J
    :cond_0
    monitor-exit p0

    return-void

    .line 285
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setAllowBluetoothMode(ILandroid/content/ComponentName;I)V
    .locals 1
    .parameter "containerId"
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 894
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setAllowBluetoothMode(ILandroid/content/ComponentName;I)V

    .line 897
    :cond_0
    return-void
.end method

.method public setAllowBrowser(ILandroid/content/ComponentName;Z)V
    .locals 1
    .parameter "containerId"
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 978
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 979
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setAllowBrowser(ILandroid/content/ComponentName;Z)V

    .line 981
    :cond_0
    return-void
.end method

.method public setAllowCamera(ILandroid/content/ComponentName;Z)V
    .locals 1
    .parameter "containerId"
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 964
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 965
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setAllowCamera(ILandroid/content/ComponentName;Z)V

    .line 967
    :cond_0
    return-void
.end method

.method public setAllowDesktopSync(ILandroid/content/ComponentName;Z)V
    .locals 1
    .parameter "containerId"
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 908
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setAllowDesktopSync(ILandroid/content/ComponentName;Z)V

    .line 911
    :cond_0
    return-void
.end method

.method public setAllowInternetSharing(ILandroid/content/ComponentName;Z)V
    .locals 1
    .parameter "containerId"
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 880
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 881
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setAllowInternetSharing(ILandroid/content/ComponentName;Z)V

    .line 883
    :cond_0
    return-void
.end method

.method public setAllowIrDA(ILandroid/content/ComponentName;Z)V
    .locals 1
    .parameter "containerId"
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 922
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 923
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setAllowIrDA(ILandroid/content/ComponentName;Z)V

    .line 925
    :cond_0
    return-void
.end method

.method public setAllowPOPIMAPEmail(ILandroid/content/ComponentName;Z)V
    .locals 1
    .parameter "containerId"
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 950
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 951
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setAllowPOPIMAPEmail(ILandroid/content/ComponentName;Z)V

    .line 953
    :cond_0
    return-void
.end method

.method public setAllowStorageCard(ILandroid/content/ComponentName;Z)V
    .locals 1
    .parameter "containerId"
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 936
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 937
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setAllowStorageCard(ILandroid/content/ComponentName;Z)V

    .line 939
    :cond_0
    return-void
.end method

.method public setAllowTextMessaging(ILandroid/content/ComponentName;Z)V
    .locals 1
    .parameter "containerId"
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 866
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setAllowTextMessaging(ILandroid/content/ComponentName;Z)V

    .line 869
    :cond_0
    return-void
.end method

.method public setAllowWifi(ILandroid/content/ComponentName;Z)V
    .locals 1
    .parameter "containerId"
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 852
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setAllowWifi(ILandroid/content/ComponentName;Z)V

    .line 855
    :cond_0
    return-void
.end method

.method public setExpirationAlarmCheck(I)V
    .locals 30
    .parameter "containerId"

    .prologue
    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/manager/StateManager;->getPasswordExpirationDate(I)J

    move-result-wide v14

    .line 538
    .local v14, expiration:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/manager/StateManager;->getPasswordExpirationTimeout(I)J

    move-result-wide v11

    .line 539
    .local v11, currentTimeout:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    .line 540
    .local v19, now:J
    sub-long v23, v14, v19

    .line 543
    .local v23, timeToExpire:J
    invoke-direct/range {p0 .. p0}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    .line 545
    .local v18, mActiveAdminList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 546
    .local v4, N:I
    if-gtz v4, :cond_0

    .line 607
    :goto_0
    return-void

    .line 550
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/manager/StateManager;->getContainerPackagesInfoFromCache(I)Ljava/util/HashMap;

    move-result-object v22

    .line 552
    .local v22, pkgsInfo:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;>;"
    const/16 v16, 0x0

    .local v16, i:I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v4, :cond_2

    .line 553
    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 554
    .local v5, admin:Landroid/content/ComponentName;
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->findAdmin(Landroid/content/ComponentName;)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v13

    .line 556
    .local v13, dai:Landroid/app/admin/DeviceAdminInfo;
    const/16 v27, 0x6

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v27

    if-eqz v27, :cond_1

    const-wide/16 v27, 0x0

    cmp-long v27, v11, v27

    if-lez v27, :cond_1

    const-wide/16 v27, 0x0

    cmp-long v27, v14, v27

    if-lez v27, :cond_1

    const-wide/32 v27, 0x19bfcc00

    sub-long v27, v14, v27

    cmp-long v27, v19, v27

    if-ltz v27, :cond_1

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    if-eqz v27, :cond_1

    .line 560
    const-string v27, "android.app.action.ACTION_PASSWORD_EXPIRING"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v13, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->sendAdminCommandLocked(ILandroid/app/admin/DeviceAdminInfo;Ljava/lang/String;)V

    .line 552
    :cond_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 565
    .end local v5           #admin:Landroid/content/ComponentName;
    .end local v13           #dai:Landroid/app/admin/DeviceAdminInfo;
    :cond_2
    const-wide/16 v27, 0x0

    cmp-long v27, v14, v27

    if-nez v27, :cond_4

    .line 567
    sget-object v27, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v28, "No expirations are currently configured:  Cancel alarm"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const-wide/16 v8, 0x0

    .line 588
    .local v8, alarmTime:J
    :goto_2
    sget-object v27, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "setExpirationAlarmCheckLocked alarmTime "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    new-instance v29, Ljava/util/Date;

    move-object/from16 v0, v29

    invoke-direct {v0, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " expiration "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    new-instance v29, Ljava/util/Date;

    move-object/from16 v0, v29

    invoke-direct {v0, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " now "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    new-instance v29, Ljava/util/Date;

    move-object/from16 v0, v29

    move-wide/from16 v1, v19

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " timeToExpire "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v25

    .line 594
    .local v25, token:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const-string v28, "alarm"

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/AlarmManager;

    .line 595
    .local v10, am:Landroid/app/AlarmManager;
    new-instance v17, Landroid/content/Intent;

    const-string v27, "enterprise.container.INTENT_ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 596
    .local v17, intent:Landroid/content/Intent;
    const-string v27, "containerid"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const/16 v28, 0x15c3

    const/high16 v29, 0x4800

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, v17

    move/from16 v3, v29

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v21

    .line 599
    .local v21, pi:Landroid/app/PendingIntent;
    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 600
    const-wide/16 v27, 0x0

    cmp-long v27, v8, v27

    if-eqz v27, :cond_3

    .line 601
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v8, v9, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 604
    :cond_3
    invoke-static/range {v25 .. v26}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 569
    .end local v8           #alarmTime:J
    .end local v10           #am:Landroid/app/AlarmManager;
    .end local v17           #intent:Landroid/content/Intent;
    .end local v21           #pi:Landroid/app/PendingIntent;
    .end local v25           #token:J
    :cond_4
    const-wide/16 v27, 0x0

    cmp-long v27, v23, v27

    if-gtz v27, :cond_5

    .line 571
    sget-object v27, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "The password has already expired:  fire intent now. timeToExpire"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    move-wide/from16 v8, v19

    .restart local v8       #alarmTime:J
    goto/16 :goto_2

    .line 578
    .end local v8           #alarmTime:J
    :cond_5
    const-wide/32 v27, 0x5265c00

    rem-long v6, v23, v27

    .line 579
    .local v6, alarmInterval:J
    const-wide/16 v27, 0x0

    cmp-long v27, v6, v27

    if-nez v27, :cond_6

    .line 580
    const-wide/32 v6, 0x5265c00

    .line 582
    :cond_6
    add-long v8, v19, v6

    .line 583
    .restart local v8       #alarmTime:J
    sget-object v27, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Selecting the next alarm time:  Roll forward to the next 24 hour multiple before alarmInterval "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 604
    .end local v6           #alarmInterval:J
    .restart local v25       #token:J
    :catchall_0
    move-exception v27

    invoke-static/range {v25 .. v26}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v27
.end method

.method public setMaximumFailedPasswordsForWipe(ILandroid/content/ComponentName;I)V
    .locals 1
    .parameter "containerId"
    .parameter "admin"
    .parameter "num"

    .prologue
    .line 446
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setMaximumFailedPasswordsForWipe(ILandroid/content/ComponentName;I)V

    .line 449
    :cond_0
    return-void
.end method

.method public setMaximumTimeToLock(ILandroid/content/ComponentName;J)V
    .locals 7
    .parameter "containerId"
    .parameter "admin"
    .parameter "timeMs"

    .prologue
    .line 468
    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v4, :cond_0

    .line 469
    sget-object v4, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setMaximumTimeToLock Time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v4, p1, p2, p3, p4}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setMaximumTimeToLock(ILandroid/content/ComponentName;J)V

    .line 471
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getMaximumTimeToLock(ILandroid/content/ComponentName;)J

    move-result-wide v0

    .line 472
    .local v0, time:J
    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v4, p1}, Lcom/sec/knox/container/manager/StateManager;->getMaximumTimeToLock(I)J

    move-result-wide v2

    .line 473
    .local v2, timeInUse:J
    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 474
    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v4, p1, v0, v1}, Lcom/sec/knox/container/manager/StateManager;->setMaximumTimeToLock(IJ)Z

    .line 475
    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, p1, v5}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->scheduleTimer(Landroid/content/Context;IZ)V

    .line 478
    .end local v0           #time:J
    .end local v2           #timeInUse:J
    :cond_0
    return-void
.end method

.method public setMinPasswordComplexChars(ILandroid/content/ComponentName;I)V
    .locals 0
    .parameter "containerID"
    .parameter "admin"
    .parameter "size"

    .prologue
    .line 354
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setPasswordMinimumSymbols(ILandroid/content/ComponentName;I)V

    .line 355
    return-void
.end method

.method public setPasswordExpirationTimeout(ILandroid/content/ComponentName;J)V
    .locals 11
    .parameter "containerId"
    .parameter "admin"
    .parameter "timeout"

    .prologue
    const-wide/16 v6, 0x0

    .line 489
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v8, :cond_0

    if-eqz p2, :cond_0

    .line 490
    sget-object v8, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setPasswordExpirationTimeout() timeout = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v8, p1, p2, p3, p4}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setPasswordExpirationTimeout(ILandroid/content/ComponentName;J)V

    .line 493
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 494
    .local v0, now:J
    cmp-long v8, p3, v6

    if-lez v8, :cond_1

    add-long v2, v0, p3

    .line 495
    .local v2, passwordExpirationDate:J
    :goto_0
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v8, p1, p2, v2, v3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setPasswordExpirationDate(ILandroid/content/ComponentName;J)V

    .line 498
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    const/4 v9, 0x0

    invoke-virtual {v8, p1, v9}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getPasswordExpirationTimeout(ILandroid/content/ComponentName;)J

    move-result-wide p3

    .line 499
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v8, p1}, Lcom/sec/knox/container/manager/StateManager;->getPasswordExpirationTimeout(I)J

    move-result-wide v4

    .line 500
    .local v4, timeoutInUse:J
    cmp-long v8, p3, v4

    if-eqz v8, :cond_0

    .line 501
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v8, p1, p3, p4}, Lcom/sec/knox/container/manager/StateManager;->setPasswordExpirationTimeout(IJ)Z

    .line 502
    cmp-long v8, p3, v6

    if-lez v8, :cond_2

    add-long v2, v0, p3

    .line 503
    :goto_1
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v6, p1, v2, v3}, Lcom/sec/knox/container/manager/StateManager;->setPasswordExpirationDate(IJ)Z

    .line 504
    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setExpirationAlarmCheck(I)V

    .line 507
    .end local v0           #now:J
    .end local v2           #passwordExpirationDate:J
    .end local v4           #timeoutInUse:J
    :cond_0
    return-void

    .restart local v0       #now:J
    :cond_1
    move-wide v2, v6

    .line 494
    goto :goto_0

    .restart local v2       #passwordExpirationDate:J
    .restart local v4       #timeoutInUse:J
    :cond_2
    move-wide v2, v6

    .line 502
    goto :goto_1
.end method

.method public setPasswordHistory(ILandroid/content/ComponentName;I)V
    .locals 2
    .parameter "containerID"
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setPasswordHistory(ILandroid/content/ComponentName;I)V

    .line 336
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordHistory(ILandroid/content/ComponentName;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->removeOldestPasswordIfRequired(II)V

    .line 339
    :cond_0
    return-void
.end method

.method public setPasswordMinimumLength(ILandroid/content/ComponentName;I)V
    .locals 3
    .parameter "containerId"
    .parameter "admin"
    .parameter "length"

    .prologue
    .line 695
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 696
    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPasswordMinimumLength(): containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setPasswordMinimumLength(ILandroid/content/ComponentName;I)V

    .line 702
    :goto_0
    return-void

    .line 700
    :cond_0
    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v1, "setPasswordMinimumLength(): IS NULL"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPasswordMinimumLetters(ILandroid/content/ComponentName;I)V
    .locals 1
    .parameter "containerId"
    .parameter "admin"
    .parameter "length"

    .prologue
    .line 717
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setPasswordMinimumLetters(ILandroid/content/ComponentName;I)V

    .line 720
    :cond_0
    return-void
.end method

.method public setPasswordMinimumLowerCase(ILandroid/content/ComponentName;I)V
    .locals 1
    .parameter "containerId"
    .parameter "admin"
    .parameter "length"

    .prologue
    .line 731
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setPasswordMinimumLowerCase(ILandroid/content/ComponentName;I)V

    .line 734
    :cond_0
    return-void
.end method

.method public setPasswordMinimumNonLetter(ILandroid/content/ComponentName;I)V
    .locals 1
    .parameter "containerId"
    .parameter "admin"
    .parameter "length"

    .prologue
    .line 745
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setPasswordMinimumNonLetter(ILandroid/content/ComponentName;I)V

    .line 748
    :cond_0
    return-void
.end method

.method public setPasswordMinimumNumeric(ILandroid/content/ComponentName;I)V
    .locals 1
    .parameter "containerId"
    .parameter "admin"
    .parameter "length"

    .prologue
    .line 764
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setPasswordMinimumNumeric(ILandroid/content/ComponentName;I)V

    .line 767
    :cond_0
    return-void
.end method

.method public setPasswordMinimumSymbols(ILandroid/content/ComponentName;I)V
    .locals 1
    .parameter "containerId"
    .parameter "admin"
    .parameter "length"

    .prologue
    .line 778
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setPasswordMinimumSymbols(ILandroid/content/ComponentName;I)V

    .line 781
    :cond_0
    return-void
.end method

.method public setPasswordMinimumUpperCase(ILandroid/content/ComponentName;I)V
    .locals 1
    .parameter "containerId"
    .parameter "admin"
    .parameter "length"

    .prologue
    .line 792
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setPasswordMinimumUpperCase(ILandroid/content/ComponentName;I)V

    .line 795
    :cond_0
    return-void
.end method

.method public setPasswordQuality(ILandroid/content/ComponentName;I)V
    .locals 1
    .parameter "containerId"
    .parameter "admin"
    .parameter "quality"

    .prologue
    .line 810
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setPasswordQuality(ILandroid/content/ComponentName;I)V

    .line 813
    :cond_0
    return-void
.end method

.method public setPasswordVisibilityEnabled(IZ)V
    .locals 1
    .parameter "containerId"
    .parameter "val"

    .prologue
    .line 829
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 830
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setPasswordVisibilityEnabled(IZ)V

    .line 832
    :cond_0
    return-void
.end method

.method public setSimplePasswordEnabled(ILandroid/content/ComponentName;Z)V
    .locals 1
    .parameter "containerId"
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 823
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setSimplePasswordEnabled(ILandroid/content/ComponentName;Z)V

    .line 826
    :cond_0
    return-void
.end method

.method public storeUserCredentials(ILjava/lang/String;)V
    .locals 0
    .parameter "containerId"
    .parameter "password"

    .prologue
    .line 1020
    invoke-direct {p0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->storePassword(ILjava/lang/String;)V

    .line 1021
    return-void
.end method

.method public updatePassword(ILjava/lang/String;)V
    .locals 3
    .parameter "containerId"
    .parameter "password"

    .prologue
    .line 1024
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->containerPasswordFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "r"

    invoke-direct {p0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getCurrentPasswordHash(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 1026
    .local v0, currentpasswordHash:[B
    invoke-direct {p0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->storePassword(ILjava/lang/String;)V

    .line 1027
    invoke-direct {p0, p1, v0}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setOldPasswordToHistory(I[B)V

    .line 1028
    return-void
.end method

.method public updatePasswordExpirationTimeout(ILandroid/content/ComponentName;)V
    .locals 11
    .parameter "containerId"
    .parameter "admin"

    .prologue
    .line 510
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v8, :cond_0

    if-eqz p2, :cond_0

    .line 511
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v8, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getPasswordExpirationTimeout(ILandroid/content/ComponentName;)J

    move-result-wide v6

    .line 514
    .local v6, timeout:J
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_1

    .line 515
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 516
    .local v2, now:J
    add-long v4, v2, v6

    .line 517
    .local v4, passwordExpirationDate:J
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v8, p1, p2, v4, v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setPasswordExpirationDate(ILandroid/content/ComponentName;J)V

    .line 519
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v8, p1}, Lcom/sec/knox/container/manager/StateManager;->getPasswordExpirationTimeout(I)J

    move-result-wide v0

    .line 520
    .local v0, currentTimeout:J
    cmp-long v8, v6, v0

    if-nez v8, :cond_0

    .line 521
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v8, p1, v4, v5}, Lcom/sec/knox/container/manager/StateManager;->setPasswordExpirationDate(IJ)Z

    .line 530
    .end local v0           #currentTimeout:J
    .end local v2           #now:J
    .end local v4           #passwordExpirationDate:J
    .end local v6           #timeout:J
    :cond_0
    :goto_0
    return-void

    .line 524
    .restart local v6       #timeout:J
    :cond_1
    sget-object v8, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updatePasswordExpirationTimeout(): No admin entry in DB OR no timeout specified for admin: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public verifyPassword(ILjava/lang/String;)Z
    .locals 4
    .parameter "containerID"
    .parameter "password"

    .prologue
    const/4 v1, 0x0

    .line 1115
    if-nez p2, :cond_0

    .line 1116
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v3, "verifyPassword() Password is Null"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    :goto_0
    return v1

    .line 1121
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->containerPasswordFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "r"

    invoke-direct {p0, v2, v3, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->verifyStoredData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1123
    :catch_0
    move-exception v0

    .line 1124
    .local v0, ex:Ljava/lang/Exception;
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
