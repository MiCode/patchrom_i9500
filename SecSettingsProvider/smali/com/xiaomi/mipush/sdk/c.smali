.class public Lcom/xiaomi/mipush/sdk/c;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/xiaomi/mipush/sdk/c;


# instance fields
.field private a:Z

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Landroid/content/Intent;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/mipush/sdk/c;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->e:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->c:Landroid/content/Context;

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/c/c;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/c;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/mipush/sdk/c;->a:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;
    .locals 1

    sget-object v0, Lcom/xiaomi/mipush/sdk/c;->b:Lcom/xiaomi/mipush/sdk/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/mipush/sdk/c;

    invoke-direct {v0, p0}, Lcom/xiaomi/mipush/sdk/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/c;->b:Lcom/xiaomi/mipush/sdk/c;

    :cond_0
    sget-object v0, Lcom/xiaomi/mipush/sdk/c;->b:Lcom/xiaomi/mipush/sdk/c;

    return-object v0
.end method

.method private d()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/c;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaomi.xmsf"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x69

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private e()Landroid/content/Intent;
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.xiaomi.xmsf"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.xiaomi.xmsf"

    const-string v2, "com.xiaomi.xmsf.push.service.XMPushService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mipush_app_package"

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/c;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/c;->f()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/c;->c:Landroid/content/Context;

    const-class v2, Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mipush_app_package"

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/c;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private f()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/c;->c:Landroid/content/Context;

    const-class v3, Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->c:Landroid/content/Context;

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/c;->e()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public final a(Lcom/xiaomi/b/a/j;)V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->e:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/c;->e()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/c;->c:Landroid/content/Context;

    sget-object v2, Lcom/xiaomi/b/a/a;->a:Lcom/xiaomi/b/a/a;

    invoke-static {v1, p1, v2}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;Lorg/apache/thrift/TBase;Lcom/xiaomi/b/a/a;)Lcom/xiaomi/b/a/h;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/b/a/u;->a(Lorg/apache/thrift/TBase;)[B

    move-result-object v1

    const-string v2, "com.xiaomi.mipush.REGISTER_APP"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "mipush_app_id"

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/c;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/a;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "mipush_payload"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v1, "mipush_session"

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/c;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/b/a;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/c;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void

    :cond_0
    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->e:Landroid/content/Intent;

    goto :goto_0
.end method

.method public final a(Lcom/xiaomi/b/a/q;)V
    .locals 4

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/c;->e()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/c;->c:Landroid/content/Context;

    sget-object v2, Lcom/xiaomi/b/a/a;->b:Lcom/xiaomi/b/a/a;

    invoke-static {v1, p1, v2}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;Lorg/apache/thrift/TBase;Lcom/xiaomi/b/a/a;)Lcom/xiaomi/b/a/h;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/b/a/u;->a(Lorg/apache/thrift/TBase;)[B

    move-result-object v1

    const-string v2, "com.xiaomi.mipush.UNREGISTER_APP"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "mipush_app_id"

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/c;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/a;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "mipush_payload"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/c;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public final a(Lorg/apache/thrift/TBase;Lcom/xiaomi/b/a/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/thrift/TBase",
            "<TT;*>;>(TT;",
            "Lcom/xiaomi/b/a/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/c;->e()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/c;->c:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;Lorg/apache/thrift/TBase;Lcom/xiaomi/b/a/a;)Lcom/xiaomi/b/a/h;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/b/a/u;->a(Lorg/apache/thrift/TBase;)[B

    move-result-object v1

    const-string v2, "com.xiaomi.mipush.SEND_MESSAGE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "mipush_payload"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/c;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/mipush/sdk/c;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/channel/commonutils/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->e:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/c;->e:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->e:Landroid/content/Intent;

    :cond_0
    return-void
.end method
