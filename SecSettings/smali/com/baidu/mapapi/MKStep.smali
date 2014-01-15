.class public Lcom/baidu/mapapi/MKStep;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/baidu/mapapi/GeoPoint;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    iget v0, p0, Lcom/baidu/mapapi/MKStep;->c:I

    return v0
.end method

.method a(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/mapapi/MKStep;->c:I

    return-void
.end method

.method a(Lcom/baidu/mapapi/GeoPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/MKStep;->a:Lcom/baidu/mapapi/GeoPoint;

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/MKStep;->b:Ljava/lang/String;

    return-void
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/MKStep;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPoint()Lcom/baidu/mapapi/GeoPoint;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/MKStep;->a:Lcom/baidu/mapapi/GeoPoint;

    return-object v0
.end method
