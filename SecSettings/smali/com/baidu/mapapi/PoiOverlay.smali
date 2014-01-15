.class public Lcom/baidu/mapapi/PoiOverlay;
.super Lcom/baidu/mapapi/ItemizedOverlay;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/mapapi/ItemizedOverlay",
        "<",
        "Lcom/baidu/mapapi/OverlayItem;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/baidu/mapapi/MapView;

.field private b:Landroid/content/Context;

.field private c:I

.field private d:Lcom/baidu/mapapi/MKSearch;

.field public mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapapi/MKPoiInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mUseToast:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/baidu/mapapi/MapView;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/mapapi/ItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/baidu/mapapi/PoiOverlay;->mList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/baidu/mapapi/PoiOverlay;->a:Lcom/baidu/mapapi/MapView;

    iput-object v0, p0, Lcom/baidu/mapapi/PoiOverlay;->b:Landroid/content/Context;

    iput v2, p0, Lcom/baidu/mapapi/PoiOverlay;->c:I

    iput-boolean v2, p0, Lcom/baidu/mapapi/PoiOverlay;->mUseToast:Z

    iput-object p1, p0, Lcom/baidu/mapapi/PoiOverlay;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/baidu/mapapi/PoiOverlay;->a:Lcom/baidu/mapapi/MapView;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    sget v0, Lcom/baidu/mapapi/Mj;->i:I

    const/16 v1, 0x78

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mapapi/PoiOverlay;->c:I

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/baidu/mapapi/Mj;->i:I

    const/16 v1, 0xb4

    if-gt v0, v1, :cond_1

    iput v2, p0, Lcom/baidu/mapapi/PoiOverlay;->c:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/mapapi/PoiOverlay;->c:I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/baidu/mapapi/MapView;Lcom/baidu/mapapi/MKSearch;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/mapapi/PoiOverlay;-><init>(Landroid/app/Activity;Lcom/baidu/mapapi/MapView;)V

    iput-object p3, p0, Lcom/baidu/mapapi/PoiOverlay;->d:Lcom/baidu/mapapi/MKSearch;

    return-void
.end method


# virtual methods
.method public animateTo()V
    .locals 1

    invoke-virtual {p0}, Lcom/baidu/mapapi/PoiOverlay;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/PoiOverlay;->onTap(I)Z

    :cond_0
    return-void
.end method

.method protected createItem(I)Lcom/baidu/mapapi/OverlayItem;
    .locals 7

    const/16 v6, 0xa

    new-array v1, v6, [C

    fill-array-data v1, :array_0

    const/4 v0, 0x3

    new-array v2, v0, [C

    fill-array-data v2, :array_1

    iget-object v0, p0, Lcom/baidu/mapapi/PoiOverlay;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/MKPoiInfo;

    new-instance v3, Lcom/baidu/mapapi/OverlayItem;

    iget-object v4, v0, Lcom/baidu/mapapi/MKPoiInfo;->pt:Lcom/baidu/mapapi/GeoPoint;

    iget-object v5, v0, Lcom/baidu/mapapi/MKPoiInfo;->name:Ljava/lang/String;

    iget-object v0, v0, Lcom/baidu/mapapi/MKPoiInfo;->address:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v0}, Lcom/baidu/mapapi/OverlayItem;-><init>(Lcom/baidu/mapapi/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-ge p1, v6, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "icon_mark"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-char v1, v1, p1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v4, 0x5f

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/baidu/mapapi/PoiOverlay;->c:I

    aget-char v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/mapapi/PoiOverlay;->b:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/mapapi/n;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/baidu/mapapi/PoiOverlay;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/baidu/mapapi/OverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    return-object v3

    nop

    :array_0
    .array-data 0x2
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6at 0x0t
    .end array-data

    :array_1
    .array-data 0x2
        0x6ct 0x0t
        0x6dt 0x0t
        0x68t 0x0t
    .end array-data
.end method

.method public getPoi(I)Lcom/baidu/mapapi/MKPoiInfo;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/PoiOverlay;->mList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/PoiOverlay;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/MKPoiInfo;

    goto :goto_0
.end method

.method protected onTap(I)Z
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/ItemizedOverlay;->getItem(I)Lcom/baidu/mapapi/OverlayItem;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapapi/PoiOverlay;->a:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v1}, Lcom/baidu/mapapi/MapView;->getController()Lcom/baidu/mapapi/MapController;

    move-result-object v1

    iget-object v2, v0, Lcom/baidu/mapapi/OverlayItem;->mPoint:Lcom/baidu/mapapi/GeoPoint;

    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/MapController;->animateTo(Lcom/baidu/mapapi/GeoPoint;)V

    iget-boolean v1, p0, Lcom/baidu/mapapi/PoiOverlay;->mUseToast:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/baidu/mapapi/OverlayItem;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/PoiOverlay;->getPoi(I)Lcom/baidu/mapapi/MKPoiInfo;

    move-result-object v1

    iget-boolean v2, v1, Lcom/baidu/mapapi/MKPoiInfo;->hasCaterDetails:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/baidu/mapapi/PoiOverlay;->d:Lcom/baidu/mapapi/MKSearch;

    iget-object v1, v1, Lcom/baidu/mapapi/MKPoiInfo;->uid:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/baidu/mapapi/MKSearch;->poiDetailSearch(Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/baidu/mapapi/PoiOverlay;->b:Landroid/content/Context;

    iget-object v0, v0, Lcom/baidu/mapapi/OverlayItem;->mTitle:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    invoke-super {p0, p1}, Lcom/baidu/mapapi/ItemizedOverlay;->onTap(I)Z

    return v3
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapapi/MKPoiInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/baidu/mapapi/PoiOverlay;->mList:Ljava/util/ArrayList;

    invoke-super {p0}, Lcom/baidu/mapapi/ItemizedOverlay;->populate()V

    :cond_0
    return-void
.end method

.method public size()I
    .locals 2

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/baidu/mapapi/PoiOverlay;->mList:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/baidu/mapapi/PoiOverlay;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/PoiOverlay;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method
