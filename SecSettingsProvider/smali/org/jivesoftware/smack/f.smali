.class Lorg/jivesoftware/smack/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/Thread;

.field private b:Lorg/jivesoftware/smack/XMPPConnection;

.field private c:Lorg/xmlpull/v1/XmlPullParser;

.field private d:Z


# direct methods
.method protected constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jivesoftware/smack/f;->b:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {p0}, Lorg/jivesoftware/smack/f;->a()V

    return-void
.end method

.method static synthetic a(Lorg/jivesoftware/smack/f;)V
    .locals 0

    invoke-direct {p0}, Lorg/jivesoftware/smack/f;->f()V

    return-void
.end method

.method private a(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smack/f;->b:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->f:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/PacketCollector;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/PacketCollector;->a(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/jivesoftware/smack/f;->b:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/Connection$ListenerWrapper;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/Connection$ListenerWrapper;->a(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_1
.end method

.method private e()V
    .locals 3

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/f;->c:Lorg/xmlpull/v1/XmlPullParser;

    iget-object v0, p0, Lorg/jivesoftware/smack/f;->c:Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    iget-object v0, p0, Lorg/jivesoftware/smack/f;->c:Lorg/xmlpull/v1/XmlPullParser;

    iget-object v1, p0, Lorg/jivesoftware/smack/f;->b:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v1, v1, Lorg/jivesoftware/smack/XMPPConnection;->l:Ljava/io/Reader;

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    return-void
.end method

.method private f()V
    .locals 7

    const/4 v5, 0x1

    :try_start_0
    invoke-direct {p0}, Lorg/jivesoftware/smack/f;->e()V

    iget-object v0, p0, Lorg/jivesoftware/smack/f;->c:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const-string v0, ""

    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/jivesoftware/smack/f;->b:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/XMPPConnection;->q()V

    const/4 v2, 0x2

    if-ne v1, v2, :cond_d

    iget-object v0, p0, Lorg/jivesoftware/smack/f;->c:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lorg/jivesoftware/smack/f;->c:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/jivesoftware/smack/f;->c:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->a(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/f;->a(Lorg/jivesoftware/smack/packet/Packet;)V

    move-object v0, v2

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/jivesoftware/smack/f;->c:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    iget-boolean v2, p0, Lorg/jivesoftware/smack/f;->d:Z

    if-nez v2, :cond_2

    if-ne v1, v5, :cond_0

    :cond_2
    if-ne v1, v5, :cond_3

    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMACK: server close the connection or timeout happened, last element name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " host="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/jivesoftware/smack/f;->b:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/XMPPConnection;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    iget-boolean v1, p0, Lorg/jivesoftware/smack/f;->d:Z

    if-nez v1, :cond_e

    const/16 v1, 0x9

    invoke-virtual {p0, v1, v0}, Lorg/jivesoftware/smack/f;->a(ILjava/lang/Exception;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    :try_start_2
    iget-object v0, p0, Lorg/jivesoftware/smack/f;->c:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iq"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/jivesoftware/smack/f;->c:Lorg/xmlpull/v1/XmlPullParser;

    iget-object v1, p0, Lorg/jivesoftware/smack/f;->b:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-static {v0, v1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->a(Lorg/xmlpull/v1/XmlPullParser;Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/f;->a(Lorg/jivesoftware/smack/packet/Packet;)V

    move-object v0, v2

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lorg/jivesoftware/smack/f;->c:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "presence"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/jivesoftware/smack/f;->c:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->b(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Presence;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/f;->a(Lorg/jivesoftware/smack/packet/Packet;)V

    move-object v0, v2

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lorg/jivesoftware/smack/f;->c:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "stream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-eqz v0, :cond_a

    const-string v1, ""

    const/4 v0, 0x0

    move v6, v0

    move-object v0, v1

    move v1, v6

    :goto_2
    :try_start_3
    iget-object v3, p0, Lorg/jivesoftware/smack/f;->c:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    if-ge v1, v3, :cond_9

    iget-object v3, p0, Lorg/jivesoftware/smack/f;->c:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "from"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lorg/jivesoftware/smack/f;->b:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v3, v3, Lorg/jivesoftware/smack/XMPPConnection;->p:Lorg/jivesoftware/smack/ConnectionConfiguration;

    iget-object v4, p0, Lorg/jivesoftware/smack/f;->c:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/ConnectionConfiguration;->a(Ljava/lang/String;)V

    :cond_7
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    iget-object v3, p0, Lorg/jivesoftware/smack/f;->c:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "challenge"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v0, p0, Lorg/jivesoftware/smack/f;->c:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_9
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const-string v3, "XIAOMI-SASL"

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/jivesoftware/smack/f;->b:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->a(Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lorg/jivesoftware/smack/f;->c:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    iget-object v1, p0, Lorg/jivesoftware/smack/f;->c:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->e(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/StreamError;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/StreamError;)V

    throw v0

    :cond_b
    iget-object v0, p0, Lorg/jivesoftware/smack/f;->c:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "warning"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/jivesoftware/smack/f;->c:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    iget-object v0, p0, Lorg/jivesoftware/smack/f;->c:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "multi-login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/f;->a(ILjava/lang/Exception;)V

    move-object v0, v2

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lorg/jivesoftware/smack/f;->c:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bind"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/jivesoftware/smack/f;->c:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->c(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/XMBinder$BindResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/f;->a(Lorg/jivesoftware/smack/packet/Packet;)V

    move-object v0, v2

    goto/16 :goto_0

    :cond_d
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/jivesoftware/smack/f;->c:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "stream"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/jivesoftware/smack/f;->a(ILjava/lang/Exception;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :cond_e
    const-string v0, "reader is shutdown, ignore the exception."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->b(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_f
    move-object v0, v2

    goto/16 :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smack/f;->d:Z

    new-instance v0, Lorg/jivesoftware/smack/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Smack Packet Reader ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smack/f;->b:Lorg/jivesoftware/smack/XMPPConnection;

    iget v2, v2, Lorg/jivesoftware/smack/XMPPConnection;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/jivesoftware/smack/g;-><init>(Lorg/jivesoftware/smack/f;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/f;->a:Ljava/lang/Thread;

    return-void
.end method

.method a(ILjava/lang/Exception;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jivesoftware/smack/f;->d:Z

    iget-object v0, p0, Lorg/jivesoftware/smack/f;->b:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0, p1, p2}, Lorg/jivesoftware/smack/XMPPConnection;->a(ILjava/lang/Exception;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lorg/jivesoftware/smack/f;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jivesoftware/smack/f;->d:Z

    return-void
.end method

.method d()V
    .locals 1

    iget-object v0, p0, Lorg/jivesoftware/smack/f;->b:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lorg/jivesoftware/smack/f;->b:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->f:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void
.end method
