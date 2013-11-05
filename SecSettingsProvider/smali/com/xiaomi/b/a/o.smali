.class public Lcom/xiaomi/b/a/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/thrift/TBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/b/a/o$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lorg/apache/thrift/TBase",
        "<",
        "Lcom/xiaomi/b/a/o;",
        "Lcom/xiaomi/b/a/o$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/xiaomi/b/a/o$a;",
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

.field public b:Lcom/xiaomi/b/a/d;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v9, 0xc

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/16 v6, 0xb

    new-instance v0, Lorg/apache/thrift/protocol/TStruct;

    const-string v1, "XmPushActionSubscription"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/b/a/o;->i:Lorg/apache/thrift/protocol/TStruct;

    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, "debug"

    invoke-direct {v0, v1, v6, v8}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/b/a/o;->j:Lorg/apache/thrift/protocol/TField;

    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, "target"

    invoke-direct {v0, v1, v9, v7}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/b/a/o;->k:Lorg/apache/thrift/protocol/TField;

    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, "id"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/b/a/o;->l:Lorg/apache/thrift/protocol/TField;

    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, "appId"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/b/a/o;->m:Lorg/apache/thrift/protocol/TField;

    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, "topic"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/b/a/o;->n:Lorg/apache/thrift/protocol/TField;

    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, "packageName"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/b/a/o;->o:Lorg/apache/thrift/protocol/TField;

    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, "category"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/b/a/o;->p:Lorg/apache/thrift/protocol/TField;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/b/a/o$a;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/xiaomi/b/a/o$a;->a:Lcom/xiaomi/b/a/o$a;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "debug"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/b/a/o$a;->b:Lcom/xiaomi/b/a/o$a;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "target"

    new-instance v4, Lorg/apache/thrift/meta_data/StructMetaData;

    const-class v5, Lcom/xiaomi/b/a/d;

    invoke-direct {v4, v9, v5}, Lorg/apache/thrift/meta_data/StructMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/b/a/o$a;->c:Lcom/xiaomi/b/a/o$a;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "id"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/b/a/o$a;->d:Lcom/xiaomi/b/a/o$a;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "appId"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/b/a/o$a;->e:Lcom/xiaomi/b/a/o$a;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "topic"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/b/a/o$a;->f:Lcom/xiaomi/b/a/o$a;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "packageName"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/b/a/o$a;->g:Lcom/xiaomi/b/a/o$a;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "category"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/b/a/o;->h:Ljava/util/Map;

    const-class v0, Lcom/xiaomi/b/a/o;

    sget-object v1, Lcom/xiaomi/b/a/o;->h:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/meta_data/FieldMetaData;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/xiaomi/b/a/o;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/b/a/o;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a(Lorg/apache/thrift/protocol/TProtocol;)V
    .locals 4

    const/16 v3, 0xb

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->g()Lorg/apache/thrift/protocol/TStruct;

    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->i()Lorg/apache/thrift/protocol/TField;

    move-result-object v0

    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->b:B

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->h()V

    invoke-virtual {p0}, Lcom/xiaomi/b/a/o;->h()V

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

    if-ne v1, v3, :cond_1

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/b/a/o;->a:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->b:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/TProtocolUtil;->a(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->b:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    new-instance v0, Lcom/xiaomi/b/a/d;

    invoke-direct {v0}, Lcom/xiaomi/b/a/d;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/b/a/o;->b:Lcom/xiaomi/b/a/d;

    iget-object v0, p0, Lcom/xiaomi/b/a/o;->b:Lcom/xiaomi/b/a/d;

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

    iput-object v0, p0, Lcom/xiaomi/b/a/o;->c:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/xiaomi/b/a/o;->d:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->b:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/TProtocolUtil;->a(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_4
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->b:B

    if-ne v1, v3, :cond_5

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/b/a/o;->e:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->b:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/TProtocolUtil;->a(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_5
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->b:B

    if-ne v1, v3, :cond_6

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/b/a/o;->f:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/xiaomi/b/a/o;->g:Ljava/lang/String;

    goto :goto_1

    :cond_7
    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->b:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/TProtocolUtil;->a(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

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

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/b/a/o;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/xiaomi/b/a/o;)Z
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/b/a/o;->a()Z

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/b/a/o;->a()Z

    move-result v1

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/b/a/o;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/b/a/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/b/a/o;->b()Z

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/b/a/o;->b()Z

    move-result v1

    if-nez v0, :cond_4

    if-eqz v1, :cond_5

    :cond_4
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/b/a/o;->b:Lcom/xiaomi/b/a/d;

    iget-object v1, p1, Lcom/xiaomi/b/a/o;->b:Lcom/xiaomi/b/a/d;

    invoke-virtual {v0, v1}, Lcom/xiaomi/b/a/d;->a(Lcom/xiaomi/b/a/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/b/a/o;->c()Z

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/b/a/o;->c()Z

    move-result v1

    if-nez v0, :cond_6

    if-eqz v1, :cond_7

    :cond_6
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/b/a/o;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/b/a/o;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/b/a/o;->d()Z

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/b/a/o;->d()Z

    move-result v1

    if-nez v0, :cond_8

    if-eqz v1, :cond_9

    :cond_8
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/b/a/o;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/b/a/o;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/b/a/o;->e()Z

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/b/a/o;->e()Z

    move-result v1

    if-nez v0, :cond_a

    if-eqz v1, :cond_b

    :cond_a
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/b/a/o;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/b/a/o;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/b/a/o;->f()Z

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/b/a/o;->f()Z

    move-result v1

    if-nez v0, :cond_c

    if-eqz v1, :cond_d

    :cond_c
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/b/a/o;->f:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/b/a/o;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/b/a/o;->g()Z

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/b/a/o;->g()Z

    move-result v1

    if-nez v0, :cond_e

    if-eqz v1, :cond_f

    :cond_e
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/b/a/o;->g:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/b/a/o;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_f
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public b(Lcom/xiaomi/b/a/o;)I
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
    invoke-virtual {p0}, Lcom/xiaomi/b/a/o;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/b/a/o;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/b/a/o;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/b/a/o;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/b/a/o;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/TBaseHelper;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/b/a/o;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/b/a/o;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/b/a/o;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/b/a/o;->b:Lcom/xiaomi/b/a/d;

    iget-object v1, p1, Lcom/xiaomi/b/a/o;->b:Lcom/xiaomi/b/a/d;

    invoke-static {v0, v1}, Lorg/apache/thrift/TBaseHelper;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/b/a/o;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/b/a/o;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/b/a/o;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/b/a/o;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/b/a/o;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/TBaseHelper;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/b/a/o;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/b/a/o;->d()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/b/a/o;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xiaomi/b/a/o;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/b/a/o;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/TBaseHelper;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/b/a/o;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/b/a/o;->e()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/b/a/o;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/xiaomi/b/a/o;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/b/a/o;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/TBaseHelper;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/b/a/o;->f()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/b/a/o;->f()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/b/a/o;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/xiaomi/b/a/o;->f:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/b/a/o;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/TBaseHelper;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/b/a/o;->g()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/b/a/o;->g()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/b/a/o;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/xiaomi/b/a/o;->g:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/b/a/o;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/TBaseHelper;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public b(Ljava/lang/String;)Lcom/xiaomi/b/a/o;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/b/a/o;->d:Ljava/lang/String;

    return-object p0
.end method

.method public b(Lorg/apache/thrift/protocol/TProtocol;)V
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/b/a/o;->h()V

    sget-object v0, Lcom/xiaomi/b/a/o;->i:Lorg/apache/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Lorg/apache/thrift/protocol/TStruct;)V

    iget-object v0, p0, Lcom/xiaomi/b/a/o;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/b/a/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/b/a/o;->j:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Lorg/apache/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/xiaomi/b/a/o;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->b()V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/b/a/o;->b:Lcom/xiaomi/b/a/d;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/b/a/o;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/b/a/o;->k:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Lorg/apache/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/xiaomi/b/a/o;->b:Lcom/xiaomi/b/a/d;

    invoke-virtual {v0, p1}, Lcom/xiaomi/b/a/d;->b(Lorg/apache/thrift/protocol/TProtocol;)V

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->b()V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/b/a/o;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/xiaomi/b/a/o;->l:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Lorg/apache/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/xiaomi/b/a/o;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->b()V

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/b/a/o;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/xiaomi/b/a/o;->m:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Lorg/apache/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/xiaomi/b/a/o;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->b()V

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/b/a/o;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/xiaomi/b/a/o;->n:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Lorg/apache/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/xiaomi/b/a/o;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->b()V

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/b/a/o;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/xiaomi/b/a/o;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/xiaomi/b/a/o;->o:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Lorg/apache/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/xiaomi/b/a/o;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->b()V

    :cond_5
    iget-object v0, p0, Lcom/xiaomi/b/a/o;->g:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/xiaomi/b/a/o;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/xiaomi/b/a/o;->p:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Lorg/apache/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/xiaomi/b/a/o;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->b()V

    :cond_6
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->c()V

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->a()V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/b/a/o;->b:Lcom/xiaomi/b/a/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Lcom/xiaomi/b/a/o;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/b/a/o;->e:Ljava/lang/String;

    return-object p0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/b/a/o;->c:Ljava/lang/String;

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

    check-cast p1, Lcom/xiaomi/b/a/o;

    invoke-virtual {p0, p1}, Lcom/xiaomi/b/a/o;->b(Lcom/xiaomi/b/a/o;)I

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;)Lcom/xiaomi/b/a/o;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/b/a/o;->f:Ljava/lang/String;

    return-object p0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/b/a/o;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(Ljava/lang/String;)Lcom/xiaomi/b/a/o;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/b/a/o;->g:Ljava/lang/String;

    return-object p0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/b/a/o;->e:Ljava/lang/String;

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
    instance-of v0, p1, Lcom/xiaomi/b/a/o;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/xiaomi/b/a/o;

    invoke-virtual {p0, p1}, Lcom/xiaomi/b/a/o;->a(Lcom/xiaomi/b/a/o;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/b/a/o;->f:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/xiaomi/b/a/o;->g:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/xiaomi/b/a/o;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/b/a/o;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/b/a/o;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'appId\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/b/a/o;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/b/a/o;->e:Ljava/lang/String;

    if-nez v0, :cond_2

    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'topic\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/b/a/o;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "XmPushActionSubscription("

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/b/a/o;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "debug:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/b/a/o;->a:Ljava/lang/String;

    if-nez v0, :cond_5

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    move v0, v1

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/b/a/o;->b()Z

    move-result v3

    if-eqz v3, :cond_c

    if-nez v0, :cond_1

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v0, "target:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/b/a/o;->b:Lcom/xiaomi/b/a/d;

    if-nez v0, :cond_6

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    if-nez v1, :cond_2

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v0, "id:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/b/a/o;->c:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "appId:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/b/a/o;->d:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "topic:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/b/a/o;->e:Ljava/lang/String;

    if-nez v0, :cond_9

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    invoke-virtual {p0}, Lcom/xiaomi/b/a/o;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "packageName:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/b/a/o;->f:Ljava/lang/String;

    if-nez v0, :cond_a

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_5
    invoke-virtual {p0}, Lcom/xiaomi/b/a/o;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "category:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/b/a/o;->g:Ljava/lang/String;

    if-nez v0, :cond_b

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_6
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/xiaomi/b/a/o;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/xiaomi/b/a/o;->b:Lcom/xiaomi/b/a/d;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/xiaomi/b/a/o;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/xiaomi/b/a/o;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/xiaomi/b/a/o;->e:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/xiaomi/b/a/o;->f:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_b
    iget-object v0, p0, Lcom/xiaomi/b/a/o;->g:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_c
    move v1, v0

    goto/16 :goto_1
.end method
