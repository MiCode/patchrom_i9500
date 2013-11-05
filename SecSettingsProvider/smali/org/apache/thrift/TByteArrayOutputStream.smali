.class public Lorg/apache/thrift/TByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/thrift/TByteArrayOutputStream;->buf:[B

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lorg/apache/thrift/TByteArrayOutputStream;->count:I

    return v0
.end method
