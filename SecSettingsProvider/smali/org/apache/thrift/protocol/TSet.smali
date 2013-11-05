.class public final Lorg/apache/thrift/protocol/TSet;
.super Ljava/lang/Object;


# instance fields
.field public final a:B

.field public final b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/apache/thrift/protocol/TSet;-><init>(BI)V

    return-void
.end method

.method public constructor <init>(BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lorg/apache/thrift/protocol/TSet;->a:B

    iput p2, p0, Lorg/apache/thrift/protocol/TSet;->b:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/thrift/protocol/TList;)V
    .locals 2

    iget-byte v0, p1, Lorg/apache/thrift/protocol/TList;->a:B

    iget v1, p1, Lorg/apache/thrift/protocol/TList;->b:I

    invoke-direct {p0, v0, v1}, Lorg/apache/thrift/protocol/TSet;-><init>(BI)V

    return-void
.end method
