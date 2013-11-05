.class public Lcom/xiaomi/push/service/f;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field protected final b:Ljava/lang/String;

.field protected final c:Ljava/lang/String;

.field protected final d:Ljava/lang/String;

.field protected final e:Ljava/lang/String;

.field protected final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/push/service/f;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/push/service/f;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/push/service/f;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/push/service/f;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/push/service/f;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/xiaomi/push/service/f;->f:Ljava/lang/String;

    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xiaomi.xmsf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/p$b;
    .locals 5

    const/4 v4, 0x0

    new-instance v1, Lcom/xiaomi/push/service/p$b;

    invoke-direct {v1, p1}, Lcom/xiaomi/push/service/p$b;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/xiaomi/push/service/p$b;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/push/service/f;->a:Ljava/lang/String;

    iput-object v0, v1, Lcom/xiaomi/push/service/p$b;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/push/service/f;->c:Ljava/lang/String;

    iput-object v0, v1, Lcom/xiaomi/push/service/p$b;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/push/service/f;->b:Ljava/lang/String;

    iput-object v0, v1, Lcom/xiaomi/push/service/p$b;->c:Ljava/lang/String;

    const-string v0, "5"

    iput-object v0, v1, Lcom/xiaomi/push/service/p$b;->h:Ljava/lang/String;

    const-string v0, "XMPUSH-PASS"

    iput-object v0, v1, Lcom/xiaomi/push/service/p$b;->d:Ljava/lang/String;

    iput-boolean v4, v1, Lcom/xiaomi/push/service/p$b;->e:Z

    const-string v0, "sdk_ver:2"

    iput-object v0, v1, Lcom/xiaomi/push/service/p$b;->f:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/push/service/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1000271"

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "dev_id"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {p1}, Lcom/xiaomi/push/service/g;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "appid"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    const-string v0, "%1$s:%2$s,%3$s:%4$s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/xiaomi/push/service/p$b;->g:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/push/service/XMPushService;->c()Lcom/xiaomi/push/service/b;

    move-result-object v0

    iput-object v0, v1, Lcom/xiaomi/push/service/p$b;->k:Lcom/xiaomi/push/service/b;

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/service/f;->d:Ljava/lang/String;

    goto :goto_0
.end method
