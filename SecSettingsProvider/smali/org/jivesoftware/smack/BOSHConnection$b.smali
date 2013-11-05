.class Lorg/jivesoftware/smack/BOSHConnection$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/BOSHConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lorg/jivesoftware/smack/BOSHConnection;

.field private b:Lorg/jivesoftware/smack/packet/Packet;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/BOSHConnection;Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 0

    iput-object p1, p0, Lorg/jivesoftware/smack/BOSHConnection$b;->a:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/jivesoftware/smack/BOSHConnection$b;->b:Lorg/jivesoftware/smack/packet/Packet;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection$b;->a:Lorg/jivesoftware/smack/BOSHConnection;

    iget-object v0, v0, Lorg/jivesoftware/smack/BOSHConnection;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/Connection$ListenerWrapper;

    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHConnection$b;->b:Lorg/jivesoftware/smack/packet/Packet;

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/Connection$ListenerWrapper;->a(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0

    :cond_0
    return-void
.end method
