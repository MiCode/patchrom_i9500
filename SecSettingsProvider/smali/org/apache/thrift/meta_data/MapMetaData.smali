.class public Lorg/apache/thrift/meta_data/MapMetaData;
.super Lorg/apache/thrift/meta_data/FieldValueMetaData;


# instance fields
.field public final a:Lorg/apache/thrift/meta_data/FieldValueMetaData;

.field public final c:Lorg/apache/thrift/meta_data/FieldValueMetaData;


# direct methods
.method public constructor <init>(BLorg/apache/thrift/meta_data/FieldValueMetaData;Lorg/apache/thrift/meta_data/FieldValueMetaData;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    iput-object p2, p0, Lorg/apache/thrift/meta_data/MapMetaData;->a:Lorg/apache/thrift/meta_data/FieldValueMetaData;

    iput-object p3, p0, Lorg/apache/thrift/meta_data/MapMetaData;->c:Lorg/apache/thrift/meta_data/FieldValueMetaData;

    return-void
.end method
