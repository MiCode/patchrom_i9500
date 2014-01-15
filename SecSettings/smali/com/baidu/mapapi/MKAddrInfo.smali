.class public Lcom/baidu/mapapi/MKAddrInfo;
.super Ljava/lang/Object;


# static fields
.field public static final MK_GEOCODE:I = 0x0

.field public static final MK_REVERSEGEOCODE:I = 0x1


# instance fields
.field public addressComponents:Lcom/baidu/mapapi/MKGeocoderAddressComponent;

.field public geoPt:Lcom/baidu/mapapi/GeoPoint;

.field public poiList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapapi/MKPoiInfo;",
            ">;"
        }
    .end annotation
.end field

.field public strAddr:Ljava/lang/String;

.field public strBusiness:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
