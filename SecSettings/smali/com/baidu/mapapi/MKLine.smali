.class public Lcom/baidu/mapapi/MKLine;
.super Ljava/lang/Object;


# static fields
.field public static final LINE_TYPE_BUS:I = 0x0

.field public static final LINE_TYPE_SUBWAY:I = 0x1


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapapi/GeoPoint;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/baidu/mapapi/MKPoiInfo;

.field private i:Lcom/baidu/mapapi/MKPoiInfo;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapapi/GeoPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/MKLine;->g:Ljava/lang/String;

    return-object v0
.end method

.method a(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/mapapi/MKLine;->b:I

    return-void
.end method

.method a(Lcom/baidu/mapapi/MKPoiInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/MKLine;->h:Lcom/baidu/mapapi/MKPoiInfo;

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/MKLine;->g:Ljava/lang/String;

    return-void
.end method

.method a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapapi/GeoPoint;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/baidu/mapapi/MKLine;->j:Ljava/util/ArrayList;

    return-void
.end method

.method b(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/mapapi/MKLine;->c:I

    return-void
.end method

.method b(Lcom/baidu/mapapi/MKPoiInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/MKLine;->i:Lcom/baidu/mapapi/MKPoiInfo;

    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/MKLine;->e:Ljava/lang/String;

    return-void
.end method

.method c(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/mapapi/MKLine;->d:I

    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/MKLine;->f:Ljava/lang/String;

    return-void
.end method

.method public getDistance()I
    .locals 1

    iget v0, p0, Lcom/baidu/mapapi/MKLine;->c:I

    return v0
.end method

.method public getGetOffStop()Lcom/baidu/mapapi/MKPoiInfo;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/MKLine;->i:Lcom/baidu/mapapi/MKPoiInfo;

    return-object v0
.end method

.method public getGetOnStop()Lcom/baidu/mapapi/MKPoiInfo;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/MKLine;->h:Lcom/baidu/mapapi/MKPoiInfo;

    return-object v0
.end method

.method public getNumViaStops()I
    .locals 1

    iget v0, p0, Lcom/baidu/mapapi/MKLine;->b:I

    return v0
.end method

.method public getPoints()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapapi/GeoPoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/mapapi/MKLine;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/MKLine;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/baidu/mapapi/MKLine;->d:I

    return v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/MKLine;->f:Ljava/lang/String;

    return-object v0
.end method
