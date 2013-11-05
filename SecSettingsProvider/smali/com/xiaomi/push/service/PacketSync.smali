.class public Lcom/xiaomi/push/service/PacketSync;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/push/service/PacketSync;->a:Lcom/xiaomi/push/service/XMPushService;

    return-void
.end method

.method private a(Lorg/jivesoftware/smack/packet/CommonPacketExtension;)V
    .locals 3

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/CommonPacketExtension;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/network/HostManager;->getInstance()Lcom/xiaomi/network/HostManager;

    move-result-object v1

    invoke-static {}, Lorg/jivesoftware/smack/ConnectionConfiguration;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/network/HostManager;->getFallbacksByHost(Ljava/lang/String;)Lcom/xiaomi/network/Fallback;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/xiaomi/network/Fallback;->a([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/PacketSync;->a:Lcom/xiaomi/push/service/XMPushService;

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/PacketSync;->a:Lcom/xiaomi/push/service/XMPushService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 10

    const/4 v4, 0x0

    const/4 v9, 0x7

    const/4 v7, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    instance-of v0, p1, Lorg/jivesoftware/smack/XMBinder$BindResult;

    if-eqz v0, :cond_6

    check-cast p1, Lorg/jivesoftware/smack/XMBinder$BindResult;

    invoke-virtual {p1}, Lorg/jivesoftware/smack/XMBinder$BindResult;->b()Lorg/jivesoftware/smack/XMBinder$BindResult$Type;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jivesoftware/smack/XMBinder$BindResult;->l()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lorg/jivesoftware/smack/XMBinder$BindResult;->m()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/xiaomi/push/service/p;->a()Lcom/xiaomi/push/service/p;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/xiaomi/push/service/p;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/p$b;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v5, Lorg/jivesoftware/smack/XMBinder$BindResult$Type;->a:Lorg/jivesoftware/smack/XMBinder$BindResult$Type;

    if-ne v1, v5, :cond_2

    sget-object v1, Lcom/xiaomi/push/service/p$c;->c:Lcom/xiaomi/push/service/p$c;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/p$b;->a(Lcom/xiaomi/push/service/p$c;IILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMACK: channel bind succeeded, chid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/jivesoftware/smack/XMBinder$BindResult;->o()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMACK: channel bind failed, error="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lorg/jivesoftware/smack/packet/XMPPError;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    if-eqz v8, :cond_0

    const-string v1, "auth"

    invoke-virtual {v8}, Lorg/jivesoftware/smack/packet/XMPPError;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/xiaomi/push/service/p$c;->a:Lcom/xiaomi/push/service/p$c;

    const/4 v3, 0x5

    invoke-virtual {v8}, Lorg/jivesoftware/smack/packet/XMPPError;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lorg/jivesoftware/smack/packet/XMPPError;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/p$b;->a(Lcom/xiaomi/push/service/p$c;IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/push/service/p;->a()Lcom/xiaomi/push/service/p;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/xiaomi/push/service/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMACK: channel bind failed, chid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lorg/jivesoftware/smack/packet/XMPPError;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v1, "cancel"

    invoke-virtual {v8}, Lorg/jivesoftware/smack/packet/XMPPError;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/xiaomi/push/service/p$c;->a:Lcom/xiaomi/push/service/p$c;

    invoke-virtual {v8}, Lorg/jivesoftware/smack/packet/XMPPError;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lorg/jivesoftware/smack/packet/XMPPError;->b()Ljava/lang/String;

    move-result-object v5

    move v3, v9

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/p$b;->a(Lcom/xiaomi/push/service/p$c;IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/push/service/p;->a()Lcom/xiaomi/push/service/p;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/xiaomi/push/service/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v1, "wait"

    invoke-virtual {v8}, Lorg/jivesoftware/smack/packet/XMPPError;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/xiaomi/push/service/PacketSync;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/p$b;)V

    sget-object v1, Lcom/xiaomi/push/service/p$c;->a:Lcom/xiaomi/push/service/p$c;

    invoke-virtual {v8}, Lorg/jivesoftware/smack/packet/XMPPError;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lorg/jivesoftware/smack/packet/XMPPError;->b()Ljava/lang/String;

    move-result-object v5

    move v3, v9

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/p$b;->a(Lcom/xiaomi/push/service/p$c;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v1, "1"

    :cond_7
    const-string v0, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    instance-of v0, p1, Lorg/jivesoftware/smack/packet/IQ;

    if-eqz v0, :cond_0

    const-string v0, "0"

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "result"

    check-cast p1, Lorg/jivesoftware/smack/packet/IQ;

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->c()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/IQ$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/PacketSync;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->f()Lorg/jivesoftware/smack/Connection;

    move-result-object v0

    instance-of v1, v0, Lorg/jivesoftware/smack/XMPPConnection;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->w()V

    goto/16 :goto_0

    :cond_8
    instance-of v0, p1, Lorg/jivesoftware/smack/packet/IQ;

    if-eqz v0, :cond_a

    const-string v0, "kick"

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/Packet;->o(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/CommonPacketExtension;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->m()Ljava/lang/String;

    move-result-object v2

    const-string v4, "type"

    invoke-virtual {v0, v4}, Lorg/jivesoftware/smack/packet/CommonPacketExtension;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v4, "reason"

    invoke-virtual {v0, v4}, Lorg/jivesoftware/smack/packet/CommonPacketExtension;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "kicked by server, chid="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " userid="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " type="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " reason="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    const-string v0, "wait"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/xiaomi/push/service/p;->a()Lcom/xiaomi/push/service/p;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/p;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/p$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/push/service/PacketSync;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/p$b;)V

    sget-object v1, Lcom/xiaomi/push/service/p$c;->a:Lcom/xiaomi/push/service/p$c;

    move v2, v7

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/p$b;->a(Lcom/xiaomi/push/service/p$c;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/xiaomi/push/service/PacketSync;->a:Lcom/xiaomi/push/service/XMPushService;

    move v3, v7

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/push/service/p;->a()Lcom/xiaomi/push/service/p;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    instance-of v0, p1, Lorg/jivesoftware/smack/packet/Message;

    if-eqz v0, :cond_b

    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smack/packet/Message;

    const-string v2, "redir"

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Message;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v1, "hosts"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Message;->o(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/CommonPacketExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/PacketSync;->a(Lorg/jivesoftware/smack/packet/CommonPacketExtension;)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/xiaomi/push/service/PacketSync;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->c()Lcom/xiaomi/push/service/b;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/push/service/PacketSync;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0, v2, v1, p1}, Lcom/xiaomi/push/service/b;->a(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;Lorg/jivesoftware/smack/packet/Packet;)V

    goto/16 :goto_0
.end method
