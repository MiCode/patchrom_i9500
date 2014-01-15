.class public Lcom/baidu/mapapi/MyLocationOverlay;
.super Lcom/baidu/mapapi/Overlay;

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/baidu/mapapi/LocationListener;
.implements Lcom/baidu/mapapi/Overlay$Snappable;


# instance fields
.field private a:Landroid/location/Location;

.field private b:Lcom/baidu/mapapi/GeoPoint;

.field private c:Lcom/baidu/mapapi/GeoPoint;

.field private d:Ljava/lang/Runnable;

.field private e:Lcom/baidu/mapapi/MapView;

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/graphics/Bitmap;

.field private h:Landroid/graphics/Bitmap;

.field private i:Z

.field private j:Z

.field private k:F

.field private l:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/baidu/mapapi/MapView;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/baidu/mapapi/Overlay;-><init>()V

    iput-object v1, p0, Lcom/baidu/mapapi/MyLocationOverlay;->a:Landroid/location/Location;

    iput-object v1, p0, Lcom/baidu/mapapi/MyLocationOverlay;->b:Lcom/baidu/mapapi/GeoPoint;

    iput-object v1, p0, Lcom/baidu/mapapi/MyLocationOverlay;->c:Lcom/baidu/mapapi/GeoPoint;

    iput-object v1, p0, Lcom/baidu/mapapi/MyLocationOverlay;->d:Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/baidu/mapapi/MyLocationOverlay;->e:Lcom/baidu/mapapi/MapView;

    iput-object v1, p0, Lcom/baidu/mapapi/MyLocationOverlay;->f:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/baidu/mapapi/MyLocationOverlay;->g:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/baidu/mapapi/MyLocationOverlay;->h:Landroid/graphics/Bitmap;

    iput-boolean v3, p0, Lcom/baidu/mapapi/MyLocationOverlay;->i:Z

    iput-boolean v3, p0, Lcom/baidu/mapapi/MyLocationOverlay;->j:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mapapi/MyLocationOverlay;->k:F

    iput-object v1, p0, Lcom/baidu/mapapi/MyLocationOverlay;->l:Landroid/graphics/Paint;

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mapView is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/baidu/mapapi/MyLocationOverlay;->e:Lcom/baidu/mapapi/MapView;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/MyLocationOverlay;->l:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/baidu/mapapi/MyLocationOverlay;->l:Landroid/graphics/Paint;

    const/16 v1, 0x23

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lcom/baidu/mapapi/MyLocationOverlay;->l:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/baidu/mapapi/MyLocationOverlay;->l:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "icon_my.png"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/mapapi/MyLocationOverlay;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    const-string v1, "compass_bg.png"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/mapapi/MyLocationOverlay;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    const-string v1, "compass_pointer.png"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mapapi/MyLocationOverlay;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected GetBaidu09Point(Lcom/baidu/mapapi/GeoPoint;I)Lcom/baidu/mapapi/GeoPoint;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    return-object p1

    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Lcom/baidu/mapapi/CoordinateConvert;->fromWgs84ToBaidu(Lcom/baidu/mapapi/GeoPoint;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mapapi/CoordinateConvert;->bundleDecode(Landroid/os/Bundle;)Lcom/baidu/mapapi/GeoPoint;

    move-result-object p1

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Lcom/baidu/mapapi/CoordinateConvert;->fromGcjToBaidu(Lcom/baidu/mapapi/GeoPoint;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mapapi/CoordinateConvert;->bundleDecode(Landroid/os/Bundle;)Lcom/baidu/mapapi/GeoPoint;

    move-result-object p1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public disableCompass()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/mapapi/MyLocationOverlay;->j:Z

    sget-object v0, Lcom/baidu/mapapi/Mj;->b:Lcom/baidu/mapapi/MKLocationManager;

    invoke-virtual {v0, p0}, Lcom/baidu/mapapi/MKLocationManager;->b(Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lcom/baidu/mapapi/MyLocationOverlay;->e:Lcom/baidu/mapapi/MapView;

    iget-object v0, v0, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    iput v1, v0, Lcom/baidu/mapapi/a;->b:I

    iget-object v0, p0, Lcom/baidu/mapapi/MyLocationOverlay;->e:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MapView;->invalidate()V

    return-void
.end method

.method public disableMyLocation()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mapapi/MyLocationOverlay;->i:Z

    iput-object v1, p0, Lcom/baidu/mapapi/MyLocationOverlay;->a:Landroid/location/Location;

    iput-object v1, p0, Lcom/baidu/mapapi/MyLocationOverlay;->b:Lcom/baidu/mapapi/GeoPoint;

    iput-object v1, p0, Lcom/baidu/mapapi/MyLocationOverlay;->c:Lcom/baidu/mapapi/GeoPoint;

    sget-object v0, Lcom/baidu/mapapi/Mj;->b:Lcom/baidu/mapapi/MKLocationManager;

    invoke-virtual {v0, p0}, Lcom/baidu/mapapi/MKLocationManager;->removeUpdates(Lcom/baidu/mapapi/LocationListener;)V

    iget-object v0, p0, Lcom/baidu/mapapi/MyLocationOverlay;->e:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MapView;->invalidate()V

    return-void
.end method

.method protected dispatchTap()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/baidu/mapapi/MapView;ZJ)Z
    .locals 7

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/MyLocationOverlay;->a:Landroid/location/Location;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/MyLocationOverlay;->b:Lcom/baidu/mapapi/GeoPoint;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/MyLocationOverlay;->c:Lcom/baidu/mapapi/GeoPoint;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/baidu/mapapi/MyLocationOverlay;->a:Landroid/location/Location;

    iget-object v4, p0, Lcom/baidu/mapapi/MyLocationOverlay;->c:Lcom/baidu/mapapi/GeoPoint;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/mapapi/MyLocationOverlay;->drawMyLocation(Landroid/graphics/Canvas;Lcom/baidu/mapapi/MapView;Landroid/location/Location;Lcom/baidu/mapapi/GeoPoint;J)V

    :cond_1
    iget-boolean v0, p0, Lcom/baidu/mapapi/MyLocationOverlay;->j:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/baidu/mapapi/MyLocationOverlay;->k:F

    invoke-virtual {p0, p1, v0}, Lcom/baidu/mapapi/MyLocationOverlay;->drawCompass(Landroid/graphics/Canvas;F)V

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected drawCompass(Landroid/graphics/Canvas;F)V
    .locals 5

    const/16 v4, 0xa

    const/high16 v0, 0x43b4

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_0

    const/high16 v0, -0x3c4c

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/MyLocationOverlay;->g:Landroid/graphics/Bitmap;

    int-to-float v1, v4

    int-to-float v2, v4

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/baidu/mapapi/MyLocationOverlay;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v4

    iget-object v1, p0, Lcom/baidu/mapapi/MyLocationOverlay;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v4

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v3, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    neg-float v3, p2

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {v2, v3, v0, v1}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/baidu/mapapi/MyLocationOverlay;->h:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected drawMyLocation(Landroid/graphics/Canvas;Lcom/baidu/mapapi/MapView;Landroid/location/Location;Lcom/baidu/mapapi/GeoPoint;J)V
    .locals 5

    const/4 v4, 0x0

    if-nez p4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/baidu/mapapi/MapView;->getProjection()Lcom/baidu/mapapi/Projection;

    move-result-object v0

    invoke-interface {v0, p4, v4}, Lcom/baidu/mapapi/Projection;->toPixels(Lcom/baidu/mapapi/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/baidu/mapapi/MyLocationOverlay;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/baidu/mapapi/MyLocationOverlay;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/baidu/mapapi/MyLocationOverlay;->f:Landroid/graphics/Bitmap;

    int-to-float v1, v1

    int-to-float v2, v2

    invoke-virtual {p1, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p3}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-virtual {p2}, Lcom/baidu/mapapi/MapView;->getProjection()Lcom/baidu/mapapi/Projection;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/baidu/mapapi/Projection;->metersToEquatorPixels(F)F

    move-result v1

    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget-object v3, p0, Lcom/baidu/mapapi/MyLocationOverlay;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public enableCompass()Z
    .locals 1

    sget-object v0, Lcom/baidu/mapapi/Mj;->b:Lcom/baidu/mapapi/MKLocationManager;

    invoke-virtual {v0, p0}, Lcom/baidu/mapapi/MKLocationManager;->a(Landroid/hardware/SensorEventListener;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/mapapi/MyLocationOverlay;->j:Z

    iget-boolean v0, p0, Lcom/baidu/mapapi/MyLocationOverlay;->j:Z

    return v0
.end method

.method public enableMyLocation()Z
    .locals 6

    const/4 v5, 0x1

    sget-object v0, Lcom/baidu/mapapi/Mj;->b:Lcom/baidu/mapapi/MKLocationManager;

    invoke-virtual {v0, p0}, Lcom/baidu/mapapi/MKLocationManager;->requestLocationUpdates(Lcom/baidu/mapapi/LocationListener;)V

    sget-object v0, Lcom/baidu/mapapi/Mj;->b:Lcom/baidu/mapapi/MKLocationManager;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MKLocationManager;->getLocationInfo()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/MyLocationOverlay;->a:Landroid/location/Location;

    iget-object v0, p0, Lcom/baidu/mapapi/MyLocationOverlay;->a:Landroid/location/Location;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/baidu/mapapi/GeoPoint;

    iget-object v1, p0, Lcom/baidu/mapapi/MyLocationOverlay;->a:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lcom/baidu/mapapi/MyLocationOverlay;->a:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/mapapi/GeoPoint;-><init>(DD)V

    iput-object v0, p0, Lcom/baidu/mapapi/MyLocationOverlay;->b:Lcom/baidu/mapapi/GeoPoint;

    iget-object v0, p0, Lcom/baidu/mapapi/MyLocationOverlay;->b:Lcom/baidu/mapapi/GeoPoint;

    sget v1, Lcom/baidu/mapapi/Mj;->c:I

    invoke-virtual {p0, v0, v1}, Lcom/baidu/mapapi/MyLocationOverlay;->GetBaidu09Point(Lcom/baidu/mapapi/GeoPoint;I)Lcom/baidu/mapapi/GeoPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/MyLocationOverlay;->c:Lcom/baidu/mapapi/GeoPoint;

    :cond_0
    iput-boolean v5, p0, Lcom/baidu/mapapi/MyLocationOverlay;->i:Z

    iget-object v0, p0, Lcom/baidu/mapapi/MyLocationOverlay;->e:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MapView;->invalidate()V

    return v5
.end method

.method public getLastFix()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/MyLocationOverlay;->a:Landroid/location/Location;

    return-object v0
.end method

.method public getMyLocation()Lcom/baidu/mapapi/GeoPoint;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/MyLocationOverlay;->b:Lcom/baidu/mapapi/GeoPoint;

    return-object v0
.end method

.method public getOrientation()F
    .locals 1

    iget v0, p0, Lcom/baidu/mapapi/MyLocationOverlay;->k:F

    return v0
.end method

.method public isCompassEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/mapapi/MyLocationOverlay;->j:Z

    return v0
.end method

.method public isMyLocationEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/mapapi/MyLocationOverlay;->i:Z

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 6

    const/4 v5, 0x0

    iput-object p1, p0, Lcom/baidu/mapapi/MyLocationOverlay;->a:Landroid/location/Location;

    iget-object v0, p0, Lcom/baidu/mapapi/MyLocationOverlay;->a:Landroid/location/Location;

    if-nez v0, :cond_1

    iput-object v5, p0, Lcom/baidu/mapapi/MyLocationOverlay;->b:Lcom/baidu/mapapi/GeoPoint;

    iput-object v5, p0, Lcom/baidu/mapapi/MyLocationOverlay;->c:Lcom/baidu/mapapi/GeoPoint;

    iget-object v0, p0, Lcom/baidu/mapapi/MyLocationOverlay;->e:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MapView;->invalidate()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/baidu/mapapi/GeoPoint;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/mapapi/GeoPoint;-><init>(DD)V

    iput-object v0, p0, Lcom/baidu/mapapi/MyLocationOverlay;->b:Lcom/baidu/mapapi/GeoPoint;

    iget-object v0, p0, Lcom/baidu/mapapi/MyLocationOverlay;->b:Lcom/baidu/mapapi/GeoPoint;

    sget v1, Lcom/baidu/mapapi/Mj;->c:I

    invoke-virtual {p0, v0, v1}, Lcom/baidu/mapapi/MyLocationOverlay;->GetBaidu09Point(Lcom/baidu/mapapi/GeoPoint;I)Lcom/baidu/mapapi/GeoPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/MyLocationOverlay;->c:Lcom/baidu/mapapi/GeoPoint;

    iget-object v0, p0, Lcom/baidu/mapapi/MyLocationOverlay;->e:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MapView;->invalidate()V

    iget-object v0, p0, Lcom/baidu/mapapi/MyLocationOverlay;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/MyLocationOverlay;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v5, p0, Lcom/baidu/mapapi/MyLocationOverlay;->d:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mapapi/MyLocationOverlay;->i:Z

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mapapi/MyLocationOverlay;->i:Z

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/baidu/mapapi/MyLocationOverlay;->e:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x5a

    rem-int/lit16 v0, v0, 0x168

    :cond_0
    int-to-float v1, v0

    iget v2, p0, Lcom/baidu/mapapi/MyLocationOverlay;->k:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x4120

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    int-to-float v1, v0

    iput v1, p0, Lcom/baidu/mapapi/MyLocationOverlay;->k:F

    iget-object v1, p0, Lcom/baidu/mapapi/MyLocationOverlay;->e:Lcom/baidu/mapapi/MapView;

    iget-object v1, v1, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/baidu/mapapi/MyLocationOverlay;->e:Lcom/baidu/mapapi/MapView;

    iget-object v1, v1, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    iput v0, v1, Lcom/baidu/mapapi/a;->b:I

    iget-object v0, p0, Lcom/baidu/mapapi/MyLocationOverlay;->e:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MapView;->invalidate()V

    goto :goto_0
.end method

.method public onSnapToItem(IILandroid/graphics/Point;Lcom/baidu/mapapi/MapView;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onTap(Lcom/baidu/mapapi/GeoPoint;Lcom/baidu/mapapi/MapView;)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/baidu/mapapi/MyLocationOverlay;->getMyLocation()Lcom/baidu/mapapi/GeoPoint;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/baidu/mapapi/MyLocationOverlay;->e:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v2}, Lcom/baidu/mapapi/MapView;->getProjection()Lcom/baidu/mapapi/Projection;

    move-result-object v2

    invoke-interface {v2, v1, v8}, Lcom/baidu/mapapi/Projection;->toPixels(Lcom/baidu/mapapi/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mapapi/MyLocationOverlay;->f:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/baidu/mapapi/MyLocationOverlay;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/baidu/mapapi/MyLocationOverlay;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    new-instance v4, Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v2

    iget v6, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v3

    iget v7, v1, Landroid/graphics/Point;->x:I

    add-int/2addr v2, v7

    iget v1, v1, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v3

    invoke-direct {v4, v5, v6, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/baidu/mapapi/MyLocationOverlay;->e:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v1}, Lcom/baidu/mapapi/MapView;->getProjection()Lcom/baidu/mapapi/Projection;

    move-result-object v1

    invoke-interface {v1, p1, v8}, Lcom/baidu/mapapi/Projection;->toPixels(Lcom/baidu/mapapi/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v2, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/mapapi/MyLocationOverlay;->dispatchTap()Z

    move-result v0

    goto :goto_0
.end method

.method public runOnFirstFix(Ljava/lang/Runnable;)Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/MyLocationOverlay;->a:Landroid/location/Location;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iput-object p1, p0, Lcom/baidu/mapapi/MyLocationOverlay;->d:Ljava/lang/Runnable;

    const/4 v0, 0x0

    goto :goto_0
.end method
