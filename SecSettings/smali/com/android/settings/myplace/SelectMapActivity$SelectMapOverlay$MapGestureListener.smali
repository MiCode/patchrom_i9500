.class Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay$MapGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SelectMapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MapGestureListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;)V
    .locals 0

    .prologue
    .line 742
    iput-object p1, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay$MapGestureListener;->this$1:Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "ev"

    .prologue
    .line 745
    iget-object v1, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay$MapGestureListener;->this$1:Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;

    iget-object v1, v1, Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    #getter for: Lcom/android/settings_ex/myplace/SelectMapActivity;->mMapMode:I
    invoke-static {v1}, Lcom/android/settings_ex/myplace/SelectMapActivity;->access$1700(Lcom/android/settings_ex/myplace/SelectMapActivity;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 746
    iget-object v1, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay$MapGestureListener;->this$1:Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;

    iget-object v1, v1, Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    #getter for: Lcom/android/settings_ex/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/baidu/mapapi/MyLocationOverlay;
    invoke-static {v1}, Lcom/android/settings_ex/myplace/SelectMapActivity;->access$200(Lcom/android/settings_ex/myplace/SelectMapActivity;)Lcom/baidu/mapapi/MyLocationOverlay;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 747
    iget-object v1, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay$MapGestureListener;->this$1:Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;

    iget-object v1, v1, Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    #getter for: Lcom/android/settings_ex/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/baidu/mapapi/MyLocationOverlay;
    invoke-static {v1}, Lcom/android/settings_ex/myplace/SelectMapActivity;->access$200(Lcom/android/settings_ex/myplace/SelectMapActivity;)Lcom/baidu/mapapi/MyLocationOverlay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mapapi/MyLocationOverlay;->disableMyLocation()V

    .line 750
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay$MapGestureListener;->this$1:Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;

    iget-object v1, v1, Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    iget-object v1, v1, Lcom/android/settings_ex/myplace/SelectMapActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v1}, Lcom/baidu/mapapi/MapView;->getProjection()Lcom/baidu/mapapi/Projection;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-interface {v1, v2, v3}, Lcom/baidu/mapapi/Projection;->fromPixels(II)Lcom/baidu/mapapi/GeoPoint;

    move-result-object v0

    .line 751
    .local v0, point:Lcom/baidu/mapapi/GeoPoint;
    iget-object v1, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay$MapGestureListener;->this$1:Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;

    #getter for: Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;->mOverlays:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;->access$1800(Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 752
    iget-object v1, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay$MapGestureListener;->this$1:Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;

    iget-object v1, v1, Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    invoke-virtual {v0}, Lcom/baidu/mapapi/GeoPoint;->getLatitudeE6()I

    move-result v2

    invoke-virtual {v0}, Lcom/baidu/mapapi/GeoPoint;->getLongitudeE6()I

    move-result v3

    const-string v4, "here"

    #calls: Lcom/android/settings_ex/myplace/SelectMapActivity;->addMarker(IILjava/lang/String;)Z
    invoke-static {v1, v2, v3, v4}, Lcom/android/settings_ex/myplace/SelectMapActivity;->access$1200(Lcom/android/settings_ex/myplace/SelectMapActivity;IILjava/lang/String;)Z

    .line 753
    iget-object v1, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay$MapGestureListener;->this$1:Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;

    iget-object v1, v1, Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    #calls: Lcom/android/settings_ex/myplace/SelectMapActivity;->moveToMarker(Lcom/baidu/mapapi/GeoPoint;)Z
    invoke-static {v1, v0}, Lcom/android/settings_ex/myplace/SelectMapActivity;->access$1600(Lcom/android/settings_ex/myplace/SelectMapActivity;Lcom/baidu/mapapi/GeoPoint;)Z

    .line 754
    iget-object v1, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay$MapGestureListener;->this$1:Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;

    iget-object v1, v1, Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    const/4 v2, 0x1

    #setter for: Lcom/android/settings_ex/myplace/SelectMapActivity;->mResearch:Z
    invoke-static {v1, v2}, Lcom/android/settings_ex/myplace/SelectMapActivity;->access$702(Lcom/android/settings_ex/myplace/SelectMapActivity;Z)Z

    .line 756
    .end local v0           #point:Lcom/baidu/mapapi/GeoPoint;
    :cond_1
    return-void
.end method
