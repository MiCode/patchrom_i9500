.class public Lcom/xiaomi/push/service/j;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Lcom/xiaomi/b/a/h;Lorg/apache/thrift/TBase;Lcom/xiaomi/b/a/a;)Lcom/xiaomi/b/a/h;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/thrift/TBase",
            "<TT;*>;>(",
            "Lcom/xiaomi/b/a/h;",
            "TT;",
            "Lcom/xiaomi/b/a/a;",
            ")",
            "Lcom/xiaomi/b/a/h;"
        }
    .end annotation

    invoke-static {p1}, Lcom/xiaomi/b/a/u;->a(Lorg/apache/thrift/TBase;)[B

    move-result-object v0

    new-instance v1, Lcom/xiaomi/b/a/h;

    invoke-direct {v1}, Lcom/xiaomi/b/a/h;-><init>()V

    new-instance v2, Lcom/xiaomi/b/a/d;

    invoke-direct {v2}, Lcom/xiaomi/b/a/d;-><init>()V

    const-wide/16 v3, 0x5

    iput-wide v3, v2, Lcom/xiaomi/b/a/d;->a:J

    const-string v3, "fakeid"

    iput-object v3, v2, Lcom/xiaomi/b/a/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaomi/b/a/h;->a(Lcom/xiaomi/b/a/d;)Lcom/xiaomi/b/a/h;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/b/a/h;->a(Ljava/nio/ByteBuffer;)Lcom/xiaomi/b/a/h;

    invoke-virtual {v1, p2}, Lcom/xiaomi/b/a/h;->a(Lcom/xiaomi/b/a/a;)Lcom/xiaomi/b/a/h;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/xiaomi/b/a/h;->c(Z)Lcom/xiaomi/b/a/h;

    invoke-virtual {p0}, Lcom/xiaomi/b/a/h;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/b/a/h;->b(Ljava/lang/String;)Lcom/xiaomi/b/a/h;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/xiaomi/b/a/h;->a(Z)Lcom/xiaomi/b/a/h;

    invoke-virtual {p0}, Lcom/xiaomi/b/a/h;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/b/a/h;->a(Ljava/lang/String;)Lcom/xiaomi/b/a/h;

    return-object v1
.end method

.method private static a(Lcom/xiaomi/push/service/XMPushService;[B)V
    .locals 5

    new-instance v0, Lcom/xiaomi/b/a/h;

    invoke-direct {v0}, Lcom/xiaomi/b/a/h;-><init>()V

    :try_start_0
    invoke-static {v0, p1}, Lcom/xiaomi/b/a/u;->a(Lorg/apache/thrift/TBase;[B)V

    iget-object v1, v0, Lcom/xiaomi/b/a/h;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xiaomi.mipush.RECEIVE_MESSAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "mipush_payload"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-object v2, v0, Lcom/xiaomi/b/a/h;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v1}, Lcom/xiaomi/push/service/j;->a(Lcom/xiaomi/push/service/XMPushService;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/xiaomi/b/a/h;->m()Lcom/xiaomi/b/a/c;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/xiaomi/b/a/c;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/xiaomi/b/a/c;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, v2, Lcom/xiaomi/b/a/c;->h:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    iget-object v3, v0, Lcom/xiaomi/b/a/h;->f:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/xiaomi/push/service/m;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v0, v0, Lcom/xiaomi/b/a/h;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/push/service/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/push/service/XMPushService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {p0, v0, p1}, Lcom/xiaomi/push/service/m;->a(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/b/a/h;[B)V

    new-instance v1, Lcom/xiaomi/push/service/k;

    const/4 v3, 0x4

    invoke-direct {v1, v3, v0, v2, p0}, Lcom/xiaomi/push/service/k;-><init>(ILcom/xiaomi/b/a/h;Lcom/xiaomi/b/a/c;Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$e;)V
    :try_end_0
    .catch Lorg/apache/thrift/TException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v1, Lcom/xiaomi/push/service/l;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p0, v0}, Lcom/xiaomi/push/service/l;-><init>(ILcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/b/a/h;)V

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$e;)V

    goto :goto_0

    :cond_3
    const-string v0, "receive a mipush message without package name"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/apache/thrift/TException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static a(Lcom/xiaomi/push/service/XMPushService;Landroid/content/Intent;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/xiaomi/push/service/p$b;ZILjava/lang/String;)V
    .locals 3

    if-nez p3, :cond_0

    invoke-static {p1}, Lcom/xiaomi/push/service/g;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/f;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "token-expired"

    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, v0, Lcom/xiaomi/push/service/f;->d:Ljava/lang/String;

    iget-object v2, v0, Lcom/xiaomi/push/service/f;->e:Ljava/lang/String;

    iget-object v0, v0, Lcom/xiaomi/push/service/f;->f:Ljava/lang/String;

    invoke-static {p1, v1, v2, v0}, Lcom/xiaomi/push/service/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/f;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lcom/xiaomi/push/service/XMPushService;Lorg/jivesoftware/smack/packet/Packet;Lcom/xiaomi/push/service/p$b;)V
    .locals 3

    instance-of v0, p2, Lorg/jivesoftware/smack/packet/Message;

    if-eqz v0, :cond_1

    check-cast p2, Lorg/jivesoftware/smack/packet/Message;

    const-string v0, "s"

    invoke-virtual {p2, v0}, Lorg/jivesoftware/smack/packet/Message;->o(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/CommonPacketExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p3, Lcom/xiaomi/push/service/p$b;->i:Ljava/lang/String;

    invoke-virtual {p2}, Lorg/jivesoftware/smack/packet/Message;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/push/service/s;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/CommonPacketExtension;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/push/service/s;->b([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/push/service/j;->a(Lcom/xiaomi/push/service/XMPushService;[B)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "not a mipush message"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
