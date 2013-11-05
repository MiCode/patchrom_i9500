.class public Lorg/apache/thrift/TSerializer;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lorg/apache/thrift/TByteArrayOutputStream;

.field private final b:Lorg/apache/thrift/transport/TMemoryBuffer;

.field private c:Lorg/apache/thrift/protocol/TProtocol;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/apache/thrift/protocol/TBinaryProtocol$Factory;

    invoke-direct {v0}, Lorg/apache/thrift/protocol/TBinaryProtocol$Factory;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/thrift/TSerializer;-><init>(Lorg/apache/thrift/protocol/TProtocolFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/thrift/protocol/TProtocolFactory;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/thrift/TByteArrayOutputStream;

    invoke-direct {v0}, Lorg/apache/thrift/TByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/apache/thrift/TSerializer;->a:Lorg/apache/thrift/TByteArrayOutputStream;

    new-instance v0, Lorg/apache/thrift/transport/TMemoryBuffer;

    iget-object v1, p0, Lorg/apache/thrift/TSerializer;->a:Lorg/apache/thrift/TByteArrayOutputStream;

    invoke-direct {v0, v1}, Lorg/apache/thrift/transport/TMemoryBuffer;-><init>(Lorg/apache/thrift/TByteArrayOutputStream;)V

    iput-object v0, p0, Lorg/apache/thrift/TSerializer;->b:Lorg/apache/thrift/transport/TMemoryBuffer;

    iget-object v0, p0, Lorg/apache/thrift/TSerializer;->b:Lorg/apache/thrift/transport/TMemoryBuffer;

    invoke-interface {p1, v0}, Lorg/apache/thrift/protocol/TProtocolFactory;->a(Lorg/apache/thrift/transport/TTransport;)Lorg/apache/thrift/protocol/TProtocol;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/thrift/TSerializer;->c:Lorg/apache/thrift/protocol/TProtocol;

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/thrift/TBase;)[B
    .locals 1

    iget-object v0, p0, Lorg/apache/thrift/TSerializer;->a:Lorg/apache/thrift/TByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/apache/thrift/TByteArrayOutputStream;->reset()V

    iget-object v0, p0, Lorg/apache/thrift/TSerializer;->c:Lorg/apache/thrift/protocol/TProtocol;

    invoke-interface {p1, v0}, Lorg/apache/thrift/TBase;->b(Lorg/apache/thrift/protocol/TProtocol;)V

    iget-object v0, p0, Lorg/apache/thrift/TSerializer;->a:Lorg/apache/thrift/TByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/apache/thrift/TByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
