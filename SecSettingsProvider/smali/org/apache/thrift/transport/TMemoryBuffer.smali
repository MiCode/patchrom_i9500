.class public Lorg/apache/thrift/transport/TMemoryBuffer;
.super Lorg/apache/thrift/transport/TTransport;


# instance fields
.field private a:Lorg/apache/thrift/TByteArrayOutputStream;

.field private b:I


# direct methods
.method public constructor <init>(Lorg/apache/thrift/TByteArrayOutputStream;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/thrift/transport/TTransport;-><init>()V

    iput-object p1, p0, Lorg/apache/thrift/transport/TMemoryBuffer;->a:Lorg/apache/thrift/TByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 3

    iget-object v0, p0, Lorg/apache/thrift/transport/TMemoryBuffer;->a:Lorg/apache/thrift/TByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/apache/thrift/TByteArrayOutputStream;->a()[B

    move-result-object v0

    iget-object v1, p0, Lorg/apache/thrift/transport/TMemoryBuffer;->a:Lorg/apache/thrift/TByteArrayOutputStream;

    invoke-virtual {v1}, Lorg/apache/thrift/TByteArrayOutputStream;->b()I

    move-result v1

    iget v2, p0, Lorg/apache/thrift/transport/TMemoryBuffer;->b:I

    sub-int/2addr v1, v2

    if-le p3, v1, :cond_0

    iget-object v1, p0, Lorg/apache/thrift/transport/TMemoryBuffer;->a:Lorg/apache/thrift/TByteArrayOutputStream;

    invoke-virtual {v1}, Lorg/apache/thrift/TByteArrayOutputStream;->b()I

    move-result v1

    iget v2, p0, Lorg/apache/thrift/transport/TMemoryBuffer;->b:I

    sub-int p3, v1, v2

    :cond_0
    if-lez p3, :cond_1

    iget v1, p0, Lorg/apache/thrift/transport/TMemoryBuffer;->b:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/apache/thrift/transport/TMemoryBuffer;->b:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/thrift/transport/TMemoryBuffer;->b:I

    :cond_1
    return p3
.end method

.method public b([BII)V
    .locals 1

    iget-object v0, p0, Lorg/apache/thrift/transport/TMemoryBuffer;->a:Lorg/apache/thrift/TByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/thrift/TByteArrayOutputStream;->write([BII)V

    return-void
.end method
