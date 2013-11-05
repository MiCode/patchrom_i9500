.class public Lorg/jivesoftware/smack/XMBinder$Bind;
.super Lorg/jivesoftware/smack/packet/Packet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/XMBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Bind"
.end annotation


# instance fields
.field final synthetic a:Lorg/jivesoftware/smack/XMBinder;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/XMBinder;Lcom/xiaomi/push/service/p$b;Ljava/lang/String;Lorg/jivesoftware/smack/Connection;)V
    .locals 7

    const/4 v1, 0x0

    iput-object p1, p0, Lorg/jivesoftware/smack/XMBinder$Bind;->a:Lorg/jivesoftware/smack/XMBinder;

    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/Packet;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p4}, Lorg/jivesoftware/smack/Connection;->l()I

    move-result v0

    const-string v3, "challenge"

    invoke-interface {v2, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "token"

    iget-object v4, p2, Lcom/xiaomi/push/service/p$b;->c:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "chid"

    iget-object v4, p2, Lcom/xiaomi/push/service/p$b;->h:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "from"

    iget-object v4, p2, Lcom/xiaomi/push/service/p$b;->b:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "id"

    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMBinder$Bind;->k()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "to"

    const-string v4, "xiaomi.com"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v3, p2, Lcom/xiaomi/push/service/p$b;->e:Z

    if-eqz v3, :cond_2

    const-string v3, "kick"

    const-string v4, "1"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {p4}, Lorg/jivesoftware/smack/Connection;->n()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_b

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-virtual {p4}, Lorg/jivesoftware/smack/Connection;->n()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v0, "conn:%1$d,t:%2$d"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "pf"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p4}, Lorg/jivesoftware/smack/Connection;->m()V

    invoke-virtual {p4}, Lorg/jivesoftware/smack/Connection;->o()V

    move-object v3, v0

    :goto_1
    iget-object v0, p2, Lcom/xiaomi/push/service/p$b;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "client_attrs"

    iget-object v4, p2, Lcom/xiaomi/push/service/p$b;->f:Ljava/lang/String;

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-object v0, p2, Lcom/xiaomi/push/service/p$b;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "cloud_attrs"

    iget-object v4, p2, Lcom/xiaomi/push/service/p$b;->g:Ljava/lang/String;

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    iget-object v0, p2, Lcom/xiaomi/push/service/p$b;->d:Ljava/lang/String;

    const-string v4, "XIAOMI-PASS"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/xiaomi/push/service/p$b;->d:Ljava/lang/String;

    const-string v4, "XMPUSH-PASS"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    iget-object v0, p2, Lcom/xiaomi/push/service/p$b;->d:Ljava/lang/String;

    iget-object v4, p2, Lcom/xiaomi/push/service/p$b;->i:Ljava/lang/String;

    invoke-static {v0, v1, v2, v4}, Lcom/xiaomi/channel/commonutils/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_4
    iget-object v0, p2, Lcom/xiaomi/push/service/p$b;->h:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/XMBinder$Bind;->l(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/xiaomi/push/service/p$b;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/XMBinder$Bind;->n(Ljava/lang/String;)V

    const-string v0, "xiaomi.com"

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/XMBinder$Bind;->m(Ljava/lang/String;)V

    new-instance v5, Lorg/jivesoftware/smack/packet/CommonPacketExtension;

    const-string v6, "token"

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    move-object v2, v1

    check-cast v2, [Ljava/lang/String;

    invoke-direct {v5, v6, v1, v0, v2}, Lorg/jivesoftware/smack/packet/CommonPacketExtension;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p2, Lcom/xiaomi/push/service/p$b;->c:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lorg/jivesoftware/smack/packet/CommonPacketExtension;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lorg/jivesoftware/smack/XMBinder$Bind;->a(Lorg/jivesoftware/smack/packet/CommonPacketExtension;)V

    new-instance v5, Lorg/jivesoftware/smack/packet/CommonPacketExtension;

    const-string v6, "kick"

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    move-object v2, v1

    check-cast v2, [Ljava/lang/String;

    invoke-direct {v5, v6, v1, v0, v2}, Lorg/jivesoftware/smack/packet/CommonPacketExtension;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    iget-boolean v0, p2, Lcom/xiaomi/push/service/p$b;->e:Z

    if-eqz v0, :cond_7

    const-string v0, "1"

    :goto_5
    invoke-virtual {v5, v0}, Lorg/jivesoftware/smack/packet/CommonPacketExtension;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lorg/jivesoftware/smack/XMBinder$Bind;->a(Lorg/jivesoftware/smack/packet/CommonPacketExtension;)V

    new-instance v5, Lorg/jivesoftware/smack/packet/CommonPacketExtension;

    const-string v6, "sig"

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    move-object v2, v1

    check-cast v2, [Ljava/lang/String;

    invoke-direct {v5, v6, v1, v0, v2}, Lorg/jivesoftware/smack/packet/CommonPacketExtension;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Lorg/jivesoftware/smack/packet/CommonPacketExtension;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lorg/jivesoftware/smack/XMBinder$Bind;->a(Lorg/jivesoftware/smack/packet/CommonPacketExtension;)V

    new-instance v4, Lorg/jivesoftware/smack/packet/CommonPacketExtension;

    const-string v5, "method"

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    move-object v2, v1

    check-cast v2, [Ljava/lang/String;

    invoke-direct {v4, v5, v1, v0, v2}, Lorg/jivesoftware/smack/packet/CommonPacketExtension;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p2, Lcom/xiaomi/push/service/p$b;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p2, Lcom/xiaomi/push/service/p$b;->d:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lorg/jivesoftware/smack/packet/CommonPacketExtension;->b(Ljava/lang/String;)V

    :goto_6
    invoke-virtual {p0, v4}, Lorg/jivesoftware/smack/XMBinder$Bind;->a(Lorg/jivesoftware/smack/packet/CommonPacketExtension;)V

    new-instance v4, Lorg/jivesoftware/smack/packet/CommonPacketExtension;

    const-string v5, "client_attrs"

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    move-object v2, v1

    check-cast v2, [Ljava/lang/String;

    invoke-direct {v4, v5, v1, v0, v2}, Lorg/jivesoftware/smack/packet/CommonPacketExtension;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p2, Lcom/xiaomi/push/service/p$b;->f:Ljava/lang/String;

    if-nez v0, :cond_9

    const-string v0, ""

    :goto_7
    invoke-virtual {v4, v0}, Lorg/jivesoftware/smack/packet/CommonPacketExtension;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lorg/jivesoftware/smack/XMBinder$Bind;->a(Lorg/jivesoftware/smack/packet/CommonPacketExtension;)V

    new-instance v4, Lorg/jivesoftware/smack/packet/CommonPacketExtension;

    const-string v5, "cloud_attrs"

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    move-object v2, v1

    check-cast v2, [Ljava/lang/String;

    invoke-direct {v4, v5, v1, v0, v2}, Lorg/jivesoftware/smack/packet/CommonPacketExtension;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p2, Lcom/xiaomi/push/service/p$b;->g:Ljava/lang/String;

    if-nez v0, :cond_a

    const-string v0, ""

    :goto_8
    invoke-virtual {v4, v0}, Lorg/jivesoftware/smack/packet/CommonPacketExtension;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lorg/jivesoftware/smack/XMBinder$Bind;->a(Lorg/jivesoftware/smack/packet/CommonPacketExtension;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v4, Lorg/jivesoftware/smack/packet/CommonPacketExtension;

    const-string v5, "pf"

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    move-object v2, v1

    check-cast v2, [Ljava/lang/String;

    invoke-direct {v4, v5, v1, v0, v2}, Lorg/jivesoftware/smack/packet/CommonPacketExtension;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lorg/jivesoftware/smack/packet/CommonPacketExtension;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lorg/jivesoftware/smack/XMBinder$Bind;->a(Lorg/jivesoftware/smack/packet/CommonPacketExtension;)V

    :cond_1
    return-void

    :cond_2
    const-string v3, "kick"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_3
    const-string v0, "client_attrs"

    const-string v4, ""

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_4
    const-string v0, "cloud_attrs"

    const-string v4, ""

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_5
    iget-object v0, p2, Lcom/xiaomi/push/service/p$b;->d:Ljava/lang/String;

    const-string v2, "XIAOMI-SASL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_6
    move-object v4, v1

    goto/16 :goto_4

    :cond_7
    const-string v0, "0"

    goto/16 :goto_5

    :cond_8
    const-string v0, "XIAOMI-SASL"

    invoke-virtual {v4, v0}, Lorg/jivesoftware/smack/packet/CommonPacketExtension;->b(Ljava/lang/String;)V

    goto :goto_6

    :cond_9
    iget-object v0, p2, Lcom/xiaomi/push/service/p$b;->f:Ljava/lang/String;

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_a
    iget-object v0, p2, Lcom/xiaomi/push/service/p$b;->g:Ljava/lang/String;

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_b
    move-object v3, v1

    goto/16 :goto_1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<bind "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMBinder$Bind;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMBinder$Bind;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMBinder$Bind;->m()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "to=\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMBinder$Bind;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jivesoftware/smack/util/StringUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMBinder$Bind;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "from=\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMBinder$Bind;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jivesoftware/smack/util/StringUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMBinder$Bind;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "chid=\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMBinder$Bind;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jivesoftware/smack/util/StringUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMBinder$Bind;->p()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMBinder$Bind;->p()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/CommonPacketExtension;

    invoke-interface {v0}, Lorg/jivesoftware/smack/packet/PacketExtension;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const-string v0, "</bind>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
