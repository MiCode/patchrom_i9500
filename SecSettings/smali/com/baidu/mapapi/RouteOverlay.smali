.class public Lcom/baidu/mapapi/RouteOverlay;
.super Lcom/baidu/mapapi/ItemizedOverlay;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/RouteOverlay$1;,
        Lcom/baidu/mapapi/RouteOverlay$a;,
        Lcom/baidu/mapapi/RouteOverlay$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/mapapi/ItemizedOverlay",
        "<",
        "Lcom/baidu/mapapi/OverlayItem;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapapi/RouteOverlay$b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/baidu/mapapi/MapView;

.field private c:Landroid/content/Context;

.field private d:Landroid/util/DisplayMetrics;

.field private e:I

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/baidu/mapapi/RouteOverlay$a;",
            ">;"
        }
    .end annotation
.end field

.field public mRoute:Lcom/baidu/mapapi/MKRoute;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/baidu/mapapi/MapView;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/mapapi/ItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/baidu/mapapi/RouteOverlay;->mRoute:Lcom/baidu/mapapi/MKRoute;

    iput-object v0, p0, Lcom/baidu/mapapi/RouteOverlay;->a:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/baidu/mapapi/RouteOverlay;->b:Lcom/baidu/mapapi/MapView;

    iput-object v0, p0, Lcom/baidu/mapapi/RouteOverlay;->c:Landroid/content/Context;

    iput v2, p0, Lcom/baidu/mapapi/RouteOverlay;->e:I

    iput-object p1, p0, Lcom/baidu/mapapi/RouteOverlay;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/baidu/mapapi/RouteOverlay;->b:Lcom/baidu/mapapi/MapView;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/RouteOverlay;->d:Landroid/util/DisplayMetrics;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapapi/RouteOverlay;->d:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    sget v0, Lcom/baidu/mapapi/Mj;->i:I

    const/16 v1, 0x78

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mapapi/RouteOverlay;->e:I

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/baidu/mapapi/Mj;->i:I

    const/16 v1, 0xb4

    if-gt v0, v1, :cond_1

    iput v2, p0, Lcom/baidu/mapapi/RouteOverlay;->e:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/mapapi/RouteOverlay;->e:I

    goto :goto_0
.end method


# virtual methods
.method a(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/RouteOverlay;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public animateTo()V
    .locals 1

    invoke-virtual {p0}, Lcom/baidu/mapapi/RouteOverlay;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/RouteOverlay;->onTap(I)Z

    :cond_0
    return-void
.end method

.method protected createItem(I)Lcom/baidu/mapapi/OverlayItem;
    .locals 9

    const/4 v8, 0x4

    const/4 v4, 0x3

    const/4 v7, 0x1

    new-array v1, v4, [C

    fill-array-data v1, :array_0

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "start"

    aput-object v3, v2, v0

    const-string v0, "end"

    aput-object v0, v2, v7

    const/4 v0, 0x2

    const-string v3, "foot"

    aput-object v3, v2, v0

    const-string v0, "car"

    aput-object v0, v2, v4

    const-string v0, "bus"

    aput-object v0, v2, v8

    iget-object v0, p0, Lcom/baidu/mapapi/RouteOverlay;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/RouteOverlay$b;

    new-instance v3, Lcom/baidu/mapapi/OverlayItem;

    iget-object v4, v0, Lcom/baidu/mapapi/RouteOverlay$b;->b:Lcom/baidu/mapapi/GeoPoint;

    iget-object v5, v0, Lcom/baidu/mapapi/RouteOverlay$b;->a:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/baidu/mapapi/OverlayItem;-><init>(Lcom/baidu/mapapi/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    iget v5, v0, Lcom/baidu/mapapi/RouteOverlay$b;->c:I

    if-eqz v5, :cond_0

    iget v5, v0, Lcom/baidu/mapapi/RouteOverlay$b;->c:I

    if-eq v5, v7, :cond_0

    iget v5, v0, Lcom/baidu/mapapi/RouteOverlay$b;->c:I

    if-ne v5, v8, :cond_2

    :cond_0
    const-string v5, "icon_nav_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/baidu/mapapi/RouteOverlay$b;->c:I

    aget-object v2, v2, v6

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v5, 0x5f

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/baidu/mapapi/RouteOverlay;->e:I

    aget-char v1, v1, v5

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/mapapi/RouteOverlay;->c:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/mapapi/n;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    iget v2, v0, Lcom/baidu/mapapi/RouteOverlay$b;->c:I

    if-eqz v2, :cond_1

    iget v0, v0, Lcom/baidu/mapapi/RouteOverlay$b;->c:I

    if-ne v0, v7, :cond_3

    :cond_1
    invoke-static {v1}, Lcom/baidu/mapapi/RouteOverlay;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/baidu/mapapi/OverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-object v3

    :cond_2
    const-string v2, "icon_direction_"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/baidu/mapapi/RouteOverlay;->e:I

    aget-char v1, v1, v5

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/mapapi/RouteOverlay;->c:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v4, v0, Lcom/baidu/mapapi/RouteOverlay$b;->d:I

    mul-int/lit8 v4, v4, 0x1e

    int-to-float v4, v4

    invoke-static {v1, v2, v4}, Lcom/baidu/mapapi/n;->a(Landroid/content/Context;Ljava/lang/String;F)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lcom/baidu/mapapi/RouteOverlay;->boundCenter(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/baidu/mapapi/OverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :array_0
    .array-data 0x2
        0x6ct 0x0t
        0x6dt 0x0t
        0x68t 0x0t
    .end array-data
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/baidu/mapapi/MapView;ZJ)Z
    .locals 21

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/mapapi/MapView;->getProjection()Lcom/baidu/mapapi/Projection;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mapapi/RouteOverlay;->c:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mapapi/RouteOverlay;->d:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/mapapi/MapView;->getZoomLevel()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mapapi/RouteOverlay;->mRoute:Lcom/baidu/mapapi/MKRoute;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mapapi/RouteOverlay;->mRoute:Lcom/baidu/mapapi/MKRoute;

    invoke-virtual {v2}, Lcom/baidu/mapapi/MKRoute;->getArrayPoints()Ljava/util/ArrayList;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mapapi/RouteOverlay;->mRoute:Lcom/baidu/mapapi/MKRoute;

    iget-object v8, v2, Lcom/baidu/mapapi/MKRoute;->a:Ljava/util/ArrayList;

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mapapi/RouteOverlay;->f:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapapi/RouteOverlay$a;

    if-nez v2, :cond_9

    new-instance v4, Lcom/baidu/mapapi/RouteOverlay$a;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/baidu/mapapi/RouteOverlay$a;-><init>(Lcom/baidu/mapapi/RouteOverlay;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v5, v2

    :goto_0
    if-ge v5, v9, :cond_1

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-static {v2, v3, v12, v10}, Lcom/baidu/mapapi/n;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;ILjava/util/ArrayList;)I

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v11, :cond_0

    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/baidu/mapapi/MapView;->a:Lcom/baidu/mapapi/e;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapapi/GeoPoint;

    invoke-virtual {v14, v2, v13}, Lcom/baidu/mapapi/e;->a(Lcom/baidu/mapapi/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    iget-object v2, v4, Lcom/baidu/mapapi/RouteOverlay$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_0

    :cond_1
    iget-object v2, v4, Lcom/baidu/mapapi/RouteOverlay$a;->a:Lcom/baidu/mapapi/GeoPoint;

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/mapapi/MapView;->getMapCenter()Lcom/baidu/mapapi/GeoPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/mapapi/GeoPoint;->getLatitudeE6()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/GeoPoint;->setLatitudeE6(I)V

    iget-object v2, v4, Lcom/baidu/mapapi/RouteOverlay$a;->a:Lcom/baidu/mapapi/GeoPoint;

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/mapapi/MapView;->getMapCenter()Lcom/baidu/mapapi/GeoPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/mapapi/GeoPoint;->getLongitudeE6()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/GeoPoint;->setLongitudeE6(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mapapi/RouteOverlay;->f:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v4

    :goto_2
    iget-object v2, v8, Lcom/baidu/mapapi/RouteOverlay$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v2, 0x1

    if-le v13, v2, :cond_4

    const/4 v10, 0x0

    const/4 v3, 0x0

    new-instance v14, Landroid/graphics/Point;

    invoke-direct {v14}, Landroid/graphics/Point;-><init>()V

    new-instance v15, Landroid/graphics/Point;

    invoke-direct {v15}, Landroid/graphics/Point;-><init>()V

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v2, 0x40c0

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/16 v2, 0x3a

    const/16 v4, 0x6b

    const/16 v5, 0xbd

    invoke-static {v2, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v2, 0xc0

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/mapapi/MapView;->getMapCenter()Lcom/baidu/mapapi/GeoPoint;

    move-result-object v5

    invoke-interface {v6, v5, v2}, Lcom/baidu/mapapi/Projection;->toPixels(Lcom/baidu/mapapi/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    iget-object v5, v8, Lcom/baidu/mapapi/RouteOverlay$a;->a:Lcom/baidu/mapapi/GeoPoint;

    invoke-interface {v6, v5, v4}, Lcom/baidu/mapapi/Projection;->toPixels(Lcom/baidu/mapapi/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    iget v5, v2, Landroid/graphics/Point;->x:I

    iget v6, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v6

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v4

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    iget v4, v4, Lcom/baidu/mapapi/a;->c:I

    sub-int v16, v5, v4

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    iget v4, v4, Lcom/baidu/mapapi/a;->d:I

    sub-int v17, v2, v4

    iget-object v2, v8, Lcom/baidu/mapapi/RouteOverlay$a;->b:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iput v2, v14, Landroid/graphics/Point;->x:I

    iget-object v2, v8, Lcom/baidu/mapapi/RouteOverlay$a;->b:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, v14, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mapapi/RouteOverlay;->b:Lcom/baidu/mapapi/MapView;

    iget-object v2, v2, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    iget-wide v4, v2, Lcom/baidu/mapapi/a;->e:D

    const-wide/high16 v18, 0x3ff0

    cmpl-double v2, v4, v18

    if-eqz v2, :cond_2

    iget v2, v14, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/mapapi/RouteOverlay;->b:Lcom/baidu/mapapi/MapView;

    iget-object v4, v4, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    iget v4, v4, Lcom/baidu/mapapi/a;->f:I

    sub-int/2addr v2, v4

    int-to-double v4, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mapapi/RouteOverlay;->b:Lcom/baidu/mapapi/MapView;

    iget-object v2, v2, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    iget-wide v0, v2, Lcom/baidu/mapapi/a;->e:D

    move-wide/from16 v18, v0

    mul-double v4, v4, v18

    const-wide/high16 v18, 0x3fe0

    add-double v4, v4, v18

    double-to-int v2, v4

    iget v4, v14, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/mapapi/RouteOverlay;->b:Lcom/baidu/mapapi/MapView;

    iget-object v5, v5, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    iget v5, v5, Lcom/baidu/mapapi/a;->g:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/mapapi/RouteOverlay;->b:Lcom/baidu/mapapi/MapView;

    iget-object v6, v6, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    iget-wide v0, v6, Lcom/baidu/mapapi/a;->e:D

    move-wide/from16 v18, v0

    mul-double v4, v4, v18

    const-wide/high16 v18, 0x3fe0

    add-double v4, v4, v18

    double-to-int v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/mapapi/RouteOverlay;->b:Lcom/baidu/mapapi/MapView;

    iget-object v5, v5, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    iget v5, v5, Lcom/baidu/mapapi/a;->f:I

    add-int/2addr v2, v5

    iput v2, v14, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mapapi/RouteOverlay;->b:Lcom/baidu/mapapi/MapView;

    iget-object v2, v2, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    iget v2, v2, Lcom/baidu/mapapi/a;->g:I

    add-int/2addr v2, v4

    iput v2, v14, Landroid/graphics/Point;->y:I

    :cond_2
    iget v2, v14, Landroid/graphics/Point;->x:I

    sub-int v2, v2, v16

    iput v2, v14, Landroid/graphics/Point;->x:I

    iget v2, v14, Landroid/graphics/Point;->y:I

    sub-int v2, v2, v17

    iput v2, v14, Landroid/graphics/Point;->y:I

    const/4 v2, 0x1

    move v11, v2

    :goto_3
    if-ge v11, v13, :cond_4

    iget-object v2, v8, Lcom/baidu/mapapi/RouteOverlay$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iput v2, v15, Landroid/graphics/Point;->x:I

    iget-object v2, v8, Lcom/baidu/mapapi/RouteOverlay$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, v15, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mapapi/RouteOverlay;->b:Lcom/baidu/mapapi/MapView;

    iget-object v2, v2, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    iget-wide v4, v2, Lcom/baidu/mapapi/a;->e:D

    const-wide/high16 v18, 0x3ff0

    cmpl-double v2, v4, v18

    if-eqz v2, :cond_3

    iget v2, v15, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/mapapi/RouteOverlay;->b:Lcom/baidu/mapapi/MapView;

    iget-object v4, v4, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    iget v4, v4, Lcom/baidu/mapapi/a;->f:I

    sub-int/2addr v2, v4

    int-to-double v4, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mapapi/RouteOverlay;->b:Lcom/baidu/mapapi/MapView;

    iget-object v2, v2, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    iget-wide v0, v2, Lcom/baidu/mapapi/a;->e:D

    move-wide/from16 v18, v0

    mul-double v4, v4, v18

    const-wide/high16 v18, 0x3fe0

    add-double v4, v4, v18

    double-to-int v2, v4

    iget v4, v15, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/mapapi/RouteOverlay;->b:Lcom/baidu/mapapi/MapView;

    iget-object v5, v5, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    iget v5, v5, Lcom/baidu/mapapi/a;->g:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/mapapi/RouteOverlay;->b:Lcom/baidu/mapapi/MapView;

    iget-object v6, v6, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    iget-wide v0, v6, Lcom/baidu/mapapi/a;->e:D

    move-wide/from16 v18, v0

    mul-double v4, v4, v18

    const-wide/high16 v18, 0x3fe0

    add-double v4, v4, v18

    double-to-int v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/mapapi/RouteOverlay;->b:Lcom/baidu/mapapi/MapView;

    iget-object v5, v5, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    iget v5, v5, Lcom/baidu/mapapi/a;->f:I

    add-int/2addr v2, v5

    iput v2, v15, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mapapi/RouteOverlay;->b:Lcom/baidu/mapapi/MapView;

    iget-object v2, v2, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    iget v2, v2, Lcom/baidu/mapapi/a;->g:I

    add-int/2addr v2, v4

    iput v2, v15, Landroid/graphics/Point;->y:I

    :cond_3
    iget v2, v15, Landroid/graphics/Point;->x:I

    sub-int v2, v2, v16

    iput v2, v15, Landroid/graphics/Point;->x:I

    iget v2, v15, Landroid/graphics/Point;->y:I

    sub-int v2, v2, v17

    iput v2, v15, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mapapi/RouteOverlay;->d:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/mapapi/RouteOverlay;->d:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v14, v15, v2, v4}, Lcom/baidu/mapapi/n;->a(Landroid/graphics/Point;Landroid/graphics/Point;II)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v9, 0x1

    iget v2, v14, Landroid/graphics/Point;->x:I

    int-to-float v3, v2

    iget v2, v14, Landroid/graphics/Point;->y:I

    int-to-float v4, v2

    iget v2, v15, Landroid/graphics/Point;->x:I

    int-to-float v5, v2

    iget v2, v15, Landroid/graphics/Point;->y:I

    int-to-float v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v2, v9

    move v3, v10

    :goto_4
    iget v4, v15, Landroid/graphics/Point;->x:I

    iput v4, v14, Landroid/graphics/Point;->x:I

    iget v4, v15, Landroid/graphics/Point;->y:I

    iput v4, v14, Landroid/graphics/Point;->y:I

    const/16 v4, 0x32

    if-le v3, v4, :cond_6

    :cond_4
    const/4 v2, 0x3

    if-lt v12, v2, :cond_7

    invoke-super/range {p0 .. p5}, Lcom/baidu/mapapi/Overlay;->draw(Landroid/graphics/Canvas;Lcom/baidu/mapapi/MapView;ZJ)Z

    move-result v2

    :goto_5
    return v2

    :cond_5
    const/4 v2, 0x1

    if-ne v3, v2, :cond_8

    add-int/lit8 v2, v10, 0x1

    const/16 v4, 0x32

    if-gt v2, v4, :cond_4

    move/from16 v20, v3

    move v3, v2

    move/from16 v2, v20

    goto :goto_4

    :cond_6
    add-int/lit8 v4, v11, 0x1

    move v11, v4

    move v10, v3

    move v3, v2

    goto/16 :goto_3

    :cond_7
    const/4 v2, 0x1

    goto :goto_5

    :cond_8
    move v2, v3

    move v3, v10

    goto :goto_4

    :cond_9
    move-object v8, v2

    goto/16 :goto_2
.end method

.method protected onTap(I)Z
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/ItemizedOverlay;->getItem(I)Lcom/baidu/mapapi/OverlayItem;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapapi/RouteOverlay;->b:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v1}, Lcom/baidu/mapapi/MapView;->getController()Lcom/baidu/mapapi/MapController;

    move-result-object v1

    iget-object v2, v0, Lcom/baidu/mapapi/OverlayItem;->mPoint:Lcom/baidu/mapapi/GeoPoint;

    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/MapController;->animateTo(Lcom/baidu/mapapi/GeoPoint;)V

    iget-object v1, v0, Lcom/baidu/mapapi/OverlayItem;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/mapapi/RouteOverlay;->c:Landroid/content/Context;

    iget-object v0, v0, Lcom/baidu/mapapi/OverlayItem;->mTitle:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    invoke-super {p0, p1}, Lcom/baidu/mapapi/ItemizedOverlay;->onTap(I)Z

    return v3
.end method

.method public setData(Lcom/baidu/mapapi/MKRoute;)V
    .locals 8

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/baidu/mapapi/RouteOverlay;->mRoute:Lcom/baidu/mapapi/MKRoute;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/baidu/mapapi/RouteOverlay;->a:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/baidu/mapapi/RouteOverlay;->mRoute:Lcom/baidu/mapapi/MKRoute;

    invoke-virtual {v4}, Lcom/baidu/mapapi/MKRoute;->getRouteType()I

    move-result v4

    if-ne v4, v3, :cond_4

    move v1, v0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/baidu/mapapi/RouteOverlay;->mRoute:Lcom/baidu/mapapi/MKRoute;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MKRoute;->getStart()Lcom/baidu/mapapi/GeoPoint;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v4, Lcom/baidu/mapapi/RouteOverlay$b;

    invoke-direct {v4, p0, v7}, Lcom/baidu/mapapi/RouteOverlay$b;-><init>(Lcom/baidu/mapapi/RouteOverlay;Lcom/baidu/mapapi/RouteOverlay$1;)V

    iput-object v0, v4, Lcom/baidu/mapapi/RouteOverlay$b;->b:Lcom/baidu/mapapi/GeoPoint;

    iput v2, v4, Lcom/baidu/mapapi/RouteOverlay$b;->c:I

    iget-object v0, p0, Lcom/baidu/mapapi/RouteOverlay;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p1}, Lcom/baidu/mapapi/MKRoute;->getNumSteps()I

    move-result v4

    if-eqz v4, :cond_5

    iget-object v0, p0, Lcom/baidu/mapapi/RouteOverlay;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/baidu/mapapi/RouteOverlay;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/RouteOverlay$b;

    invoke-virtual {p1, v2}, Lcom/baidu/mapapi/MKRoute;->getStep(I)Lcom/baidu/mapapi/MKStep;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/mapapi/MKStep;->getContent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/mapapi/RouteOverlay$b;->a:Ljava/lang/String;

    :cond_3
    move v0, v3

    :goto_2
    add-int/lit8 v2, v4, -0x1

    if-ge v0, v2, :cond_5

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/MKRoute;->getStep(I)Lcom/baidu/mapapi/MKStep;

    move-result-object v2

    new-instance v5, Lcom/baidu/mapapi/RouteOverlay$b;

    invoke-direct {v5, p0, v7}, Lcom/baidu/mapapi/RouteOverlay$b;-><init>(Lcom/baidu/mapapi/RouteOverlay;Lcom/baidu/mapapi/RouteOverlay$1;)V

    invoke-virtual {v2}, Lcom/baidu/mapapi/MKStep;->getPoint()Lcom/baidu/mapapi/GeoPoint;

    move-result-object v6

    iput-object v6, v5, Lcom/baidu/mapapi/RouteOverlay$b;->b:Lcom/baidu/mapapi/GeoPoint;

    invoke-virtual {v2}, Lcom/baidu/mapapi/MKStep;->getContent()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/baidu/mapapi/RouteOverlay$b;->a:Ljava/lang/String;

    iput v1, v5, Lcom/baidu/mapapi/RouteOverlay$b;->c:I

    invoke-virtual {v2}, Lcom/baidu/mapapi/MKStep;->a()I

    move-result v2

    iput v2, v5, Lcom/baidu/mapapi/RouteOverlay$b;->d:I

    iget-object v2, p0, Lcom/baidu/mapapi/RouteOverlay;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/baidu/mapapi/RouteOverlay;->mRoute:Lcom/baidu/mapapi/MKRoute;

    invoke-virtual {v4}, Lcom/baidu/mapapi/MKRoute;->getRouteType()I

    move-result v4

    if-eq v4, v1, :cond_1

    iget-object v1, p0, Lcom/baidu/mapapi/RouteOverlay;->mRoute:Lcom/baidu/mapapi/MKRoute;

    invoke-virtual {v1}, Lcom/baidu/mapapi/MKRoute;->getRouteType()I

    move-result v1

    if-ne v1, v0, :cond_7

    const/4 v0, 0x4

    move v1, v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/baidu/mapapi/RouteOverlay;->mRoute:Lcom/baidu/mapapi/MKRoute;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MKRoute;->getEnd()Lcom/baidu/mapapi/GeoPoint;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v1, Lcom/baidu/mapapi/RouteOverlay$b;

    invoke-direct {v1, p0, v7}, Lcom/baidu/mapapi/RouteOverlay$b;-><init>(Lcom/baidu/mapapi/RouteOverlay;Lcom/baidu/mapapi/RouteOverlay$1;)V

    iput-object v0, v1, Lcom/baidu/mapapi/RouteOverlay$b;->b:Lcom/baidu/mapapi/GeoPoint;

    iput v3, v1, Lcom/baidu/mapapi/RouteOverlay$b;->c:I

    iget-object v0, p0, Lcom/baidu/mapapi/RouteOverlay;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/RouteOverlay;->f:Ljava/util/HashMap;

    invoke-super {p0}, Lcom/baidu/mapapi/ItemizedOverlay;->populate()V

    goto/16 :goto_0

    :cond_7
    move v1, v2

    goto/16 :goto_1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/RouteOverlay;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/RouteOverlay;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method
