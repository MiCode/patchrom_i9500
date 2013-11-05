.class final Lcom/xiaomi/push/service/k;
.super Lcom/xiaomi/push/service/XMPushService$e;


# instance fields
.field final synthetic a:Lcom/xiaomi/b/a/h;

.field final synthetic b:Lcom/xiaomi/b/a/c;

.field final synthetic c:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(ILcom/xiaomi/b/a/h;Lcom/xiaomi/b/a/c;Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0

    iput-object p2, p0, Lcom/xiaomi/push/service/k;->a:Lcom/xiaomi/b/a/h;

    iput-object p3, p0, Lcom/xiaomi/push/service/k;->b:Lcom/xiaomi/b/a/c;

    iput-object p4, p0, Lcom/xiaomi/push/service/k;->c:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/XMPushService$e;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/xiaomi/b/a/e;

    invoke-direct {v0}, Lcom/xiaomi/b/a/e;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/push/service/k;->a:Lcom/xiaomi/b/a/h;

    invoke-virtual {v1}, Lcom/xiaomi/b/a/h;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/b/a/e;->b(Ljava/lang/String;)Lcom/xiaomi/b/a/e;

    iget-object v1, p0, Lcom/xiaomi/push/service/k;->b:Lcom/xiaomi/b/a/c;

    invoke-virtual {v1}, Lcom/xiaomi/b/a/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/b/a/e;->a(Ljava/lang/String;)Lcom/xiaomi/b/a/e;

    iget-object v1, p0, Lcom/xiaomi/push/service/k;->b:Lcom/xiaomi/b/a/c;

    invoke-virtual {v1}, Lcom/xiaomi/b/a/c;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/b/a/e;->a(J)Lcom/xiaomi/b/a/e;

    iget-object v1, p0, Lcom/xiaomi/push/service/k;->b:Lcom/xiaomi/b/a/c;

    invoke-virtual {v1}, Lcom/xiaomi/b/a/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/push/service/k;->b:Lcom/xiaomi/b/a/c;

    invoke-virtual {v1}, Lcom/xiaomi/b/a/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/b/a/e;->c(Ljava/lang/String;)Lcom/xiaomi/b/a/e;

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/push/service/k;->c:Lcom/xiaomi/push/service/XMPushService;

    iget-object v2, p0, Lcom/xiaomi/push/service/k;->a:Lcom/xiaomi/b/a/h;

    sget-object v3, Lcom/xiaomi/b/a/a;->f:Lcom/xiaomi/b/a/a;

    invoke-static {v2, v0, v3}, Lcom/xiaomi/push/service/j;->a(Lcom/xiaomi/b/a/h;Lorg/apache/thrift/TBase;Lcom/xiaomi/b/a/a;)Lcom/xiaomi/b/a/h;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/b/a/h;)V
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/push/service/k;->c:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "send ack message for notification message."

    return-object v0
.end method
