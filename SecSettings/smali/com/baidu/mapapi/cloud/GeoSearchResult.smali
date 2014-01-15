.class public Lcom/baidu/mapapi/cloud/GeoSearchResult;
.super Ljava/lang/Object;


# instance fields
.field public message:Ljava/lang/String;

.field public poiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapapi/cloud/CustomPoiInfo;",
            ">;"
        }
    .end annotation
.end field

.field public size:I

.field public status:I

.field public total:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/mapapi/cloud/GeoSearchResult;->status:I

    iput v1, p0, Lcom/baidu/mapapi/cloud/GeoSearchResult;->size:I

    iput v1, p0, Lcom/baidu/mapapi/cloud/GeoSearchResult;->total:I

    return-void
.end method
