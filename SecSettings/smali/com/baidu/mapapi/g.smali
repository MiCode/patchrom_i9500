.class Lcom/baidu/mapapi/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/mapapi/j;


# instance fields
.field private a:Lcom/baidu/mapapi/MKGeneralListener;


# direct methods
.method public constructor <init>(Lcom/baidu/mapapi/MKGeneralListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/mapapi/g;->a:Lcom/baidu/mapapi/MKGeneralListener;

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/mapapi/MKEvent;)V
    .locals 2

    iget v0, p1, Lcom/baidu/mapapi/MKEvent;->a:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/baidu/mapapi/g;->a:Lcom/baidu/mapapi/MKGeneralListener;

    iget v1, p1, Lcom/baidu/mapapi/MKEvent;->b:I

    invoke-interface {v0, v1}, Lcom/baidu/mapapi/MKGeneralListener;->onGetNetworkState(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/baidu/mapapi/g;->a:Lcom/baidu/mapapi/MKGeneralListener;

    iget v1, p1, Lcom/baidu/mapapi/MKEvent;->b:I

    invoke-interface {v0, v1}, Lcom/baidu/mapapi/MKGeneralListener;->onGetPermissionState(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
