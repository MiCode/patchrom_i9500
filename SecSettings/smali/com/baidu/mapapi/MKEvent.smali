.class public Lcom/baidu/mapapi/MKEvent;
.super Ljava/lang/Object;


# static fields
.field public static final ERROR_LOCATION_FAILED:I = 0xc8

.field public static final ERROR_NETWORK_CONNECT:I = 0x2

.field public static final ERROR_NETWORK_DATA:I = 0x3

.field public static final ERROR_PERMISSION_DENIED:I = 0x12c

.field public static final ERROR_RESULT_NOT_FOUND:I = 0x64

.field public static final ERROR_ROUTE_ADDR:I = 0x4

.field public static final MKEVENT_BUS_DETAIL:I = 0xf

.field public static final MKEVENT_MAP_MOVE_FINISH:I = 0xe

.field public static final MKEVENT_POIRGCSHAREURL:I = 0x11

.field public static final MKEVENT_POI_DETAIL:I = 0x12

.field public static final MKEVENT_SUGGESTION:I = 0x10


# instance fields
.field a:I

.field b:I

.field c:I


# direct methods
.method constructor <init>(III)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/baidu/mapapi/MKEvent;->a:I

    iput v0, p0, Lcom/baidu/mapapi/MKEvent;->b:I

    iput v0, p0, Lcom/baidu/mapapi/MKEvent;->c:I

    iput p1, p0, Lcom/baidu/mapapi/MKEvent;->a:I

    iput p2, p0, Lcom/baidu/mapapi/MKEvent;->b:I

    iput p3, p0, Lcom/baidu/mapapi/MKEvent;->c:I

    return-void
.end method
