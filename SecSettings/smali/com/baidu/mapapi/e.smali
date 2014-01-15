.class Lcom/baidu/mapapi/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/mapapi/Projection;


# instance fields
.field private a:Lcom/baidu/mapapi/MapView;


# direct methods
.method public constructor <init>(Lcom/baidu/mapapi/MapView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapapi/e;->a:Lcom/baidu/mapapi/MapView;

    iput-object p1, p0, Lcom/baidu/mapapi/e;->a:Lcom/baidu/mapapi/MapView;

    return-void
.end method


# virtual methods
.method a(Lcom/baidu/mapapi/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "act"

    const v2, 0xe50998

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "x"

    invoke-virtual {p1}, Lcom/baidu/mapapi/GeoPoint;->getLongitudeE6()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "y"

    invoke-virtual {p1}, Lcom/baidu/mapapi/GeoPoint;->getLatitudeE6()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/baidu/mapapi/Mj;->sendBundle(Landroid/os/Bundle;)I

    if-nez p2, :cond_0

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    :cond_0
    const-string v1, "x"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p2, Landroid/graphics/Point;->x:I

    const-string v1, "y"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Landroid/graphics/Point;->y:I

    return-object p2
.end method

.method public fromPixels(II)Lcom/baidu/mapapi/GeoPoint;
    .locals 6

    iget-object v0, p0, Lcom/baidu/mapapi/e;->a:Lcom/baidu/mapapi/MapView;

    iget-object v0, v0, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    iget v0, v0, Lcom/baidu/mapapi/a;->c:I

    sub-int v1, p1, v0

    iget-object v0, p0, Lcom/baidu/mapapi/e;->a:Lcom/baidu/mapapi/MapView;

    iget-object v0, v0, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    iget v0, v0, Lcom/baidu/mapapi/a;->d:I

    sub-int v0, p2, v0

    iget-object v2, p0, Lcom/baidu/mapapi/e;->a:Lcom/baidu/mapapi/MapView;

    iget-object v2, v2, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    iget-wide v2, v2, Lcom/baidu/mapapi/a;->e:D

    const-wide/high16 v4, 0x3ff0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/baidu/mapapi/e;->a:Lcom/baidu/mapapi/MapView;

    iget-object v2, v2, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    iget v2, v2, Lcom/baidu/mapapi/a;->f:I

    sub-int/2addr v1, v2

    int-to-double v1, v1

    iget-object v3, p0, Lcom/baidu/mapapi/e;->a:Lcom/baidu/mapapi/MapView;

    iget-object v3, v3, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    iget-wide v3, v3, Lcom/baidu/mapapi/a;->e:D

    div-double/2addr v1, v3

    double-to-int v1, v1

    iget-object v2, p0, Lcom/baidu/mapapi/e;->a:Lcom/baidu/mapapi/MapView;

    iget-object v2, v2, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    iget v2, v2, Lcom/baidu/mapapi/a;->g:I

    sub-int/2addr v0, v2

    int-to-double v2, v0

    iget-object v0, p0, Lcom/baidu/mapapi/e;->a:Lcom/baidu/mapapi/MapView;

    iget-object v0, v0, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    iget-wide v4, v0, Lcom/baidu/mapapi/a;->e:D

    div-double/2addr v2, v4

    double-to-int v0, v2

    iget-object v2, p0, Lcom/baidu/mapapi/e;->a:Lcom/baidu/mapapi/MapView;

    iget-object v2, v2, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    iget v2, v2, Lcom/baidu/mapapi/a;->f:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/baidu/mapapi/e;->a:Lcom/baidu/mapapi/MapView;

    iget-object v2, v2, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    iget v2, v2, Lcom/baidu/mapapi/a;->g:I

    add-int/2addr v0, v2

    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "act"

    const v4, 0xe50934

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "x"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "y"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v2}, Lcom/baidu/mapapi/Mj;->sendBundle(Landroid/os/Bundle;)I

    const-string v0, "x"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "y"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/baidu/mapapi/GeoPoint;

    invoke-direct {v2, v1, v0}, Lcom/baidu/mapapi/GeoPoint;-><init>(II)V

    return-object v2
.end method

.method public metersToEquatorPixels(F)F
    .locals 4

    float-to-double v0, p1

    iget-object v2, p0, Lcom/baidu/mapapi/e;->a:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v2}, Lcom/baidu/mapapi/MapView;->h()D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public toPixels(Lcom/baidu/mapapi/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 7

    const/4 v3, 0x0

    const-wide/high16 v5, 0x3fe0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "act"

    const v2, 0xe50998

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "x"

    invoke-virtual {p1}, Lcom/baidu/mapapi/GeoPoint;->getLongitudeE6()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "y"

    invoke-virtual {p1}, Lcom/baidu/mapapi/GeoPoint;->getLatitudeE6()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/baidu/mapapi/Mj;->sendBundle(Landroid/os/Bundle;)I

    if-nez p2, :cond_0

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    :cond_0
    const-string v1, "x"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p2, Landroid/graphics/Point;->x:I

    const-string v1, "y"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcom/baidu/mapapi/e;->a:Lcom/baidu/mapapi/MapView;

    iget-object v0, v0, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    iget-wide v0, v0, Lcom/baidu/mapapi/a;->e:D

    const-wide/high16 v2, 0x3ff0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    iget v0, p2, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/baidu/mapapi/e;->a:Lcom/baidu/mapapi/MapView;

    iget-object v1, v1, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    iget v1, v1, Lcom/baidu/mapapi/a;->f:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    iget-object v2, p0, Lcom/baidu/mapapi/e;->a:Lcom/baidu/mapapi/MapView;

    iget-object v2, v2, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    iget-wide v2, v2, Lcom/baidu/mapapi/a;->e:D

    mul-double/2addr v0, v2

    add-double/2addr v0, v5

    double-to-int v0, v0

    iget v1, p2, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/baidu/mapapi/e;->a:Lcom/baidu/mapapi/MapView;

    iget-object v2, v2, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    iget v2, v2, Lcom/baidu/mapapi/a;->g:I

    sub-int/2addr v1, v2

    int-to-double v1, v1

    iget-object v3, p0, Lcom/baidu/mapapi/e;->a:Lcom/baidu/mapapi/MapView;

    iget-object v3, v3, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    iget-wide v3, v3, Lcom/baidu/mapapi/a;->e:D

    mul-double/2addr v1, v3

    add-double/2addr v1, v5

    double-to-int v1, v1

    iget-object v2, p0, Lcom/baidu/mapapi/e;->a:Lcom/baidu/mapapi/MapView;

    iget-object v2, v2, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    iget v2, v2, Lcom/baidu/mapapi/a;->f:I

    add-int/2addr v0, v2

    iput v0, p2, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/baidu/mapapi/e;->a:Lcom/baidu/mapapi/MapView;

    iget-object v0, v0, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    iget v0, v0, Lcom/baidu/mapapi/a;->g:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Point;->y:I

    :cond_1
    iget v0, p2, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/baidu/mapapi/e;->a:Lcom/baidu/mapapi/MapView;

    iget-object v1, v1, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    iget v1, v1, Lcom/baidu/mapapi/a;->c:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Point;->x:I

    iget v0, p2, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/baidu/mapapi/e;->a:Lcom/baidu/mapapi/MapView;

    iget-object v1, v1, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    iget v1, v1, Lcom/baidu/mapapi/a;->d:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Point;->y:I

    return-object p2
.end method
