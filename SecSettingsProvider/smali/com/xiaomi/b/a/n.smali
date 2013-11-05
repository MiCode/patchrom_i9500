.class public Lcom/xiaomi/b/a/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/thrift/TBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/b/a/n$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lorg/apache/thrift/TBase",
        "<",
        "Lcom/xiaomi/b/a/n;",
        "Lcom/xiaomi/b/a/n$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/xiaomi/b/a/n$a;",
            "Lorg/apache/thrift/meta_data/FieldMetaData;",
            ">;"
        }
    .end annotation
.end field

.field private static final m:Lorg/apache/thrift/protocol/TStruct;

.field private static final n:Lorg/apache/thrift/protocol/TField;

.field private static final o:Lorg/apache/thrift/protocol/TField;

.field private static final p:Lorg/apache/thrift/protocol/TField;

.field private static final q:Lorg/apache/thrift/protocol/TField;

.field private static final r:Lorg/apache/thrift/protocol/TField;

.field private static final s:Lorg/apache/thrift/protocol/TField;

.field private static final t:Lorg/apache/thrift/protocol/TField;

.field private static final u:Lorg/apache/thrift/protocol/TField;

.field private static final v:Lorg/apache/thrift/protocol/TField;

.field private static final w:Lorg/apache/thrift/protocol/TField;

.field private static final x:Lorg/apache/thrift/protocol/TField;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/xiaomi/b/a/d;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Lcom/xiaomi/b/a/b;

.field public i:Z

.field public j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljava/lang/String;

.field private y:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/16 v10, 0xd

    const/4 v9, 0x1

    const/16 v6, 0xc

    const/4 v8, 0x2

    const/16 v7, 0xb

    new-instance v0, Lorg/apache/thrift/protocol/TStruct;

    const-string v1, "XmPushActionSendMessage"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/b/a/n;->m:Lorg/apache/thrift/protocol/TStruct;

    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, "debug"

    invoke-direct {v0, v1, v7, v9}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/b/a/n;->n:Lorg/apache/thrift/protocol/TField;

    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, "target"

    invoke-direct {v0, v1, v6, v8}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/b/a/n;->o:Lorg/apache/thrift/protocol/TField;

    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, "id"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/b/a/n;->p:Lorg/apache/thrift/protocol/TField;

    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, "appId"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/b/a/n;->q:Lorg/apache/thrift/protocol/TField;

    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, "packageName"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/b/a/n;->r:Lorg/apache/thrift/protocol/TField;

    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, "topic"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/b/a/n;->s:Lorg/apache/thrift/protocol/TField;

    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, "aliasName"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/b/a/n;->t:Lorg/apache/thrift/protocol/TField;

    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, "message"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/b/a/n;->u:Lorg/apache/thrift/protocol/TField;

    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, "needAck"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/b/a/n;->v:Lorg/apache/thrift/protocol/TField;

    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, "params"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v10, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/b/a/n;->w:Lorg/apache/thrift/protocol/TField;

    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, "category"

    invoke-direct {v0, v1, v7, v7}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/b/a/n;->x:Lorg/apache/thrift/protocol/TField;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/b/a/n$a;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/xiaomi/b/a/n$a;->a:Lcom/xiaomi/b/a/n$a;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "debug"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/b/a/n$a;->b:Lcom/xiaomi/b/a/n$a;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "target"

    new-instance v4, Lorg/apache/thrift/meta_data/StructMetaData;

    const-class v5, Lcom/xiaomi/b/a/d;

    invoke-direct {v4, v6, v5}, Lorg/apache/thrift/meta_data/StructMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/b/a/n$a;->c:Lcom/xiaomi/b/a/n$a;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "id"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/b/a/n$a;->d:Lcom/xiaomi/b/a/n$a;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "appId"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/b/a/n$a;->e:Lcom/xiaomi/b/a/n$a;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "packageName"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/b/a/n$a;->f:Lcom/xiaomi/b/a/n$a;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "topic"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/b/a/n$a;->g:Lcom/xiaomi/b/a/n$a;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "aliasName"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/b/a/n$a;->h:Lcom/xiaomi/b/a/n$a;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "message"

    new-instance v4, Lorg/apache/thrift/meta_data/StructMetaData;

    const-class v5, Lcom/xiaomi/b/a/b;

    invoke-direct {v4, v6, v5}, Lorg/apache/thrift/meta_data/StructMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/b/a/n$a;->i:Lcom/xiaomi/b/a/n$a;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "needAck"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v8}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/b/a/n$a;->j:Lcom/xiaomi/b/a/n$a;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "params"

    new-instance v4, Lorg/apache/thrift/meta_data/MapMetaData;

    new-instance v5, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v5, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    new-instance v6, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v6, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v4, v10, v5, v6}, Lorg/apache/thrift/meta_data/MapMetaData;-><init>(BLorg/apache/thrift/meta_data/FieldValueMetaData;Lorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/b/a/n$a;->k:Lcom/xiaomi/b/a/n$a;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "category"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/b/a/n;->l:Ljava/util/Map;

    const-class v0, Lcom/xiaomi/b/a/n;

    sget-object v1, Lcom/xiaomi/b/a/n;->l:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/meta_data/FieldMetaData;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/b/a/n;->y:Ljava/util/BitSet;

    iput-boolean v1, p0, Lcom/xiaomi/b/a/n;->i:Z

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/thrift/protocol/TProtocol;)V
    .locals 7

    const/16 v6, 0xc

    const/16 v5, 0xb

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->g()Lorg/apache/thrift/protocol/TStruct;

    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->i()Lorg/apache/thrift/protocol/TField;

    move-result-object v0

    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->b:B

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->h()V

    invoke-virtual {p0}, Lcom/xiaomi/b/a/n;->r()V

    return-void

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

    if-ne v1, v5, :cond_1

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/b/a/n;->a:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->b:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/TProtocolUtil;->a(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->b:B

    if-ne v1, v6, :cond_2

    new-instance v0, Lcom/xiaomi/b/a/d;

    invoke-direct {v0}, Lcom/xiaomi/b/a/d;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/b/a/n;->b:Lcom/xiaomi/b/a/d;

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->b:Lcom/xiaomi/b/a/d;

    invoke-virtual {v0, p1}, Lcom/xiaomi/b/a/d;->a(Lorg/apache/thrift/protocol/TProtocol;)V

    goto :goto_1

    :cond_2
    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->b:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/TProtocolUtil;->a(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->b:B

    if-ne v1, v5, :cond_3

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/b/a/n;->c:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->b:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/TProtocolUtil;->a(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->b:B

    if-ne v1, v5, :cond_4

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/b/a/n;->d:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->b:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/TProtocolUtil;->a(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_4
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->b:B

    if-ne v1, v5, :cond_5

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/b/a/n;->e:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->b:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/TProtocolUtil;->a(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_5
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->b:B

    if-ne v1, v5, :cond_6

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/b/a/n;->f:Ljava/lang/String;

    goto :goto_1

    :cond_6
    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->b:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/TProtocolUtil;->a(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_6
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->b:B

    if-ne v1, v5, :cond_7

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/b/a/n;->g:Ljava/lang/String;

    goto :goto_1

    :cond_7
    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->b:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/TProtocolUtil;->a(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_7
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->b:B

    if-ne v1, v6, :cond_8

    new-instance v0, Lcom/xiaomi/b/a/b;

    invoke-direct {v0}, Lcom/xiaomi/b/a/b;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/b/a/n;->h:Lcom/xiaomi/b/a/b;

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->h:Lcom/xiaomi/b/a/b;

    invoke-virtual {v0, p1}, Lcom/xiaomi/b/a/b;->a(Lorg/apache/thrift/protocol/TProtocol;)V

    goto/16 :goto_1

    :cond_8
    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->b:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/TProtocolUtil;->a(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_8
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->b:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->q()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/b/a/n;->i:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/b/a/n;->a(Z)V

    goto/16 :goto_1

    :cond_9
    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->b:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/TProtocolUtil;->a(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_9
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->b:B

    const/16 v2, 0xd

    if-ne v1, v2, :cond_b

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->k()Lorg/apache/thrift/protocol/TMap;

    move-result-object v1

    new-instance v0, Ljava/util/HashMap;

    iget v2, v1, Lorg/apache/thrift/protocol/TMap;->c:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/b/a/n;->j:Ljava/util/Map;

    const/4 v0, 0x0

    :goto_2
    iget v2, v1, Lorg/apache/thrift/protocol/TMap;->c:I

    if-ge v0, v2, :cond_a

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->w()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/b/a/n;->j:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_a
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->l()V

    goto/16 :goto_1

    :cond_b
    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->b:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/TProtocolUtil;->a(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_a
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->b:B

    if-ne v1, v5, :cond_c

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/b/a/n;->k:Ljava/lang/String;

    goto/16 :goto_1

    :cond_c
    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->b:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/TProtocolUtil;->a(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

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
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->y:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/xiaomi/b/a/n;)Z
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/b/a/n;->a()Z

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/b/a/n;->a()Z

    move-result v1

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/b/a/n;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/b/a/n;->b()Z

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/b/a/n;->b()Z

    move-result v1

    if-nez v0, :cond_4

    if-eqz v1, :cond_5

    :cond_4
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->b:Lcom/xiaomi/b/a/d;

    iget-object v1, p1, Lcom/xiaomi/b/a/n;->b:Lcom/xiaomi/b/a/d;

    invoke-virtual {v0, v1}, Lcom/xiaomi/b/a/d;->a(Lcom/xiaomi/b/a/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/b/a/n;->d()Z

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/b/a/n;->d()Z

    move-result v1

    if-nez v0, :cond_6

    if-eqz v1, :cond_7

    :cond_6
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/b/a/n;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/b/a/n;->f()Z

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/b/a/n;->f()Z

    move-result v1

    if-nez v0, :cond_8

    if-eqz v1, :cond_9

    :cond_8
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/b/a/n;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/b/a/n;->g()Z

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/b/a/n;->g()Z

    move-result v1

    if-nez v0, :cond_a

    if-eqz v1, :cond_b

    :cond_a
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/b/a/n;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/b/a/n;->i()Z

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/b/a/n;->i()Z

    move-result v1

    if-nez v0, :cond_c

    if-eqz v1, :cond_d

    :cond_c
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->f:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/b/a/n;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/b/a/n;->k()Z

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/b/a/n;->k()Z

    move-result v1

    if-nez v0, :cond_e

    if-eqz v1, :cond_f

    :cond_e
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->g:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/b/a/n;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_f
    invoke-virtual {p0}, Lcom/xiaomi/b/a/n;->m()Z

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/b/a/n;->m()Z

    move-result v1

    if-nez v0, :cond_10

    if-eqz v1, :cond_11

    :cond_10
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->h:Lcom/xiaomi/b/a/b;

    iget-object v1, p1, Lcom/xiaomi/b/a/n;->h:Lcom/xiaomi/b/a/b;

    invoke-virtual {v0, v1}, Lcom/xiaomi/b/a/b;->a(Lcom/xiaomi/b/a/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_11
    invoke-virtual {p0}, Lcom/xiaomi/b/a/n;->n()Z

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/b/a/n;->n()Z

    move-result v1

    if-nez v0, :cond_12

    if-eqz v1, :cond_13

    :cond_12
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-boolean v0, p0, Lcom/xiaomi/b/a/n;->i:Z

    iget-boolean v1, p1, Lcom/xiaomi/b/a/n;->i:Z

    if-ne v0, v1, :cond_0

    :cond_13
    invoke-virtual {p0}, Lcom/xiaomi/b/a/n;->o()Z

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/b/a/n;->o()Z

    move-result v1

    if-nez v0, :cond_14

    if-eqz v1, :cond_15

    :cond_14
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->j:Ljava/util/Map;

    iget-object v1, p1, Lcom/xiaomi/b/a/n;->j:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_15
    invoke-virtual {p0}, Lcom/xiaomi/b/a/n;->q()Z

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/b/a/n;->q()Z

    move-result v1

    if-nez v0, :cond_16

    if-eqz v1, :cond_17

    :cond_16
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->k:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/b/a/n;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_17
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public b(Lcom/xiaomi/b/a/n;)I
    .locals 2

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
    invoke-virtual {p0}, Lcom/xiaomi/b/a/n;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/b/a/n;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/b/a/n;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/b/a/n;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/TBaseHelper;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/b/a/n;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/b/a/n;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/b/a/n;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->b:Lcom/xiaomi/b/a/d;

    iget-object v1, p1, Lcom/xiaomi/b/a/n;->b:Lcom/xiaomi/b/a/d;

    invoke-static {v0, v1}, Lorg/apache/thrift/TBaseHelper;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/b/a/n;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/b/a/n;->d()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/b/a/n;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/b/a/n;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/TBaseHelper;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/b/a/n;->f()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/b/a/n;->f()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/b/a/n;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/b/a/n;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/TBaseHelper;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/b/a/n;->g()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/b/a/n;->g()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/b/a/n;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/b/a/n;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/TBaseHelper;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/b/a/n;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/b/a/n;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/b/a/n;->i()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->f:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/b/a/n;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/TBaseHelper;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/b/a/n;->k()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/b/a/n;->k()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/b/a/n;->k()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->g:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/b/a/n;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/TBaseHelper;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/b/a/n;->m()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/b/a/n;->m()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/b/a/n;->m()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->h:Lcom/xiaomi/b/a/b;

    iget-object v1, p1, Lcom/xiaomi/b/a/n;->h:Lcom/xiaomi/b/a/b;

    invoke-static {v0, v1}, Lorg/apache/thrift/TBaseHelper;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/b/a/n;->n()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/b/a/n;->n()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/b/a/n;->n()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/xiaomi/b/a/n;->i:Z

    iget-boolean v1, p1, Lcom/xiaomi/b/a/n;->i:Z

    invoke-static {v0, v1}, Lorg/apache/thrift/TBaseHelper;->a(ZZ)I

    move-result v0

    if-nez v0, :cond_0

    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/b/a/n;->o()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/b/a/n;->o()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/b/a/n;->o()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->j:Ljava/util/Map;

    iget-object v1, p1, Lcom/xiaomi/b/a/n;->j:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/TBaseHelper;->a(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/b/a/n;->q()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/b/a/n;->q()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/b/a/n;->q()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->k:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/b/a/n;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/TBaseHelper;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public b(Lorg/apache/thrift/protocol/TProtocol;)V
    .locals 3

    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/xiaomi/b/a/n;->r()V

    sget-object v0, Lcom/xiaomi/b/a/n;->m:Lorg/apache/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Lorg/apache/thrift/protocol/TStruct;)V

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/b/a/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/b/a/n;->n:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Lorg/apache/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->b()V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/b/a/n;->b:Lcom/xiaomi/b/a/d;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/b/a/n;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/b/a/n;->o:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Lorg/apache/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->b:Lcom/xiaomi/b/a/d;

    invoke-virtual {v0, p1}, Lcom/xiaomi/b/a/d;->b(Lorg/apache/thrift/protocol/TProtocol;)V

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->b()V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/b/a/n;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/xiaomi/b/a/n;->p:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Lorg/apache/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->b()V

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/b/a/n;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/xiaomi/b/a/n;->q:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Lorg/apache/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->b()V

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/b/a/n;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/xiaomi/b/a/n;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/xiaomi/b/a/n;->r:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Lorg/apache/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->b()V

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/b/a/n;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/xiaomi/b/a/n;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/xiaomi/b/a/n;->s:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Lorg/apache/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->b()V

    :cond_5
    iget-object v0, p0, Lcom/xiaomi/b/a/n;->g:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/xiaomi/b/a/n;->k()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/xiaomi/b/a/n;->t:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Lorg/apache/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->b()V

    :cond_6
    iget-object v0, p0, Lcom/xiaomi/b/a/n;->h:Lcom/xiaomi/b/a/b;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/xiaomi/b/a/n;->m()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/xiaomi/b/a/n;->u:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Lorg/apache/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->h:Lcom/xiaomi/b/a/b;

    invoke-virtual {v0, p1}, Lcom/xiaomi/b/a/b;->b(Lorg/apache/thrift/protocol/TProtocol;)V

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->b()V

    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/b/a/n;->n()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/xiaomi/b/a/n;->v:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Lorg/apache/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/xiaomi/b/a/n;->i:Z

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Z)V

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->b()V

    :cond_8
    iget-object v0, p0, Lcom/xiaomi/b/a/n;->j:Ljava/util/Map;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/xiaomi/b/a/n;->o()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/xiaomi/b/a/n;->w:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Lorg/apache/thrift/protocol/TField;)V

    new-instance v0, Lorg/apache/thrift/protocol/TMap;

    iget-object v1, p0, Lcom/xiaomi/b/a/n;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v2, v2, v1}, Lorg/apache/thrift/protocol/TMap;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Lorg/apache/thrift/protocol/TMap;)V

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->a(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->d()V

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->b()V

    :cond_a
    iget-object v0, p0, Lcom/xiaomi/b/a/n;->k:Ljava/lang/String;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/xiaomi/b/a/n;->q()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/xiaomi/b/a/n;->x:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Lorg/apache/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->b()V

    :cond_b
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->c()V

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->a()V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->b:Lcom/xiaomi/b/a/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->c:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/xiaomi/b/a/n;

    invoke-virtual {p0, p1}, Lcom/xiaomi/b/a/n;->b(Lcom/xiaomi/b/a/n;)I

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->d:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    instance-of v0, p1, Lcom/xiaomi/b/a/n;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/xiaomi/b/a/n;

    invoke-virtual {p0, p1}, Lcom/xiaomi/b/a/n;->a(Lcom/xiaomi/b/a/n;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->d:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->f:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->g:Ljava/lang/String;

    return-object v0
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Lcom/xiaomi/b/a/b;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->h:Lcom/xiaomi/b/a/b;

    return-object v0
.end method

.method public m()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->h:Lcom/xiaomi/b/a/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->y:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public o()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->j:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->k:Ljava/lang/String;

    return-object v0
.end method

.method public q()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/b/a/n;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/b/a/n;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'appId\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/b/a/n;->toString()Ljava/lang/String;

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

    const-string v0, "XmPushActionSendMessage("

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/b/a/n;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "debug:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->a:Ljava/lang/String;

    if-nez v0, :cond_a

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    move v0, v1

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/b/a/n;->b()Z

    move-result v3

    if-eqz v3, :cond_14

    if-nez v0, :cond_1

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v0, "target:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->b:Lcom/xiaomi/b/a/d;

    if-nez v0, :cond_b

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    if-nez v1, :cond_2

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v0, "id:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->c:Ljava/lang/String;

    if-nez v0, :cond_c

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "appId:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->d:Ljava/lang/String;

    if-nez v0, :cond_d

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {p0}, Lcom/xiaomi/b/a/n;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "packageName:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->e:Ljava/lang/String;

    if-nez v0, :cond_e

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_4
    invoke-virtual {p0}, Lcom/xiaomi/b/a/n;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "topic:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->f:Ljava/lang/String;

    if-nez v0, :cond_f

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_5
    invoke-virtual {p0}, Lcom/xiaomi/b/a/n;->k()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "aliasName:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->g:Ljava/lang/String;

    if-nez v0, :cond_10

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_6
    invoke-virtual {p0}, Lcom/xiaomi/b/a/n;->m()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "message:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->h:Lcom/xiaomi/b/a/b;

    if-nez v0, :cond_11

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_7
    invoke-virtual {p0}, Lcom/xiaomi/b/a/n;->n()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "needAck:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/xiaomi/b/a/n;->i:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/b/a/n;->o()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "params:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->j:Ljava/util/Map;

    if-nez v0, :cond_12

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    :goto_8
    invoke-virtual {p0}, Lcom/xiaomi/b/a/n;->q()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "category:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/b/a/n;->k:Ljava/lang/String;

    if-nez v0, :cond_13

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    :goto_9
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/xiaomi/b/a/n;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/xiaomi/b/a/n;->b:Lcom/xiaomi/b/a/d;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lcom/xiaomi/b/a/n;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_d
    iget-object v0, p0, Lcom/xiaomi/b/a/n;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_e
    iget-object v0, p0, Lcom/xiaomi/b/a/n;->e:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_f
    iget-object v0, p0, Lcom/xiaomi/b/a/n;->f:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_10
    iget-object v0, p0, Lcom/xiaomi/b/a/n;->g:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_11
    iget-object v0, p0, Lcom/xiaomi/b/a/n;->h:Lcom/xiaomi/b/a/b;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :cond_12
    iget-object v0, p0, Lcom/xiaomi/b/a/n;->j:Ljava/util/Map;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_13
    iget-object v0, p0, Lcom/xiaomi/b/a/n;->k:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_14
    move v1, v0

    goto/16 :goto_1
.end method
