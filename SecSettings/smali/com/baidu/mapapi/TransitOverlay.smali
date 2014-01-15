.class public Lcom/baidu/mapapi/TransitOverlay;
.super Lcom/baidu/mapapi/ItemizedOverlay;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/TransitOverlay$1;,
        Lcom/baidu/mapapi/TransitOverlay$a;
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
            "Lcom/baidu/mapapi/TransitOverlay$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/baidu/mapapi/MapView;

.field private c:Landroid/content/Context;

.field private d:I

.field private e:Landroid/util/DisplayMetrics;

.field public mPlan:Lcom/baidu/mapapi/MKTransitRoutePlan;

.field public mUseToast:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/baidu/mapapi/MapView;)V
    .locals 5

    const/16 v4, 0x1e0

    const/16 v3, 0x140

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/mapapi/ItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/baidu/mapapi/TransitOverlay;->mPlan:Lcom/baidu/mapapi/MKTransitRoutePlan;

    iput-object v0, p0, Lcom/baidu/mapapi/TransitOverlay;->a:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/baidu/mapapi/TransitOverlay;->b:Lcom/baidu/mapapi/MapView;

    iput-object v0, p0, Lcom/baidu/mapapi/TransitOverlay;->c:Landroid/content/Context;

    iput v2, p0, Lcom/baidu/mapapi/TransitOverlay;->d:I

    iput-boolean v2, p0, Lcom/baidu/mapapi/TransitOverlay;->mUseToast:Z

    iput-object p1, p0, Lcom/baidu/mapapi/TransitOverlay;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/baidu/mapapi/TransitOverlay;->b:Lcom/baidu/mapapi/MapView;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/TransitOverlay;->e:Landroid/util/DisplayMetrics;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapapi/TransitOverlay;->e:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v0, p0, Lcom/baidu/mapapi/TransitOverlay;->e:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-gt v0, v3, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/TransitOverlay;->e:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v0, v3, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mapapi/TransitOverlay;->d:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/TransitOverlay;->e:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-gt v0, v4, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/TransitOverlay;->e:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v0, v4, :cond_1

    iput v2, p0, Lcom/baidu/mapapi/TransitOverlay;->d:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/mapapi/TransitOverlay;->d:I

    goto :goto_0
.end method


# virtual methods
.method public animateTo()V
    .locals 1

    invoke-virtual {p0}, Lcom/baidu/mapapi/TransitOverlay;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/TransitOverlay;->onTap(I)Z

    :cond_0
    return-void
.end method

.method protected createItem(I)Lcom/baidu/mapapi/OverlayItem;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x3

    new-array v1, v7, [C

    fill-array-data v1, :array_0

    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "start"

    aput-object v3, v2, v0

    const-string v0, "end"

    aput-object v0, v2, v8

    const/4 v0, 0x2

    const-string v3, "bus"

    aput-object v3, v2, v0

    const-string v0, "foot"

    aput-object v0, v2, v7

    const/4 v0, 0x4

    const-string v3, "rail"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    const-string v3, "car"

    aput-object v3, v2, v0

    iget-object v0, p0, Lcom/baidu/mapapi/TransitOverlay;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/TransitOverlay$a;

    new-instance v3, Lcom/baidu/mapapi/OverlayItem;

    iget-object v4, v0, Lcom/baidu/mapapi/TransitOverlay$a;->b:Lcom/baidu/mapapi/GeoPoint;

    iget-object v5, v0, Lcom/baidu/mapapi/TransitOverlay$a;->a:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/baidu/mapapi/OverlayItem;-><init>(Lcom/baidu/mapapi/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    iget v4, v0, Lcom/baidu/mapapi/TransitOverlay$a;->c:I

    if-eq v4, v7, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "icon_nav_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/baidu/mapapi/TransitOverlay$a;->c:I

    aget-object v2, v2, v6

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v5, 0x5f

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/baidu/mapapi/TransitOverlay;->d:I

    aget-char v1, v1, v5

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/mapapi/TransitOverlay;->c:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/mapapi/n;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, v0, Lcom/baidu/mapapi/TransitOverlay$a;->c:I

    if-eqz v2, :cond_0

    iget v0, v0, Lcom/baidu/mapapi/TransitOverlay$a;->c:I

    if-ne v0, v8, :cond_2

    :cond_0
    invoke-static {v1}, Lcom/baidu/mapapi/TransitOverlay;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/baidu/mapapi/OverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-object v3

    :cond_2
    invoke-static {v1}, Lcom/baidu/mapapi/TransitOverlay;->boundCenter(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/baidu/mapapi/OverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :array_0
    .array-data 0x2
        0x6ct 0x0t
        0x6dt 0x0t
        0x68t 0x0t
    .end array-data
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/baidu/mapapi/MapView;ZJ)Z
    .locals 15

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/mapapi/MapView;->getProjection()Lcom/baidu/mapapi/Projection;

    move-result-object v8

    iget-object v0, p0, Lcom/baidu/mapapi/TransitOverlay;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapapi/TransitOverlay;->e:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v0, p0, Lcom/baidu/mapapi/TransitOverlay;->mPlan:Lcom/baidu/mapapi/MKTransitRoutePlan;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/baidu/mapapi/TransitOverlay;->mPlan:Lcom/baidu/mapapi/MKTransitRoutePlan;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MKTransitRoutePlan;->getNumLines()I

    move-result v9

    iget-object v0, p0, Lcom/baidu/mapapi/TransitOverlay;->mPlan:Lcom/baidu/mapapi/MKTransitRoutePlan;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MKTransitRoutePlan;->getNumRoute()I

    move-result v0

    add-int/lit8 v1, v9, 0x1

    if-ne v1, v0, :cond_6

    if-eqz v9, :cond_6

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v0, 0x40c0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/mapapi/MapView;->getZoomLevel()I

    move-result v13

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-ge v7, v9, :cond_6

    iget-object v0, p0, Lcom/baidu/mapapi/TransitOverlay;->mPlan:Lcom/baidu/mapapi/MKTransitRoutePlan;

    invoke-virtual {v0, v7}, Lcom/baidu/mapapi/MKTransitRoutePlan;->getRoute(I)Lcom/baidu/mapapi/MKRoute;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mapapi/MKRoute;->getArrayPoints()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v1, v1, Lcom/baidu/mapapi/MKRoute;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v0, v1, v13, v12}, Lcom/baidu/mapapi/n;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;ILjava/util/ArrayList;)I

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v0, 0x1

    if-le v14, v0, :cond_1

    const/16 v0, 0x30

    const/16 v1, 0xa2

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v0, 0xc0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/GeoPoint;

    invoke-interface {v8, v0, v10}, Lcom/baidu/mapapi/Projection;->toPixels(Lcom/baidu/mapapi/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    const/4 v0, 0x1

    move v6, v0

    :goto_1
    if-ge v6, v14, :cond_1

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/GeoPoint;

    invoke-interface {v8, v0, v11}, Lcom/baidu/mapapi/Projection;->toPixels(Lcom/baidu/mapapi/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    iget-object v0, p0, Lcom/baidu/mapapi/TransitOverlay;->e:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/baidu/mapapi/TransitOverlay;->e:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v10, v11, v0, v1}, Lcom/baidu/mapapi/n;->a(Landroid/graphics/Point;Landroid/graphics/Point;II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, v10, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    iget v0, v10, Landroid/graphics/Point;->y:I

    int-to-float v2, v0

    iget v0, v11, Landroid/graphics/Point;->x:I

    int-to-float v3, v0

    iget v0, v11, Landroid/graphics/Point;->y:I

    int-to-float v4, v0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    iget v0, v11, Landroid/graphics/Point;->x:I

    iput v0, v10, Landroid/graphics/Point;->x:I

    iget v0, v11, Landroid/graphics/Point;->y:I

    iput v0, v10, Landroid/graphics/Point;->y:I

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/TransitOverlay;->mPlan:Lcom/baidu/mapapi/MKTransitRoutePlan;

    invoke-virtual {v0, v7}, Lcom/baidu/mapapi/MKTransitRoutePlan;->getLine(I)Lcom/baidu/mapapi/MKLine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapapi/MKLine;->getPoints()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v0, v0, Lcom/baidu/mapapi/MKLine;->a:Ljava/util/ArrayList;

    invoke-static {v1, v0, v13, v12}, Lcom/baidu/mapapi/n;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;ILjava/util/ArrayList;)I

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v0, 0x1

    if-le v14, v0, :cond_3

    const/16 v0, 0x3a

    const/16 v1, 0x6b

    const/16 v2, 0xbd

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v0, 0xc0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/GeoPoint;

    invoke-interface {v8, v0, v10}, Lcom/baidu/mapapi/Projection;->toPixels(Lcom/baidu/mapapi/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    const/4 v0, 0x1

    move v6, v0

    :goto_2
    if-ge v6, v14, :cond_3

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/GeoPoint;

    invoke-interface {v8, v0, v11}, Lcom/baidu/mapapi/Projection;->toPixels(Lcom/baidu/mapapi/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    iget-object v0, p0, Lcom/baidu/mapapi/TransitOverlay;->e:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/baidu/mapapi/TransitOverlay;->e:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v10, v11, v0, v1}, Lcom/baidu/mapapi/n;->a(Landroid/graphics/Point;Landroid/graphics/Point;II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, v10, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    iget v0, v10, Landroid/graphics/Point;->y:I

    int-to-float v2, v0

    iget v0, v11, Landroid/graphics/Point;->x:I

    int-to-float v3, v0

    iget v0, v11, Landroid/graphics/Point;->y:I

    int-to-float v4, v0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    iget v0, v11, Landroid/graphics/Point;->x:I

    iput v0, v10, Landroid/graphics/Point;->x:I

    iget v0, v11, Landroid/graphics/Point;->y:I

    iput v0, v10, Landroid/graphics/Point;->y:I

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v9, -0x1

    if-ne v7, v0, :cond_5

    iget-object v0, p0, Lcom/baidu/mapapi/TransitOverlay;->mPlan:Lcom/baidu/mapapi/MKTransitRoutePlan;

    add-int/lit8 v1, v7, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/MKTransitRoutePlan;->getRoute(I)Lcom/baidu/mapapi/MKRoute;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mapapi/MKRoute;->getArrayPoints()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    iget-object v1, v1, Lcom/baidu/mapapi/MKRoute;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v0, v1, v13, v12}, Lcom/baidu/mapapi/n;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;ILjava/util/ArrayList;)I

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v0, 0x1

    if-le v7, v0, :cond_6

    const/16 v0, 0x30

    const/16 v1, 0xa2

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v0, 0xc0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/GeoPoint;

    invoke-interface {v8, v0, v10}, Lcom/baidu/mapapi/Projection;->toPixels(Lcom/baidu/mapapi/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    const/4 v0, 0x1

    move v6, v0

    :goto_3
    if-ge v6, v7, :cond_6

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/GeoPoint;

    invoke-interface {v8, v0, v11}, Lcom/baidu/mapapi/Projection;->toPixels(Lcom/baidu/mapapi/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    iget-object v0, p0, Lcom/baidu/mapapi/TransitOverlay;->e:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/baidu/mapapi/TransitOverlay;->e:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v10, v11, v0, v1}, Lcom/baidu/mapapi/n;->a(Landroid/graphics/Point;Landroid/graphics/Point;II)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, v10, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    iget v0, v10, Landroid/graphics/Point;->y:I

    int-to-float v2, v0

    iget v0, v11, Landroid/graphics/Point;->x:I

    int-to-float v3, v0

    iget v0, v11, Landroid/graphics/Point;->y:I

    int-to-float v4, v0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_4
    iget v0, v11, Landroid/graphics/Point;->x:I

    iput v0, v10, Landroid/graphics/Point;->x:I

    iget v0, v11, Landroid/graphics/Point;->y:I

    iput v0, v10, Landroid/graphics/Point;->y:I

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_0

    :cond_6
    invoke-super/range {p0 .. p5}, Lcom/baidu/mapapi/Overlay;->draw(Landroid/graphics/Canvas;Lcom/baidu/mapapi/MapView;ZJ)Z

    move-result v0

    return v0
.end method

.method protected onTap(I)Z
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/ItemizedOverlay;->getItem(I)Lcom/baidu/mapapi/OverlayItem;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapapi/TransitOverlay;->b:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v1}, Lcom/baidu/mapapi/MapView;->getController()Lcom/baidu/mapapi/MapController;

    move-result-object v1

    iget-object v2, v0, Lcom/baidu/mapapi/OverlayItem;->mPoint:Lcom/baidu/mapapi/GeoPoint;

    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/MapController;->animateTo(Lcom/baidu/mapapi/GeoPoint;)V

    iget-boolean v1, p0, Lcom/baidu/mapapi/TransitOverlay;->mUseToast:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/baidu/mapapi/OverlayItem;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/mapapi/TransitOverlay;->c:Landroid/content/Context;

    iget-object v0, v0, Lcom/baidu/mapapi/OverlayItem;->mTitle:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    invoke-super {p0, p1}, Lcom/baidu/mapapi/ItemizedOverlay;->onTap(I)Z

    return v3
.end method

.method public setData(Lcom/baidu/mapapi/MKTransitRoutePlan;)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v0, 0x0

    const/4 v6, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/baidu/mapapi/TransitOverlay;->a:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/baidu/mapapi/TransitOverlay;->mPlan:Lcom/baidu/mapapi/MKTransitRoutePlan;

    invoke-virtual {p1}, Lcom/baidu/mapapi/MKTransitRoutePlan;->getNumLines()I

    move-result v1

    iget-object v2, p0, Lcom/baidu/mapapi/TransitOverlay;->mPlan:Lcom/baidu/mapapi/MKTransitRoutePlan;

    invoke-virtual {v2}, Lcom/baidu/mapapi/MKTransitRoutePlan;->getNumRoute()I

    move-result v2

    add-int/lit8 v3, v1, 0x1

    if-ne v3, v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/baidu/mapapi/MKTransitRoutePlan;->getStart()Lcom/baidu/mapapi/GeoPoint;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v3, Lcom/baidu/mapapi/TransitOverlay$a;

    invoke-direct {v3, p0, v6}, Lcom/baidu/mapapi/TransitOverlay$a;-><init>(Lcom/baidu/mapapi/TransitOverlay;Lcom/baidu/mapapi/TransitOverlay$1;)V

    iput-object v2, v3, Lcom/baidu/mapapi/TransitOverlay$a;->b:Lcom/baidu/mapapi/GeoPoint;

    iput v0, v3, Lcom/baidu/mapapi/TransitOverlay$a;->c:I

    iget-object v2, p0, Lcom/baidu/mapapi/TransitOverlay;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    if-ge v0, v1, :cond_5

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/MKTransitRoutePlan;->getLine(I)Lcom/baidu/mapapi/MKLine;

    move-result-object v2

    new-instance v3, Lcom/baidu/mapapi/TransitOverlay$a;

    invoke-direct {v3, p0, v6}, Lcom/baidu/mapapi/TransitOverlay$a;-><init>(Lcom/baidu/mapapi/TransitOverlay;Lcom/baidu/mapapi/TransitOverlay$1;)V

    invoke-virtual {v2}, Lcom/baidu/mapapi/MKLine;->getGetOnStop()Lcom/baidu/mapapi/MKPoiInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/baidu/mapapi/MKPoiInfo;->pt:Lcom/baidu/mapapi/GeoPoint;

    iput-object v4, v3, Lcom/baidu/mapapi/TransitOverlay$a;->b:Lcom/baidu/mapapi/GeoPoint;

    invoke-virtual {v2}, Lcom/baidu/mapapi/MKLine;->a()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/baidu/mapapi/TransitOverlay$a;->a:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/baidu/mapapi/MKLine;->getType()I

    move-result v4

    if-nez v4, :cond_3

    iput v7, v3, Lcom/baidu/mapapi/TransitOverlay$a;->c:I

    :goto_2
    iget-object v4, p0, Lcom/baidu/mapapi/TransitOverlay;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/baidu/mapapi/TransitOverlay;->mPlan:Lcom/baidu/mapapi/MKTransitRoutePlan;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Lcom/baidu/mapapi/MKTransitRoutePlan;->getRoute(I)Lcom/baidu/mapapi/MKRoute;

    move-result-object v3

    new-instance v4, Lcom/baidu/mapapi/TransitOverlay$a;

    invoke-direct {v4, p0, v6}, Lcom/baidu/mapapi/TransitOverlay$a;-><init>(Lcom/baidu/mapapi/TransitOverlay;Lcom/baidu/mapapi/TransitOverlay$1;)V

    invoke-virtual {v2}, Lcom/baidu/mapapi/MKLine;->getGetOffStop()Lcom/baidu/mapapi/MKPoiInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/baidu/mapapi/MKPoiInfo;->pt:Lcom/baidu/mapapi/GeoPoint;

    iput-object v5, v4, Lcom/baidu/mapapi/TransitOverlay$a;->b:Lcom/baidu/mapapi/GeoPoint;

    invoke-virtual {v3}, Lcom/baidu/mapapi/MKRoute;->a()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/baidu/mapapi/TransitOverlay$a;->a:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/baidu/mapapi/MKLine;->getType()I

    move-result v2

    if-nez v2, :cond_4

    iput v7, v4, Lcom/baidu/mapapi/TransitOverlay$a;->c:I

    :goto_3
    iget-object v2, p0, Lcom/baidu/mapapi/TransitOverlay;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iput v8, v3, Lcom/baidu/mapapi/TransitOverlay$a;->c:I

    goto :goto_2

    :cond_4
    iput v8, v4, Lcom/baidu/mapapi/TransitOverlay$a;->c:I

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Lcom/baidu/mapapi/MKTransitRoutePlan;->getEnd()Lcom/baidu/mapapi/GeoPoint;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v1, Lcom/baidu/mapapi/TransitOverlay$a;

    invoke-direct {v1, p0, v6}, Lcom/baidu/mapapi/TransitOverlay$a;-><init>(Lcom/baidu/mapapi/TransitOverlay;Lcom/baidu/mapapi/TransitOverlay$1;)V

    iput-object v0, v1, Lcom/baidu/mapapi/TransitOverlay$a;->b:Lcom/baidu/mapapi/GeoPoint;

    const/4 v0, 0x1

    iput v0, v1, Lcom/baidu/mapapi/TransitOverlay$a;->c:I

    iget-object v0, p0, Lcom/baidu/mapapi/TransitOverlay;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-super {p0}, Lcom/baidu/mapapi/ItemizedOverlay;->populate()V

    goto/16 :goto_0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/TransitOverlay;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/TransitOverlay;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method
