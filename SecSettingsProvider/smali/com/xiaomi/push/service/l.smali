.class final Lcom/xiaomi/push/service/l;
.super Lcom/xiaomi/push/service/XMPushService$e;


# instance fields
.field final synthetic a:Lcom/xiaomi/push/service/XMPushService;

.field final synthetic b:Lcom/xiaomi/b/a/h;


# direct methods
.method constructor <init>(ILcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/b/a/h;)V
    .locals 0

    iput-object p2, p0, Lcom/xiaomi/push/service/l;->a:Lcom/xiaomi/push/service/XMPushService;

    iput-object p3, p0, Lcom/xiaomi/push/service/l;->b:Lcom/xiaomi/b/a/h;

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/XMPushService$e;-><init>(I)V

    return-void
.end method

.method private a(Lcom/xiaomi/b/a/h;)Lcom/xiaomi/b/a/h;
    .locals 2

    new-instance v0, Lcom/xiaomi/b/a/i;

    invoke-direct {v0}, Lcom/xiaomi/b/a/i;-><init>()V

    iget-object v1, p1, Lcom/xiaomi/b/a/h;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/b/a/i;->b(Ljava/lang/String;)Lcom/xiaomi/b/a/i;

    const-string v1, "package uninstalled"

    invoke-virtual {v0, v1}, Lcom/xiaomi/b/a/i;->c(Ljava/lang/String;)Lcom/xiaomi/b/a/i;

    invoke-static {}, Lorg/jivesoftware/smack/packet/Packet;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/b/a/i;->a(Ljava/lang/String;)Lcom/xiaomi/b/a/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/b/a/i;->a(Z)Lcom/xiaomi/b/a/i;

    sget-object v1, Lcom/xiaomi/b/a/a;->i:Lcom/xiaomi/b/a/a;

    invoke-static {p1, v0, v1}, Lcom/xiaomi/push/service/j;->a(Lcom/xiaomi/b/a/h;Lorg/apache/thrift/TBase;Lcom/xiaomi/b/a/a;)Lcom/xiaomi/b/a/h;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/l;->a:Lcom/xiaomi/push/service/XMPushService;

    iget-object v1, p0, Lcom/xiaomi/push/service/l;->b:Lcom/xiaomi/b/a/h;

    invoke-direct {p0, v1}, Lcom/xiaomi/push/service/l;->a(Lcom/xiaomi/b/a/h;)Lcom/xiaomi/b/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/b/a/h;)V
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/push/service/l;->a:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "send app absent message."

    return-object v0
.end method
