.class Lcom/android/server/location/GpsLocationProvider$GeofenceArea;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GeofenceArea"
.end annotation


# instance fields
.field final mAreaid:I

.field final mLatitude:D

.field final mLongitude:D

.field final mRadius:D

.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/location/GpsLocationProvider;IDDD)V
    .locals 0
    .parameter
    .parameter "areaid"
    .parameter "latitude"
    .parameter "longitude"
    .parameter "radius"

    .prologue
    .line 2405
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$GeofenceArea;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2406
    iput p2, p0, Lcom/android/server/location/GpsLocationProvider$GeofenceArea;->mAreaid:I

    .line 2407
    iput-wide p3, p0, Lcom/android/server/location/GpsLocationProvider$GeofenceArea;->mLatitude:D

    .line 2408
    iput-wide p5, p0, Lcom/android/server/location/GpsLocationProvider$GeofenceArea;->mLongitude:D

    .line 2409
    iput-wide p7, p0, Lcom/android/server/location/GpsLocationProvider$GeofenceArea;->mRadius:D

    .line 2410
    return-void
.end method
