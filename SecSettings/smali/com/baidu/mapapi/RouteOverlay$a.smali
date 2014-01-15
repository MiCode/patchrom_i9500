.class Lcom/baidu/mapapi/RouteOverlay$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/RouteOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/baidu/mapapi/GeoPoint;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/baidu/mapapi/RouteOverlay;


# direct methods
.method public constructor <init>(Lcom/baidu/mapapi/RouteOverlay;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/baidu/mapapi/RouteOverlay$a;->c:Lcom/baidu/mapapi/RouteOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/baidu/mapapi/GeoPoint;

    invoke-direct {v0, v1, v1}, Lcom/baidu/mapapi/GeoPoint;-><init>(II)V

    iput-object v0, p0, Lcom/baidu/mapapi/RouteOverlay$a;->a:Lcom/baidu/mapapi/GeoPoint;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/RouteOverlay$a;->b:Ljava/util/ArrayList;

    return-void
.end method
