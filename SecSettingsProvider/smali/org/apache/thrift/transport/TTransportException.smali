.class public Lorg/apache/thrift/transport/TTransportException;
.super Lorg/apache/thrift/TException;


# instance fields
.field protected a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/thrift/TException;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/thrift/transport/TTransportException;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/thrift/TException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/thrift/transport/TTransportException;->a:I

    return-void
.end method
