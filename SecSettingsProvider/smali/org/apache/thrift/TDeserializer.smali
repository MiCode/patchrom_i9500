.class public Lorg/apache/thrift/TDeserializer;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lorg/apache/thrift/protocol/TProtocol;

.field private final b:Lorg/apache/thrift/transport/TMemoryInputTransport;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/apache/thrift/protocol/TBinaryProtocol$Factory;

    invoke-direct {v0}, Lorg/apache/thrift/protocol/TBinaryProtocol$Factory;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/thrift/TDeserializer;-><init>(Lorg/apache/thrift/protocol/TProtocolFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/thrift/protocol/TProtocolFactory;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/thrift/transport/TMemoryInputTransport;

    invoke-direct {v0}, Lorg/apache/thrift/transport/TMemoryInputTransport;-><init>()V

    iput-object v0, p0, Lorg/apache/thrift/TDeserializer;->b:Lorg/apache/thrift/transport/TMemoryInputTransport;

    iget-object v0, p0, Lorg/apache/thrift/TDeserializer;->b:Lorg/apache/thrift/transport/TMemoryInputTransport;

    invoke-interface {p1, v0}, Lorg/apache/thrift/protocol/TProtocolFactory;->a(Lorg/apache/thrift/transport/TTransport;)Lorg/apache/thrift/protocol/TProtocol;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/thrift/TDeserializer;->a:Lorg/apache/thrift/protocol/TProtocol;

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/thrift/TBase;[B)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/apache/thrift/TDeserializer;->b:Lorg/apache/thrift/transport/TMemoryInputTransport;

    invoke-virtual {v0, p2}, Lorg/apache/thrift/transport/TMemoryInputTransport;->a([B)V

    iget-object v0, p0, Lorg/apache/thrift/TDeserializer;->a:Lorg/apache/thrift/protocol/TProtocol;

    invoke-interface {p1, v0}, Lorg/apache/thrift/TBase;->a(Lorg/apache/thrift/protocol/TProtocol;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/apache/thrift/TDeserializer;->a:Lorg/apache/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lorg/apache/thrift/protocol/TProtocol;->y()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/thrift/TDeserializer;->a:Lorg/apache/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lorg/apache/thrift/protocol/TProtocol;->y()V

    throw v0
.end method
