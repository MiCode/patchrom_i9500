.class public Lcom/xiaomi/a/a/a/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/thrift/TBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/a/a/a/a/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lorg/apache/thrift/TBase",
        "<",
        "Lcom/xiaomi/a/a/a/a/d;",
        "Lcom/xiaomi/a/a/a/a/d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/xiaomi/a/a/a/a/d$a;",
            "Lorg/apache/thrift/meta_data/FieldMetaData;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Lorg/apache/thrift/protocol/TStruct;

.field private static final j:Lorg/apache/thrift/protocol/TField;

.field private static final k:Lorg/apache/thrift/protocol/TField;

.field private static final l:Lorg/apache/thrift/protocol/TField;

.field private static final m:Lorg/apache/thrift/protocol/TField;

.field private static final n:Lorg/apache/thrift/protocol/TField;

.field private static final o:Lorg/apache/thrift/protocol/TField;

.field private static final p:Lorg/apache/thrift/protocol/TField;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:J

.field public e:I

.field public f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/16 v10, 0xb

    const/4 v9, 0x2

    const/16 v8, 0xd

    const/4 v6, 0x1

    const/16 v7, 0x8

    new-instance v0, Lorg/apache/thrift/protocol/TStruct;

    const-string v1, "LandNodeInfo"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/a/a/a/a/d;->i:Lorg/apache/thrift/protocol/TStruct;

    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, "ip"

    invoke-direct {v0, v1, v10, v6}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/a/a/a/a/d;->j:Lorg/apache/thrift/protocol/TField;

    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, "failed_count"

    invoke-direct {v0, v1, v7, v9}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/a/a/a/a/d;->k:Lorg/apache/thrift/protocol/TField;

    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, "success_count"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/a/a/a/a/d;->l:Lorg/apache/thrift/protocol/TField;

    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, "duration"

    const/16 v2, 0xa

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/a/a/a/a/d;->m:Lorg/apache/thrift/protocol/TField;

    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, "size"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/a/a/a/a/d;->n:Lorg/apache/thrift/protocol/TField;

    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, "exp_info"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/a/a/a/a/d;->o:Lorg/apache/thrift/protocol/TField;

    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, "http_info"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/a/a/a/a/d;->p:Lorg/apache/thrift/protocol/TField;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/a/a/a/a/d$a;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/xiaomi/a/a/a/a/d$a;->a:Lcom/xiaomi/a/a/a/a/d$a;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "ip"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v10}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/a/a/a/a/d$a;->b:Lcom/xiaomi/a/a/a/a/d$a;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "failed_count"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/a/a/a/a/d$a;->c:Lcom/xiaomi/a/a/a/a/d$a;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "success_count"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/a/a/a/a/d$a;->d:Lcom/xiaomi/a/a/a/a/d$a;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "duration"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/a/a/a/a/d$a;->e:Lcom/xiaomi/a/a/a/a/d$a;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "size"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/a/a/a/a/d$a;->f:Lcom/xiaomi/a/a/a/a/d$a;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "exp_info"

    new-instance v4, Lorg/apache/thrift/meta_data/MapMetaData;

    new-instance v5, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v5, v10}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    new-instance v6, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v6, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v4, v8, v5, v6}, Lorg/apache/thrift/meta_data/MapMetaData;-><init>(BLorg/apache/thrift/meta_data/FieldValueMetaData;Lorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/a/a/a/a/d$a;->g:Lcom/xiaomi/a/a/a/a/d$a;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "http_info"

    new-instance v4, Lorg/apache/thrift/meta_data/MapMetaData;

    new-instance v5, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v5, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    new-instance v6, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v6, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v4, v8, v5, v6}, Lorg/apache/thrift/meta_data/MapMetaData;-><init>(BLorg/apache/thrift/meta_data/FieldValueMetaData;Lorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/a/a/a/a/d;->h:Ljava/util/Map;

    const-class v0, Lcom/xiaomi/a/a/a/a/d;

    sget-object v1, Lcom/xiaomi/a/a/a/a/d;->h:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/meta_data/FieldMetaData;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/a/a/a/a/d;->q:Ljava/util/BitSet;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/xiaomi/a/a/a/a/d;
    .locals 1

    iput p1, p0, Lcom/xiaomi/a/a/a/a/d;->b:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/a/a/a/a/d;->a(Z)V

    return-object p0
.end method

.method public a(J)Lcom/xiaomi/a/a/a/a/d;
    .locals 1

    iput-wide p1, p0, Lcom/xiaomi/a/a/a/a/d;->d:J

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/a/a/a/a/d;->c(Z)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/xiaomi/a/a/a/a/d;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/a/a/a/a/d;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/xiaomi/a/a/a/a/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/xiaomi/a/a/a/a/d;"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/a/a/a/a/d;->f:Ljava/util/Map;

    return-object p0
.end method

.method public a(Lorg/apache/thrift/protocol/TProtocol;)V
    .locals 9

    const/16 v8, 0xd

    const/4 v1, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x1

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->g()Lorg/apache/thrift/protocol/TStruct;

    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->i()Lorg/apache/thrift/protocol/TField;

    move-result-object v0

    iget-byte v2, v0, Lorg/apache/thrift/protocol/TField;->b:B

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->h()V

    invoke-virtual {p0}, Lcom/xiaomi/a/a/a/a/d;->b()Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'failed_count\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/a/a/a/a/d;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-short v2, v0, Lorg/apache/thrift/protocol/TField;->c:S

    packed-switch v2, :pswitch_data_0

    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->b:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/TProtocolUtil;->a(Lorg/apache/thrift/protocol/TProtocol;B)V

    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->j()V

    goto :goto_0

    :pswitch_0
    iget-byte v2, v0, Lorg/apache/thrift/protocol/TField;->b:B

    const/16 v3, 0xb

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/a/a/a/a/d;->a:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->b:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/TProtocolUtil;->a(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_1
    iget-byte v2, v0, Lorg/apache/thrift/protocol/TField;->b:B

    if-ne v2, v7, :cond_2

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->t()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/a/a/a/a/d;->b:I

    invoke-virtual {p0, v6}, Lcom/xiaomi/a/a/a/a/d;->a(Z)V

    goto :goto_1

    :cond_2
    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->b:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/TProtocolUtil;->a(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_2
    iget-byte v2, v0, Lorg/apache/thrift/protocol/TField;->b:B

    if-ne v2, v7, :cond_3

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->t()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/a/a/a/a/d;->c:I

    invoke-virtual {p0, v6}, Lcom/xiaomi/a/a/a/a/d;->b(Z)V

    goto :goto_1

    :cond_3
    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->b:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/TProtocolUtil;->a(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_3
    iget-byte v2, v0, Lorg/apache/thrift/protocol/TField;->b:B

    const/16 v3, 0xa

    if-ne v2, v3, :cond_4

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->u()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/a/a/a/a/d;->d:J

    invoke-virtual {p0, v6}, Lcom/xiaomi/a/a/a/a/d;->c(Z)V

    goto :goto_1

    :cond_4
    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->b:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/TProtocolUtil;->a(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_4
    iget-byte v2, v0, Lorg/apache/thrift/protocol/TField;->b:B

    if-ne v2, v7, :cond_5

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->t()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/a/a/a/a/d;->e:I

    invoke-virtual {p0, v6}, Lcom/xiaomi/a/a/a/a/d;->d(Z)V

    goto :goto_1

    :cond_5
    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->b:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/TProtocolUtil;->a(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_5
    iget-byte v2, v0, Lorg/apache/thrift/protocol/TField;->b:B

    if-ne v2, v8, :cond_7

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->k()Lorg/apache/thrift/protocol/TMap;

    move-result-object v2

    new-instance v0, Ljava/util/HashMap;

    iget v3, v2, Lorg/apache/thrift/protocol/TMap;->c:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/a/a/a/a/d;->f:Ljava/util/Map;

    move v0, v1

    :goto_2
    iget v3, v2, Lorg/apache/thrift/protocol/TMap;->c:I

    if-ge v0, v3, :cond_6

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->w()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->t()I

    move-result v4

    iget-object v5, p0, Lcom/xiaomi/a/a/a/a/d;->f:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->l()V

    goto/16 :goto_1

    :cond_7
    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->b:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/TProtocolUtil;->a(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_6
    iget-byte v2, v0, Lorg/apache/thrift/protocol/TField;->b:B

    if-ne v2, v8, :cond_9

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->k()Lorg/apache/thrift/protocol/TMap;

    move-result-object v2

    new-instance v0, Ljava/util/HashMap;

    iget v3, v2, Lorg/apache/thrift/protocol/TMap;->c:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/a/a/a/a/d;->g:Ljava/util/Map;

    move v0, v1

    :goto_3
    iget v3, v2, Lorg/apache/thrift/protocol/TMap;->c:I

    if-ge v0, v3, :cond_8

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->t()I

    move-result v3

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->t()I

    move-result v4

    iget-object v5, p0, Lcom/xiaomi/a/a/a/a/d;->g:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->l()V

    goto/16 :goto_1

    :cond_9
    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->b:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/TProtocolUtil;->a(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/a/a/a/a/d;->c()Z

    move-result v0

    if-nez v0, :cond_b

    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'success_count\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/a/a/a/a/d;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/a/a/a/a/d;->d()Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'duration\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/a/a/a/a/d;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-virtual {p0}, Lcom/xiaomi/a/a/a/a/d;->e()Z

    move-result v0

    if-nez v0, :cond_d

    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'size\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/a/a/a/a/d;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/a/a/a/a/d;->h()V

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
    .end packed-switch
.end method

.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/a/a/a/a/d;->q:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/a/a/a/a/d;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/xiaomi/a/a/a/a/d;)Z
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/a/a/a/a/d;->a()Z

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/a/a/a/a/d;->a()Z

    move-result v1

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/a/a/a/a/d;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/a/a/a/a/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    iget v0, p0, Lcom/xiaomi/a/a/a/a/d;->b:I

    iget v1, p1, Lcom/xiaomi/a/a/a/a/d;->b:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/xiaomi/a/a/a/a/d;->c:I

    iget v1, p1, Lcom/xiaomi/a/a/a/a/d;->c:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/xiaomi/a/a/a/a/d;->d:J

    iget-wide v2, p1, Lcom/xiaomi/a/a/a/a/d;->d:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/xiaomi/a/a/a/a/d;->e:I

    iget v1, p1, Lcom/xiaomi/a/a/a/a/d;->e:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/a/a/a/a/d;->f()Z

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/a/a/a/a/d;->f()Z

    move-result v1

    if-nez v0, :cond_4

    if-eqz v1, :cond_5

    :cond_4
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/a/a/a/a/d;->f:Ljava/util/Map;

    iget-object v1, p1, Lcom/xiaomi/a/a/a/a/d;->f:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/a/a/a/a/d;->g()Z

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/a/a/a/a/d;->g()Z

    move-result v1

    if-nez v0, :cond_6

    if-eqz v1, :cond_7

    :cond_6
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/a/a/a/a/d;->g:Ljava/util/Map;

    iget-object v1, p1, Lcom/xiaomi/a/a/a/a/d;->g:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_7
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcom/xiaomi/a/a/a/a/d;)I
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
    invoke-virtual {p0}, Lcom/xiaomi/a/a/a/a/d;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/a/a/a/a/d;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/a/a/a/a/d;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/a/a/a/a/d;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/a/a/a/a/d;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/TBaseHelper;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/a/a/a/a/d;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/a/a/a/a/d;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/a/a/a/a/d;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/xiaomi/a/a/a/a/d;->b:I

    iget v1, p1, Lcom/xiaomi/a/a/a/a/d;->b:I

    invoke-static {v0, v1}, Lorg/apache/thrift/TBaseHelper;->a(II)I

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/a/a/a/a/d;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/a/a/a/a/d;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/a/a/a/a/d;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/xiaomi/a/a/a/a/d;->c:I

    iget v1, p1, Lcom/xiaomi/a/a/a/a/d;->c:I

    invoke-static {v0, v1}, Lorg/apache/thrift/TBaseHelper;->a(II)I

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/a/a/a/a/d;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/a/a/a/a/d;->d()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/a/a/a/a/d;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-wide v0, p0, Lcom/xiaomi/a/a/a/a/d;->d:J

    iget-wide v2, p1, Lcom/xiaomi/a/a/a/a/d;->d:J

    invoke-static {v0, v1, v2, v3}, Lorg/apache/thrift/TBaseHelper;->a(JJ)I

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/a/a/a/a/d;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/a/a/a/a/d;->e()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/a/a/a/a/d;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/xiaomi/a/a/a/a/d;->e:I

    iget v1, p1, Lcom/xiaomi/a/a/a/a/d;->e:I

    invoke-static {v0, v1}, Lorg/apache/thrift/TBaseHelper;->a(II)I

    move-result v0

    if-nez v0, :cond_0

    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/a/a/a/a/d;->f()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/a/a/a/a/d;->f()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/a/a/a/a/d;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/xiaomi/a/a/a/a/d;->f:Ljava/util/Map;

    iget-object v1, p1, Lcom/xiaomi/a/a/a/a/d;->f:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/TBaseHelper;->a(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/a/a/a/a/d;->g()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/a/a/a/a/d;->g()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/a/a/a/a/d;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/xiaomi/a/a/a/a/d;->g:Ljava/util/Map;

    iget-object v1, p1, Lcom/xiaomi/a/a/a/a/d;->g:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/TBaseHelper;->a(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public b(I)Lcom/xiaomi/a/a/a/a/d;
    .locals 1

    iput p1, p0, Lcom/xiaomi/a/a/a/a/d;->c:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/a/a/a/a/d;->b(Z)V

    return-object p0
.end method

.method public b(Lorg/apache/thrift/protocol/TProtocol;)V
    .locals 4

    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/xiaomi/a/a/a/a/d;->h()V

    sget-object v0, Lcom/xiaomi/a/a/a/a/d;->i:Lorg/apache/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Lorg/apache/thrift/protocol/TStruct;)V

    iget-object v0, p0, Lcom/xiaomi/a/a/a/a/d;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/a/a/a/a/d;->j:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Lorg/apache/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/xiaomi/a/a/a/a/d;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->b()V

    :cond_0
    sget-object v0, Lcom/xiaomi/a/a/a/a/d;->k:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Lorg/apache/thrift/protocol/TField;)V

    iget v0, p0, Lcom/xiaomi/a/a/a/a/d;->b:I

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(I)V

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->b()V

    sget-object v0, Lcom/xiaomi/a/a/a/a/d;->l:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Lorg/apache/thrift/protocol/TField;)V

    iget v0, p0, Lcom/xiaomi/a/a/a/a/d;->c:I

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(I)V

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->b()V

    sget-object v0, Lcom/xiaomi/a/a/a/a/d;->m:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Lorg/apache/thrift/protocol/TField;)V

    iget-wide v0, p0, Lcom/xiaomi/a/a/a/a/d;->d:J

    invoke-virtual {p1, v0, v1}, Lorg/apache/thrift/protocol/TProtocol;->a(J)V

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->b()V

    sget-object v0, Lcom/xiaomi/a/a/a/a/d;->n:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Lorg/apache/thrift/protocol/TField;)V

    iget v0, p0, Lcom/xiaomi/a/a/a/a/d;->e:I

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(I)V

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->b()V

    iget-object v0, p0, Lcom/xiaomi/a/a/a/a/d;->f:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/xiaomi/a/a/a/a/d;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/xiaomi/a/a/a/a/d;->o:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Lorg/apache/thrift/protocol/TField;)V

    new-instance v0, Lorg/apache/thrift/protocol/TMap;

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/xiaomi/a/a/a/a/d;->f:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TMap;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Lorg/apache/thrift/protocol/TMap;)V

    iget-object v0, p0, Lcom/xiaomi/a/a/a/a/d;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->a(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->d()V

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->b()V

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/a/a/a/a/d;->g:Ljava/util/Map;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/xiaomi/a/a/a/a/d;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/xiaomi/a/a/a/a/d;->p:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Lorg/apache/thrift/protocol/TField;)V

    new-instance v0, Lorg/apache/thrift/protocol/TMap;

    iget-object v1, p0, Lcom/xiaomi/a/a/a/a/d;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v3, v3, v1}, Lorg/apache/thrift/protocol/TMap;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Lorg/apache/thrift/protocol/TMap;)V

    iget-object v0, p0, Lcom/xiaomi/a/a/a/a/d;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->a(I)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->d()V

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->b()V

    :cond_4
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->c()V

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->a()V

    return-void
.end method

.method public b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/a/a/a/a/d;->q:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public b()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/a/a/a/a/d;->q:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public c(I)Lcom/xiaomi/a/a/a/a/d;
    .locals 1

    iput p1, p0, Lcom/xiaomi/a/a/a/a/d;->e:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/a/a/a/a/d;->d(Z)V

    return-object p0
.end method

.method public c(Z)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/a/a/a/a/d;->q:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public c()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/a/a/a/a/d;->q:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/xiaomi/a/a/a/a/d;

    invoke-virtual {p0, p1}, Lcom/xiaomi/a/a/a/a/d;->b(Lcom/xiaomi/a/a/a/a/d;)I

    move-result v0

    return v0
.end method

.method public d(Z)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/a/a/a/a/d;->q:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/a/a/a/a/d;->q:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/a/a/a/a/d;->q:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    instance-of v0, p1, Lcom/xiaomi/a/a/a/a/d;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/xiaomi/a/a/a/a/d;

    invoke-virtual {p0, p1}, Lcom/xiaomi/a/a/a/a/d;->a(Lcom/xiaomi/a/a/a/a/d;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/a/a/a/a/d;->f:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/a/a/a/a/d;->g:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/a/a/a/a/d;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'ip\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/a/a/a/a/d;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LandNodeInfo("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "ip:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/a/a/a/a/d;->a:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "failed_count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/a/a/a/a/d;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "success_count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/a/a/a/a/d;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/a/a/a/a/d;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/a/a/a/a/d;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/a/a/a/a/d;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "exp_info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/a/a/a/a/d;->f:Ljava/util/Map;

    if-nez v1, :cond_3

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/xiaomi/a/a/a/a/d;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "http_info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/a/a/a/a/d;->g:Ljava/util/Map;

    if-nez v1, :cond_4

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_2
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/a/a/a/a/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/xiaomi/a/a/a/a/d;->f:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/xiaomi/a/a/a/a/d;->g:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method
