.class Lcom/baidu/mapapi/RouteOverlay$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/RouteOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/baidu/mapapi/GeoPoint;

.field public c:I

.field public d:I

.field final synthetic e:Lcom/baidu/mapapi/RouteOverlay;


# direct methods
.method private constructor <init>(Lcom/baidu/mapapi/RouteOverlay;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/RouteOverlay$b;->e:Lcom/baidu/mapapi/RouteOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/mapapi/RouteOverlay;Lcom/baidu/mapapi/RouteOverlay$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/RouteOverlay$b;-><init>(Lcom/baidu/mapapi/RouteOverlay;)V

    return-void
.end method
