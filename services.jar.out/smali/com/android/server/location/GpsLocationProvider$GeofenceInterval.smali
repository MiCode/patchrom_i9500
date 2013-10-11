.class Lcom/android/server/location/GpsLocationProvider$GeofenceInterval;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GeofenceInterval"
.end annotation


# instance fields
.field final mMaxTime:I

.field final mMinTime:I

.field final mSpeed:I

.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/location/GpsLocationProvider;III)V
    .locals 0
    .parameter
    .parameter "minTime"
    .parameter "maxTime"
    .parameter "speed"

    .prologue
    .line 2416
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$GeofenceInterval;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2417
    iput p2, p0, Lcom/android/server/location/GpsLocationProvider$GeofenceInterval;->mMinTime:I

    .line 2418
    iput p3, p0, Lcom/android/server/location/GpsLocationProvider$GeofenceInterval;->mMaxTime:I

    .line 2419
    iput p4, p0, Lcom/android/server/location/GpsLocationProvider$GeofenceInterval;->mSpeed:I

    .line 2420
    return-void
.end method
