.class Lcom/android/settings_ex/myplace/SelectMapActivity$SearchLocationTask;
.super Landroid/os/AsyncTask;
.source "SelectMapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/myplace/SelectMapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchLocationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Landroid/location/Address;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/myplace/SelectMapActivity;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$SearchLocationTask;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 402
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/myplace/SelectMapActivity$SearchLocationTask;->doInBackground([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "locations"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .prologue
    .line 405
    const/4 v1, 0x0

    .line 407
    .local v1, loc:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    const/4 v3, 0x0

    :try_start_0
    aget-object v2, p1, v3

    .line 408
    .local v2, location:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 409
    iget-object v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$SearchLocationTask;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    #getter for: Lcom/android/settings_ex/myplace/SelectMapActivity;->mGeo:Landroid/location/Geocoder;
    invoke-static {v3}, Lcom/android/settings_ex/myplace/SelectMapActivity;->access$1000(Lcom/android/settings_ex/myplace/SelectMapActivity;)Landroid/location/Geocoder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, p1, v4

    const/4 v5, 0x5

    invoke-virtual {v3, v4, v5}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 414
    .end local v2           #location:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 402
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/myplace/SelectMapActivity$SearchLocationTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 419
    .local p1, loc:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 421
    iget-object v10, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$SearchLocationTask;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    iget-object v10, v10, Lcom/android/settings_ex/myplace/SelectMapActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v10}, Lcom/baidu/mapapi/MapView;->getOverlays()Ljava/util/List;

    move-result-object v5

    .line 422
    .local v5, mapOverlays:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/mapapi/Overlay;>;"
    const/4 v10, 0x0

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;

    .line 423
    .local v2, itemizedOverlay:Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;
    invoke-virtual {v2}, Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;->clearOverlay()V

    .line 425
    const v8, 0x55d4a80

    .local v8, minLat:I
    const v6, -0x55d4a80

    .line 426
    .local v6, maxLat:I
    const v9, 0xaba9500

    .local v9, minLon:I
    const v7, -0xaba9500

    .line 428
    .local v7, maxLon:I
    const/4 v0, 0x0

    .line 429
    .local v0, addr:Landroid/location/Address;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v1, v10, :cond_0

    .line 430
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #addr:Landroid/location/Address;
    check-cast v0, Landroid/location/Address;

    .line 431
    .restart local v0       #addr:Landroid/location/Address;
    iget-object v10, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$SearchLocationTask;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    invoke-virtual {v0}, Landroid/location/Address;->getLatitude()D

    move-result-wide v11

    #calls: Lcom/android/settings_ex/myplace/SelectMapActivity;->convToInt(D)I
    invoke-static {v10, v11, v12}, Lcom/android/settings_ex/myplace/SelectMapActivity;->access$1100(Lcom/android/settings_ex/myplace/SelectMapActivity;D)I

    move-result v3

    .line 432
    .local v3, lat:I
    iget-object v10, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$SearchLocationTask;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    invoke-virtual {v0}, Landroid/location/Address;->getLongitude()D

    move-result-wide v11

    #calls: Lcom/android/settings_ex/myplace/SelectMapActivity;->convToInt(D)I
    invoke-static {v10, v11, v12}, Lcom/android/settings_ex/myplace/SelectMapActivity;->access$1100(Lcom/android/settings_ex/myplace/SelectMapActivity;D)I

    move-result v4

    .line 433
    .local v4, lon:I
    iget-object v10, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$SearchLocationTask;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    invoke-virtual {v0}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/settings_ex/myplace/SelectMapActivity;->addMarker(IILjava/lang/String;)Z
    invoke-static {v10, v3, v4, v11}, Lcom/android/settings_ex/myplace/SelectMapActivity;->access$1200(Lcom/android/settings_ex/myplace/SelectMapActivity;IILjava/lang/String;)Z

    .line 434
    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 435
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 436
    invoke-static {v9, v4}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 437
    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 429
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 439
    .end local v3           #lat:I
    .end local v4           #lon:I
    :cond_0
    if-eqz v0, :cond_1

    .line 440
    iget-object v10, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$SearchLocationTask;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    #calls: Lcom/android/settings_ex/myplace/SelectMapActivity;->moveToMarker(IIII)Z
    invoke-static {v10, v8, v6, v9, v7}, Lcom/android/settings_ex/myplace/SelectMapActivity;->access$1300(Lcom/android/settings_ex/myplace/SelectMapActivity;IIII)Z

    .line 446
    .end local v0           #addr:Landroid/location/Address;
    .end local v1           #i:I
    .end local v2           #itemizedOverlay:Lcom/android/settings_ex/myplace/SelectMapActivity$SelectMapOverlay;
    .end local v5           #mapOverlays:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/mapapi/Overlay;>;"
    .end local v6           #maxLat:I
    .end local v7           #maxLon:I
    .end local v8           #minLat:I
    .end local v9           #minLon:I
    :cond_1
    :goto_1
    return-void

    .line 443
    :cond_2
    iget-object v10, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$SearchLocationTask;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$SearchLocationTask;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0911d9

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$SearchLocationTask;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    #getter for: Lcom/android/settings_ex/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/settings_ex/myplace/SelectMapActivity;->access$500(Lcom/android/settings_ex/myplace/SelectMapActivity;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
