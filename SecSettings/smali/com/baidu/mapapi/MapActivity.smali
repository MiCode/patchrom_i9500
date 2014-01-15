.class public abstract Lcom/baidu/mapapi/MapActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcom/baidu/mapapi/MapView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapapi/MapActivity;->a:Lcom/baidu/mapapi/MapView;

    return-void
.end method


# virtual methods
.method a(Lcom/baidu/mapapi/MapView;)Z
    .locals 2

    iget-object v0, p0, Lcom/baidu/mapapi/MapActivity;->a:Lcom/baidu/mapapi/MapView;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A mapview has been created!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/baidu/mapapi/MapActivity;->a:Lcom/baidu/mapapi/MapView;

    sput-object p1, Lcom/baidu/mapapi/Mj;->d:Lcom/baidu/mapapi/MapView;

    const/4 v0, 0x1

    return v0
.end method

.method public initMapActivity(Lcom/baidu/mapapi/BMapManager;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/baidu/mapapi/MapActivity;->a:Lcom/baidu/mapapi/MapView;

    if-nez v2, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A mapview has not been created!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v2, 0x14

    const/16 v3, 0x28

    invoke-static {v2, v3}, Lcom/baidu/mapapi/Mj;->InitMapControlCC(II)I

    move-result v2

    if-ne v2, v1, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/MapActivity;->a:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MapView;->a()Z

    move v0, v1

    goto :goto_0
.end method

.method protected isLocationDisplayed()Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/MapActivity;->a:Lcom/baidu/mapapi/MapView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/MapActivity;->a:Lcom/baidu/mapapi/MapView;

    iget-object v0, v0, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    invoke-virtual {v0}, Lcom/baidu/mapapi/a;->d()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract isRouteDisplayed()Z
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    sput v1, Lcom/baidu/mapapi/Mj;->g:I

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    sput v0, Lcom/baidu/mapapi/Mj;->h:I

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    iget-object v0, p0, Lcom/baidu/mapapi/MapActivity;->a:Lcom/baidu/mapapi/MapView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/mapapi/MapActivity;->a:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MapView;->getOverlays()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/Overlay;

    instance-of v3, v0, Lcom/baidu/mapapi/MyLocationOverlay;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/baidu/mapapi/MyLocationOverlay;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MyLocationOverlay;->disableMyLocation()V

    invoke-virtual {v0}, Lcom/baidu/mapapi/MyLocationOverlay;->disableCompass()V

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_2
    iget-object v0, p0, Lcom/baidu/mapapi/MapActivity;->a:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MapView;->b()V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapapi/MapActivity;->a:Lcom/baidu/mapapi/MapView;

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 5

    sget-object v0, Lcom/baidu/mapapi/Mj;->d:Lcom/baidu/mapapi/MapView;

    iget-object v1, p0, Lcom/baidu/mapapi/MapActivity;->a:Lcom/baidu/mapapi/MapView;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/MapActivity;->a:Lcom/baidu/mapapi/MapView;

    sput-object v0, Lcom/baidu/mapapi/Mj;->d:Lcom/baidu/mapapi/MapView;

    iget-object v0, p0, Lcom/baidu/mapapi/MapActivity;->a:Lcom/baidu/mapapi/MapView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/MapActivity;->a:Lcom/baidu/mapapi/MapView;

    iget-object v0, v0, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    iget-object v1, p0, Lcom/baidu/mapapi/MapActivity;->a:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/baidu/mapapi/MapActivity;->a:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/baidu/mapapi/MapActivity;->a:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/baidu/mapapi/MapActivity;->a:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/mapapi/a;->a(IIII)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
