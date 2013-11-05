.class public Lorg/apache/thrift/protocol/TBinaryProtocol$Factory;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/thrift/protocol/TProtocolFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/thrift/protocol/TBinaryProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field protected a:Z

.field protected b:Z

.field protected c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/thrift/protocol/TBinaryProtocol$Factory;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/thrift/protocol/TBinaryProtocol$Factory;-><init>(ZZI)V

    return-void
.end method

.method public constructor <init>(ZZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol$Factory;->a:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol$Factory;->b:Z

    iput-boolean p1, p0, Lorg/apache/thrift/protocol/TBinaryProtocol$Factory;->a:Z

    iput-boolean p2, p0, Lorg/apache/thrift/protocol/TBinaryProtocol$Factory;->b:Z

    iput p3, p0, Lorg/apache/thrift/protocol/TBinaryProtocol$Factory;->c:I

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/thrift/transport/TTransport;)Lorg/apache/thrift/protocol/TProtocol;
    .locals 3

    new-instance v0, Lorg/apache/thrift/protocol/TBinaryProtocol;

    iget-boolean v1, p0, Lorg/apache/thrift/protocol/TBinaryProtocol$Factory;->a:Z

    iget-boolean v2, p0, Lorg/apache/thrift/protocol/TBinaryProtocol$Factory;->b:Z

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/thrift/protocol/TBinaryProtocol;-><init>(Lorg/apache/thrift/transport/TTransport;ZZ)V

    iget v1, p0, Lorg/apache/thrift/protocol/TBinaryProtocol$Factory;->c:I

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/apache/thrift/protocol/TBinaryProtocol$Factory;->c:I

    invoke-virtual {v0, v1}, Lorg/apache/thrift/protocol/TBinaryProtocol;->c(I)V

    :cond_0
    return-object v0
.end method
