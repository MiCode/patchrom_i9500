.class Lcom/baidu/mapapi/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/mapapi/j;


# instance fields
.field private a:Lcom/baidu/mapapi/MKMapViewListener;


# direct methods
.method public constructor <init>(Lcom/baidu/mapapi/MKMapViewListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/mapapi/i;->a:Lcom/baidu/mapapi/MKMapViewListener;

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/mapapi/MKEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/i;->a:Lcom/baidu/mapapi/MKMapViewListener;

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/baidu/mapapi/MKEvent;->a:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/baidu/mapapi/i;->a:Lcom/baidu/mapapi/MKMapViewListener;

    invoke-interface {v0}, Lcom/baidu/mapapi/MKMapViewListener;->onMapMoveFinish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch
.end method
