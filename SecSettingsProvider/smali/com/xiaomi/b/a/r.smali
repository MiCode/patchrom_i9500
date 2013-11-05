.class public Lcom/xiaomi/b/a/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/thrift/TBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/b/a/r$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lorg/apache/thrift/TBase",
        "<",
        "Lcom/xiaomi/b/a/r;",
        "Lcom/xiaomi/b/a/r$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/xiaomi/b/a/r$a;",
            "Lorg/apache/thrift/meta_data/FieldMetaData;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Lorg/apache/thrift/protocol/TStruct;

.field private static final k:Lorg/apache/thrift/protocol/TField;

.field private static final l:Lorg/apache/thrift/protocol/TField;

.field private static final m:Lorg/apache/thrift/protocol/TField;

.field private static final n:Lorg/apache/thrift/protocol/TField;

.field private static final o:Lorg/apache/thrift/protocol/TField;

.field private static final p:Lorg/apache/thrift/protocol/TField;

.field private static final q:Lorg/apache/thrift/protocol/TField;

.field private static final r:Lorg/apache/thrift/protocol/TField;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/xiaomi/b/a/d;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lcom/xiaomi/b/a/q;

.field public f:J

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field private s:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/16 v10, 0xa

    const/16 v9, 0xc

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/16 v6, 0xb

    new-instance v0, Lorg/apache/thrift/protocol/TStruct;

    const-string v1, "XmPushActionUnRegistrationResult"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/b/a/r;->j:Lorg/apache/thrift/protocol/TStruct;

    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, "debug"

    invoke-direct {v0, v1, v6, v8}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/b/a/r;->k:Lorg/apache/thrift/protocol/TField;

    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, "target"

    invoke-direct {v0, v1, v9, v7}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/b/a/r;->l:Lorg/apache/thrift/protocol/TField;

    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, "id"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/b/a/r;->m:Lorg/apache/thrift/protocol/TField;

    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, "appId"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/b/a/r;->n:Lorg/apache/thrift/protocol/TField;

    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, "request"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v9, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/b/a/r;->o:Lorg/apache/thrift/protocol/TField;

    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, "errorCode"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v10, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/b/a/r;->p:Lorg/apache/thrift/protocol/TField;

    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, "reason"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/b/a/r;->q:Lorg/apache/thrift/protocol/TField;

    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, "packageName"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/b/a/r;->r:Lorg/apache/thrift/protocol/TField;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/b/a/r$a;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/xiaomi/b/a/r$a;->a:Lcom/xiaomi/b/a/r$a;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "debug"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/b/a/r$a;->b:Lcom/xiaomi/b/a/r$a;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "target"

    new-instance v4, Lorg/apache/thrift/meta_data/StructMetaData;

    const-class v5, Lcom/xiaomi/b/a/d;

    invoke-direct {v4, v9, v5}, Lorg/apache/thrift/meta_data/StructMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/b/a/r$a;->c:Lcom/xiaomi/b/a/r$a;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "id"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/b/a/r$a;->d:Lcom/xiaomi/b/a/r$a;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "appId"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/b/a/r$a;->e:Lcom/xiaomi/b/a/r$a;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "request"

    new-instance v4, Lorg/apache/thrift/meta_data/StructMetaData;

    const-class v5, Lcom/xiaomi/b/a/q;

    invoke-direct {v4, v9, v5}, Lorg/apache/thrift/meta_data/StructMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/b/a/r$a;->f:Lcom/xiaomi/b/a/r$a;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "errorCode"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v10}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/b/a/r$a;->g:Lcom/xiaomi/b/a/r$a;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "reason"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/b/a/r$a;->h:Lcom/xiaomi/b/a/r$a;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "packageName"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/b/a/r;->i:Ljava/util/Map;

    const-class v0, Lcom/xiaomi/b/a/r;

    sget-object v1, Lcom/xiaomi/b/a/r;->i:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/meta_data/FieldMetaData;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/b/a/r;->s:Ljava/util/BitSet;

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/thrift/protocol/TProtocol;)V
    .locals 5

    const/16 v4, 0xc

    const/16 v3, 0xb

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->g()Lorg/apache/thrift/protocol/TStruct;

    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->i()Lorg/apache/thrift/protocol/TField;

    move-result-object v0

    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->b:B

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->h()V

    invoke-virtual {p0}, Lcom/xiaomi/b/a/r;->f()Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'errorCode\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/b/a/r;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/TField;->c:S

    packed-switch v1, :pswitch_data_0

    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->b:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/TProtocolUtil;->a(Lorg/apache/thrift/protocol/TProtocol;B)V

    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->j()V

    goto :goto_0

    :pswitch_0
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->b:B

    if-ne v1, v3, :cond_1

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/b/a/r;->a:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->b:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/TProtocolUtil;->a(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->b:B

    if-ne v1, v4, :cond_2

    new-instance v0, Lcom/xiaomi/b/a/d;

    invoke-direct {v0}, Lcom/xiaomi/b/a/d;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/b/a/r;->b:Lcom/xiaomi/b/a/d;

    iget-object v0, p0, Lcom/xiaomi/b/a/r;->b:Lcom/xiaomi/b/a/d;

    invoke-virtual {v0, p1}, Lcom/xiaomi/b/a/d;->a(Lorg/apache/thrift/protocol/TProtocol;)V

    goto :goto_1

    :cond_2
    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->b:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/TProtocolUtil;->a(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->b:B

    if-ne v1, v3, :cond_3

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/b/a/r;->c:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->b:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/TProtocolUtil;->a(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->b:B

    if-ne v1, v3, :cond_4

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/b/a/r;->d:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->b:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/TProtocolUtil;->a(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_4
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->b:B

    if-ne v1, v4, :cond_5

    new-instance v0, Lcom/xiaomi/b/a/q;

    invoke-direct {v0}, Lcom/xiaomi/b/a/q;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/b/a/r;->e:Lcom/xiaomi/b/a/q;

    iget-object v0, p0, Lcom/xiaomi/b/a/r;->e:Lcom/xiaomi/b/a/q;

    invoke-virtual {v0, p1}, Lcom/xiaomi/b/a/q;->a(Lorg/apache/thrift/protocol/TProtocol;)V

    goto :goto_1

    :cond_5
    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->b:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/TProtocolUtil;->a(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_5
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->b:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_6

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->u()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/b/a/r;->f:J

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/b/a/r;->a(Z)V

    goto :goto_1

    :cond_6
    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->b:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/TProtocolUtil;->a(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_6
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->b:B

    if-ne v1, v3, :cond_7

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/b/a/r;->g:Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->b:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/TProtocolUtil;->a(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_7
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->b:B

    if-ne v1, v3, :cond_8

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/b/a/r;->h:Ljava/lang/String;

    goto/16 :goto_1

    :cond_8
    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->b:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/TProtocolUtil;->a(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/b/a/r;->i()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/b/a/r;->s:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/b/a/r;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/xiaomi/b/a/r;)Z
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/b/a/r;->a()Z

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/b/a/r;->a()Z

    move-result v1

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/b/a/r;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/b/a/r;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/b/a/r;->b()Z

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/b/a/r;->b()Z

    move-result v1

    if-nez v0, :cond_4

    if-eqz v1, :cond_5

    :cond_4
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/b/a/r;->b:Lcom/xiaomi/b/a/d;

    iget-object v1, p1, Lcom/xiaomi/b/a/r;->b:Lcom/xiaomi/b/a/d;

    invoke-virtual {v0, v1}, Lcom/xiaomi/b/a/d;->a(Lcom/xiaomi/b/a/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/b/a/r;->c()Z

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/b/a/r;->c()Z

    move-result v1

    if-nez v0, :cond_6

    if-eqz v1, :cond_7

    :cond_6
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/b/a/r;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/b/a/r;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/b/a/r;->d()Z

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/b/a/r;->d()Z

    move-result v1

    if-nez v0, :cond_8

    if-eqz v1, :cond_9

    :cond_8
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/b/a/r;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/b/a/r;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/b/a/r;->e()Z

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/b/a/r;->e()Z

    move-result v1

    if-nez v0, :cond_a

    if-eqz v1, :cond_b

    :cond_a
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/b/a/r;->e:Lcom/xiaomi/b/a/q;

    iget-object v1, p1, Lcom/xiaomi/b/a/r;->e:Lcom/xiaomi/b/a/q;

    invoke-virtual {v0, v1}, Lcom/xiaomi/b/a/q;->a(Lcom/xiaomi/b/a/q;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_b
    iget-wide v0, p0, Lcom/xiaomi/b/a/r;->f:J

    iget-wide v2, p1, Lcom/xiaomi/b/a/r;->f:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/b/a/r;->g()Z

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/b/a/r;->g()Z

    move-result v1

    if-nez v0, :cond_c

    if-eqz v1, :cond_d

    :cond_c
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/b/a/r;->g:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/b/a/r;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/b/a/r;->h()Z

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/b/a/r;->h()Z

    move-result v1

    if-nez v0, :cond_e

    if-eqz v1, :cond_f

    :cond_e
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/b/a/r;->h:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/b/a/r;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_f
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public b(Lcom/xiaomi/b/a/r;)I
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/b/a/r;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/b/a/r;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/b/a/r;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/b/a/r;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/b/a/r;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/TBaseHelper;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/b/a/r;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/b/a/r;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/b/a/r;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/b/a/r;->b:Lcom/xiaomi/b/a/d;

    iget-object v1, p1, Lcom/xiaomi/b/a/r;->b:Lcom/xiaomi/b/a/d;

    invoke-static {v0, v1}, Lorg/apache/thrift/TBaseHelper;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/b/a/r;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/b/a/r;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/b/a/r;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/b/a/r;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/b/a/r;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/TBaseHelper;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/b/a/r;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/b/a/r;->d()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/b/a/r;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xiaomi/b/a/r;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/b/a/r;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/TBaseHelper;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/b/a/r;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/b/a/r;->e()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/b/a/r;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/xiaomi/b/a/r;->e:Lcom/xiaomi/b/a/q;

    iget-object v1, p1, Lcom/xiaomi/b/a/r;->e:Lcom/xiaomi/b/a/q;

    invoke-static {v0, v1}, Lorg/apache/thrift/TBaseHelper;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/b/a/r;->f()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/b/a/r;->f()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/b/a/r;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lcom/xiaomi/b/a/r;->f:J

    iget-wide v2, p1, Lcom/xiaomi/b/a/r;->f:J

    invoke-static {v0, v1, v2, v3}, Lorg/apache/thrift/TBaseHelper;->a(JJ)I

    move-result v0

    if-nez v0, :cond_0

    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/b/a/r;->g()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/b/a/r;->g()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/b/a/r;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/xiaomi/b/a/r;->g:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/b/a/r;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/TBaseHelper;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/b/a/r;->h()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/b/a/r;->h()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/b/a/r;->h()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/xiaomi/b/a/r;->h:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/b/a/r;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/TBaseHelper;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public b(Lorg/apache/thrift/protocol/TProtocol;)V
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/b/a/r;->i()V

    sget-object v0, Lcom/xiaomi/b/a/r;->j:Lorg/apache/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Lorg/apache/thrift/protocol/TStruct;)V

    iget-object v0, p0, Lcom/xiaomi/b/a/r;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/b/a/r;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/b/a/r;->k:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Lorg/apache/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/xiaomi/b/a/r;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->b()V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/b/a/r;->b:Lcom/xiaomi/b/a/d;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/b/a/r;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/b/a/r;->l:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Lorg/apache/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/xiaomi/b/a/r;->b:Lcom/xiaomi/b/a/d;

    invoke-virtual {v0, p1}, Lcom/xiaomi/b/a/d;->b(Lorg/apache/thrift/protocol/TProtocol;)V

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->b()V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/b/a/r;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/xiaomi/b/a/r;->m:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Lorg/apache/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/xiaomi/b/a/r;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->b()V

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/b/a/r;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/xiaomi/b/a/r;->n:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Lorg/apache/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/xiaomi/b/a/r;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->b()V

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/b/a/r;->e:Lcom/xiaomi/b/a/q;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/xiaomi/b/a/r;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/xiaomi/b/a/r;->o:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Lorg/apache/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/xiaomi/b/a/r;->e:Lcom/xiaomi/b/a/q;

    invoke-virtual {v0, p1}, Lcom/xiaomi/b/a/q;->b(Lorg/apache/thrift/protocol/TProtocol;)V

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->b()V

    :cond_4
    sget-object v0, Lcom/xiaomi/b/a/r;->p:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Lorg/apache/thrift/protocol/TField;)V

    iget-wide v0, p0, Lcom/xiaomi/b/a/r;->f:J

    invoke-virtual {p1, v0, v1}, Lorg/apache/thrift/protocol/TProtocol;->a(J)V

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->b()V

    iget-object v0, p0, Lcom/xiaomi/b/a/r;->g:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/xiaomi/b/a/r;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/xiaomi/b/a/r;->q:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Lorg/apache/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/xiaomi/b/a/r;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->b()V

    :cond_5
    iget-object v0, p0, Lcom/xiaomi/b/a/r;->h:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/xiaomi/b/a/r;->h()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/xiaomi/b/a/r;->r:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Lorg/apache/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/xiaomi/b/a/r;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->b()V

    :cond_6
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->c()V

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->a()V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/b/a/r;->b:Lcom/xiaomi/b/a/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/b/a/r;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/xiaomi/b/a/r;

    invoke-virtual {p0, p1}, Lcom/xiaomi/b/a/r;->b(Lcom/xiaomi/b/a/r;)I

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/b/a/r;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/b/a/r;->e:Lcom/xiaomi/b/a/q;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    instance-of v0, p1, Lcom/xiaomi/b/a/r;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/xiaomi/b/a/r;

    invoke-virtual {p0, p1}, Lcom/xiaomi/b/a/r;->a(Lcom/xiaomi/b/a/r;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/b/a/r;->s:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/b/a/r;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/b/a/r;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/b/a/r;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/b/a/r;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/b/a/r;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'appId\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/b/a/r;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "XmPushActionUnRegistrationResult("

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/b/a/r;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "debug:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/b/a/r;->a:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    move v0, v1

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/b/a/r;->b()Z

    move-result v3

    if-eqz v3, :cond_d

    if-nez v0, :cond_1

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v0, "target:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/b/a/r;->b:Lcom/xiaomi/b/a/d;

    if-nez v0, :cond_7

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    if-nez v1, :cond_2

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v0, "id:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/b/a/r;->c:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "appId:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/b/a/r;->d:Ljava/lang/String;

    if-nez v0, :cond_9

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {p0}, Lcom/xiaomi/b/a/r;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "request:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/b/a/r;->e:Lcom/xiaomi/b/a/q;

    if-nez v0, :cond_a

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_4
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "errorCode:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/xiaomi/b/a/r;->f:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/b/a/r;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "reason:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/b/a/r;->g:Ljava/lang/String;

    if-nez v0, :cond_b

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_5
    invoke-virtual {p0}, Lcom/xiaomi/b/a/r;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "packageName:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/b/a/r;->h:Ljava/lang/String;

    if-nez v0, :cond_c

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_6
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/xiaomi/b/a/r;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/xiaomi/b/a/r;->b:Lcom/xiaomi/b/a/d;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/xiaomi/b/a/r;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_9
    iget-object v0, p0, Lcom/xiaomi/b/a/r;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/xiaomi/b/a/r;->e:Lcom/xiaomi/b/a/q;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_b
    iget-object v0, p0, Lcom/xiaomi/b/a/r;->g:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_c
    iget-object v0, p0, Lcom/xiaomi/b/a/r;->h:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_d
    move v1, v0

    goto/16 :goto_1
.end method
