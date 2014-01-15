.class Lcom/baidu/mapapi/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/mapapi/j;


# instance fields
.field private a:Lcom/baidu/mapapi/MKOfflineMapListener;


# direct methods
.method public constructor <init>(Lcom/baidu/mapapi/MKOfflineMapListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/mapapi/k;->a:Lcom/baidu/mapapi/MKOfflineMapListener;

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/mapapi/MKEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/mapapi/k;->a:Lcom/baidu/mapapi/MKOfflineMapListener;

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/baidu/mapapi/MKEvent;->a:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/baidu/mapapi/k;->a:Lcom/baidu/mapapi/MKOfflineMapListener;

    iget v1, p1, Lcom/baidu/mapapi/MKEvent;->a:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/baidu/mapapi/MKOfflineMapListener;->onGetOfflineMapState(II)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/baidu/mapapi/k;->a:Lcom/baidu/mapapi/MKOfflineMapListener;

    iget v1, p1, Lcom/baidu/mapapi/MKEvent;->a:I

    iget v2, p1, Lcom/baidu/mapapi/MKEvent;->c:I

    invoke-interface {v0, v1, v2}, Lcom/baidu/mapapi/MKOfflineMapListener;->onGetOfflineMapState(II)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method
