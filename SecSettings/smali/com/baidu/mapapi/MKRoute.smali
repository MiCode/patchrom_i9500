.class public Lcom/baidu/mapapi/MKRoute;
.super Ljava/lang/Object;


# static fields
.field public static final ROUTE_TYPE_BUS_LINE:I = 0x3

.field public static final ROUTE_TYPE_DRIVING:I = 0x1

.field public static final ROUTE_TYPE_UNKNOW:I = 0x0

.field public static final ROUTE_TYPE_WALKING:I = 0x2


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapapi/GeoPoint;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:I

.field private e:Lcom/baidu/mapapi/GeoPoint;

.field private f:Lcom/baidu/mapapi/GeoPoint;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapapi/GeoPoint;",
            ">;>;"
        }
    .end annotation
.end field

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapapi/MKStep;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/MKRoute;->i:Ljava/lang/String;

    return-object v0
.end method

.method a(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/mapapi/MKRoute;->c:I

    return-void
.end method

.method a(Lcom/baidu/mapapi/GeoPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/MKRoute;->e:Lcom/baidu/mapapi/GeoPoint;

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/MKRoute;->i:Ljava/lang/String;

    return-void
.end method

.method a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapapi/MKStep;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/baidu/mapapi/MKRoute;->h:Ljava/util/ArrayList;

    return-void
.end method

.method b(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/mapapi/MKRoute;->d:I

    return-void
.end method

.method b(Lcom/baidu/mapapi/GeoPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/MKRoute;->f:Lcom/baidu/mapapi/GeoPoint;

    return-void
.end method

.method b(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapapi/GeoPoint;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/baidu/mapapi/MKRoute;->g:Ljava/util/ArrayList;

    return-void
.end method

.method public getArrayPoints()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapapi/GeoPoint;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/mapapi/MKRoute;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDistance()I
    .locals 1

    iget v0, p0, Lcom/baidu/mapapi/MKRoute;->c:I

    return v0
.end method

.method public getEnd()Lcom/baidu/mapapi/GeoPoint;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/MKRoute;->f:Lcom/baidu/mapapi/GeoPoint;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/baidu/mapapi/MKRoute;->b:I

    return v0
.end method

.method public getNumSteps()I
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/MKRoute;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/MKRoute;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRouteType()I
    .locals 1

    iget v0, p0, Lcom/baidu/mapapi/MKRoute;->d:I

    return v0
.end method

.method public getStart()Lcom/baidu/mapapi/GeoPoint;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/MKRoute;->e:Lcom/baidu/mapapi/GeoPoint;

    return-object v0
.end method

.method public getStep(I)Lcom/baidu/mapapi/MKStep;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/MKRoute;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/MKRoute;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/MKStep;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
