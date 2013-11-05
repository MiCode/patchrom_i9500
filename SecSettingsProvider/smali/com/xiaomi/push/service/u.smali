.class public Lcom/xiaomi/push/service/u;
.super Lcom/xiaomi/push/service/XMPushService$e;


# instance fields
.field private a:Lcom/xiaomi/push/service/XMPushService;

.field private b:Lorg/jivesoftware/smack/packet/Packet;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService$e;-><init>(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/service/u;->a:Lcom/xiaomi/push/service/XMPushService;

    iput-object p1, p0, Lcom/xiaomi/push/service/u;->a:Lcom/xiaomi/push/service/XMPushService;

    iput-object p2, p0, Lcom/xiaomi/push/service/u;->b:Lorg/jivesoftware/smack/packet/Packet;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/u;->a:Lcom/xiaomi/push/service/XMPushService;

    iget-object v1, p0, Lcom/xiaomi/push/service/u;->b:Lorg/jivesoftware/smack/packet/Packet;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lorg/jivesoftware/smack/packet/Packet;)V
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/push/service/u;->a:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "send a message."

    return-object v0
.end method
