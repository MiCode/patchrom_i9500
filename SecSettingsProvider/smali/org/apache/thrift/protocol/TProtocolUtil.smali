.class public Lorg/apache/thrift/protocol/TProtocolUtil;
.super Ljava/lang/Object;


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7fffffff

    sput v0, Lorg/apache/thrift/protocol/TProtocolUtil;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/apache/thrift/protocol/TProtocol;B)V
    .locals 1

    sget v0, Lorg/apache/thrift/protocol/TProtocolUtil;->a:I

    invoke-static {p0, p1, v0}, Lorg/apache/thrift/protocol/TProtocolUtil;->a(Lorg/apache/thrift/protocol/TProtocol;BI)V

    return-void
.end method

.method public static a(Lorg/apache/thrift/protocol/TProtocol;BI)V
    .locals 4

    const/4 v0, 0x0

    if-gtz p2, :cond_0

    new-instance v0, Lorg/apache/thrift/TException;

    const-string v1, "Maximum skip depth exceeded"

    invoke-direct {v0, v1}, Lorg/apache/thrift/TException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TProtocol;->q()Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TProtocol;->r()B

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TProtocol;->s()S

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TProtocol;->t()I

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TProtocol;->u()J

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TProtocol;->v()D

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TProtocol;->x()Ljava/nio/ByteBuffer;

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TProtocol;->g()Lorg/apache/thrift/protocol/TStruct;

    :goto_1
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TProtocol;->i()Lorg/apache/thrift/protocol/TField;

    move-result-object v0

    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->b:B

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TProtocol;->h()V

    goto :goto_0

    :cond_1
    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->b:B

    add-int/lit8 v1, p2, -0x1

    invoke-static {p0, v0, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->a(Lorg/apache/thrift/protocol/TProtocol;BI)V

    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TProtocol;->j()V

    goto :goto_1

    :pswitch_9
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TProtocol;->k()Lorg/apache/thrift/protocol/TMap;

    move-result-object v1

    :goto_2
    iget v2, v1, Lorg/apache/thrift/protocol/TMap;->c:I

    if-lt v0, v2, :cond_2

    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TProtocol;->l()V

    goto :goto_0

    :cond_2
    iget-byte v2, v1, Lorg/apache/thrift/protocol/TMap;->a:B

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, v2, v3}, Lorg/apache/thrift/protocol/TProtocolUtil;->a(Lorg/apache/thrift/protocol/TProtocol;BI)V

    iget-byte v2, v1, Lorg/apache/thrift/protocol/TMap;->b:B

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, v2, v3}, Lorg/apache/thrift/protocol/TProtocolUtil;->a(Lorg/apache/thrift/protocol/TProtocol;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :pswitch_a
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TProtocol;->o()Lorg/apache/thrift/protocol/TSet;

    move-result-object v1

    :goto_3
    iget v2, v1, Lorg/apache/thrift/protocol/TSet;->b:I

    if-lt v0, v2, :cond_3

    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TProtocol;->p()V

    goto :goto_0

    :cond_3
    iget-byte v2, v1, Lorg/apache/thrift/protocol/TSet;->a:B

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, v2, v3}, Lorg/apache/thrift/protocol/TProtocolUtil;->a(Lorg/apache/thrift/protocol/TProtocol;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :pswitch_b
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TProtocol;->m()Lorg/apache/thrift/protocol/TList;

    move-result-object v1

    :goto_4
    iget v2, v1, Lorg/apache/thrift/protocol/TList;->b:I

    if-lt v0, v2, :cond_4

    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TProtocol;->n()V

    goto :goto_0

    :cond_4
    iget-byte v2, v1, Lorg/apache/thrift/protocol/TList;->a:B

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, v2, v3}, Lorg/apache/thrift/protocol/TProtocolUtil;->a(Lorg/apache/thrift/protocol/TProtocol;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
