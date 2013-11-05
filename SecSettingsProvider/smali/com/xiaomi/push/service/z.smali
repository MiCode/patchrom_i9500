.class Lcom/xiaomi/push/service/z;
.super Lcom/xiaomi/push/service/XMPushService$e;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:[B

.field final synthetic c:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;ILjava/lang/String;[B)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/service/z;->c:Lcom/xiaomi/push/service/XMPushService;

    iput-object p3, p0, Lcom/xiaomi/push/service/z;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/push/service/z;->b:[B

    invoke-direct {p0, p2}, Lcom/xiaomi/push/service/XMPushService$e;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/z;->c:Lcom/xiaomi/push/service/XMPushService;

    iget-object v1, p0, Lcom/xiaomi/push/service/z;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/push/service/z;->b:[B

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;[B)V
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/push/service/z;->c:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "send mi push message"

    return-object v0
.end method
