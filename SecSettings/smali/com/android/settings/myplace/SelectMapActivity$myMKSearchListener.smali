.class Lcom/android/settings_ex/myplace/SelectMapActivity$myMKSearchListener;
.super Ljava/lang/Object;
.source "SelectMapActivity.java"

# interfaces
.implements Lcom/baidu/mapapi/MKSearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/myplace/SelectMapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "myMKSearchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/myplace/SelectMapActivity;)V
    .locals 0

    .prologue
    .line 875
    iput-object p1, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$myMKSearchListener;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/myplace/SelectMapActivity;Lcom/android/settings_ex/myplace/SelectMapActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 875
    invoke-direct {p0, p1}, Lcom/android/settings_ex/myplace/SelectMapActivity$myMKSearchListener;-><init>(Lcom/android/settings_ex/myplace/SelectMapActivity;)V

    return-void
.end method


# virtual methods
.method public onGetAddrResult(Lcom/baidu/mapapi/MKAddrInfo;I)V
    .locals 10
    .parameter "result"
    .parameter "error"

    .prologue
    const/4 v6, 0x0

    .line 878
    if-eqz p2, :cond_1

    .line 879
    const-string v7, "error id is ??d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 880
    .local v5, str:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$myMKSearchListener;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    #getter for: Lcom/android/settings_ex/myplace/SelectMapActivity;->TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings_ex/myplace/SelectMapActivity;->access$1900(Lcom/android/settings_ex/myplace/SelectMapActivity;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "str --->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    .end local v5           #str:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 883
    :cond_1
    iget-object v7, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$myMKSearchListener;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    #getter for: Lcom/android/settings_ex/myplace/SelectMapActivity;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/settings_ex/myplace/SelectMapActivity;->access$1900(Lcom/android/settings_ex/myplace/SelectMapActivity;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "arg0.strAddr = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/baidu/mapapi/MKAddrInfo;->strAddr:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " strBusiness = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/baidu/mapapi/MKAddrInfo;->strBusiness:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    iget-object v7, p1, Lcom/baidu/mapapi/MKAddrInfo;->addressComponents:Lcom/baidu/mapapi/MKGeocoderAddressComponent;

    if-eqz v7, :cond_2

    .line 886
    iget-object v7, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$myMKSearchListener;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    #getter for: Lcom/android/settings_ex/myplace/SelectMapActivity;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/settings_ex/myplace/SelectMapActivity;->access$1900(Lcom/android/settings_ex/myplace/SelectMapActivity;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "city = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/baidu/mapapi/MKAddrInfo;->addressComponents:Lcom/baidu/mapapi/MKGeocoderAddressComponent;

    iget-object v9, v9, Lcom/baidu/mapapi/MKGeocoderAddressComponent;->city:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " district = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/baidu/mapapi/MKAddrInfo;->addressComponents:Lcom/baidu/mapapi/MKGeocoderAddressComponent;

    iget-object v9, v9, Lcom/baidu/mapapi/MKGeocoderAddressComponent;->district:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " province = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/baidu/mapapi/MKAddrInfo;->addressComponents:Lcom/baidu/mapapi/MKGeocoderAddressComponent;

    iget-object v9, v9, Lcom/baidu/mapapi/MKGeocoderAddressComponent;->province:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " street = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/baidu/mapapi/MKAddrInfo;->addressComponents:Lcom/baidu/mapapi/MKGeocoderAddressComponent;

    iget-object v9, v9, Lcom/baidu/mapapi/MKGeocoderAddressComponent;->street:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " streetNumber = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/baidu/mapapi/MKAddrInfo;->addressComponents:Lcom/baidu/mapapi/MKGeocoderAddressComponent;

    iget-object v9, v9, Lcom/baidu/mapapi/MKGeocoderAddressComponent;->streetNumber:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :cond_2
    iget-object v7, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$myMKSearchListener;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    #getter for: Lcom/android/settings_ex/myplace/SelectMapActivity;->searchFlag:Z
    invoke-static {v7}, Lcom/android/settings_ex/myplace/SelectMapActivity;->access$2000(Lcom/android/settings_ex/myplace/SelectMapActivity;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 893
    iget-object v7, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$myMKSearchListener;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    #setter for: Lcom/android/settings_ex/myplace/SelectMapActivity;->searchFlag:Z
    invoke-static {v7, v6}, Lcom/android/settings_ex/myplace/SelectMapActivity;->access$2002(Lcom/android/settings_ex/myplace/SelectMapActivity;Z)Z

    .line 894
    if-eqz p1, :cond_3

    .line 896
    iget-object v7, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$myMKSearchListener;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    iget-object v7, v7, Lcom/android/settings_ex/myplace/SelectMapActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v7}, Lcom/baidu/mapapi/MapView;->getOverlays()Ljava/util/List;

    move-result-object v4

    .line 897
    .local v4, mapOverlays:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/mapapi/Overlay;>;"
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;

    .line 898
    .local v0, itemizedOverlay:Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;
    invoke-virtual {v0}, Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;->clearOverlay()V

    .line 900
    iget-object v6, p1, Lcom/baidu/mapapi/MKAddrInfo;->geoPt:Lcom/baidu/mapapi/GeoPoint;

    invoke-virtual {v6}, Lcom/baidu/mapapi/GeoPoint;->getLatitudeE6()I

    move-result v1

    .line 901
    .local v1, lat:I
    iget-object v6, p1, Lcom/baidu/mapapi/MKAddrInfo;->geoPt:Lcom/baidu/mapapi/GeoPoint;

    invoke-virtual {v6}, Lcom/baidu/mapapi/GeoPoint;->getLongitudeE6()I

    move-result v3

    .line 902
    .local v3, lon:I
    iget-object v6, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$myMKSearchListener;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    const/4 v7, 0x0

    #calls: Lcom/android/settings_ex/myplace/SelectMapActivity;->addMarker(IILjava/lang/String;)Z
    invoke-static {v6, v1, v3, v7}, Lcom/android/settings_ex/myplace/SelectMapActivity;->access$1200(Lcom/android/settings_ex/myplace/SelectMapActivity;IILjava/lang/String;)Z

    .line 903
    iget-object v6, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$myMKSearchListener;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    iget-object v7, p1, Lcom/baidu/mapapi/MKAddrInfo;->geoPt:Lcom/baidu/mapapi/GeoPoint;

    #calls: Lcom/android/settings_ex/myplace/SelectMapActivity;->moveToMarker(Lcom/baidu/mapapi/GeoPoint;)Z
    invoke-static {v6, v7}, Lcom/android/settings_ex/myplace/SelectMapActivity;->access$1600(Lcom/android/settings_ex/myplace/SelectMapActivity;Lcom/baidu/mapapi/GeoPoint;)Z

    goto/16 :goto_0

    .line 905
    .end local v0           #itemizedOverlay:Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;
    .end local v1           #lat:I
    .end local v3           #lon:I
    .end local v4           #mapOverlays:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/mapapi/Overlay;>;"
    :cond_3
    iget-object v7, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$myMKSearchListener;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    iget-object v8, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$myMKSearchListener;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    invoke-virtual {v8}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0911d9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 908
    :cond_4
    if-eqz p1, :cond_0

    .line 909
    iget-object v7, p1, Lcom/baidu/mapapi/MKAddrInfo;->strAddr:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 910
    iget-object v7, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$myMKSearchListener;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    iget-object v8, p1, Lcom/baidu/mapapi/MKAddrInfo;->strAddr:Ljava/lang/String;

    #setter for: Lcom/android/settings_ex/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/settings_ex/myplace/SelectMapActivity;->access$502(Lcom/android/settings_ex/myplace/SelectMapActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 911
    iget-object v7, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$myMKSearchListener;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    #getter for: Lcom/android/settings_ex/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/settings_ex/myplace/SelectMapActivity;->access$500(Lcom/android/settings_ex/myplace/SelectMapActivity;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5

    .line 912
    iget-object v7, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$myMKSearchListener;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    const-string v8, ""

    #setter for: Lcom/android/settings_ex/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/settings_ex/myplace/SelectMapActivity;->access$502(Lcom/android/settings_ex/myplace/SelectMapActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 914
    :cond_5
    iget-object v7, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$myMKSearchListener;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    #getter for: Lcom/android/settings_ex/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v7}, Lcom/android/settings_ex/myplace/SelectMapActivity;->access$400(Lcom/android/settings_ex/myplace/SelectMapActivity;)Landroid/widget/EditText;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 915
    iget-object v7, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$myMKSearchListener;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    #getter for: Lcom/android/settings_ex/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v7}, Lcom/android/settings_ex/myplace/SelectMapActivity;->access$400(Lcom/android/settings_ex/myplace/SelectMapActivity;)Landroid/widget/EditText;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$myMKSearchListener;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    #getter for: Lcom/android/settings_ex/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/settings_ex/myplace/SelectMapActivity;->access$500(Lcom/android/settings_ex/myplace/SelectMapActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 916
    iget-object v7, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$myMKSearchListener;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    #getter for: Lcom/android/settings_ex/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/settings_ex/myplace/SelectMapActivity;->access$500(Lcom/android/settings_ex/myplace/SelectMapActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    .line 917
    .local v2, length:I
    iget-object v7, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$myMKSearchListener;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    #getter for: Lcom/android/settings_ex/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v7}, Lcom/android/settings_ex/myplace/SelectMapActivity;->access$400(Lcom/android/settings_ex/myplace/SelectMapActivity;)Landroid/widget/EditText;

    move-result-object v7

    if-lez v2, :cond_6

    .end local v2           #length:I
    :goto_1
    invoke-virtual {v7, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_0

    .restart local v2       #length:I
    :cond_6
    move v2, v6

    goto :goto_1
.end method

.method public onGetBusDetailResult(Lcom/baidu/mapapi/MKBusLineResult;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 926
    return-void
.end method

.method public onGetDrivingRouteResult(Lcom/baidu/mapapi/MKDrivingRouteResult;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 930
    return-void
.end method

.method public onGetPoiDetailSearchResult(II)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 934
    return-void
.end method

.method public onGetPoiResult(Lcom/baidu/mapapi/MKPoiResult;II)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 938
    return-void
.end method

.method public onGetRGCShareUrlResult(Ljava/lang/String;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 942
    return-void
.end method

.method public onGetSuggestionResult(Lcom/baidu/mapapi/MKSuggestionResult;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 946
    return-void
.end method

.method public onGetTransitRouteResult(Lcom/baidu/mapapi/MKTransitRouteResult;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 950
    return-void
.end method

.method public onGetWalkingRouteResult(Lcom/baidu/mapapi/MKWalkingRouteResult;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 954
    return-void
.end method
