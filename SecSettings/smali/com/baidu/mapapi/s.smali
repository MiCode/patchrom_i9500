.class public Lcom/baidu/mapapi/s;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/s$a;
    }
.end annotation


# static fields
.field static b:Lcom/baidu/mapapi/s;

.field static c:Z


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/mapapi/s;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/s;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mapapi/s;->d:Z

    new-instance v0, Lcom/baidu/mapapi/t;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/t;-><init>(Lcom/baidu/mapapi/s;)V

    iput-object v0, p0, Lcom/baidu/mapapi/s;->f:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapapi/s;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/s;->f:Landroid/os/Handler;

    return-object v0
.end method

.method public static a()Lcom/baidu/mapapi/s;
    .locals 1

    sget-object v0, Lcom/baidu/mapapi/s;->b:Lcom/baidu/mapapi/s;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/mapapi/s;

    invoke-direct {v0}, Lcom/baidu/mapapi/s;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/s;->b:Lcom/baidu/mapapi/s;

    :cond_0
    sget-object v0, Lcom/baidu/mapapi/s;->b:Lcom/baidu/mapapi/s;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/mapapi/s;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/mapapi/s;->d:Z

    return p1
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/mapapi/s;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    sget-boolean v0, Lcom/baidu/mapapi/s;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "kal"

    const-string v1, "started."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mapapi/s;->d:Z

    iget-object v0, p0, Lcom/baidu/mapapi/s;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    new-instance v1, Lcom/baidu/mapapi/s$a;

    invoke-direct {v1, p0, v0}, Lcom/baidu/mapapi/s$a;-><init>(Lcom/baidu/mapapi/s;Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/baidu/mapapi/s;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/mapapi/s;->c()V

    return-void
.end method

.method private b(Ljava/io/File;)V
    .locals 5

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v0, v1

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "udclog"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/baidu/mapapi/s;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/baidu/mapapi/s;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/baidu/mapapi/s;->b()V

    :cond_2
    return-void
.end method

.method private c()V
    .locals 2

    sget-boolean v0, Lcom/baidu/mapapi/s;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "kal"

    const-string v1, "stoped."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mapapi/s;->d:Z

    iget-object v0, p0, Lcom/baidu/mapapi/s;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/baidu/mapapi/s;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/baidu/mapapi/s;->b(Ljava/io/File;)V

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/baidu/mapapi/s;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/mapapi/s;->b()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1, p2}, Lcom/baidu/mapapi/Mj;->AppendRecord(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/baidu/mapapi/s;->a(Ljava/io/File;)V

    :cond_0
    return-object v0
.end method

.method a(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "udc/"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/baidu/mapapi/s;->b(Ljava/io/File;)V

    return-void
.end method

.method public a(Ljava/io/File;)V
    .locals 2

    iget-object v1, p0, Lcom/baidu/mapapi/s;->a:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mapapi/s;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/s;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/s;->e:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/baidu/mapapi/s;->d:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/baidu/mapapi/s;->b()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
