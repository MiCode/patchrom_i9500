.class public Lorg/jivesoftware/smack/packet/RosterPacket$Item;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/packet/RosterPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

.field private d:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->a:Ljava/lang/String;

    iput-object p2, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->b:Ljava/lang/String;

    iput-object v1, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->c:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    iput-object v1, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->d:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->e:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<item jid=\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, " name=\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->b:Ljava/lang/String;

    invoke-static {v2}, Lorg/jivesoftware/smack/util/StringUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->c:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    if-eqz v0, :cond_1

    const-string v0, " subscription=\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->c:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->d:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    if-eqz v0, :cond_2

    const-string v0, " ask=\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->d:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v0, ">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "<group>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "</group>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const-string v0, "</item>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;)V
    .locals 0

    iput-object p1, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->d:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    return-void
.end method

.method public a(Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;)V
    .locals 0

    iput-object p1, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->c:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    return-void
.end method
