.class public Lcom/baidu/mapapi/Bounds;
.super Ljava/lang/Object;


# instance fields
.field public leftBottom:Lcom/baidu/mapapi/GeoPoint;

.field public rightTop:Lcom/baidu/mapapi/GeoPoint;


# direct methods
.method public constructor <init>(IIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/baidu/mapapi/GeoPoint;

    invoke-direct {v0, p1, p2}, Lcom/baidu/mapapi/GeoPoint;-><init>(II)V

    iput-object v0, p0, Lcom/baidu/mapapi/Bounds;->leftBottom:Lcom/baidu/mapapi/GeoPoint;

    new-instance v0, Lcom/baidu/mapapi/GeoPoint;

    invoke-direct {v0, p3, p4}, Lcom/baidu/mapapi/GeoPoint;-><init>(II)V

    iput-object v0, p0, Lcom/baidu/mapapi/Bounds;->rightTop:Lcom/baidu/mapapi/GeoPoint;

    return-void
.end method
