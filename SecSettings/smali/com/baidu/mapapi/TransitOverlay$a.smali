.class Lcom/baidu/mapapi/TransitOverlay$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/TransitOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/baidu/mapapi/GeoPoint;

.field public c:I

.field final synthetic d:Lcom/baidu/mapapi/TransitOverlay;


# direct methods
.method private constructor <init>(Lcom/baidu/mapapi/TransitOverlay;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/TransitOverlay$a;->d:Lcom/baidu/mapapi/TransitOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/mapapi/TransitOverlay;Lcom/baidu/mapapi/TransitOverlay$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/TransitOverlay$a;-><init>(Lcom/baidu/mapapi/TransitOverlay;)V

    return-void
.end method
