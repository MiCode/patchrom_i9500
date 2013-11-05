.class public Lorg/apache/thrift/meta_data/StructMetaData;
.super Lorg/apache/thrift/meta_data/FieldValueMetaData;


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/thrift/TBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(BLjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/thrift/TBase;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    iput-object p2, p0, Lorg/apache/thrift/meta_data/StructMetaData;->a:Ljava/lang/Class;

    return-void
.end method
