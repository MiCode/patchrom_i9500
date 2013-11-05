.class Lcom/xiaomi/push/service/XMPushService$g;
.super Lcom/xiaomi/push/service/XMPushService$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/XMPushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/push/service/XMPushService;

.field private b:Lorg/jivesoftware/smack/packet/Packet;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/push/service/XMPushService$g;->a:Lcom/xiaomi/push/service/XMPushService;

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService$e;-><init>(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService$g;->b:Lorg/jivesoftware/smack/packet/Packet;

    iput-object p2, p0, Lcom/xiaomi/push/service/XMPushService$g;->b:Lorg/jivesoftware/smack/packet/Packet;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService$g;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->d(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/PacketSync;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService$g;->b:Lorg/jivesoftware/smack/packet/Packet;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/PacketSync;->a(Lorg/jivesoftware/smack/packet/Packet;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "receive a message."

    return-object v0
.end method
