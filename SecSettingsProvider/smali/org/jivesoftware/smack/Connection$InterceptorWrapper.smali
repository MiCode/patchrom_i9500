.class public Lorg/jivesoftware/smack/Connection$InterceptorWrapper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "InterceptorWrapper"
.end annotation


# instance fields
.field private a:Lorg/jivesoftware/smack/PacketInterceptor;

.field private b:Lorg/jivesoftware/smack/filter/PacketFilter;


# virtual methods
.method public a(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 1

    iget-object v0, p0, Lorg/jivesoftware/smack/Connection$InterceptorWrapper;->b:Lorg/jivesoftware/smack/filter/PacketFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smack/Connection$InterceptorWrapper;->b:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-interface {v0, p1}, Lorg/jivesoftware/smack/filter/PacketFilter;->a(Lorg/jivesoftware/smack/packet/Packet;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection$InterceptorWrapper;->a:Lorg/jivesoftware/smack/PacketInterceptor;

    invoke-interface {v0, p1}, Lorg/jivesoftware/smack/PacketInterceptor;->a(Lorg/jivesoftware/smack/packet/Packet;)V

    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    instance-of v0, p1, Lorg/jivesoftware/smack/Connection$InterceptorWrapper;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/jivesoftware/smack/Connection$InterceptorWrapper;

    iget-object v0, p1, Lorg/jivesoftware/smack/Connection$InterceptorWrapper;->a:Lorg/jivesoftware/smack/PacketInterceptor;

    iget-object v1, p0, Lorg/jivesoftware/smack/Connection$InterceptorWrapper;->a:Lorg/jivesoftware/smack/PacketInterceptor;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lorg/jivesoftware/smack/PacketInterceptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smack/Connection$InterceptorWrapper;->a:Lorg/jivesoftware/smack/PacketInterceptor;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
