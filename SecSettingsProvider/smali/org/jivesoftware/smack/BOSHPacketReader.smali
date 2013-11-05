.class public Lorg/jivesoftware/smack/BOSHPacketReader;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kenai/jbosh/BOSHClientResponseListener;


# instance fields
.field private a:Lorg/jivesoftware/smack/BOSHConnection;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/BOSHConnection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->a:Lorg/jivesoftware/smack/BOSHConnection;

    return-void
.end method


# virtual methods
.method public a(Lcom/kenai/jbosh/BOSHMessageEvent;)Z
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/kenai/jbosh/BOSHMessageEvent;->a()Lcom/kenai/jbosh/AbstractBody;

    move-result-object v0

    if-eqz v0, :cond_5

    :try_start_0
    iget-object v3, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->a:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/BOSHConnection;->j()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "xm"

    const-string v4, "challenge"

    invoke-static {v3, v4}, Lcom/kenai/jbosh/BodyQName;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/kenai/jbosh/BodyQName;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/kenai/jbosh/AbstractBody;->a(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-nez v4, :cond_0

    :try_start_1
    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->a:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/BOSHConnection;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v2, v1

    :cond_0
    :try_start_2
    iget-object v3, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->a:Lorg/jivesoftware/smack/BOSHConnection;

    iget-object v3, v3, Lorg/jivesoftware/smack/BOSHConnection;->b:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v3, :cond_1

    :try_start_3
    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->a:Lorg/jivesoftware/smack/BOSHConnection;

    const-string v3, "xm"

    const-string v4, "sid"

    invoke-static {v3, v4}, Lcom/kenai/jbosh/BodyQName;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/kenai/jbosh/BodyQName;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/kenai/jbosh/AbstractBody;->a(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/jivesoftware/smack/BOSHConnection;->b:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move v2, v1

    :cond_1
    :try_start_4
    iget-object v3, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->a:Lorg/jivesoftware/smack/BOSHConnection;

    iget-object v3, v3, Lorg/jivesoftware/smack/BOSHConnection;->a:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    if-nez v3, :cond_2

    :try_start_5
    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->a:Lorg/jivesoftware/smack/BOSHConnection;

    const-string v3, "xm"

    const-string v4, "authid"

    invoke-static {v3, v4}, Lcom/kenai/jbosh/BodyQName;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/kenai/jbosh/BodyQName;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/kenai/jbosh/AbstractBody;->a(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/jivesoftware/smack/BOSHConnection;->a:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move v2, v1

    :cond_2
    :try_start_6
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    const-string v4, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    new-instance v4, Ljava/io/StringReader;

    invoke-virtual {v0}, Lcom/kenai/jbosh/AbstractBody;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    :cond_3
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    iget-object v4, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->a:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/BOSHConnection;->q()V

    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "body"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_4
    :goto_0
    if-ne v0, v1, :cond_3

    :cond_5
    move v1, v2

    :cond_6
    :goto_1
    return v1

    :cond_7
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "message"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-result v4

    if-eqz v4, :cond_8

    :try_start_7
    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->a:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-static {v3}, Lorg/jivesoftware/smack/util/PacketParserUtils;->a(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/BOSHConnection;->b(Lorg/jivesoftware/smack/packet/Packet;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move v2, v1

    goto :goto_0

    :cond_8
    :try_start_8
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "iq"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    move-result v4

    if-eqz v4, :cond_9

    :try_start_9
    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->a:Lorg/jivesoftware/smack/BOSHConnection;

    iget-object v4, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->a:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-static {v3, v4}, Lorg/jivesoftware/smack/util/PacketParserUtils;->a(Lorg/xmlpull/v1/XmlPullParser;Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/BOSHConnection;->b(Lorg/jivesoftware/smack/packet/Packet;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    move v2, v1

    goto :goto_0

    :cond_9
    :try_start_a
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "presence"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    move-result v4

    if-eqz v4, :cond_a

    :try_start_b
    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->a:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-static {v3}, Lorg/jivesoftware/smack/util/PacketParserUtils;->b(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Presence;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/BOSHConnection;->b(Lorg/jivesoftware/smack/packet/Packet;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    move v2, v1

    goto :goto_0

    :cond_a
    :try_start_c
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "challenge"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    move-result v4

    if-eqz v4, :cond_b

    :try_start_d
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->a:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-virtual {v4, v2}, Lorg/jivesoftware/smack/BOSHConnection;->a(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    move v2, v1

    goto :goto_0

    :cond_b
    :try_start_e
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "error"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    move-result v4

    if-eqz v4, :cond_c

    :try_start_f
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    invoke-static {v3}, Lorg/jivesoftware/smack/util/PacketParserUtils;->e(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/StreamError;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/StreamError;)V

    throw v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    :catch_0
    move-exception v0

    :goto_2
    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->a:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/BOSHConnection;->k()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->a:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/BOSHConnection;->a(Ljava/lang/Exception;)V

    goto/16 :goto_1

    :cond_c
    :try_start_10
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "warning"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2

    move-result v4

    if-eqz v4, :cond_d

    :try_start_11
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "multi-login"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->a:Lorg/jivesoftware/smack/BOSHConnection;

    new-instance v4, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v5, Lorg/jivesoftware/smack/packet/Presence$Type;->b:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Lorg/jivesoftware/smack/BOSHConnection;->a(Lorg/jivesoftware/smack/packet/Presence;ILjava/lang/Exception;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    move v2, v1

    goto/16 :goto_0

    :cond_d
    :try_start_12
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "bind"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2

    move-result v4

    if-eqz v4, :cond_4

    :try_start_13
    invoke-static {v3}, Lorg/jivesoftware/smack/util/PacketParserUtils;->c(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/XMBinder$BindResult;

    move-result-object v2

    iget-object v4, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->a:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-virtual {v4, v2}, Lorg/jivesoftware/smack/BOSHConnection;->b(Lorg/jivesoftware/smack/packet/Packet;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0

    :cond_e
    move v2, v1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move v1, v2

    goto :goto_2

    :catch_2
    move-exception v0

    move v1, v2

    goto :goto_2
.end method
