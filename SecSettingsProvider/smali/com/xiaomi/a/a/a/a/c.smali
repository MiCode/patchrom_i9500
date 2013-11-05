.class public Lcom/xiaomi/a/a/a/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/thrift/TBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/a/a/a/a/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lorg/apache/thrift/TBase",
        "<",
        "Lcom/xiaomi/a/a/a/a/c;",
        "Lcom/xiaomi/a/a/a/a/c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/xiaomi/a/a/a/a/c$a;",
            "Lorg/apache/thrift/meta_data/FieldMetaData;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Lorg/apache/thrift/protocol/TStruct;

.field private static final g:Lorg/apache/thrift/protocol/TField;

.field private static final h:Lorg/apache/thrift/protocol/TField;

.field private static final i:Lorg/apache/thrift/protocol/TField;

.field private static final j:Lorg/apache/thrift/protocol/TField;


# instance fields
.field public a:Lcom/xiaomi/a/a/a/a;

.field public b:Ljava/lang/String;

.field public c:Lcom/xiaomi/a/a/a/a/b;

.field public d:Lcom/xiaomi/a/a/a/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v9, 0xb

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/16 v6, 0xc

    new-instance v0, Lorg/apache/thrift/protocol/TStruct;

    const-string v1, "HttpLog"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/a/a/a/a/c;->f:Lorg/apache/thrift/protocol/TStruct;

    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, "common"

    invoke-direct {v0, v1, v6, v7}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/a/a/a/a/c;->g:Lorg/apache/thrift/protocol/TField;

    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, "category"

    invoke-direct {v0, v1, v9, v8}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/a/a/a/a/c;->h:Lorg/apache/thrift/protocol/TField;

    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, "httpApi"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/a/a/a/a/c;->i:Lorg/apache/thrift/protocol/TField;

    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, "passport"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/a/a/a/a/c;->j:Lorg/apache/thrift/protocol/TField;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/a/a/a/a/c$a;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/xiaomi/a/a/a/a/c$a;->a:Lcom/xiaomi/a/a/a/a/c$a;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "common"

    new-instance v4, Lorg/apache/thrift/meta_data/StructMetaData;

    const-class v5, Lcom/xiaomi/a/a/a/a;

    invoke-direct {v4, v6, v5}, Lorg/apache/thrift/meta_data/StructMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/a/a/a/a/c$a;->b:Lcom/xiaomi/a/a/a/a/c$a;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "category"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v9}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/a/a/a/a/c$a;->c:Lcom/xiaomi/a/a/a/a/c$a;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "httpApi"

    new-instance v4, Lorg/apache/thrift/meta_data/StructMetaData;

    const-class v5, Lcom/xiaomi/a/a/a/a/b;

    invoke-direct {v4, v6, v5}, Lorg/apache/thrift/meta_data/StructMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/a/a/a/a/c$a;->d:Lcom/xiaomi/a/a/a/a/c$a;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "passport"

    new-instance v4, Lorg/apache/thrift/meta_data/StructMetaData;

    const-class v5, Lcom/xiaomi/a/a/a/a/f;

    invoke-direct {v4, v6, v5}, Lorg/apache/thrift/meta_data/StructMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/a/a/a/a/c;->e:Ljava/util/Map;

    const-class v0, Lcom/xiaomi/a/a/a/a/c;

    sget-object v1, Lcom/xiaomi/a/a/a/a/c;->e:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/meta_data/FieldMetaData;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/a/a/a/a/c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/a/a/a/a/b;)Lcom/xiaomi/a/a/a/a/c;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/a/a/a/a/c;->c:Lcom/xiaomi/a/a/a/a/b;

    return-object p0
.end method

.method public a(Lcom/xiaomi/a/a/a/a;)Lcom/xiaomi/a/a/a/a/c;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/a/a/a/a/c;->a:Lcom/xiaomi/a/a/a/a;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/xiaomi/a/a/a/a/c;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/a/a/a/a/c;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a(Lorg/apache/thrift/protocol/TProtocol;)V
    .locals 4

    const/16 v3, 0xc

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->g()Lorg/apache/thrift/protocol/TStruct;

    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->i()Lorg/apache/thrift/protocol/TField;

    move-result-object v0

    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->b:B

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->h()V

    invoke-virtual {p0}, Lcom/xiaomi/a/a/a/a/c;->e()V

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

    new-instance v0, Lcom/xiaomi/a/a/a/a;

    invoke-direct {v0}, Lcom/xiaomi/a/a/a/a;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/a/a/a/a/c;->a:Lcom/xiaomi/a/a/a/a;

    iget-object v0, p0, Lcom/xiaomi/a/a/a/a/c;->a:Lcom/xiaomi/a/a/a/a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/a/a/a/a;->a(Lorg/apache/thrift/protocol/TProtocol;)V

    goto :goto_1

    :cond_1
    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->b:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/TProtocolUtil;->a(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->b:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/a/a/a/a/c;->b:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->b:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/TProtocolUtil;->a(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->b:B

    if-ne v1, v3, :cond_3

    new-instance v0, Lcom/xiaomi/a/a/a/a/b;

    invoke-direct {v0}, Lcom/xiaomi/a/a/a/a/b;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/a/a/a/a/c;->c:Lcom/xiaomi/a/a/a/a/b;

    iget-object v0, p0, Lcom/xiaomi/a/a/a/a/c;->c:Lcom/xiaomi/a/a/a/a/b;

    invoke-virtual {v0, p1}, Lcom/xiaomi/a/a/a/a/b;->a(Lorg/apache/thrift/protocol/TProtocol;)V

    goto :goto_1

    :cond_3
    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->b:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/TProtocolUtil;->a(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->b:B

    if-ne v1, v3, :cond_4

    new-instance v0, Lcom/xiaomi/a/a/a/a/f;

    invoke-direct {v0}, Lcom/xiaomi/a/a/a/a/f;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/a/a/a/a/c;->d:Lcom/xiaomi/a/a/a/a/f;

    iget-object v0, p0, Lcom/xiaomi/a/a/a/a/c;->d:Lcom/xiaomi/a/a/a/a/f;

    invoke-virtual {v0, p1}, Lcom/xiaomi/a/a/a/a/f;->a(Lorg/apache/thrift/protocol/TProtocol;)V

    goto :goto_1

    :cond_4
    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->b:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/TProtocolUtil;->a(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/a/a/a/a/c;->a:Lcom/xiaomi/a/a/a/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/xiaomi/a/a/a/a/c;)Z
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/a/a/a/a/c;->a()Z

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/a/a/a/a/c;->a()Z

    move-result v1

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/a/a/a/a/c;->a:Lcom/xiaomi/a/a/a/a;

    iget-object v1, p1, Lcom/xiaomi/a/a/a/a/c;->a:Lcom/xiaomi/a/a/a/a;

    invoke-virtual {v0, v1}, Lcom/xiaomi/a/a/a/a;->a(Lcom/xiaomi/a/a/a/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/a/a/a/a/c;->b()Z

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/a/a/a/a/c;->b()Z

    move-result v1

    if-nez v0, :cond_4

    if-eqz v1, :cond_5

    :cond_4
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/a/a/a/a/c;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/a/a/a/a/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/a/a/a/a/c;->c()Z

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/a/a/a/a/c;->c()Z

    move-result v1

    if-nez v0, :cond_6

    if-eqz v1, :cond_7

    :cond_6
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/a/a/a/a/c;->c:Lcom/xiaomi/a/a/a/a/b;

    iget-object v1, p1, Lcom/xiaomi/a/a/a/a/c;->c:Lcom/xiaomi/a/a/a/a/b;

    invoke-virtual {v0, v1}, Lcom/xiaomi/a/a/a/a/b;->a(Lcom/xiaomi/a/a/a/a/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/a/a/a/a/c;->d()Z

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/a/a/a/a/c;->d()Z

    move-result v1

    if-nez v0, :cond_8

    if-eqz v1, :cond_9

    :cond_8
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/a/a/a/a/c;->d:Lcom/xiaomi/a/a/a/a/f;

    iget-object v1, p1, Lcom/xiaomi/a/a/a/a/c;->d:Lcom/xiaomi/a/a/a/a/f;

    invoke-virtual {v0, v1}, Lcom/xiaomi/a/a/a/a/f;->a(Lcom/xiaomi/a/a/a/a/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_9
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcom/xiaomi/a/a/a/a/c;)I
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
    invoke-virtual {p0}, Lcom/xiaomi/a/a/a/a/c;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/a/a/a/a/c;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/a/a/a/a/c;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/a/a/a/a/c;->a:Lcom/xiaomi/a/a/a/a;

    iget-object v1, p1, Lcom/xiaomi/a/a/a/a/c;->a:Lcom/xiaomi/a/a/a/a;

    invoke-static {v0, v1}, Lorg/apache/thrift/TBaseHelper;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/a/a/a/a/c;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/a/a/a/a/c;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/a/a/a/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/a/a/a/a/c;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/a/a/a/a/c;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/TBaseHelper;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/a/a/a/a/c;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/a/a/a/a/c;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/a/a/a/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/a/a/a/a/c;->c:Lcom/xiaomi/a/a/a/a/b;

    iget-object v1, p1, Lcom/xiaomi/a/a/a/a/c;->c:Lcom/xiaomi/a/a/a/a/b;

    invoke-static {v0, v1}, Lorg/apache/thrift/TBaseHelper;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/a/a/a/a/c;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/a/a/a/a/c;->d()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/a/a/a/a/c;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xiaomi/a/a/a/a/c;->d:Lcom/xiaomi/a/a/a/a/f;

    iget-object v1, p1, Lcom/xiaomi/a/a/a/a/c;->d:Lcom/xiaomi/a/a/a/a/f;

    invoke-static {v0, v1}, Lorg/apache/thrift/TBaseHelper;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public b(Lorg/apache/thrift/protocol/TProtocol;)V
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/a/a/a/a/c;->e()V

    sget-object v0, Lcom/xiaomi/a/a/a/a/c;->f:Lorg/apache/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Lorg/apache/thrift/protocol/TStruct;)V

    iget-object v0, p0, Lcom/xiaomi/a/a/a/a/c;->a:Lcom/xiaomi/a/a/a/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/a/a/a/a/c;->g:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Lorg/apache/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/xiaomi/a/a/a/a/c;->a:Lcom/xiaomi/a/a/a/a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/a/a/a/a;->b(Lorg/apache/thrift/protocol/TProtocol;)V

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->b()V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/a/a/a/a/c;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/a/a/a/a/c;->h:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Lorg/apache/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/xiaomi/a/a/a/a/c;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->b()V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/a/a/a/a/c;->c:Lcom/xiaomi/a/a/a/a/b;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/xiaomi/a/a/a/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/xiaomi/a/a/a/a/c;->i:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Lorg/apache/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/xiaomi/a/a/a/a/c;->c:Lcom/xiaomi/a/a/a/a/b;

    invoke-virtual {v0, p1}, Lcom/xiaomi/a/a/a/a/b;->b(Lorg/apache/thrift/protocol/TProtocol;)V

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->b()V

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/a/a/a/a/c;->d:Lcom/xiaomi/a/a/a/a/f;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/xiaomi/a/a/a/a/c;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/xiaomi/a/a/a/a/c;->j:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->a(Lorg/apache/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/xiaomi/a/a/a/a/c;->d:Lcom/xiaomi/a/a/a/a/f;

    invoke-virtual {v0, p1}, Lcom/xiaomi/a/a/a/a/f;->b(Lorg/apache/thrift/protocol/TProtocol;)V

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->b()V

    :cond_3
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->c()V

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->a()V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/a/a/a/a/c;->b:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/xiaomi/a/a/a/a/c;->c:Lcom/xiaomi/a/a/a/a/b;

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

    check-cast p1, Lcom/xiaomi/a/a/a/a/c;

    invoke-virtual {p0, p1}, Lcom/xiaomi/a/a/a/a/c;->b(Lcom/xiaomi/a/a/a/a/c;)I

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/a/a/a/a/c;->d:Lcom/xiaomi/a/a/a/a/f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/a/a/a/a/c;->a:Lcom/xiaomi/a/a/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'common\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/a/a/a/a/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/a/a/a/a/c;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'category\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/a/a/a/a/c;->toString()Ljava/lang/String;

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

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    instance-of v0, p1, Lcom/xiaomi/a/a/a/a/c;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/xiaomi/a/a/a/a/c;

    invoke-virtual {p0, p1}, Lcom/xiaomi/a/a/a/a/c;->a(Lcom/xiaomi/a/a/a/a/c;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HttpLog("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "common:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/a/a/a/a/c;->a:Lcom/xiaomi/a/a/a/a;

    if-nez v1, :cond_2

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "category:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/a/a/a/a/c;->b:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p0}, Lcom/xiaomi/a/a/a/a/c;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "httpApi:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/a/a/a/a/c;->c:Lcom/xiaomi/a/a/a/a/b;

    if-nez v1, :cond_4

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/xiaomi/a/a/a/a/c;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "passport:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/a/a/a/a/c;->d:Lcom/xiaomi/a/a/a/a/f;

    if-nez v1, :cond_5

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_3
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/a/a/a/a/c;->a:Lcom/xiaomi/a/a/a/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/xiaomi/a/a/a/a/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/xiaomi/a/a/a/a/c;->c:Lcom/xiaomi/a/a/a/a/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/xiaomi/a/a/a/a/c;->d:Lcom/xiaomi/a/a/a/a/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method
