.class public Lcom/baidu/mapapi/MKTransitRoutePlan;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapapi/MKRoute;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapapi/MKLine;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/baidu/mapapi/GeoPoint;

.field private f:Lcom/baidu/mapapi/GeoPoint;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/mapapi/MKTransitRoutePlan;->a:I

    return-void
.end method

.method a(Lcom/baidu/mapapi/GeoPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/MKTransitRoutePlan;->e:Lcom/baidu/mapapi/GeoPoint;

    return-void
.end method

.method a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapapi/MKRoute;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/baidu/mapapi/MKTransitRoutePlan;->c:Ljava/util/ArrayList;

    return-void
.end method

.method b(Lcom/baidu/mapapi/GeoPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/MKTransitRoutePlan;->f:Lcom/baidu/mapapi/GeoPoint;

    return-void
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/MKTransitRoutePlan;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getDistance()I
    .locals 1

    iget v0, p0, Lcom/baidu/mapapi/MKTransitRoutePlan;->a:I

    return v0
.end method

.method public getEnd()Lcom/baidu/mapapi/GeoPoint;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/MKTransitRoutePlan;->f:Lcom/baidu/mapapi/GeoPoint;

    return-object v0
.end method

.method public getLine(I)Lcom/baidu/mapapi/MKLine;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/MKTransitRoutePlan;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/MKTransitRoutePlan;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/MKLine;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNumLines()I
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/MKTransitRoutePlan;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/MKTransitRoutePlan;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNumRoute()I
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/MKTransitRoutePlan;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/MKTransitRoutePlan;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRoute(I)Lcom/baidu/mapapi/MKRoute;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/MKTransitRoutePlan;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/MKTransitRoutePlan;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/MKRoute;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStart()Lcom/baidu/mapapi/GeoPoint;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/MKTransitRoutePlan;->e:Lcom/baidu/mapapi/GeoPoint;

    return-object v0
.end method

.method public setLine(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapapi/MKLine;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/baidu/mapapi/MKTransitRoutePlan;->d:Ljava/util/ArrayList;

    return-void
.end method
