.class Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;
.super Lcom/baidu/mapapi/ItemizedOverlay;
.source "SelectMapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/myplace/SelectMapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectMapOverlay"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay$MapGestureListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/mapapi/ItemizedOverlay",
        "<",
        "Lcom/baidu/mapapi/OverlayItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SelectMapOverlay"


# instance fields
.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mOverlays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapapi/OverlayItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/myplace/SelectMapActivity;Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "defaultMarker"

    .prologue
    .line 627
    iput-object p1, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    .line 628
    invoke-static {p3}, Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/mapapi/ItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 624
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;->mOverlays:Ljava/util/ArrayList;

    .line 629
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay$MapGestureListener;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay$MapGestureListener;-><init>(Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;)V

    invoke-direct {v0, p2, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;->mGestureDetector:Landroid/view/GestureDetector;

    .line 637
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/ItemizedOverlay;->setLastFocusedIndex(I)V

    .line 638
    invoke-virtual {p0}, Lcom/baidu/mapapi/ItemizedOverlay;->populate()V

    .line 639
    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;->mOverlays:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public addOverlay(Lcom/baidu/mapapi/OverlayItem;)V
    .locals 1
    .parameter "overlay"

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/ItemizedOverlay;->setLastFocusedIndex(I)V

    .line 644
    invoke-virtual {p0}, Lcom/baidu/mapapi/ItemizedOverlay;->populate()V

    .line 645
    return-void
.end method

.method public clearOverlay()V
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 649
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/ItemizedOverlay;->setLastFocusedIndex(I)V

    .line 650
    invoke-virtual {p0}, Lcom/baidu/mapapi/ItemizedOverlay;->populate()V

    .line 651
    return-void
.end method

.method protected createItem(I)Lcom/baidu/mapapi/OverlayItem;
    .locals 1
    .parameter "i"

    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/OverlayItem;

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/baidu/mapapi/MapView;Z)V
    .locals 2
    .parameter "c"
    .parameter "v"
    .parameter "b"

    .prologue
    .line 664
    iget-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    #getter for: Lcom/android/settings_ex/myplace/SelectMapActivity;->mIsTabletConfig:Z
    invoke-static {v0}, Lcom/android/settings_ex/myplace/SelectMapActivity;->access$1500(Lcom/android/settings_ex/myplace/SelectMapActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 665
    invoke-virtual {p2}, Lcom/baidu/mapapi/MapView;->getZoomLevel()I

    move-result v0

    invoke-virtual {p2}, Lcom/baidu/mapapi/MapView;->getMaxZoomLevel()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 666
    invoke-virtual {p2}, Lcom/baidu/mapapi/MapView;->getController()Lcom/baidu/mapapi/MapController;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/mapapi/MapView;->getMaxZoomLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/MapController;->setZoom(I)I

    .line 668
    :cond_0
    invoke-virtual {p2}, Lcom/baidu/mapapi/MapView;->getZoomLevel()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 669
    invoke-virtual {p2}, Lcom/baidu/mapapi/MapView;->getController()Lcom/baidu/mapapi/MapController;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/MapController;->setZoom(I)I

    .line 678
    :cond_1
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, v0}, Lcom/baidu/mapapi/ItemizedOverlay;->draw(Landroid/graphics/Canvas;Lcom/baidu/mapapi/MapView;Z)V

    .line 679
    return-void
.end method

.method protected getIndexToDraw(I)I
    .locals 1
    .parameter "drawingOrder"

    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 656
    invoke-super {p0, p1}, Lcom/baidu/mapapi/ItemizedOverlay;->getIndexToDraw(I)I

    move-result v0

    .line 658
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onTap(I)Z
    .locals 4
    .parameter "index"

    .prologue
    .line 693
    invoke-super {p0, p1}, Lcom/baidu/mapapi/ItemizedOverlay;->onTap(I)Z

    .line 694
    iget-object v2, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapapi/OverlayItem;

    invoke-virtual {v2}, Lcom/baidu/mapapi/OverlayItem;->getPoint()Lcom/baidu/mapapi/GeoPoint;

    move-result-object v1

    .line 695
    .local v1, point:Lcom/baidu/mapapi/GeoPoint;
    iget-object v2, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    iget-object v2, v2, Lcom/android/settings_ex/myplace/SelectMapActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v2}, Lcom/baidu/mapapi/MapView;->getMapCenter()Lcom/baidu/mapapi/GeoPoint;

    move-result-object v0

    .line 696
    .local v0, center:Lcom/baidu/mapapi/GeoPoint;
    invoke-virtual {v1}, Lcom/baidu/mapapi/GeoPoint;->getLatitudeE6()I

    move-result v2

    invoke-virtual {v0}, Lcom/baidu/mapapi/GeoPoint;->getLatitudeE6()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/baidu/mapapi/GeoPoint;->getLongitudeE6()I

    move-result v2

    invoke-virtual {v0}, Lcom/baidu/mapapi/GeoPoint;->getLongitudeE6()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 698
    iget-object v2, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    invoke-virtual {v2}, Lcom/android/settings_ex/myplace/SelectMapActivity;->doFinish()V

    .line 703
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 701
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    #calls: Lcom/android/settings_ex/myplace/SelectMapActivity;->moveToMarker(Lcom/baidu/mapapi/GeoPoint;)Z
    invoke-static {v2, v1}, Lcom/android/settings_ex/myplace/SelectMapActivity;->access$1600(Lcom/android/settings_ex/myplace/SelectMapActivity;Lcom/baidu/mapapi/GeoPoint;)Z

    goto :goto_0
.end method

.method public onTap(Lcom/baidu/mapapi/GeoPoint;Lcom/baidu/mapapi/MapView;)Z
    .locals 4
    .parameter "p"
    .parameter "mapView"

    .prologue
    .line 709
    const/4 v1, 0x0

    .line 710
    .local v1, ret:Z
    iget-object v2, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    #getter for: Lcom/android/settings_ex/myplace/SelectMapActivity;->mIsTabletConfig:Z
    invoke-static {v2}, Lcom/android/settings_ex/myplace/SelectMapActivity;->access$1500(Lcom/android/settings_ex/myplace/SelectMapActivity;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 711
    invoke-virtual {p2}, Lcom/baidu/mapapi/MapView;->getZoomLevel()I

    move-result v2

    invoke-virtual {p2}, Lcom/baidu/mapapi/MapView;->getMaxZoomLevel()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 712
    invoke-virtual {p2}, Lcom/baidu/mapapi/MapView;->getController()Lcom/baidu/mapapi/MapController;

    move-result-object v2

    invoke-virtual {p2}, Lcom/baidu/mapapi/MapView;->getMaxZoomLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/MapController;->setZoom(I)I

    .line 714
    :cond_0
    invoke-virtual {p2}, Lcom/baidu/mapapi/MapView;->getZoomLevel()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    .line 715
    invoke-virtual {p2}, Lcom/baidu/mapapi/MapView;->getController()Lcom/baidu/mapapi/MapController;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/MapController;->setZoom(I)I

    .line 718
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 720
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/baidu/mapapi/ItemizedOverlay;->onTap(Lcom/baidu/mapapi/GeoPoint;Lcom/baidu/mapapi/MapView;)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 725
    :cond_2
    :goto_0
    return v1

    .line 721
    :catch_0
    move-exception v0

    .line 722
    .local v0, oobe:Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lcom/baidu/mapapi/MapView;)Z
    .locals 2
    .parameter "ev"
    .parameter "mapView"

    .prologue
    .line 730
    iget-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    #getter for: Lcom/android/settings_ex/myplace/SelectMapActivity;->mIsTabletConfig:Z
    invoke-static {v0}, Lcom/android/settings_ex/myplace/SelectMapActivity;->access$1500(Lcom/android/settings_ex/myplace/SelectMapActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 731
    invoke-virtual {p2}, Lcom/baidu/mapapi/MapView;->getZoomLevel()I

    move-result v0

    invoke-virtual {p2}, Lcom/baidu/mapapi/MapView;->getMaxZoomLevel()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 732
    invoke-virtual {p2}, Lcom/baidu/mapapi/MapView;->getController()Lcom/baidu/mapapi/MapController;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/mapapi/MapView;->getMaxZoomLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/MapController;->setZoom(I)I

    .line 735
    :cond_0
    invoke-virtual {p2}, Lcom/baidu/mapapi/MapView;->getZoomLevel()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 736
    invoke-virtual {p2}, Lcom/baidu/mapapi/MapView;->getController()Lcom/baidu/mapapi/MapController;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/MapController;->setZoom(I)I

    .line 738
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 739
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
