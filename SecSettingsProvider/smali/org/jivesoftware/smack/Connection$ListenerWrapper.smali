.class public Lorg/jivesoftware/smack/Connection$ListenerWrapper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ListenerWrapper"
.end annotation


# instance fields
.field private a:Lorg/jivesoftware/smack/PacketListener;

.field private b:Lorg/jivesoftware/smack/filter/PacketFilter;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jivesoftware/smack/Connection$ListenerWrapper;->a:Lorg/jivesoftware/smack/PacketListener;

    iput-object p2, p0, Lorg/jivesoftware/smack/Connection$ListenerWrapper;->b:Lorg/jivesoftware/smack/filter/PacketFilter;

    return-void
.end method


# virtual methods
.method public a(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 1

    iget-object v0, p0, Lorg/jivesoftware/smack/Connection$ListenerWrapper;->b:Lorg/jivesoftware/smack/filter/PacketFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smack/Connection$ListenerWrapper;->b:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-interface {v0, p1}, Lorg/jivesoftware/smack/filter/PacketFilter;->a(Lorg/jivesoftware/smack/packet/Packet;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection$ListenerWrapper;->a:Lorg/jivesoftware/smack/PacketListener;

    invoke-interface {v0, p1}, Lorg/jivesoftware/smack/PacketListener;->a(Lorg/jivesoftware/smack/packet/Packet;)V

    :cond_1
    return-void
.end method
