.class public Lcom/android/settings_ex/myplace/SelectMapActivity;
.super Lcom/baidu/mapapi/MapActivity;
.source "SelectMapActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/myplace/SelectMapActivity$myMKSearchListener;,
        Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;,
        Lcom/android/settings_ex/myplace/SelectMapActivity$UpdateLocationTask;,
        Lcom/android/settings_ex/myplace/SelectMapActivity$SearchLocationTask;
    }
.end annotation


# static fields
.field protected static final BUNDLE_KEY_LATITUDE:Ljava/lang/String; = "latitude"

.field protected static final BUNDLE_KEY_LOCATION:Ljava/lang/String; = "location"

.field protected static final BUNDLE_KEY_LONGITUDE:Ljava/lang/String; = "longitude"

.field protected static final BUNDLE_KEY_SNIPPET:Ljava/lang/String; = "snippet"

.field private static final EVENT_LOCATION:Ljava/lang/String; = "location"

.field public static final MAP_READ_ONLY:I = 0x0

.field public static final MAP_WRITABLE:I = 0x1

.field public static final MENU_CANCEL:I = 0x0

.field public static final MENU_DONE:I = 0x1

.field private static final MY_LOCATION:Ljava/lang/String; = "My_Location"

.field private static final key:Ljava/lang/String; = "414B24E9854B63840C2D52B8A93F59BDB0273A18"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCaptureHeight:I

.field private mCaptureWidth:I

.field private mCurrentLocation:Landroid/widget/ImageButton;

.field private mEditText:Landroid/widget/EditText;

.field private mGeo:Landroid/location/Geocoder;

.field private mIsTabletConfig:Z

.field private mLatitude:I

.field private mLocation:Ljava/lang/String;

.field private mLocationDisabledDialog:Landroid/app/AlertDialog;

.field private mLongitude:I

.field private mMapMode:I

.field protected mMapView:Lcom/baidu/mapapi/MapView;

.field private mMyLocationOverlay:Lcom/baidu/mapapi/MyLocationOverlay;

.field private mResearch:Z

.field private mSearch:Lcom/baidu/mapapi/MKSearch;

.field private mSearchButton:Landroid/widget/ImageButton;

.field mSearchRunnable:Ljava/lang/Runnable;

.field private mSnippet:Ljava/lang/String;

.field private mapManager:Lcom/baidu/mapapi/BMapManager;

.field private searchFlag:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Lcom/baidu/mapapi/MapActivity;-><init>()V

    .line 92
    const-string v0, "SelectMapActivity"

    iput-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->TAG:Ljava/lang/String;

    .line 100
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mMapMode:I

    .line 114
    iput v1, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mLatitude:I

    .line 115
    iput v1, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mLongitude:I

    .line 116
    iput-object v2, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mSnippet:Ljava/lang/String;

    .line 118
    iput-boolean v1, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mResearch:Z

    .line 134
    iput-object v2, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mapManager:Lcom/baidu/mapapi/BMapManager;

    .line 136
    iput-object v2, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mSearch:Lcom/baidu/mapapi/MKSearch;

    .line 137
    iput-boolean v1, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->searchFlag:Z

    .line 395
    new-instance v0, Lcom/android/settings_ex/myplace/SelectMapActivity$5;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/myplace/SelectMapActivity$5;-><init>(Lcom/android/settings_ex/myplace/SelectMapActivity;)V

    iput-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mSearchRunnable:Ljava/lang/Runnable;

    .line 91
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/myplace/SelectMapActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/settings_ex/myplace/SelectMapActivity;->searchLocation()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/myplace/SelectMapActivity;)Landroid/location/Geocoder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mGeo:Landroid/location/Geocoder;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/myplace/SelectMapActivity;D)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/myplace/SelectMapActivity;->convToInt(D)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/myplace/SelectMapActivity;IILjava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/myplace/SelectMapActivity;->addMarker(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/myplace/SelectMapActivity;IIII)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings_ex/myplace/SelectMapActivity;->moveToMarker(IIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/myplace/SelectMapActivity;Lcom/baidu/mapapi/GeoPoint;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/settings_ex/myplace/SelectMapActivity;->updateLocation(Lcom/baidu/mapapi/GeoPoint;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings_ex/myplace/SelectMapActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mIsTabletConfig:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/settings_ex/myplace/SelectMapActivity;Lcom/baidu/mapapi/GeoPoint;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/settings_ex/myplace/SelectMapActivity;->moveToMarker(Lcom/baidu/mapapi/GeoPoint;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/settings_ex/myplace/SelectMapActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mMapMode:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/settings_ex/myplace/SelectMapActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/myplace/SelectMapActivity;)Lcom/baidu/mapapi/MyLocationOverlay;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/baidu/mapapi/MyLocationOverlay;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings_ex/myplace/SelectMapActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->searchFlag:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/settings_ex/myplace/SelectMapActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->searchFlag:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings_ex/myplace/SelectMapActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/settings_ex/myplace/SelectMapActivity;->showLocationDisabledDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/myplace/SelectMapActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/myplace/SelectMapActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings_ex/myplace/SelectMapActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/settings_ex/myplace/SelectMapActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/settings_ex/myplace/SelectMapActivity;->setMyLocationOverlay()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/settings_ex/myplace/SelectMapActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mResearch:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings_ex/myplace/SelectMapActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/settings_ex/myplace/SelectMapActivity;->setSearchButtonState(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings_ex/myplace/SelectMapActivity;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/settings_ex/myplace/SelectMapActivity;->getFromLocationName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private addMarker(IILjava/lang/String;)Z
    .locals 4
    .parameter "lat"
    .parameter "lon"
    .parameter "snippet"

    .prologue
    .line 467
    iget-object v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    if-eqz v3, :cond_0

    .line 468
    iget-object v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v3}, Lcom/baidu/mapapi/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    .line 469
    .local v1, mapOverlays:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/mapapi/Overlay;>;"
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;

    .line 470
    .local v0, itemizedOverlay:Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;
    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, v3, p3}, Lcom/android/settings_ex/myplace/SelectMapActivity;->getOverlay(IILandroid/graphics/drawable/Drawable;Ljava/lang/String;)Lcom/baidu/mapapi/OverlayItem;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;->addOverlay(Lcom/baidu/mapapi/OverlayItem;)V

    .line 473
    .end local v0           #itemizedOverlay:Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;
    .end local v1           #mapOverlays:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/mapapi/Overlay;>;"
    :cond_0
    iput p1, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mLatitude:I

    .line 474
    iput p2, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mLongitude:I

    .line 475
    iput-object p3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mSnippet:Ljava/lang/String;

    .line 478
    new-instance v2, Lcom/baidu/mapapi/GeoPoint;

    invoke-direct {v2, p1, p2}, Lcom/baidu/mapapi/GeoPoint;-><init>(II)V

    .line 480
    .local v2, point:Lcom/baidu/mapapi/GeoPoint;
    iget-object v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mSearch:Lcom/baidu/mapapi/MKSearch;

    invoke-virtual {v3, v2}, Lcom/baidu/mapapi/MKSearch;->reverseGeocode(Lcom/baidu/mapapi/GeoPoint;)I

    .line 481
    const/4 v3, 0x1

    return v3
.end method

.method private convToDouble(I)D
    .locals 4
    .parameter "i"

    .prologue
    .line 454
    int-to-double v0, p1

    const-wide v2, 0x412e848000000000L

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private convToInt(D)I
    .locals 2
    .parameter "d"

    .prologue
    .line 450
    const-wide v0, 0x412e848000000000L

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    return v0
.end method

.method private getFromLocationName(Ljava/lang/String;)Z
    .locals 4
    .parameter "location"

    .prologue
    const/4 v0, 0x1

    .line 387
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 388
    :cond_0
    const/4 v0, 0x0

    .line 392
    :goto_0
    return v0

    .line 390
    :cond_1
    iput-boolean v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->searchFlag:Z

    .line 391
    iget-object v1, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mSearch:Lcom/baidu/mapapi/MKSearch;

    iget-object v2, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/baidu/mapapi/MKSearch;->geocode(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getOverlay(IILandroid/graphics/drawable/Drawable;Ljava/lang/String;)Lcom/baidu/mapapi/OverlayItem;
    .locals 3
    .parameter "latitude"
    .parameter "longitude"
    .parameter "drawable"
    .parameter "snippet"

    .prologue
    .line 485
    new-instance v1, Lcom/baidu/mapapi/GeoPoint;

    invoke-direct {v1, p1, p2}, Lcom/baidu/mapapi/GeoPoint;-><init>(II)V

    .line 486
    .local v1, point:Lcom/baidu/mapapi/GeoPoint;
    new-instance v0, Lcom/baidu/mapapi/OverlayItem;

    const-string v2, ""

    invoke-direct {v0, v1, v2, p4}, Lcom/baidu/mapapi/OverlayItem;-><init>(Lcom/baidu/mapapi/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    .local v0, overlay:Lcom/baidu/mapapi/OverlayItem;
    invoke-virtual {v0, p3}, Lcom/baidu/mapapi/OverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    .line 488
    return-object v0
.end method

.method private initMarker()Z
    .locals 5

    .prologue
    .line 457
    iget-object v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v3}, Lcom/baidu/mapapi/MapView;->getOverlays()Ljava/util/List;

    move-result-object v2

    .line 459
    .local v2, mapOverlays:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/mapapi/Overlay;>;"
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02002d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 460
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    new-instance v1, Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;

    invoke-direct {v1, p0, p0, v0}, Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;-><init>(Lcom/android/settings_ex/myplace/SelectMapActivity;Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 461
    .local v1, itemizedOverlay:Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    const/4 v3, 0x1

    return v3
.end method

.method private moveToMarker(II)Z
    .locals 2
    .parameter "lat"
    .parameter "lon"

    .prologue
    .line 502
    new-instance v0, Lcom/baidu/mapapi/GeoPoint;

    invoke-direct {v0, p1, p2}, Lcom/baidu/mapapi/GeoPoint;-><init>(II)V

    .line 503
    .local v0, point:Lcom/baidu/mapapi/GeoPoint;
    iget-object v1, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v1}, Lcom/baidu/mapapi/MapView;->getController()Lcom/baidu/mapapi/MapController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/MapController;->setCenter(Lcom/baidu/mapapi/GeoPoint;)V

    .line 504
    iget-object v1, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v1}, Lcom/baidu/mapapi/MapView;->getController()Lcom/baidu/mapapi/MapController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/MapController;->animateTo(Lcom/baidu/mapapi/GeoPoint;)V

    .line 506
    iget-object v1, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mSearch:Lcom/baidu/mapapi/MKSearch;

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/MKSearch;->reverseGeocode(Lcom/baidu/mapapi/GeoPoint;)I

    .line 507
    iput p1, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mLatitude:I

    .line 508
    iput p2, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mLongitude:I

    .line 509
    const/4 v1, 0x1

    return v1
.end method

.method private moveToMarker(IIII)Z
    .locals 5
    .parameter "minLat"
    .parameter "maxLat"
    .parameter "minLon"
    .parameter "maxLon"

    .prologue
    .line 513
    sub-int v0, p2, p1

    .line 514
    .local v0, lat_span:I
    sub-int v1, p4, p3

    .line 515
    .local v1, lon_span:I
    new-instance v2, Lcom/baidu/mapapi/GeoPoint;

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v3, p1

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v4, p3

    invoke-direct {v2, v3, v4}, Lcom/baidu/mapapi/GeoPoint;-><init>(II)V

    .line 516
    .local v2, point:Lcom/baidu/mapapi/GeoPoint;
    iget-object v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v3}, Lcom/baidu/mapapi/MapView;->getController()Lcom/baidu/mapapi/MapController;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v4}, Lcom/baidu/mapapi/MapView;->getMaxZoomLevel()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/baidu/mapapi/MapController;->setZoom(I)I

    .line 517
    iget-object v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v3}, Lcom/baidu/mapapi/MapView;->getController()Lcom/baidu/mapapi/MapController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/baidu/mapapi/MapController;->setCenter(Lcom/baidu/mapapi/GeoPoint;)V

    .line 518
    iget-object v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v3}, Lcom/baidu/mapapi/MapView;->getController()Lcom/baidu/mapapi/MapController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/baidu/mapapi/MapController;->animateTo(Lcom/baidu/mapapi/GeoPoint;)V

    .line 520
    iget-object v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mSearch:Lcom/baidu/mapapi/MKSearch;

    invoke-virtual {v3, v2}, Lcom/baidu/mapapi/MKSearch;->reverseGeocode(Lcom/baidu/mapapi/GeoPoint;)I

    .line 521
    invoke-virtual {v2}, Lcom/baidu/mapapi/GeoPoint;->getLatitudeE6()I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mLatitude:I

    .line 522
    invoke-virtual {v2}, Lcom/baidu/mapapi/GeoPoint;->getLongitudeE6()I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mLongitude:I

    .line 523
    const/4 v3, 0x1

    return v3
.end method

.method private moveToMarker(Lcom/baidu/mapapi/GeoPoint;)Z
    .locals 1
    .parameter "point"

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MapView;->getController()Lcom/baidu/mapapi/MapController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/MapController;->setCenter(Lcom/baidu/mapapi/GeoPoint;)V

    .line 493
    iget-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MapView;->getController()Lcom/baidu/mapapi/MapController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/MapController;->animateTo(Lcom/baidu/mapapi/GeoPoint;)V

    .line 495
    iget-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mSearch:Lcom/baidu/mapapi/MKSearch;

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/MKSearch;->reverseGeocode(Lcom/baidu/mapapi/GeoPoint;)I

    .line 496
    invoke-virtual {p1}, Lcom/baidu/mapapi/GeoPoint;->getLatitudeE6()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mLatitude:I

    .line 497
    invoke-virtual {p1}, Lcom/baidu/mapapi/GeoPoint;->getLongitudeE6()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mLongitude:I

    .line 498
    const/4 v0, 0x1

    return v0
.end method

.method private searchLocation()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 363
    iget-object v2, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 365
    .local v1, location:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mResearch:Z

    if-eqz v2, :cond_0

    .line 373
    :cond_2
    iput-object v1, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    .line 374
    iput-boolean v5, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mResearch:Z

    .line 378
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->searchFlag:Z

    .line 379
    iget-object v2, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mSearch:Lcom/baidu/mapapi/MKSearch;

    iget-object v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/baidu/mapapi/MKSearch;->geocode(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 382
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private setMyLocationOverlay()V
    .locals 4

    .prologue
    .line 761
    iget-object v2, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/baidu/mapapi/MyLocationOverlay;

    if-nez v2, :cond_0

    .line 762
    new-instance v2, Lcom/baidu/mapapi/MyLocationOverlay;

    iget-object v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    invoke-direct {v2, p0, v3}, Lcom/baidu/mapapi/MyLocationOverlay;-><init>(Landroid/content/Context;Lcom/baidu/mapapi/MapView;)V

    iput-object v2, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/baidu/mapapi/MyLocationOverlay;

    .line 764
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/baidu/mapapi/MyLocationOverlay;

    invoke-virtual {v2}, Lcom/baidu/mapapi/MyLocationOverlay;->enableMyLocation()Z

    .line 767
    iget-object v2, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v2}, Lcom/baidu/mapapi/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    .line 768
    .local v1, mapOverlays:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/mapapi/Overlay;>;"
    if-eqz v1, :cond_1

    .line 769
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;

    .line 770
    .local v0, itemizedOverlay:Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;
    if-eqz v0, :cond_1

    .line 771
    invoke-virtual {v0}, Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;->clearOverlay()V

    .line 775
    .end local v0           #itemizedOverlay:Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/baidu/mapapi/MyLocationOverlay;

    new-instance v3, Lcom/android/settings_ex/myplace/SelectMapActivity$6;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/myplace/SelectMapActivity$6;-><init>(Lcom/android/settings_ex/myplace/SelectMapActivity;)V

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/MyLocationOverlay;->runOnFirstFix(Ljava/lang/Runnable;)Z

    .line 789
    return-void
.end method

.method private setSearchButtonState(I)V
    .locals 4
    .parameter "length"

    .prologue
    const/16 v3, 0xff

    const/16 v2, 0x4c

    .line 792
    if-gtz p1, :cond_0

    .line 793
    iget-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mSearchButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 795
    iget-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mSearchButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 796
    iget-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mSearchButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 803
    :goto_0
    return-void

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mSearchButton:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 800
    iget-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mSearchButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 801
    iget-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mSearchButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method private showLocationDisabledDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 856
    iget-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mLocationDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mLocationDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 858
    iput-object v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mLocationDisabledDialog:Landroid/app/AlertDialog;

    .line 861
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0911db

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0911dc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09079a

    new-instance v2, Lcom/android/settings_ex/myplace/SelectMapActivity$7;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/myplace/SelectMapActivity$7;-><init>(Lcom/android/settings_ex/myplace/SelectMapActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090143

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mLocationDisabledDialog:Landroid/app/AlertDialog;

    .line 873
    return-void
.end method

.method private updateLocation(Lcom/baidu/mapapi/GeoPoint;)Ljava/lang/String;
    .locals 13
    .parameter "point"

    .prologue
    .line 593
    const-string v12, ""

    .line 594
    .local v12, location:Ljava/lang/String;
    const/4 v9, 0x0

    .line 596
    .local v9, data:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :try_start_0
    new-instance v0, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 597
    .local v0, geoCoder:Landroid/location/Geocoder;
    invoke-virtual {p1}, Lcom/baidu/mapapi/GeoPoint;->getLatitudeE6()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/myplace/SelectMapActivity;->convToDouble(I)D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/baidu/mapapi/GeoPoint;->getLongitudeE6()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings_ex/myplace/SelectMapActivity;->convToDouble(I)D

    move-result-wide v3

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v9

    .line 599
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 600
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Address;

    .line 602
    .local v6, address:Landroid/location/Address;
    invoke-virtual {v6}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v8

    .line 603
    .local v8, addressLines:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-gt v11, v8, :cond_2

    .line 604
    invoke-virtual {v6, v11}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v7

    .line 605
    .local v7, addressLine:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 606
    if-nez v11, :cond_1

    .line 607
    move-object v12, v7

    .line 603
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 609
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    goto :goto_1

    .line 615
    .end local v0           #geoCoder:Landroid/location/Geocoder;
    .end local v6           #address:Landroid/location/Address;
    .end local v7           #addressLine:Ljava/lang/String;
    .end local v8           #addressLines:I
    .end local v11           #i:I
    :catch_0
    move-exception v10

    .line 616
    .local v10, e:Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    .line 619
    .end local v10           #e:Ljava/io/IOException;
    :cond_2
    return-object v12
.end method


# virtual methods
.method protected captureMap()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 527
    iget-object v4, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v4, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 528
    iget-object v4, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v4}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 530
    .local v0, saved:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mCaptureWidth:I

    sub-int/2addr v4, v5

    div-int/lit8 v1, v4, 0x2

    .line 531
    .local v1, x:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mCaptureHeight:I

    sub-int/2addr v4, v5

    div-int/lit8 v2, v4, 0x2

    .line 532
    .local v2, y:I
    if-gez v2, :cond_0

    .line 533
    const/4 v2, 0x0

    .line 539
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mCaptureHeight:I

    add-int/2addr v5, v2

    if-ge v4, v5, :cond_2

    .line 540
    :cond_1
    const/4 v3, 0x0

    .line 542
    :goto_0
    return v3

    .line 541
    :cond_2
    iget v4, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mCaptureWidth:I

    iget v5, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mCaptureHeight:I

    invoke-static {v0, v1, v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method protected doFinish()V
    .locals 5

    .prologue
    .line 546
    iget-object v2, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    .line 547
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 550
    .local v1, result:Landroid/content/Intent;
    const-string v2, "latitude"

    iget v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mLatitude:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 551
    const-string v2, "longitude"

    iget v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mLongitude:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 552
    const-string v2, "location"

    iget-object v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    invoke-virtual {p0}, Lcom/android/settings_ex/myplace/SelectMapActivity;->captureMap()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 561
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 562
    .local v0, os:Ljava/io/ByteArrayOutputStream;
    iget-object v2, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 563
    const-string v2, "map"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 566
    .end local v0           #os:Ljava/io/ByteArrayOutputStream;
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 567
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 568
    return-void
.end method

.method protected isRouteDisplayed()Z
    .locals 1

    .prologue
    .line 572
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 826
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 827
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 828
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "bundle"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 141
    invoke-super {p0, p1}, Lcom/baidu/mapapi/MapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 143
    :try_start_0
    const-string v3, "android.os.AsyncTask"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v5, 0x7f0911da

    invoke-virtual {v3, v5}, Landroid/app/ActionBar;->setTitle(I)V

    .line 148
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const/16 v5, 0xe

    invoke-virtual {v3, v5}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 150
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 151
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "location"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    .line 152
    const-string v3, "mode"

    invoke-virtual {v1, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mMapMode:I

    .line 153
    const-string v3, "map_latitude"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mLatitude:I

    .line 154
    const-string v3, "map_longtitude"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mLongitude:I

    .line 155
    const v3, 0x7f040121

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 157
    invoke-static {v7}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mIsTabletConfig:Z

    .line 159
    new-instance v3, Landroid/location/Geocoder;

    invoke-direct {v3, p0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mGeo:Landroid/location/Geocoder;

    .line 161
    iget-object v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mapManager:Lcom/baidu/mapapi/BMapManager;

    if-nez v3, :cond_0

    .line 162
    new-instance v3, Lcom/baidu/mapapi/BMapManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/baidu/mapapi/BMapManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mapManager:Lcom/baidu/mapapi/BMapManager;

    .line 163
    iget-object v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mapManager:Lcom/baidu/mapapi/BMapManager;

    const-string v5, "414B24E9854B63840C2D52B8A93F59BDB0273A18"

    invoke-virtual {v3, v5, v7}, Lcom/baidu/mapapi/BMapManager;->init(Ljava/lang/String;Lcom/baidu/mapapi/MKGeneralListener;)Z

    .line 166
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mapManager:Lcom/baidu/mapapi/BMapManager;

    invoke-super {p0, v3}, Lcom/baidu/mapapi/MapActivity;->initMapActivity(Lcom/baidu/mapapi/BMapManager;)Z

    .line 168
    new-instance v3, Lcom/baidu/mapapi/MKSearch;

    invoke-direct {v3}, Lcom/baidu/mapapi/MKSearch;-><init>()V

    iput-object v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mSearch:Lcom/baidu/mapapi/MKSearch;

    .line 169
    iget-object v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mSearch:Lcom/baidu/mapapi/MKSearch;

    iget-object v5, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mapManager:Lcom/baidu/mapapi/BMapManager;

    new-instance v6, Lcom/android/settings_ex/myplace/SelectMapActivity$myMKSearchListener;

    invoke-direct {v6, p0, v7}, Lcom/android/settings_ex/myplace/SelectMapActivity$myMKSearchListener;-><init>(Lcom/android/settings_ex/myplace/SelectMapActivity;Lcom/android/settings_ex/myplace/SelectMapActivity$1;)V

    invoke-virtual {v3, v5, v6}, Lcom/baidu/mapapi/MKSearch;->init(Lcom/baidu/mapapi/BMapManager;Lcom/baidu/mapapi/MKSearchListener;)Z

    .line 171
    const v3, 0x7f0b0360

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/baidu/mapapi/MapView;

    iput-object v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    .line 172
    iget-object v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v3, v8}, Lcom/baidu/mapapi/MapView;->setBuiltInZoomControls(Z)V

    .line 174
    const v3, 0x7f0b0321

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    .line 175
    iget-object v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    const v5, 0x10000003

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 176
    iget-object v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    new-instance v5, Lcom/android/settings_ex/myplace/SelectMapActivity$1;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/myplace/SelectMapActivity$1;-><init>(Lcom/android/settings_ex/myplace/SelectMapActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 184
    iget-object v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    const-string v5, "My_Location"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 185
    iget-object v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 187
    .local v2, length:I
    iget-object v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    if-lez v2, :cond_4

    .end local v2           #length:I
    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 190
    :cond_1
    const v3, 0x7f0b035e

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mSearchButton:Landroid/widget/ImageButton;

    .line 193
    iget-object v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mSearchButton:Landroid/widget/ImageButton;

    new-instance v4, Lcom/android/settings_ex/myplace/SelectMapActivity$2;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/myplace/SelectMapActivity$2;-><init>(Lcom/android/settings_ex/myplace/SelectMapActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    const v3, 0x7f0b035f

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mCurrentLocation:Landroid/widget/ImageButton;

    .line 205
    iget-object v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mCurrentLocation:Landroid/widget/ImageButton;

    new-instance v4, Lcom/android/settings_ex/myplace/SelectMapActivity$3;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/myplace/SelectMapActivity$3;-><init>(Lcom/android/settings_ex/myplace/SelectMapActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings_ex/myplace/SelectMapActivity;->setSearchButtonState(I)V

    .line 232
    iget-object v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    new-instance v4, Lcom/android/settings_ex/myplace/SelectMapActivity$4;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/myplace/SelectMapActivity$4;-><init>(Lcom/android/settings_ex/myplace/SelectMapActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 247
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f00e5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mCaptureHeight:I

    .line 248
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f00e4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mCaptureWidth:I

    .line 250
    iget-object v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 251
    const-string v3, ""

    iput-object v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    .line 254
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    const-string v4, "My_Location"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 255
    invoke-direct {p0}, Lcom/android/settings_ex/myplace/SelectMapActivity;->setMyLocationOverlay()V

    .line 257
    :cond_3
    return-void

    .line 144
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 145
    .local v0, e:Ljava/lang/ClassNotFoundException;
    iget-object v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->TAG:Ljava/lang/String;

    const-string v5, "ClassNotFoundException"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #length:I
    :cond_4
    move v2, v4

    .line 187
    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 807
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 808
    const v0, 0x7f090143

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 810
    const v0, 0x7f090c11

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 813
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200dc

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 814
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200e0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 816
    iget v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mMapMode:I

    if-nez v0, :cond_0

    .line 817
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 818
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 821
    :cond_0
    return v3
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 302
    iget-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 306
    iput-object v2, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 310
    iget-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 311
    iput-object v2, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mSearchButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 315
    iget-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mSearchButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    iput-object v2, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mSearchButton:Landroid/widget/ImageButton;

    .line 318
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mCurrentLocation:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    .line 319
    iget-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mCurrentLocation:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    iput-object v2, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mCurrentLocation:Landroid/widget/ImageButton;

    .line 322
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mapManager:Lcom/baidu/mapapi/BMapManager;

    if-eqz v0, :cond_4

    .line 323
    iget-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mapManager:Lcom/baidu/mapapi/BMapManager;

    invoke-virtual {v0}, Lcom/baidu/mapapi/BMapManager;->destroy()V

    .line 326
    :cond_4
    invoke-super {p0}, Lcom/baidu/mapapi/MapActivity;->onDestroy()V

    .line 328
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 352
    const/16 v1, 0x52

    if-ne p1, v1, :cond_0

    .line 358
    :goto_0
    return v0

    .line 354
    :cond_0
    const/16 v1, 0x54

    if-ne p1, v1, :cond_1

    .line 355
    invoke-direct {p0}, Lcom/android/settings_ex/myplace/SelectMapActivity;->searchLocation()V

    goto :goto_0

    .line 358
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 832
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 851
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 834
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 837
    :sswitch_1
    iget-object v1, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/baidu/mapapi/MyLocationOverlay;

    if-eqz v1, :cond_0

    .line 838
    iget-object v1, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/baidu/mapapi/MyLocationOverlay;

    invoke-virtual {v1}, Lcom/baidu/mapapi/MyLocationOverlay;->disableMyLocation()V

    .line 840
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/myplace/SelectMapActivity;->captureMap()Z

    .line 841
    invoke-virtual {p0}, Lcom/android/settings_ex/myplace/SelectMapActivity;->doFinish()V

    goto :goto_0

    .line 844
    :sswitch_2
    iget-object v1, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/baidu/mapapi/MyLocationOverlay;

    if-eqz v1, :cond_1

    .line 845
    const-string v1, ""

    iput-object v1, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    .line 846
    iget-object v1, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/baidu/mapapi/MyLocationOverlay;

    invoke-virtual {v1}, Lcom/baidu/mapapi/MyLocationOverlay;->disableMyLocation()V

    .line 848
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 832
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 290
    invoke-super {p0}, Lcom/baidu/mapapi/MapActivity;->onPause()V

    .line 292
    iget-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/baidu/mapapi/MyLocationOverlay;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/baidu/mapapi/MyLocationOverlay;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MyLocationOverlay;->disableMyLocation()V

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mapManager:Lcom/baidu/mapapi/BMapManager;

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mapManager:Lcom/baidu/mapapi/BMapManager;

    invoke-virtual {v0}, Lcom/baidu/mapapi/BMapManager;->stop()Z

    .line 298
    :cond_1
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 342
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 344
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    .line 345
    const-string v0, "latitude"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mLatitude:I

    .line 346
    const-string v0, "longitude"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mLongitude:I

    .line 347
    const-string v0, "snippet"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mSnippet:Ljava/lang/String;

    .line 348
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 261
    invoke-super {p0}, Lcom/baidu/mapapi/MapActivity;->onResume()V

    .line 263
    iget-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mapManager:Lcom/baidu/mapapi/BMapManager;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mapManager:Lcom/baidu/mapapi/BMapManager;

    invoke-virtual {v0}, Lcom/baidu/mapapi/BMapManager;->start()Z

    .line 266
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/myplace/SelectMapActivity;->initMarker()Z

    .line 268
    iget v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mLatitude:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mLongitude:I

    if-eqz v0, :cond_4

    .line 269
    :cond_1
    iget v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mLatitude:I

    iget v1, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mLongitude:I

    const-string v2, "here"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings_ex/myplace/SelectMapActivity;->addMarker(IILjava/lang/String;)Z

    .line 270
    iget v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mLatitude:I

    iget v1, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mLongitude:I

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/myplace/SelectMapActivity;->moveToMarker(II)Z

    .line 282
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mSnippet:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 283
    iget v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mLatitude:I

    iget v1, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mLongitude:I

    iget-object v2, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mSnippet:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings_ex/myplace/SelectMapActivity;->addMarker(IILjava/lang/String;)Z

    .line 284
    iget v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mLatitude:I

    iget v1, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mLongitude:I

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/myplace/SelectMapActivity;->moveToMarker(II)Z

    .line 286
    :cond_3
    return-void

    .line 272
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/myplace/SelectMapActivity;->getFromLocationName(Ljava/lang/String;)Z

    .line 274
    iget-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    const-string v1, "My_Location"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 275
    iget-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/baidu/mapapi/MyLocationOverlay;

    if-nez v0, :cond_5

    .line 276
    new-instance v0, Lcom/baidu/mapapi/MyLocationOverlay;

    iget-object v1, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    invoke-direct {v0, p0, v1}, Lcom/baidu/mapapi/MyLocationOverlay;-><init>(Landroid/content/Context;Lcom/baidu/mapapi/MapView;)V

    iput-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/baidu/mapapi/MyLocationOverlay;

    .line 278
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/baidu/mapapi/MyLocationOverlay;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MyLocationOverlay;->enableMyLocation()Z

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 332
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 334
    const-string v0, "location"

    iget-object v1, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string v0, "latitude"

    iget v1, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mLatitude:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 336
    const-string v0, "longitude"

    iget v1, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mLongitude:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 337
    const-string v0, "snippet"

    iget-object v1, p0, Lcom/android/settings_ex/myplace/SelectMapActivity;->mSnippet:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    return-void
.end method
