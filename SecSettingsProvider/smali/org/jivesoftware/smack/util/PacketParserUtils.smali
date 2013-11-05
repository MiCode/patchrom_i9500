.class public Lorg/jivesoftware/smack/util/PacketParserUtils;
.super Ljava/lang/Object;


# static fields
.field private static a:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lorg/jivesoftware/smack/util/PacketParserUtils;->a:Lorg/xmlpull/v1/XmlPullParser;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/CommonPacketExtension;
    .locals 3

    invoke-static {}, Lorg/jivesoftware/smack/provider/ProviderManager;->a()Lorg/jivesoftware/smack/provider/ProviderManager;

    move-result-object v0

    const-string v1, "all"

    const-string v2, "xm:chat"

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/provider/ProviderManager;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/xiaomi/push/service/c;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/xiaomi/push/service/c;

    invoke-virtual {v0, p2}, Lcom/xiaomi/push/service/c;->b(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/CommonPacketExtension;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lorg/xmlpull/v1/XmlPullParser;Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 13

    const/4 v3, 0x0

    const-string v0, ""

    const-string v1, "id"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, ""

    const-string v1, "to"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, ""

    const-string v1, "from"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, ""

    const-string v1, "chid"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, ""

    const-string v1, "type"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/packet/IQ$Type;->a(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v8

    const/4 v2, 0x0

    move-object v0, v3

    move-object v1, v3

    :goto_0
    if-nez v2, :cond_5

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_4

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v10

    const-string v11, "error"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-static {p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->f(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v1

    :goto_1
    move v12, v2

    move-object v2, v0

    move v0, v12

    :goto_2
    move-object v12, v2

    move v2, v0

    move-object v0, v12

    goto :goto_0

    :cond_0
    const-string v0, "query"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "jabber:iq:auth"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->h(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Authentication;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, "query"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "jabber:iq:roster"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->i(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/RosterPacket;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, "query"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "jabber:iq:register"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->j(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Registration;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-instance v0, Lorg/jivesoftware/smack/packet/IQ;

    invoke-direct {v0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    invoke-static {v9, v10, p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->a(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/CommonPacketExtension;

    move-result-object v9

    invoke-virtual {v0, v9}, Lorg/jivesoftware/smack/packet/IQ;->a(Lorg/jivesoftware/smack/packet/CommonPacketExtension;)V

    goto :goto_1

    :cond_4
    const/4 v10, 0x3

    if-ne v9, v10, :cond_9

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "iq"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v2, 0x1

    move v12, v2

    move-object v2, v0

    move v0, v12

    goto :goto_2

    :cond_5
    if-nez v0, :cond_8

    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->a:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-eq v0, v8, :cond_6

    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->b:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v0, v8, :cond_7

    :cond_6
    new-instance v0, Lorg/jivesoftware/smack/util/a;

    invoke-direct {v0}, Lorg/jivesoftware/smack/util/a;-><init>()V

    invoke-virtual {v0, v4}, Lorg/jivesoftware/smack/packet/IQ;->k(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lorg/jivesoftware/smack/packet/IQ;->m(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lorg/jivesoftware/smack/packet/IQ;->n(Ljava/lang/String;)V

    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->d:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/IQ;->a(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    invoke-virtual {v0, v7}, Lorg/jivesoftware/smack/packet/IQ;->l(Ljava/lang/String;)V

    new-instance v1, Lorg/jivesoftware/smack/packet/XMPPError;

    sget-object v2, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->e:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;)V

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/IQ;->a(Lorg/jivesoftware/smack/packet/XMPPError;)V

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/Connection;->a(Lorg/jivesoftware/smack/packet/Packet;)V

    const-string v0, "iq usage error. send packet in packet parser."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V

    move-object v0, v3

    :goto_3
    return-object v0

    :cond_7
    new-instance v0, Lorg/jivesoftware/smack/util/b;

    invoke-direct {v0}, Lorg/jivesoftware/smack/util/b;-><init>()V

    :cond_8
    invoke-virtual {v0, v4}, Lorg/jivesoftware/smack/packet/IQ;->k(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lorg/jivesoftware/smack/packet/IQ;->m(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lorg/jivesoftware/smack/packet/IQ;->l(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lorg/jivesoftware/smack/packet/IQ;->n(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lorg/jivesoftware/smack/packet/IQ;->a(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/IQ;->a(Lorg/jivesoftware/smack/packet/XMPPError;)V

    goto :goto_3

    :cond_9
    move v12, v2

    move-object v2, v0

    move v0, v12

    goto/16 :goto_2
.end method

.method public static a(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Packet;
    .locals 15

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "1"

    const-string v4, ""

    const-string v5, "s"

    invoke-interface {p0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, ""

    const-string v4, "chid"

    invoke-interface {p0, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, ""

    const-string v4, "id"

    invoke-interface {p0, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, ""

    const-string v4, "from"

    invoke-interface {p0, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, ""

    const-string v4, "to"

    invoke-interface {p0, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, ""

    const-string v4, "type"

    invoke-interface {p0, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/xiaomi/push/service/p;->a()Lcom/xiaomi/push/service/p;

    move-result-object v0

    invoke-virtual {v0, v5, v8}, Lcom/xiaomi/push/service/p;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/p$b;

    move-result-object v0

    if-nez v0, :cond_1d

    invoke-static {}, Lcom/xiaomi/push/service/p;->a()Lcom/xiaomi/push/service/p;

    move-result-object v0

    invoke-virtual {v0, v5, v7}, Lcom/xiaomi/push/service/p;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/p$b;

    move-result-object v0

    move-object v4, v0

    :goto_0
    if-nez v4, :cond_0

    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "the channel id is wrong while receiving a encrypted message"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_1
    if-nez v3, :cond_7

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    if-ne v10, v12, :cond_6

    const-string v0, "s"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "error while receiving a encrypted message with wrong format"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v10, 0x4

    if-eq v0, v10, :cond_3

    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "error while receiving a encrypted message with wrong format"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v10

    const-string v0, "5"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v3, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v3}, Lorg/jivesoftware/smack/packet/Message;-><init>()V

    invoke-virtual {v3, v5}, Lorg/jivesoftware/smack/packet/Message;->l(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lorg/jivesoftware/smack/packet/Message;->b(Z)V

    invoke-virtual {v3, v7}, Lorg/jivesoftware/smack/packet/Message;->n(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Lorg/jivesoftware/smack/packet/Message;->m(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lorg/jivesoftware/smack/packet/Message;->k(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Lorg/jivesoftware/smack/packet/Message;->f(Ljava/lang/String;)V

    new-instance v4, Lorg/jivesoftware/smack/packet/CommonPacketExtension;

    const-string v5, "s"

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    move-object v2, v1

    check-cast v2, [Ljava/lang/String;

    invoke-direct {v4, v5, v1, v0, v2}, Lorg/jivesoftware/smack/packet/CommonPacketExtension;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Lorg/jivesoftware/smack/packet/CommonPacketExtension;->b(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/packet/Message;->a(Lorg/jivesoftware/smack/packet/CommonPacketExtension;)V

    move-object v0, v3

    :cond_4
    :goto_2
    return-object v0

    :cond_5
    iget-object v0, v4, Lcom/xiaomi/push/service/p$b;->i:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/xiaomi/push/service/s;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, v10}, Lcom/xiaomi/push/service/s;->b([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->a([B)V

    sget-object v0, Lorg/jivesoftware/smack/util/PacketParserUtils;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    sget-object v0, Lorg/jivesoftware/smack/util/PacketParserUtils;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->a(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    goto :goto_1

    :cond_6
    if-ne v10, v13, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "message"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v3, v2

    goto/16 :goto_1

    :cond_7
    if-nez v0, :cond_4

    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "error while receiving a encrypted message with wrong format"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v5, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v5}, Lorg/jivesoftware/smack/packet/Message;-><init>()V

    const-string v0, ""

    const-string v4, "id"

    invoke-interface {p0, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, "ID_NOT_AVAILABLE"

    :cond_9
    invoke-virtual {v5, v0}, Lorg/jivesoftware/smack/packet/Message;->k(Ljava/lang/String;)V

    const-string v0, ""

    const-string v4, "to"

    invoke-interface {p0, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/jivesoftware/smack/packet/Message;->m(Ljava/lang/String;)V

    const-string v0, ""

    const-string v4, "from"

    invoke-interface {p0, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/jivesoftware/smack/packet/Message;->n(Ljava/lang/String;)V

    const-string v0, ""

    const-string v4, "chid"

    invoke-interface {p0, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/jivesoftware/smack/packet/Message;->l(Ljava/lang/String;)V

    const-string v0, ""

    const-string v4, "appid"

    invoke-interface {p0, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/jivesoftware/smack/packet/Message;->a(Ljava/lang/String;)V

    :try_start_0
    const-string v0, ""

    const-string v4, "transient"

    invoke-interface {p0, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_3
    :try_start_1
    const-string v4, ""

    const-string v6, "seq"

    invoke-interface {p0, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual {v5, v4}, Lorg/jivesoftware/smack/packet/Message;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_a
    :goto_4
    :try_start_2
    const-string v4, ""

    const-string v6, "mseq"

    invoke-interface {p0, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-virtual {v5, v4}, Lorg/jivesoftware/smack/packet/Message;->c(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_b
    :goto_5
    :try_start_3
    const-string v4, ""

    const-string v6, "fseq"

    invoke-interface {p0, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    invoke-virtual {v5, v4}, Lorg/jivesoftware/smack/packet/Message;->d(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_c
    :goto_6
    :try_start_4
    const-string v4, ""

    const-string v6, "status"

    invoke-interface {p0, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d

    invoke-virtual {v5, v4}, Lorg/jivesoftware/smack/packet/Message;->e(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :cond_d
    :goto_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    const-string v4, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v2

    :goto_8
    invoke-virtual {v5, v0}, Lorg/jivesoftware/smack/packet/Message;->a(Z)V

    const-string v0, ""

    const-string v4, "type"

    invoke-interface {p0, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/jivesoftware/smack/packet/Message;->f(Ljava/lang/String;)V

    invoke-static {p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->k(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    const-string v4, ""

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    invoke-virtual {v5, v0}, Lorg/jivesoftware/smack/packet/Message;->j(Ljava/lang/String;)V

    :goto_9
    move v4, v3

    move-object v3, v1

    :goto_a
    if-nez v4, :cond_1a

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-ne v0, v12, :cond_19

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_e

    const-string v0, "xm"

    :cond_e
    const-string v7, "subject"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-static {p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->k(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    :cond_f
    invoke-static {p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->g(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/jivesoftware/smack/packet/Message;->g(Ljava/lang/String;)V

    move-object v0, v1

    move-object v1, v3

    :goto_b
    move-object v3, v1

    move-object v1, v0

    move v0, v4

    :goto_c
    move v4, v0

    goto :goto_a

    :catch_0
    move-exception v0

    move-object v0, v1

    goto/16 :goto_3

    :cond_10
    move v0, v3

    goto :goto_8

    :cond_11
    invoke-static {}, Lorg/jivesoftware/smack/packet/Packet;->t()Ljava/lang/String;

    goto :goto_9

    :cond_12
    const-string v7, "body"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    const-string v0, ""

    const-string v6, "encode"

    invoke-interface {p0, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->g(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_13

    invoke-virtual {v5, v6, v0}, Lorg/jivesoftware/smack/packet/Message;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    move-object v0, v1

    move-object v1, v3

    goto :goto_b

    :cond_13
    invoke-virtual {v5, v6}, Lorg/jivesoftware/smack/packet/Message;->h(Ljava/lang/String;)V

    goto :goto_d

    :cond_14
    const-string v7, "thread"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    if-nez v1, :cond_18

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    move-object v1, v3

    goto :goto_b

    :cond_15
    const-string v7, "error"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-static {p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->f(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/jivesoftware/smack/packet/Message;->a(Lorg/jivesoftware/smack/packet/XMPPError;)V

    move-object v0, v1

    move-object v1, v3

    goto :goto_b

    :cond_16
    const-string v7, "properties"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    const-string v7, "http://www.jivesoftware.com/xmlns/xmpp/properties"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-static {p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->d(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;

    move-result-object v0

    move-object v14, v1

    move-object v1, v0

    move-object v0, v14

    goto :goto_b

    :cond_17
    invoke-static {v6, v0, p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->a(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/CommonPacketExtension;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/jivesoftware/smack/packet/Message;->a(Lorg/jivesoftware/smack/packet/CommonPacketExtension;)V

    :cond_18
    move-object v0, v1

    move-object v1, v3

    goto :goto_b

    :cond_19
    if-ne v0, v13, :cond_1c

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v6, "message"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    move v0, v2

    goto/16 :goto_c

    :cond_1a
    invoke-virtual {v5, v1}, Lorg/jivesoftware/smack/packet/Message;->i(Ljava/lang/String;)V

    if-eqz v3, :cond_1b

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Lorg/jivesoftware/smack/packet/Message;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_e

    :cond_1b
    move-object v0, v5

    goto/16 :goto_2

    :cond_1c
    move v0, v4

    goto/16 :goto_c

    :cond_1d
    move-object v4, v0

    goto/16 :goto_0

    :catch_1
    move-exception v4

    goto/16 :goto_4

    :catch_2
    move-exception v4

    goto/16 :goto_5

    :catch_3
    move-exception v4

    goto/16 :goto_6

    :catch_4
    move-exception v4

    goto/16 :goto_7
.end method

.method private static a([B)V
    .locals 3

    sget-object v0, Lorg/jivesoftware/smack/util/PacketParserUtils;->a:Lorg/xmlpull/v1/XmlPullParser;

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/util/PacketParserUtils;->a:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v0, Lorg/jivesoftware/smack/util/PacketParserUtils;->a:Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v0, Lorg/jivesoftware/smack/util/PacketParserUtils;->a:Lorg/xmlpull/v1/XmlPullParser;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0
.end method

.method public static b(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Presence;
    .locals 7

    const/4 v2, 0x0

    sget-object v0, Lorg/jivesoftware/smack/packet/Presence$Type;->a:Lorg/jivesoftware/smack/packet/Presence$Type;

    const-string v1, ""

    const-string v3, "type"

    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :try_start_0
    invoke-static {v1}, Lorg/jivesoftware/smack/packet/Presence$Type;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Presence$Type;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    new-instance v3, Lorg/jivesoftware/smack/packet/Presence;

    invoke-direct {v3, v0}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    const-string v0, ""

    const-string v1, "to"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/jivesoftware/smack/packet/Presence;->m(Ljava/lang/String;)V

    const-string v0, ""

    const-string v1, "from"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/jivesoftware/smack/packet/Presence;->n(Ljava/lang/String;)V

    const-string v0, ""

    const-string v1, "chid"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/jivesoftware/smack/packet/Presence;->l(Ljava/lang/String;)V

    const-string v0, ""

    const-string v1, "id"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "ID_NOT_AVAILABLE"

    :cond_1
    invoke-virtual {v3, v0}, Lorg/jivesoftware/smack/packet/Presence;->k(Ljava/lang/String;)V

    move v1, v2

    :goto_1
    if-nez v1, :cond_a

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_8

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v4

    const-string v5, "status"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/jivesoftware/smack/packet/Presence;->a(Ljava/lang/String;)V

    :cond_2
    :goto_2
    move v0, v1

    :goto_3
    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v3

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found invalid presence type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v5, "priority"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :try_start_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/jivesoftware/smack/packet/Presence;->a(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v3, v2}, Lorg/jivesoftware/smack/packet/Presence;->a(I)V

    goto :goto_2

    :cond_4
    const-string v5, "show"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    :try_start_2
    invoke-static {v0}, Lorg/jivesoftware/smack/packet/Presence$Mode;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Presence$Mode;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/packet/Presence;->a(Lorg/jivesoftware/smack/packet/Presence$Mode;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    :catch_3
    move-exception v4

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found invalid presence mode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string v5, "error"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->f(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/jivesoftware/smack/packet/Presence;->a(Lorg/jivesoftware/smack/packet/XMPPError;)V

    goto :goto_2

    :cond_6
    const-string v5, "properties"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "http://www.jivesoftware.com/xmlns/xmpp/properties"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->d(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Lorg/jivesoftware/smack/packet/Presence;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :cond_7
    invoke-static {v0, v4, p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->a(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/CommonPacketExtension;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/jivesoftware/smack/packet/Presence;->a(Lorg/jivesoftware/smack/packet/CommonPacketExtension;)V

    goto/16 :goto_2

    :cond_8
    const/4 v4, 0x3

    if-ne v0, v4, :cond_9

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "presence"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto/16 :goto_3

    :cond_9
    move v0, v1

    goto/16 :goto_3

    :cond_a
    return-object v3
.end method

.method public static c(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/XMBinder$BindResult;
    .locals 7

    new-instance v2, Lorg/jivesoftware/smack/XMBinder$BindResult;

    invoke-direct {v2}, Lorg/jivesoftware/smack/XMBinder$BindResult;-><init>()V

    const-string v0, ""

    const-string v1, "id"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const-string v3, "to"

    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    const-string v4, "from"

    invoke-interface {p0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, "chid"

    invoke-interface {p0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const-string v6, "type"

    invoke-interface {p0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/jivesoftware/smack/XMBinder$BindResult$Type;->a(Ljava/lang/String;)Lorg/jivesoftware/smack/XMBinder$BindResult$Type;

    move-result-object v5

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/XMBinder$BindResult;->k(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smack/XMBinder$BindResult;->m(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/XMBinder$BindResult;->n(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/XMBinder$BindResult;->l(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lorg/jivesoftware/smack/XMBinder$BindResult;->a(Lorg/jivesoftware/smack/XMBinder$BindResult$Type;)V

    const/4 v1, 0x0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "error"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->f(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "bind"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/XMBinder$BindResult;->a(Lorg/jivesoftware/smack/packet/XMPPError;)V

    return-object v2
.end method

.method public static d(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v3, 0x0

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-ne v0, v9, :cond_c

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "property"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, 0x0

    move-object v1, v3

    move-object v4, v3

    move-object v5, v3

    move-object v2, v3

    :cond_1
    :goto_0
    if-nez v0, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-ne v7, v9, :cond_3

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "name"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    const-string v8, "value"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v1, ""

    const-string v5, "type"

    invoke-interface {p0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    if-ne v7, v10, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "property"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v0, "integer"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    if-eqz v4, :cond_4

    if-eqz v0, :cond_4

    invoke-interface {v6, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const/4 v2, 0x1

    move v11, v2

    move-object v2, v0

    move v0, v11

    goto :goto_0

    :cond_5
    const-string v0, "long"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1

    :cond_6
    const-string v0, "float"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    goto :goto_1

    :cond_7
    const-string v0, "double"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    goto :goto_1

    :cond_8
    const-string v0, "boolean"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :cond_9
    const-string v0, "string"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, v1

    goto :goto_1

    :cond_a
    const-string v0, "java-object"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :try_start_0
    new-instance v0, Ljava/io/ObjectInputStream;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-static {v1}, Lorg/jivesoftware/smack/util/StringUtils;->c(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v7}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    move-object v0, v2

    goto :goto_1

    :cond_c
    if-ne v0, v10, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "properties"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v6
.end method

.method public static e(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/StreamError;
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    new-instance v1, Lorg/jivesoftware/smack/packet/StreamError;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/packet/StreamError;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "error"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static f(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/XMPPError;
    .locals 10

    const/4 v1, 0x0

    const/4 v4, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "-1"

    move-object v7, v0

    move-object v8, v4

    move-object v3, v4

    move v0, v1

    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "code"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, ""

    const-string v5, "code"

    invoke-interface {p0, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "type"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, ""

    const-string v7, "type"

    invoke-interface {p0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "reason"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v3, ""

    const-string v7, "reason"

    invoke-interface {p0, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    move-object v7, v2

    move-object v8, v5

    goto :goto_0

    :cond_1
    move-object v5, v4

    :cond_2
    :goto_3
    if-nez v1, :cond_7

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "text"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v2

    const-string v9, "urn:ietf:params:xml:ns:xmpp-stanzas"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v4, v0

    goto :goto_3

    :cond_4
    invoke-static {v0, v2, p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->a(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/CommonPacketExtension;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    const/4 v2, 0x3

    if-ne v0, v2, :cond_6

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "error"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_7
    if-nez v8, :cond_8

    const-string v2, "cancel"

    :goto_4
    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct/range {v0 .. v6}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v0

    :cond_8
    move-object v2, v8

    goto :goto_4

    :cond_9
    move-object v5, v8

    goto :goto_2

    :cond_a
    move-object v2, v7

    goto/16 :goto_1
.end method

.method private static g(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-eq v2, v1, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static h(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Authentication;
    .locals 4

    new-instance v1, Lorg/jivesoftware/smack/packet/Authentication;

    invoke-direct {v1}, Lorg/jivesoftware/smack/packet/Authentication;-><init>()V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_5

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "username"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/Authentication;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "password"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/Authentication;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "digest"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/Authentication;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "resource"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/Authentication;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "query"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    return-object v1
.end method

.method private static i(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/RosterPacket;
    .locals 9

    const/4 v3, 0x0

    const/4 v7, 0x2

    new-instance v4, Lorg/jivesoftware/smack/packet/RosterPacket;

    invoke-direct {v4}, Lorg/jivesoftware/smack/packet/RosterPacket;-><init>()V

    const/4 v2, 0x0

    move-object v0, v3

    :goto_0
    if-nez v2, :cond_7

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    if-ne v1, v7, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v5, "query"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ver"

    invoke-interface {p0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/jivesoftware/smack/packet/RosterPacket;->a(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    if-ne v1, v7, :cond_4

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v5, "item"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;

    const-string v1, ""

    const-string v5, "jid"

    invoke-interface {p0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, ""

    const-string v6, "name"

    invoke-interface {p0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v1, v5}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    const-string v5, "ask"

    invoke-interface {p0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;->a(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->a(Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;)V

    const-string v1, ""

    const-string v5, "subscription"

    invoke-interface {p0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    :goto_1
    invoke-static {v1}, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->a(Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;)V

    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v5, "group"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->a(Ljava/lang/String;)V

    :cond_2
    move-object v1, v0

    move v0, v2

    :goto_2
    move v2, v0

    move-object v0, v1

    goto/16 :goto_0

    :cond_3
    const-string v1, "none"

    goto :goto_1

    :cond_4
    const/4 v5, 0x3

    if-ne v1, v5, :cond_6

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v5, "item"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v4, v0}, Lorg/jivesoftware/smack/packet/RosterPacket;->a(Lorg/jivesoftware/smack/packet/RosterPacket$Item;)V

    :cond_5
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v5, "query"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    move v8, v1

    move-object v1, v0

    move v0, v8

    goto :goto_2

    :cond_6
    move-object v1, v0

    move v0, v2

    goto :goto_2

    :cond_7
    return-object v4
.end method

.method private static j(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Registration;
    .locals 6

    const/4 v1, 0x1

    new-instance v2, Lorg/jivesoftware/smack/packet/Registration;

    invoke-direct {v2}, Lorg/jivesoftware/smack/packet/Registration;-><init>()V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_6

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v3

    const-string v4, "jabber:iq:register"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    const-string v5, "instructions"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/packet/Registration;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v3, v4}, Lorg/jivesoftware/smack/packet/Registration;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v4, "registered"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smack/packet/Registration;->a(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/packet/Registration;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->a(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/CommonPacketExtension;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/packet/Registration;->a(Lorg/jivesoftware/smack/packet/CommonPacketExtension;)V

    goto :goto_0

    :cond_5
    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "query"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_6
    return-object v2
.end method

.method private static k(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "xml:lang"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "lang"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "xml"

    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
