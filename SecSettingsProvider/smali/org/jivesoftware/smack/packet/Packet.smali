.class public abstract Lorg/jivesoftware/smack/packet/Packet;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field protected static final b:Ljava/lang/String;

.field public static final c:Ljava/text/DateFormat;

.field private static d:Ljava/lang/String;

.field private static e:J


# instance fields
.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/packet/CommonPacketExtension;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lorg/jivesoftware/smack/packet/XMPPError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/packet/Packet;->b:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lorg/jivesoftware/smack/packet/Packet;->a:Ljava/lang/String;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/Packet;->c:Ljava/text/DateFormat;

    sget-object v0, Lorg/jivesoftware/smack/packet/Packet;->c:Ljava/text/DateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x5

    invoke-static {v1}, Lorg/jivesoftware/smack/packet/StringUtils;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/packet/Packet;->d:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lorg/jivesoftware/smack/packet/Packet;->e:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/jivesoftware/smack/packet/Packet;->a:Ljava/lang/String;

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->f:Ljava/lang/String;

    iput-object v1, p0, Lorg/jivesoftware/smack/packet/Packet;->g:Ljava/lang/String;

    iput-object v1, p0, Lorg/jivesoftware/smack/packet/Packet;->h:Ljava/lang/String;

    iput-object v1, p0, Lorg/jivesoftware/smack/packet/Packet;->i:Ljava/lang/String;

    iput-object v1, p0, Lorg/jivesoftware/smack/packet/Packet;->j:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->k:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->l:Ljava/util/Map;

    iput-object v1, p0, Lorg/jivesoftware/smack/packet/Packet;->m:Lorg/jivesoftware/smack/packet/XMPPError;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/jivesoftware/smack/packet/Packet;->a:Ljava/lang/String;

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->f:Ljava/lang/String;

    iput-object v1, p0, Lorg/jivesoftware/smack/packet/Packet;->g:Ljava/lang/String;

    iput-object v1, p0, Lorg/jivesoftware/smack/packet/Packet;->h:Ljava/lang/String;

    iput-object v1, p0, Lorg/jivesoftware/smack/packet/Packet;->i:Ljava/lang/String;

    iput-object v1, p0, Lorg/jivesoftware/smack/packet/Packet;->j:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->k:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->l:Ljava/util/Map;

    iput-object v1, p0, Lorg/jivesoftware/smack/packet/Packet;->m:Lorg/jivesoftware/smack/packet/XMPPError;

    const-string v0, "ext_to"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->h:Ljava/lang/String;

    const-string v0, "ext_from"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->i:Ljava/lang/String;

    const-string v0, "ext_chid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->j:Ljava/lang/String;

    const-string v0, "ext_pkt_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->g:Ljava/lang/String;

    const-string v0, "ext_exts"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->k:Ljava/util/List;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0}, Lorg/jivesoftware/smack/packet/CommonPacketExtension;->a(Landroid/os/Bundle;)Lorg/jivesoftware/smack/packet/CommonPacketExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v4, p0, Lorg/jivesoftware/smack/packet/Packet;->k:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const-string v0, "ext_ERROR"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lorg/jivesoftware/smack/packet/XMPPError;

    invoke-direct {v1, v0}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(Landroid/os/Bundle;)V

    iput-object v1, p0, Lorg/jivesoftware/smack/packet/Packet;->m:Lorg/jivesoftware/smack/packet/XMPPError;

    :cond_2
    return-void
.end method

.method public static j()Ljava/lang/String;
    .locals 5

    const-class v0, Lorg/jivesoftware/smack/packet/Packet;

    monitor-enter v0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/jivesoftware/smack/packet/Packet;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v1, Lorg/jivesoftware/smack/packet/Packet;->e:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    sput-wide v3, Lorg/jivesoftware/smack/packet/Packet;->e:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    const-class v1, Lorg/jivesoftware/smack/packet/Packet;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    const-class v1, Lorg/jivesoftware/smack/packet/Packet;

    monitor-exit v1

    throw v0
.end method

.method public static t()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/jivesoftware/smack/packet/Packet;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    instance-of v0, p2, Ljava/io/Serializable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value must be serialiazble"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->l:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public a(Lorg/jivesoftware/smack/packet/CommonPacketExtension;)V
    .locals 1

    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lorg/jivesoftware/smack/packet/XMPPError;)V
    .locals 0

    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Packet;->m:Lorg/jivesoftware/smack/packet/XMPPError;

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/CommonPacketExtension;
    .locals 3

    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/CommonPacketExtension;

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/CommonPacketExtension;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/CommonPacketExtension;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Landroid/os/Bundle;
    .locals 6

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ext_ns"

    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Packet;->f:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ext_from"

    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Packet;->i:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ext_to"

    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Packet;->h:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "ext_pkt_id"

    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Packet;->g:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "ext_chid"

    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Packet;->j:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->m:Lorg/jivesoftware/smack/packet/XMPPError;

    if-eqz v0, :cond_5

    const-string v0, "ext_ERROR"

    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Packet;->m:Lorg/jivesoftware/smack/packet/XMPPError;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/XMPPError;->c()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_5
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->k:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Landroid/os/Bundle;

    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/CommonPacketExtension;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/CommonPacketExtension;->e()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_8

    add-int/lit8 v0, v1, 0x1

    aput-object v5, v3, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_6
    const-string v0, "ext_exts"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_7
    return-object v2

    :cond_8
    move v0, v1

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    :goto_0
    move v1, v0

    :goto_1
    return v1

    :cond_0
    if-eqz p1, :cond_10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_10

    check-cast p1, Lorg/jivesoftware/smack/packet/Packet;

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Packet;->m:Lorg/jivesoftware/smack/packet/XMPPError;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Packet;->m:Lorg/jivesoftware/smack/packet/XMPPError;

    iget-object v3, p1, Lorg/jivesoftware/smack/packet/Packet;->m:Lorg/jivesoftware/smack/packet/XMPPError;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_1
    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Packet;->i:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Packet;->i:Ljava/lang/String;

    iget-object v3, p1, Lorg/jivesoftware/smack/packet/Packet;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_2
    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Packet;->k:Ljava/util/List;

    iget-object v3, p1, Lorg/jivesoftware/smack/packet/Packet;->k:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Packet;->g:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Packet;->g:Ljava/lang/String;

    iget-object v3, p1, Lorg/jivesoftware/smack/packet/Packet;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_3
    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Packet;->j:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Packet;->j:Ljava/lang/String;

    iget-object v3, p1, Lorg/jivesoftware/smack/packet/Packet;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_4
    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Packet;->l:Ljava/util/Map;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Packet;->l:Ljava/util/Map;

    iget-object v3, p1, Lorg/jivesoftware/smack/packet/Packet;->l:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_5
    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Packet;->h:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Packet;->h:Ljava/lang/String;

    iget-object v3, p1, Lorg/jivesoftware/smack/packet/Packet;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_6
    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Packet;->f:Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Packet;->f:Ljava/lang/String;

    iget-object v3, p1, Lorg/jivesoftware/smack/packet/Packet;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_7
    move v0, v1

    :cond_8
    :goto_2
    move v1, v0

    goto :goto_1

    :cond_9
    iget-object v2, p1, Lorg/jivesoftware/smack/packet/Packet;->m:Lorg/jivesoftware/smack/packet/XMPPError;

    if-eqz v2, :cond_1

    goto/16 :goto_1

    :cond_a
    iget-object v2, p1, Lorg/jivesoftware/smack/packet/Packet;->i:Ljava/lang/String;

    if-eqz v2, :cond_2

    goto/16 :goto_1

    :cond_b
    iget-object v2, p1, Lorg/jivesoftware/smack/packet/Packet;->g:Ljava/lang/String;

    if-eqz v2, :cond_3

    goto/16 :goto_1

    :cond_c
    iget-object v2, p1, Lorg/jivesoftware/smack/packet/Packet;->j:Ljava/lang/String;

    if-eqz v2, :cond_4

    goto/16 :goto_1

    :cond_d
    iget-object v2, p1, Lorg/jivesoftware/smack/packet/Packet;->l:Ljava/util/Map;

    if-eqz v2, :cond_5

    goto/16 :goto_1

    :cond_e
    iget-object v2, p1, Lorg/jivesoftware/smack/packet/Packet;->h:Ljava/lang/String;

    if-eqz v2, :cond_6

    goto/16 :goto_1

    :cond_f
    iget-object v2, p1, Lorg/jivesoftware/smack/packet/Packet;->f:Ljava/lang/String;

    if-nez v2, :cond_7

    goto :goto_2

    :cond_10
    move v0, v1

    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->g:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->h:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->i:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->j:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Packet;->k:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Packet;->l:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Packet;->m:Lorg/jivesoftware/smack/packet/XMPPError;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Packet;->m:Lorg/jivesoftware/smack/packet/XMPPError;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_4
.end method

.method public k()Ljava/lang/String;
    .locals 2

    const-string v0, "ID_NOT_AVAILABLE"

    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Packet;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->g:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {}, Lorg/jivesoftware/smack/packet/Packet;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->g:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Packet;->g:Ljava/lang/String;

    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->j:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Packet;->j:Ljava/lang/String;

    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->h:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Packet;->h:Ljava/lang/String;

    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->i:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Packet;->i:Ljava/lang/String;

    return-void
.end method

.method public o(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/CommonPacketExtension;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smack/packet/Packet;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/CommonPacketExtension;

    move-result-object v0

    return-object v0
.end method

.method public o()Lorg/jivesoftware/smack/packet/XMPPError;
    .locals 1

    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->m:Lorg/jivesoftware/smack/packet/XMPPError;

    return-object v0
.end method

.method public p(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->l:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public p()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smack/packet/CommonPacketExtension;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->k:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Packet;->k:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public q()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->l:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Packet;->l:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected r()Ljava/lang/String;
    .locals 9

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Packet;->p()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/CommonPacketExtension;

    invoke-interface {v1}, Lorg/jivesoftware/smack/packet/PacketExtension;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Packet;->l:Ljava/util/Map;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Packet;->l:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "<properties xmlns=\"http://www.jivesoftware.com/xmlns/xmpp/properties\">"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Packet;->q()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/jivesoftware/smack/packet/Packet;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "<property>"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<name>"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lorg/jivesoftware/smack/packet/StringUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</name>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<value type=\""

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of v1, v2, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    const-string v1, "integer\">"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</value>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_2
    const-string v1, "</property>"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    instance-of v1, v2, Ljava/lang/Long;

    if-eqz v1, :cond_3

    const-string v1, "long\">"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</value>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    instance-of v1, v2, Ljava/lang/Float;

    if-eqz v1, :cond_4

    const-string v1, "float\">"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</value>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    instance-of v1, v2, Ljava/lang/Double;

    if-eqz v1, :cond_5

    const-string v1, "double\">"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</value>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    instance-of v1, v2, Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    const-string v1, "boolean\">"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</value>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    instance-of v1, v2, Ljava/lang/String;

    if-eqz v1, :cond_7

    const-string v1, "string\">"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    invoke-static {v1}, Lorg/jivesoftware/smack/packet/StringUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</value>"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_7
    :try_start_2
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    invoke-virtual {v5, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    const-string v1, "java-object\">"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lorg/jivesoftware/smack/packet/StringUtils;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</value>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    if-eqz v5, :cond_8

    :try_start_5
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :cond_8
    :goto_3
    if-eqz v3, :cond_1

    :try_start_6
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v1

    goto/16 :goto_2

    :catch_1
    move-exception v1

    move-object v2, v4

    move-object v3, v1

    move-object v1, v4

    :goto_4
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v2, :cond_9

    :try_start_8
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    :cond_9
    :goto_5
    if-eqz v1, :cond_1

    :try_start_9
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v1

    goto/16 :goto_2

    :catchall_1
    move-exception v1

    move-object v3, v4

    :goto_6
    if-eqz v4, :cond_a

    :try_start_a
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    :cond_a
    :goto_7
    if-eqz v3, :cond_b

    :try_start_b
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    :cond_b
    :goto_8
    :try_start_c
    throw v1

    :cond_c
    const-string v1, "</properties>"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    :catchall_2
    move-exception v1

    move-object v4, v5

    goto :goto_6

    :catchall_3
    move-exception v3

    move-object v4, v2

    move-object v8, v3

    move-object v3, v1

    move-object v1, v8

    goto :goto_6

    :catch_3
    move-exception v1

    move-object v2, v4

    move-object v8, v3

    move-object v3, v1

    move-object v1, v8

    goto :goto_4

    :catch_4
    move-exception v1

    move-object v2, v5

    move-object v8, v3

    move-object v3, v1

    move-object v1, v8

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v2

    goto :goto_5

    :catch_7
    move-exception v2

    goto :goto_7

    :catch_8
    move-exception v2

    goto :goto_8

    :catchall_4
    move-exception v1

    goto :goto_6
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->f:Ljava/lang/String;

    return-object v0
.end method
