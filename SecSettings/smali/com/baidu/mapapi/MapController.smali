.class public Lcom/baidu/mapapi/MapController;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field private a:Lcom/baidu/mapapi/MapView;


# direct methods
.method constructor <init>(Lcom/baidu/mapapi/MapView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapapi/MapController;->a:Lcom/baidu/mapapi/MapView;

    iput-object p1, p0, Lcom/baidu/mapapi/MapController;->a:Lcom/baidu/mapapi/MapView;

    iget-object v0, p1, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method


# virtual methods
.method public animateTo(Lcom/baidu/mapapi/GeoPoint;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/mapapi/MapController;->a:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0, p1, v1, v1}, Lcom/baidu/mapapi/MapView;->a(Lcom/baidu/mapapi/GeoPoint;Landroid/os/Message;Ljava/lang/Runnable;)V

    return-void
.end method

.method public animateTo(Lcom/baidu/mapapi/GeoPoint;Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/mapapi/MapController;->a:Lcom/baidu/mapapi/MapView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/baidu/mapapi/MapView;->a(Lcom/baidu/mapapi/GeoPoint;Landroid/os/Message;Ljava/lang/Runnable;)V

    return-void
.end method

.method public animateTo(Lcom/baidu/mapapi/GeoPoint;Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/mapapi/MapController;->a:Lcom/baidu/mapapi/MapView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/baidu/mapapi/MapView;->a(Lcom/baidu/mapapi/GeoPoint;Landroid/os/Message;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/16 v3, 0x32

    const/16 v2, -0x32

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/mapapi/MapController;->a:Lcom/baidu/mapapi/MapView;

    iget-object v1, v1, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    if-ne v1, p1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v0, v2}, Lcom/baidu/mapapi/MapController;->scrollBy(II)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v2, v0}, Lcom/baidu/mapapi/MapController;->scrollBy(II)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, v3, v0}, Lcom/baidu/mapapi/MapController;->scrollBy(II)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v0, v3}, Lcom/baidu/mapapi/MapController;->scrollBy(II)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public scrollBy(II)V
    .locals 1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/MapController;->a:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mapapi/MapView;->b(II)V

    goto :goto_0
.end method

.method public setCenter(Lcom/baidu/mapapi/GeoPoint;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/MapController;->a:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/MapView;->a(Lcom/baidu/mapapi/GeoPoint;)V

    return-void
.end method

.method public setMaxZoomLevel(I)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/MapController;->a:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/MapView;->a(I)V

    return-void
.end method

.method public setMinZoomLevel(I)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/MapController;->a:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/MapView;->b(I)V

    return-void
.end method

.method public setZoom(I)I
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/MapController;->a:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/MapView;->c(I)Z

    iget-object v0, p0, Lcom/baidu/mapapi/MapController;->a:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MapView;->getZoomLevel()I

    move-result v0

    return v0
.end method

.method public stopAnimation(Z)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/MapController;->a:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/MapView;->a(Z)V

    return-void
.end method

.method public stopPanning()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/MapController;->a:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MapView;->getMapCenter()Lcom/baidu/mapapi/GeoPoint;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/MapController;->setCenter(Lcom/baidu/mapapi/GeoPoint;)V

    return-void
.end method

.method public zoomIn()Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/MapController;->a:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MapView;->f()Z

    move-result v0

    return v0
.end method

.method public zoomInFixing(II)Z
    .locals 4

    iget-object v0, p0, Lcom/baidu/mapapi/MapController;->a:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MapView;->getProjection()Lcom/baidu/mapapi/Projection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/baidu/mapapi/Projection;->fromPixels(II)Lcom/baidu/mapapi/GeoPoint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/mapapi/MapController;->zoomIn()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iget-object v3, p0, Lcom/baidu/mapapi/MapController;->a:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v3}, Lcom/baidu/mapapi/MapView;->getProjection()Lcom/baidu/mapapi/Projection;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Lcom/baidu/mapapi/Projection;->toPixels(Lcom/baidu/mapapi/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, p1

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, p2

    invoke-virtual {p0, v0, v2}, Lcom/baidu/mapapi/MapController;->scrollBy(II)V

    :cond_0
    return v1
.end method

.method public zoomOut()Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/MapController;->a:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MapView;->g()Z

    move-result v0

    return v0
.end method

.method public zoomOutFixing(II)Z
    .locals 4

    iget-object v0, p0, Lcom/baidu/mapapi/MapController;->a:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MapView;->getProjection()Lcom/baidu/mapapi/Projection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/baidu/mapapi/Projection;->fromPixels(II)Lcom/baidu/mapapi/GeoPoint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/mapapi/MapController;->zoomOut()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iget-object v3, p0, Lcom/baidu/mapapi/MapController;->a:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v3}, Lcom/baidu/mapapi/MapView;->getProjection()Lcom/baidu/mapapi/Projection;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Lcom/baidu/mapapi/Projection;->toPixels(Lcom/baidu/mapapi/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, p1

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, p2

    invoke-virtual {p0, v0, v2}, Lcom/baidu/mapapi/MapController;->scrollBy(II)V

    :cond_0
    return v1
.end method

.method public zoomToSpan(II)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/MapController;->a:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mapapi/MapView;->a(II)V

    return-void
.end method
