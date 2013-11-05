.class public Lcom/xiaomi/push/service/XMPushService;
.super Landroid/app/Service;

# interfaces
.implements Lorg/jivesoftware/smack/ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/service/XMPushService$a;,
        Lcom/xiaomi/push/service/XMPushService$b;,
        Lcom/xiaomi/push/service/XMPushService$c;,
        Lcom/xiaomi/push/service/XMPushService$d;,
        Lcom/xiaomi/push/service/XMPushService$e;,
        Lcom/xiaomi/push/service/XMPushService$f;,
        Lcom/xiaomi/push/service/XMPushService$g;,
        Lcom/xiaomi/push/service/XMPushService$h;,
        Lcom/xiaomi/push/service/XMPushService$i;,
        Lcom/xiaomi/push/service/XMPushService$j;,
        Lcom/xiaomi/push/service/XMPushService$k;
    }
.end annotation


# static fields
.field public static a:I


# instance fields
.field private b:Lorg/jivesoftware/smack/ConnectionConfiguration;

.field private c:Lorg/jivesoftware/smack/BOSHConfiguration;

.field private d:Lcom/xiaomi/push/service/t;

.field private e:I

.field private f:J

.field private g:Lorg/jivesoftware/smack/XMPPConnection;

.field private h:Lorg/jivesoftware/smack/BOSHConnection;

.field private i:Lorg/jivesoftware/smack/Connection;

.field private j:Lcom/xiaomi/push/service/b;

.field private k:Lcom/xiaomi/push/service/PacketSync;

.field private l:Lcom/xiaomi/push/service/a/a;

.field private m:Lcom/xiaomi/push/service/d;

.field private n:Lorg/jivesoftware/smack/PacketListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "app.chat.xiaomi.net"

    const-string v1, "58.68.235.14"

    invoke-static {v0, v1}, Lcom/xiaomi/network/HostManager;->addReservedHost(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "app.chat.xiaomi.net"

    const-string v1, "app01.nodes.gslb.mi-idc.com"

    invoke-static {v0, v1}, Lcom/xiaomi/network/HostManager;->addReservedHost(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "app.chat.xiaomi.net"

    const-string v1, "59.151.110.251"

    invoke-static {v0, v1}, Lcom/xiaomi/network/HostManager;->addReservedHost(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "app.chat.xiaomi.net"

    const-string v1, "120.132.153.233"

    invoke-static {v0, v1}, Lcom/xiaomi/network/HostManager;->addReservedHost(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "app.chat.xiaomi.net"

    const-string v1, "223.202.255.20"

    invoke-static {v0, v1}, Lcom/xiaomi/network/HostManager;->addReservedHost(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "app.chat.xiaomi.net"

    const-string v1, "app02.nodes.gslb.mi-idc.com"

    invoke-static {v0, v1}, Lcom/xiaomi/network/HostManager;->addReservedHost(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v2, Lorg/jivesoftware/smack/XMPPConnection;->c:Z

    sget-boolean v0, Lcom/xiaomi/channel/commonutils/a/a;->b:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/xiaomi/channel/commonutils/a/a;->e:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/xiaomi/channel/commonutils/a/a;->c:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/xiaomi/channel/commonutils/a/a;->g:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(I)V

    :cond_1
    sput v2, Lcom/xiaomi/push/service/XMPushService;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/push/service/XMPushService;->f:J

    iput-object v2, p0, Lcom/xiaomi/push/service/XMPushService;->k:Lcom/xiaomi/push/service/PacketSync;

    iput-object v2, p0, Lcom/xiaomi/push/service/XMPushService;->l:Lcom/xiaomi/push/service/a/a;

    iput-object v2, p0, Lcom/xiaomi/push/service/XMPushService;->m:Lcom/xiaomi/push/service/d;

    new-instance v0, Lcom/xiaomi/push/service/v;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/v;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->n:Lorg/jivesoftware/smack/PacketListener;

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/Intent;)Lcom/xiaomi/push/service/p$b;
    .locals 3

    sget-object v0, Lcom/xiaomi/push/service/r;->l:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/push/service/p;->a()Lcom/xiaomi/push/service/p;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/xiaomi/push/service/p;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/p$b;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/push/service/p$b;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/p$b;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    :cond_0
    sget-object v1, Lcom/xiaomi/push/service/r;->m:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/push/service/p$b;->h:Ljava/lang/String;

    sget-object v1, Lcom/xiaomi/push/service/r;->l:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/push/service/p$b;->b:Ljava/lang/String;

    sget-object v1, Lcom/xiaomi/push/service/r;->o:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/push/service/p$b;->c:Ljava/lang/String;

    sget-object v1, Lcom/xiaomi/push/service/r;->u:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/push/service/p$b;->a:Ljava/lang/String;

    sget-object v1, Lcom/xiaomi/push/service/r;->s:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/push/service/p$b;->f:Ljava/lang/String;

    sget-object v1, Lcom/xiaomi/push/service/r;->t:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/push/service/p$b;->g:Ljava/lang/String;

    sget-object v1, Lcom/xiaomi/push/service/r;->r:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/xiaomi/push/service/p$b;->e:Z

    sget-object v1, Lcom/xiaomi/push/service/r;->q:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/push/service/p$b;->i:Ljava/lang/String;

    sget-object v1, Lcom/xiaomi/push/service/r;->p:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/push/service/p$b;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->j:Lcom/xiaomi/push/service/b;

    iput-object v1, v0, Lcom/xiaomi/push/service/p$b;->k:Lcom/xiaomi/push/service/b;

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/push/service/p$b;->l:Landroid/content/Context;

    invoke-static {}, Lcom/xiaomi/push/service/p;->a()Lcom/xiaomi/push/service/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/p;->a(Lcom/xiaomi/push/service/p$b;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<iq to=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' id=\'0\' chid=\'0\' type=\'get\'><ping xmlns=\'urn:xmpp:ping\'>%1$s</ping></iq>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lorg/jivesoftware/smack/packet/Message;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Message;
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/xiaomi/push/service/s;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    new-instance v3, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v3}, Lorg/jivesoftware/smack/packet/Message;-><init>()V

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/jivesoftware/smack/packet/Message;->n(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/jivesoftware/smack/packet/Message;->m(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/jivesoftware/smack/packet/Message;->k(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/jivesoftware/smack/packet/Message;->l(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Lorg/jivesoftware/smack/packet/Message;->b(Z)V

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jivesoftware/smack/util/StringUtils;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/service/s;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/jivesoftware/smack/packet/CommonPacketExtension;

    const-string v6, "s"

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    move-object v2, v1

    check-cast v2, [Ljava/lang/String;

    invoke-direct {v5, v6, v1, v0, v2}, Lorg/jivesoftware/smack/packet/CommonPacketExtension;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Lorg/jivesoftware/smack/packet/CommonPacketExtension;->b(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lorg/jivesoftware/smack/packet/Message;->a(Lorg/jivesoftware/smack/packet/CommonPacketExtension;)V

    return-object v3
.end method

.method private a(Lorg/jivesoftware/smack/packet/Packet;Ljava/lang/String;Ljava/lang/String;Z)Lorg/jivesoftware/smack/packet/Packet;
    .locals 4

    invoke-static {}, Lcom/xiaomi/push/service/p;->a()Lcom/xiaomi/push/service/p;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/xiaomi/push/service/p;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "open channel should be called first before sending a packet, pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    :cond_0
    :goto_1
    return-object p1

    :cond_1
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/Packet;->l(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/push/service/p;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/p$b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->d()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drop a packet as the channel is not connected, chid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    iget-object v2, v1, Lcom/xiaomi/push/service/p$b;->m:Lcom/xiaomi/push/service/p$c;

    sget-object v3, Lcom/xiaomi/push/service/p$c;->c:Lcom/xiaomi/push/service/p$c;

    if-eq v2, v3, :cond_5

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drop a packet as the channel is not opened, chid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v0, v1, Lcom/xiaomi/push/service/p$b;->j:Ljava/lang/String;

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid session. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    instance-of v0, p1, Lorg/jivesoftware/smack/packet/Message;

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    check-cast p1, Lorg/jivesoftware/smack/packet/Message;

    iget-object v0, v1, Lcom/xiaomi/push/service/p$b;->i:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lorg/jivesoftware/smack/packet/Message;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Message;

    move-result-object p1

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->j()V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 7

    const/4 v4, 0x0

    invoke-static {}, Lcom/xiaomi/push/service/p;->a()Lcom/xiaomi/push/service/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/p;->c(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/push/service/p$b;

    if-eqz v2, :cond_0

    new-instance v0, Lcom/xiaomi/push/service/XMPushService$k;

    move-object v1, p0

    move v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/push/service/XMPushService$k;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/p$b;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$e;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/xiaomi/push/service/p;->a()Lcom/xiaomi/push/service/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/p;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->k()V

    return-void
.end method

.method static synthetic c(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/d;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->m:Lcom/xiaomi/push/service/d;

    return-object v0
.end method

.method static synthetic d(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/PacketSync;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->k:Lcom/xiaomi/push/service/PacketSync;

    return-object v0
.end method

.method static synthetic e(Lcom/xiaomi/push/service/XMPushService;)Lorg/jivesoftware/smack/Connection;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->i:Lorg/jivesoftware/smack/Connection;

    return-object v0
.end method

.method static synthetic f(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->l()V

    return-void
.end method

.method private j()V
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/g;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/g;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/service/f;->a(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/p$b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/p$b;)V

    invoke-static {}, Lcom/xiaomi/push/service/p;->a()Lcom/xiaomi/push/service/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/p;->a(Lcom/xiaomi/push/service/p$b;)V

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/a;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Z)V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 4

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->l:Lcom/xiaomi/push/service/a/a;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/a/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/xiaomi/push/service/r;->k:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->l:Lcom/xiaomi/push/service/a/a;

    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->d()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/xiaomi/push/service/a/a;->a(JLandroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->l:Lcom/xiaomi/push/service/a/a;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/a/a;->a()V

    goto :goto_0
.end method

.method private l()V
    .locals 5

    const/4 v4, 0x3

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->i:Lorg/jivesoftware/smack/Connection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->i:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/Connection;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "try to connect while connecting."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->i:Lorg/jivesoftware/smack/Connection;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->i:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/Connection;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "try to connect while is connected."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->b:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/b/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->b(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->g:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->s()V

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->g:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->n:Lorg/jivesoftware/smack/PacketListener;

    new-instance v2, Lcom/xiaomi/push/service/ab;

    invoke-direct {v2, p0}, Lcom/xiaomi/push/service/ab;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/XMPPConnection;->a(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->g:Lorg/jivesoftware/smack/XMPPConnection;

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->i:Lorg/jivesoftware/smack/Connection;
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->i:Lorg/jivesoftware/smack/Connection;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->i:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/Connection;->p()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    :cond_3
    :try_start_1
    invoke-static {}, Lcom/xiaomi/network/HostManager;->getInstance()Lcom/xiaomi/network/HostManager;

    move-result-object v0

    const-string v1, "mibind.chat.gslb.mi-idc.com"

    invoke-virtual {v0, v1}, Lcom/xiaomi/network/HostManager;->getFallbacksByHost(Ljava/lang/String;)Lcom/xiaomi/network/Fallback;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->c:Lorg/jivesoftware/smack/BOSHConfiguration;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/BOSHConfiguration;->a(Lcom/xiaomi/network/Fallback;)V

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->h:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/BOSHConnection;->a()V

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->h:Lorg/jivesoftware/smack/BOSHConnection;

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->n:Lorg/jivesoftware/smack/PacketListener;

    new-instance v2, Lcom/xiaomi/push/service/ac;

    invoke-direct {v2, p0}, Lcom/xiaomi/push/service/ac;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/BOSHConnection;->a(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->h:Lorg/jivesoftware/smack/BOSHConnection;

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->i:Lorg/jivesoftware/smack/Connection;
    :try_end_1
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->i:Lorg/jivesoftware/smack/Connection;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/push/service/n;->a()V

    invoke-static {}, Lcom/xiaomi/push/service/p;->a()Lcom/xiaomi/push/service/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/service/p;->a(Landroid/content/Context;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "fail to create xmpp connection"

    invoke-static {v1, v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->g:Lorg/jivesoftware/smack/XMPPConnection;

    new-instance v2, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v3, Lorg/jivesoftware/smack/packet/Presence$Type;->b:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    invoke-virtual {v1, v2, v4, v0}, Lorg/jivesoftware/smack/XMPPConnection;->a(Lorg/jivesoftware/smack/packet/Presence;ILjava/lang/Exception;)V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "fail to create BOSH connection"

    invoke-static {v1, v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->h:Lorg/jivesoftware/smack/BOSHConnection;

    new-instance v2, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v3, Lorg/jivesoftware/smack/packet/Presence$Type;->b:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    invoke-virtual {v1, v2, v4, v0}, Lorg/jivesoftware/smack/BOSHConnection;->a(Lorg/jivesoftware/smack/packet/Presence;ILjava/lang/Exception;)V

    goto :goto_2
.end method


# virtual methods
.method public a(Lorg/jivesoftware/smack/ConnectionConfiguration;)Lorg/jivesoftware/smack/XMPPConnection;
    .locals 1

    new-instance v0, Lorg/jivesoftware/smack/XMPPConnection;

    invoke-direct {v0, p0, p1}, Lorg/jivesoftware/smack/XMPPConnection;-><init>(Lcom/xiaomi/push/service/XMPushService;Lorg/jivesoftware/smack/ConnectionConfiguration;)V

    return-object v0
.end method

.method public a(Lcom/xiaomi/b/a/h;)Lorg/jivesoftware/smack/packet/Message;
    .locals 7

    const/4 v1, 0x0

    new-instance v3, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v3}, Lorg/jivesoftware/smack/packet/Message;-><init>()V

    const-string v0, "5"

    invoke-virtual {v3, v0}, Lorg/jivesoftware/smack/packet/Message;->l(Ljava/lang/String;)V

    const-string v0, "xiaomi.com"

    invoke-virtual {v3, v0}, Lorg/jivesoftware/smack/packet/Message;->m(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/xiaomi/push/service/g;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/f;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/push/service/f;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lorg/jivesoftware/smack/packet/Message;->n(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lorg/jivesoftware/smack/packet/Message;->b(Z)V

    const-string v0, "push"

    invoke-virtual {v3, v0}, Lorg/jivesoftware/smack/packet/Message;->f(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/xiaomi/push/service/g;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/f;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/push/service/f;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/b/a/h;->g:Lcom/xiaomi/b/a/d;

    const/4 v4, 0x0

    const-string v5, "@"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/xiaomi/b/a/d;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/b/a/h;->g:Lcom/xiaomi/b/a/d;

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/xiaomi/b/a/d;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/b/a/u;->a(Lorg/apache/thrift/TBase;)[B

    move-result-object v0

    invoke-static {p0}, Lcom/xiaomi/push/service/g;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/f;

    move-result-object v2

    iget-object v2, v2, Lcom/xiaomi/push/service/f;->c:Ljava/lang/String;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/Message;->k()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xiaomi/push/service/s;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2, v0}, Lcom/xiaomi/push/service/s;->a([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/c/a;->a([B)[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/jivesoftware/smack/packet/CommonPacketExtension;

    const-string v6, "s"

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    move-object v2, v1

    check-cast v2, [Ljava/lang/String;

    invoke-direct {v5, v6, v1, v0, v2}, Lorg/jivesoftware/smack/packet/CommonPacketExtension;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Lorg/jivesoftware/smack/packet/CommonPacketExtension;->b(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lorg/jivesoftware/smack/packet/Message;->a(Lorg/jivesoftware/smack/packet/CommonPacketExtension;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "try send mi push message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/b/a/h;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->b(Ljava/lang/String;)V

    return-object v3
.end method

.method public a([B)Lorg/jivesoftware/smack/packet/Message;
    .locals 1

    new-instance v0, Lcom/xiaomi/b/a/h;

    invoke-direct {v0}, Lcom/xiaomi/b/a/h;-><init>()V

    :try_start_0
    invoke-static {v0, p1}, Lcom/xiaomi/b/a/u;->a(Lorg/apache/thrift/TBase;[B)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/b/a/h;)Lorg/jivesoftware/smack/packet/Message;
    :try_end_0
    .catch Lorg/apache/thrift/TException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->m:Lcom/xiaomi/push/service/d;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/d;->a(I)V

    return-void
.end method

.method public a(ILjava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->i:Lorg/jivesoftware/smack/Connection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->i:Lorg/jivesoftware/smack/Connection;

    new-instance v1, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v2, Lorg/jivesoftware/smack/packet/Presence$Type;->b:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    invoke-virtual {v0, v1, p1, p2}, Lorg/jivesoftware/smack/Connection;->a(Lorg/jivesoftware/smack/packet/Presence;ILjava/lang/Exception;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->i:Lorg/jivesoftware/smack/Connection;

    :cond_0
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(I)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(I)V

    invoke-static {}, Lcom/xiaomi/push/service/p;->a()Lcom/xiaomi/push/service/p;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/push/service/p;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public a(Lcom/xiaomi/push/service/XMPushService$e;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$e;J)V

    return-void
.end method

.method public a(Lcom/xiaomi/push/service/XMPushService$e;J)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->m:Lcom/xiaomi/push/service/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/push/service/d;->a(Lcom/xiaomi/push/service/XMPushService$e;J)V

    return-void
.end method

.method public a(Lcom/xiaomi/push/service/p$b;)V
    .locals 1

    new-instance v0, Lcom/xiaomi/push/service/aa;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/aa;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/service/p$b;->a(Lcom/xiaomi/push/service/p$b$a;)V

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/xiaomi/push/service/p;->a()Lcom/xiaomi/push/service/p;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/push/service/p;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/p$b;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/xiaomi/push/service/XMPushService$k;

    move-object v1, p0

    move v3, p3

    move-object v4, p5

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/push/service/XMPushService$k;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/p$b;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$e;)V

    :cond_0
    invoke-static {}, Lcom/xiaomi/push/service/p;->a()Lcom/xiaomi/push/service/p;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/push/service/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;[B)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->i:Lorg/jivesoftware/smack/Connection;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/xiaomi/push/service/XMPushService;->a([B)Lorg/jivesoftware/smack/packet/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->i:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/Connection;->a(Lorg/jivesoftware/smack/packet/Packet;)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x42c1d83

    const-string v1, "not a valid message"

    invoke-static {p0, p1, p2, v0, v1}, Lcom/xiaomi/push/service/i;->a(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "try send msg while connection is null."

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->i:Lorg/jivesoftware/smack/Connection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->i:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/Connection;->a(Lorg/jivesoftware/smack/packet/Packet;)V

    return-void

    :cond_0
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "try send msg while connection is null."

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->d:Lcom/xiaomi/push/service/t;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/t;->a(Z)V

    return-void
.end method

.method public a([Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->i:Lorg/jivesoftware/smack/Connection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->i:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/Connection;->a([Lorg/jivesoftware/smack/packet/Packet;)V

    return-void

    :cond_0
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "try send msg while connection is null."

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()Z
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/b/a;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/push/service/p;->a()Lcom/xiaomi/push/service/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/p;->c()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lcom/xiaomi/push/service/b;
    .locals 1

    new-instance v0, Lcom/xiaomi/push/service/b;

    invoke-direct {v0}, Lcom/xiaomi/push/service/b;-><init>()V

    return-object v0
.end method

.method public b(ILjava/lang/Exception;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/xiaomi/push/service/XMPushService;->a(Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/push/service/XMPushService;->f:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/b/a;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->i:Lorg/jivesoftware/smack/Connection;

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->g:Lorg/jivesoftware/smack/XMPPConnection;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/xiaomi/push/service/XMPushService;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/push/service/XMPushService;->e:I

    iget v0, p0, Lcom/xiaomi/push/service/XMPushService;->e:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->g:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "max short conn time reached, sink down current host:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->b:Lorg/jivesoftware/smack/ConnectionConfiguration;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3, p2}, Lorg/jivesoftware/smack/ConnectionConfiguration;->a(Ljava/lang/String;JLjava/lang/Exception;)V

    iput v4, p0, Lcom/xiaomi/push/service/XMPushService;->e:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput v4, p0, Lcom/xiaomi/push/service/XMPushService;->e:I

    goto :goto_0
.end method

.method public b(Lcom/xiaomi/b/a/h;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->i:Lorg/jivesoftware/smack/Connection;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/b/a/h;)Lorg/jivesoftware/smack/packet/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->i:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/Connection;->a(Lorg/jivesoftware/smack/packet/Packet;)V

    return-void

    :cond_0
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "try send msg while connection is null."

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lcom/xiaomi/push/service/XMPushService$e;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->m:Lcom/xiaomi/push/service/d;

    iget v1, p1, Lcom/xiaomi/push/service/XMPushService$e;->d:I

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/push/service/d;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public b(Lcom/xiaomi/push/service/p$b;)V
    .locals 5

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/push/service/p$b;->a()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "schedule rebind job in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    div-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    new-instance v2, Lcom/xiaomi/push/service/XMPushService$a;

    invoke-direct {v2, p0, p1}, Lcom/xiaomi/push/service/XMPushService$a;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/p$b;)V

    invoke-virtual {p0, v2, v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$e;J)V

    :cond_0
    return-void
.end method

.method public b(I)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->m:Lcom/xiaomi/push/service/d;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/d;->b(I)Z

    move-result v0

    return v0
.end method

.method public c()Lcom/xiaomi/push/service/b;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->j:Lcom/xiaomi/push/service/b;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->i:Lorg/jivesoftware/smack/Connection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->i:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/Connection;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->i:Lorg/jivesoftware/smack/Connection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->i:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/Connection;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Lorg/jivesoftware/smack/Connection;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->i:Lorg/jivesoftware/smack/Connection;

    return-object v0
.end method

.method public g()V
    .locals 1

    const-string v0, "begin to connect..."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public h()V
    .locals 3

    new-instance v0, Lcom/xiaomi/push/service/ad;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/push/service/ad;-><init>(Lcom/xiaomi/push/service/XMPushService;I)V

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$e;J)V

    return-void
.end method

.method public i()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->d:Lcom/xiaomi/push/service/t;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/t;->a()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/push/service/XMPushService;->f:J

    invoke-static {}, Lcom/xiaomi/push/service/p;->a()Lcom/xiaomi/push/service/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/p;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/xiaomi/push/service/XMPushService$a;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/p$b;

    invoke-direct {v2, p0, v0}, Lcom/xiaomi/push/service/XMPushService$a;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/p$b;)V

    invoke-virtual {p0, v2}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$e;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "0"

    invoke-static {p0, v6, v6, v0}, Lcom/xiaomi/network/HostManager;->init(Landroid/content/Context;Lcom/xiaomi/network/HostFilter;Lcom/xiaomi/network/HostManager$HttpGet;Ljava/lang/String;)V

    new-instance v0, Lorg/jivesoftware/smack/ConnectionConfiguration;

    const/16 v2, 0x1466

    const-string v3, "xiaomi.com"

    invoke-direct {v0, v6, v2, v3, v6}, Lorg/jivesoftware/smack/ConnectionConfiguration;-><init>(Ljava/util/Map;ILjava/lang/String;Lorg/jivesoftware/smack/HttpRequestProxy;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->b:Lorg/jivesoftware/smack/ConnectionConfiguration;

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->b:Lorg/jivesoftware/smack/ConnectionConfiguration;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/ConnectionConfiguration;->b(Z)V

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->b:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->c(Z)V

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->b:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lorg/jivesoftware/smack/ConnectionConfiguration;)Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->g:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->g:Lorg/jivesoftware/smack/XMPPConnection;

    const-string v2, "xiaomi.com"

    invoke-direct {p0, v2}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/XMPPConnection;->b(Ljava/lang/String;)V

    new-instance v0, Lorg/jivesoftware/smack/BOSHConfiguration;

    new-instance v2, Lcom/xiaomi/network/Fallback;

    const-string v3, "mibind.chat.gslb.mi-idc.com"

    invoke-direct {v2, v3}, Lcom/xiaomi/network/Fallback;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x50

    const-string v4, "mibind/http-bind"

    const-string v5, "xiaomi.com"

    invoke-direct/range {v0 .. v6}, Lorg/jivesoftware/smack/BOSHConfiguration;-><init>(ZLcom/xiaomi/network/Fallback;ILjava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/HttpRequestProxy;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->c:Lorg/jivesoftware/smack/BOSHConfiguration;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/kenai/jbosh/BOSHClient;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".emptyRequestDelay"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Lorg/jivesoftware/smack/BOSHConnection;

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->c:Lorg/jivesoftware/smack/BOSHConfiguration;

    invoke-direct {v0, p0, v1}, Lorg/jivesoftware/smack/BOSHConnection;-><init>(Lcom/xiaomi/push/service/XMPushService;Lorg/jivesoftware/smack/BOSHConfiguration;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->h:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->b()Lcom/xiaomi/push/service/b;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->j:Lcom/xiaomi/push/service/b;

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->j:Lcom/xiaomi/push/service/b;

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/service/b;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/xiaomi/push/service/a/a;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->l:Lcom/xiaomi/push/service/a/a;

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->g:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/XMPPConnection;->a(Lorg/jivesoftware/smack/ConnectionListener;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->h:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/BOSHConnection;->a(Lorg/jivesoftware/smack/ConnectionListener;)V

    new-instance v0, Lcom/xiaomi/push/service/PacketSync;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/PacketSync;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->k:Lcom/xiaomi/push/service/PacketSync;

    new-instance v0, Lcom/xiaomi/push/service/c;

    invoke-direct {v0}, Lcom/xiaomi/push/service/c;-><init>()V

    invoke-virtual {v0}, Lcom/xiaomi/push/service/c;->a()V

    new-instance v0, Lcom/xiaomi/push/service/w;

    const-string v1, "Connection Controller Thread"

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/push/service/w;-><init>(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->m:Lcom/xiaomi/push/service/d;

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->m:Lcom/xiaomi/push/service/d;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/d;->start()V

    invoke-static {}, Lcom/xiaomi/push/service/p;->a()Lcom/xiaomi/push/service/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/p;->d()V

    new-instance v1, Lcom/xiaomi/push/service/y;

    invoke-direct {v1, p0}, Lcom/xiaomi/push/service/y;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/p;->a(Lcom/xiaomi/push/service/p$a;)V

    new-instance v0, Lcom/xiaomi/push/service/t;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/t;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->d:Lcom/xiaomi/push/service/t;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    new-instance v0, Lcom/xiaomi/push/service/XMPushService$d;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/xiaomi/push/service/XMPushService$d;-><init>(Lcom/xiaomi/push/service/XMPushService;ILjava/lang/Exception;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$e;)V

    new-instance v0, Lcom/xiaomi/push/service/XMPushService$f;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/XMPushService$f;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$e;)V

    invoke-static {}, Lcom/xiaomi/push/service/p;->a()Lcom/xiaomi/push/service/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/p;->d()V

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->g:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/XMPPConnection;->b(Lorg/jivesoftware/smack/ConnectionListener;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->h:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/BOSHConnection;->b(Lorg/jivesoftware/smack/ConnectionListener;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "Service destroyed"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 12

    const v7, 0x42c1d83

    const/4 v4, 0x2

    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_2

    const-string v0, "onStart() with intent NULL"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/xiaomi/push/service/p;->a()Lcom/xiaomi/push/service/p;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/push/service/r;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaomi/push/service/r;->g:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_0
    sget-object v0, Lcom/xiaomi/push/service/r;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/push/service/r;->v:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_8

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;Landroid/content/Intent;)Lcom/xiaomi/push/service/p$b;

    move-result-object v2

    iget-object v0, v2, Lcom/xiaomi/push/service/p$b;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, v2, Lcom/xiaomi/push/service/p$b;->j:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    move v0, v9

    :goto_1
    iput-object v1, v2, Lcom/xiaomi/push/service/p$b;->j:Ljava/lang/String;

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/b/a;->d(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->j:Lcom/xiaomi/push/service/b;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/b;->a(Landroid/content/Context;Lcom/xiaomi/push/service/p$b;ZILjava/lang/String;)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStart() with intent.Action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->d()Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v0, :cond_4

    new-instance v0, Lcom/xiaomi/push/service/XMPushService$i;

    invoke-direct {v0, p0, v2}, Lcom/xiaomi/push/service/XMPushService$i;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/p$b;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$e;)V

    goto :goto_2

    :cond_4
    iget-object v0, v2, Lcom/xiaomi/push/service/p$b;->m:Lcom/xiaomi/push/service/p$c;

    sget-object v1, Lcom/xiaomi/push/service/p$c;->b:Lcom/xiaomi/push/service/p$c;

    if-ne v0, v1, :cond_5

    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, v2, Lcom/xiaomi/push/service/p$b;->h:Ljava/lang/String;

    aput-object v1, v0, v3

    iget-object v1, v2, Lcom/xiaomi/push/service/p$b;->b:Ljava/lang/String;

    aput-object v1, v0, v9

    const-string v1, "the client is binding. %1$s %2$s."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    iget-object v0, v2, Lcom/xiaomi/push/service/p$b;->m:Lcom/xiaomi/push/service/p$c;

    sget-object v1, Lcom/xiaomi/push/service/p$c;->c:Lcom/xiaomi/push/service/p$c;

    if-ne v0, v1, :cond_6

    iget-object v6, p0, Lcom/xiaomi/push/service/XMPushService;->j:Lcom/xiaomi/push/service/b;

    move-object v7, p0

    move-object v8, v2

    move v10, v3

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/xiaomi/push/service/b;->a(Landroid/content/Context;Lcom/xiaomi/push/service/p$b;ZILjava/lang/String;)V

    goto :goto_2

    :cond_6
    new-instance v0, Lcom/xiaomi/push/service/XMPushService$a;

    invoke-direct {v0, p0, v2}, Lcom/xiaomi/push/service/XMPushService$a;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/p$b;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$e;)V

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v9}, Lcom/xiaomi/push/service/XMPushService;->a(Z)V

    goto :goto_2

    :cond_8
    const-string v0, "channel id is empty, do nothing!"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    sget-object v0, Lcom/xiaomi/push/service/r;->f:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/xiaomi/push/service/r;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/push/service/r;->m:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/push/service/r;->l:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/p;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, v4}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;I)V

    goto :goto_3

    :cond_a
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, v2, v4}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    :cond_b
    move-object v1, p0

    move-object v6, v5

    invoke-virtual/range {v1 .. v6}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_c
    sget-object v0, Lcom/xiaomi/push/service/r;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/xiaomi/push/service/r;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/push/service/r;->v:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ext_packet"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "ext_encrypt"

    invoke-virtual {p1, v3, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    new-instance v4, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v4, v2}, Lorg/jivesoftware/smack/packet/Message;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, v4, v0, v1, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Lorg/jivesoftware/smack/packet/Packet;Ljava/lang/String;Ljava/lang/String;Z)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/xiaomi/push/service/u;

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/push/service/u;-><init>(Lcom/xiaomi/push/service/XMPushService;Lorg/jivesoftware/smack/packet/Packet;)V

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$e;)V

    goto/16 :goto_2

    :cond_d
    sget-object v0, Lcom/xiaomi/push/service/r;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/xiaomi/push/service/r;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/xiaomi/push/service/r;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "ext_packets"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v4

    array-length v0, v4

    new-array v5, v0, [Lorg/jivesoftware/smack/packet/Message;

    const-string v0, "ext_encrypt"

    invoke-virtual {p1, v0, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    :goto_4
    array-length v0, v4

    if-ge v3, v0, :cond_e

    new-instance v7, Lorg/jivesoftware/smack/packet/Message;

    aget-object v0, v4, v3

    check-cast v0, Landroid/os/Bundle;

    invoke-direct {v7, v0}, Lorg/jivesoftware/smack/packet/Message;-><init>(Landroid/os/Bundle;)V

    aput-object v7, v5, v3

    aget-object v0, v5, v3

    invoke-direct {p0, v0, v1, v2, v6}, Lcom/xiaomi/push/service/XMPushService;->a(Lorg/jivesoftware/smack/packet/Packet;Ljava/lang/String;Ljava/lang/String;Z)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/Message;

    aput-object v0, v5, v3

    aget-object v0, v5, v3

    if-eqz v0, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_e
    new-instance v0, Lcom/xiaomi/push/service/a;

    invoke-direct {v0, p0, v5}, Lcom/xiaomi/push/service/a;-><init>(Lcom/xiaomi/push/service/XMPushService;[Lorg/jivesoftware/smack/packet/Message;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$e;)V

    goto/16 :goto_2

    :cond_f
    sget-object v0, Lcom/xiaomi/push/service/r;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/xiaomi/push/service/r;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/push/service/r;->v:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/jivesoftware/smack/packet/IQ;

    const-string v4, "ext_packet"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/jivesoftware/smack/packet/IQ;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, v2, v0, v1, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Lorg/jivesoftware/smack/packet/Packet;Ljava/lang/String;Ljava/lang/String;Z)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/xiaomi/push/service/u;

    invoke-direct {v0, p0, v2}, Lcom/xiaomi/push/service/u;-><init>(Lcom/xiaomi/push/service/XMPushService;Lorg/jivesoftware/smack/packet/Packet;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$e;)V

    goto/16 :goto_2

    :cond_10
    sget-object v0, Lcom/xiaomi/push/service/r;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/xiaomi/push/service/r;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/push/service/r;->v:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/jivesoftware/smack/packet/Presence;

    const-string v4, "ext_packet"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, v2, v0, v1, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Lorg/jivesoftware/smack/packet/Packet;Ljava/lang/String;Ljava/lang/String;Z)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/xiaomi/push/service/u;

    invoke-direct {v0, p0, v2}, Lcom/xiaomi/push/service/u;-><init>(Lcom/xiaomi/push/service/XMPushService;Lorg/jivesoftware/smack/packet/Packet;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$e;)V

    goto/16 :goto_2

    :cond_11
    const-string v0, "com.xiaomi.push.timer"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "Service called on timer"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->m:Lcom/xiaomi/push/service/d;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/d;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "ERROR, the job controller is blocked."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/push/service/p;->a()Lcom/xiaomi/push/service/p;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, p0, v1}, Lcom/xiaomi/push/service/p;->a(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->stopSelf()V

    goto/16 :goto_2

    :cond_12
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->d()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Z)V

    goto/16 :goto_2

    :cond_13
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->i:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/Connection;->r()Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Lcom/xiaomi/push/service/XMPushService$h;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/XMPushService$h;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$e;)V

    goto/16 :goto_2

    :cond_14
    new-instance v0, Lcom/xiaomi/push/service/XMPushService$d;

    const/16 v1, 0x11

    invoke-direct {v0, p0, v1, v5}, Lcom/xiaomi/push/service/XMPushService$d;-><init>(Lcom/xiaomi/push/service/XMPushService;ILjava/lang/Exception;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$e;)V

    goto/16 :goto_2

    :cond_15
    const-string v0, "com.xiaomi.push.network_status_changed"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_5
    if-eqz v0, :cond_17

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "network changed, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    :goto_6
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/b/a;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->d()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->e()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->m:Lcom/xiaomi/push/service/d;

    invoke-virtual {v0, v9}, Lcom/xiaomi/push/service/d;->a(I)V

    new-instance v0, Lcom/xiaomi/push/service/XMPushService$c;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/XMPushService$c;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$e;)V

    :cond_16
    :goto_7
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->k()V

    goto/16 :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    move-object v0, v5

    goto :goto_5

    :cond_17
    const-string v0, "network changed, no active network"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    goto :goto_6

    :cond_18
    new-instance v0, Lcom/xiaomi/push/service/XMPushService$d;

    invoke-direct {v0, p0, v4, v5}, Lcom/xiaomi/push/service/XMPushService$d;-><init>(Lcom/xiaomi/push/service/XMPushService;ILjava/lang/Exception;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$e;)V

    goto :goto_7

    :cond_19
    sget-object v0, Lcom/xiaomi/push/service/r;->h:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/xiaomi/push/service/r;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;Landroid/content/Intent;)Lcom/xiaomi/push/service/p$b;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/push/service/r;->v:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/push/service/p$b;->j:Ljava/lang/String;

    :cond_1a
    new-instance v0, Lcom/xiaomi/push/service/XMPushService$j;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/XMPushService$j;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$e;)V

    goto/16 :goto_2

    :cond_1b
    sget-object v0, Lcom/xiaomi/push/service/r;->i:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lcom/xiaomi/push/service/r;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/p;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open channel should be called first before update info, pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1c
    sget-object v0, Lcom/xiaomi/push/service/r;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/xiaomi/push/service/r;->l:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1d

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_1d
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/p;->c(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/p$b;

    move-object v5, v0

    :cond_1e
    :goto_8
    if-eqz v5, :cond_1

    sget-object v0, Lcom/xiaomi/push/service/r;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/xiaomi/push/service/r;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/xiaomi/push/service/p$b;->f:Ljava/lang/String;

    :cond_1f
    sget-object v0, Lcom/xiaomi/push/service/r;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/push/service/r;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/xiaomi/push/service/p$b;->g:Ljava/lang/String;

    goto/16 :goto_2

    :cond_20
    invoke-virtual {v1, v0, v4}, Lcom/xiaomi/push/service/p;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/p$b;

    move-result-object v5

    goto :goto_8

    :cond_21
    const-string v0, "com.xiaomi.mipush.REGISTER_APP"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "mipush_payload"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v5

    const-string v0, "mipush_app_package"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v5, :cond_22

    const-string v0, "null payload"

    invoke-static {p0, v6, v5, v7, v0}, Lcom/xiaomi/push/service/i;->a(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V

    const-string v0, "register request without payload"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_22
    new-instance v1, Lcom/xiaomi/b/a/h;

    invoke-direct {v1}, Lcom/xiaomi/b/a/h;-><init>()V

    :try_start_1
    invoke-static {v1, v5}, Lcom/xiaomi/b/a/u;->a(Lorg/apache/thrift/TBase;[B)V

    iget-object v0, v1, Lcom/xiaomi/b/a/h;->a:Lcom/xiaomi/b/a/a;

    sget-object v2, Lcom/xiaomi/b/a/a;->a:Lcom/xiaomi/b/a/a;

    if-ne v0, v2, :cond_23

    new-instance v4, Lcom/xiaomi/b/a/j;

    invoke-direct {v4}, Lcom/xiaomi/b/a/j;-><init>()V
    :try_end_1
    .catch Lorg/apache/thrift/TException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-virtual {v1}, Lcom/xiaomi/b/a/h;->f()[B

    move-result-object v0

    invoke-static {v4, v0}, Lcom/xiaomi/b/a/u;->a(Lorg/apache/thrift/TBase;[B)V

    invoke-virtual {v1}, Lcom/xiaomi/b/a/h;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/xiaomi/push/service/i;->a(Ljava/lang/String;[B)V

    new-instance v0, Lcom/xiaomi/push/service/h;

    invoke-virtual {v1}, Lcom/xiaomi/b/a/h;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lcom/xiaomi/b/a/j;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/xiaomi/b/a/j;->h()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/push/service/h;-><init>(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$e;)V
    :try_end_2
    .catch Lorg/apache/thrift/TException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    const v0, 0x42c1d83

    const-string v1, " data action error."

    invoke-static {p0, v6, v5, v0, v1}, Lcom/xiaomi/push/service/i;->a(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V
    :try_end_3
    .catch Lorg/apache/thrift/TException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    const-string v0, " data container error."

    invoke-static {p0, v6, v5, v7, v0}, Lcom/xiaomi/push/service/i;->a(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V

    goto/16 :goto_2

    :cond_23
    const v0, 0x42c1d83

    :try_start_4
    const-string v1, " registration action required."

    invoke-static {p0, v6, v5, v0, v1}, Lcom/xiaomi/push/service/i;->a(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V

    const-string v0, "register request with invalid payload"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/apache/thrift/TException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2

    :cond_24
    const-string v0, "com.xiaomi.mipush.SEND_MESSAGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "com.xiaomi.mipush.UNREGISTER_APP"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_25
    const-string v0, "mipush_app_package"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "mipush_payload"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {}, Lcom/xiaomi/push/service/p;->a()Lcom/xiaomi/push/service/p;

    move-result-object v0

    const-string v3, "5"

    invoke-virtual {v0, v3}, Lcom/xiaomi/push/service/p;->c(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_26

    const v0, 0x42c1d84

    const-string v3, "the channel is not initialized."

    invoke-static {p0, v1, v2, v0, v3}, Lcom/xiaomi/push/service/i;->a(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V

    goto/16 :goto_2

    :cond_26
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/p$b;

    iget-object v0, v0, Lcom/xiaomi/push/service/p$b;->m:Lcom/xiaomi/push/service/p$c;

    sget-object v3, Lcom/xiaomi/push/service/p$c;->c:Lcom/xiaomi/push/service/p$c;

    if-eq v0, v3, :cond_27

    const v0, 0x42c1d81

    const-string v3, "the push is not connected."

    invoke-static {p0, v1, v2, v0, v3}, Lcom/xiaomi/push/service/i;->a(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V

    goto/16 :goto_2

    :cond_27
    new-instance v0, Lcom/xiaomi/push/service/z;

    const/4 v3, 0x4

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/xiaomi/push/service/z;-><init>(Lcom/xiaomi/push/service/XMPushService;ILjava/lang/String;[B)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$e;)V

    goto/16 :goto_2

    :cond_28
    move v0, v3

    goto/16 :goto_1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    invoke-virtual {p0, p1, p3}, Lcom/xiaomi/push/service/XMPushService;->onStart(Landroid/content/Intent;I)V

    sget v0, Lcom/xiaomi/push/service/XMPushService;->a:I

    return v0
.end method
