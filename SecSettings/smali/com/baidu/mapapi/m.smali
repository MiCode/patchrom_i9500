.class Lcom/baidu/mapapi/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/mapapi/j;


# instance fields
.field private a:Lcom/baidu/mapapi/MKSearchListener;


# direct methods
.method public constructor <init>(Lcom/baidu/mapapi/MKSearchListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/mapapi/m;->a:Lcom/baidu/mapapi/MKSearchListener;

    return-void
.end method

.method private a(Landroid/os/Bundle;Lcom/baidu/mapapi/MKRouteAddrResult;)I
    .locals 3

    const-string v0, "aryAddr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    const/4 v0, 0x0

    aget-object v0, v1, v0

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, v2}, Lcom/baidu/mapapi/m;->a(Landroid/os/Bundle;Ljava/util/ArrayList;)V

    iput-object v2, p2, Lcom/baidu/mapapi/MKRouteAddrResult;->mStartPoiList:Ljava/util/ArrayList;

    :cond_0
    const/4 v0, 0x1

    aget-object v0, v1, v0

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, v2}, Lcom/baidu/mapapi/m;->b(Landroid/os/Bundle;Ljava/util/ArrayList;)V

    iput-object v2, p2, Lcom/baidu/mapapi/MKRouteAddrResult;->mStartCityList:Ljava/util/ArrayList;

    :cond_1
    const/4 v0, 0x2

    aget-object v0, v1, v0

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, v2}, Lcom/baidu/mapapi/m;->a(Landroid/os/Bundle;Ljava/util/ArrayList;)V

    iput-object v2, p2, Lcom/baidu/mapapi/MKRouteAddrResult;->mEndPoiList:Ljava/util/ArrayList;

    :cond_2
    const/4 v0, 0x3

    aget-object v0, v1, v0

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/baidu/mapapi/m;->b(Landroid/os/Bundle;Ljava/util/ArrayList;)V

    iput-object v1, p2, Lcom/baidu/mapapi/MKRouteAddrResult;->mEndCityList:Ljava/util/ArrayList;

    :cond_3
    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private a(Landroid/os/Bundle;Lcom/baidu/mapapi/MKAddrInfo;)V
    .locals 3

    const-string v0, "addr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/baidu/mapapi/MKAddrInfo;->strAddr:Ljava/lang/String;

    new-instance v0, Lcom/baidu/mapapi/GeoPoint;

    const-string v1, "y"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "x"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/baidu/mapapi/GeoPoint;-><init>(II)V

    iput-object v0, p2, Lcom/baidu/mapapi/MKAddrInfo;->geoPt:Lcom/baidu/mapapi/GeoPoint;

    return-void
.end method

.method private a(Landroid/os/Bundle;Lcom/baidu/mapapi/MKAddrInfo;I)V
    .locals 16

    const-string v1, "addr"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    iput-object v1, v0, Lcom/baidu/mapapi/MKAddrInfo;->strAddr:Ljava/lang/String;

    const-string v1, "business"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    iput-object v1, v0, Lcom/baidu/mapapi/MKAddrInfo;->strBusiness:Ljava/lang/String;

    new-instance v1, Lcom/baidu/mapapi/MKGeocoderAddressComponent;

    invoke-direct {v1}, Lcom/baidu/mapapi/MKGeocoderAddressComponent;-><init>()V

    move-object/from16 v0, p2

    iput-object v1, v0, Lcom/baidu/mapapi/MKAddrInfo;->addressComponents:Lcom/baidu/mapapi/MKGeocoderAddressComponent;

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/baidu/mapapi/MKAddrInfo;->addressComponents:Lcom/baidu/mapapi/MKGeocoderAddressComponent;

    const-string v2, "streetNumber"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/mapapi/MKGeocoderAddressComponent;->streetNumber:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/baidu/mapapi/MKAddrInfo;->addressComponents:Lcom/baidu/mapapi/MKGeocoderAddressComponent;

    const-string v2, "street"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/mapapi/MKGeocoderAddressComponent;->street:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/baidu/mapapi/MKAddrInfo;->addressComponents:Lcom/baidu/mapapi/MKGeocoderAddressComponent;

    const-string v2, "district"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/mapapi/MKGeocoderAddressComponent;->district:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/baidu/mapapi/MKAddrInfo;->addressComponents:Lcom/baidu/mapapi/MKGeocoderAddressComponent;

    const-string v2, "city"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/mapapi/MKGeocoderAddressComponent;->city:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/baidu/mapapi/MKAddrInfo;->addressComponents:Lcom/baidu/mapapi/MKGeocoderAddressComponent;

    const-string v2, "province"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/mapapi/MKGeocoderAddressComponent;->province:Ljava/lang/String;

    const-string v1, "x"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "y"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/baidu/mapapi/GeoPoint;

    invoke-direct {v3, v2, v1}, Lcom/baidu/mapapi/GeoPoint;-><init>(II)V

    move-object/from16 v0, p2

    iput-object v3, v0, Lcom/baidu/mapapi/MKAddrInfo;->geoPt:Lcom/baidu/mapapi/GeoPoint;

    const-string v1, "aryCaption"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "aryCaption"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v1, "aryAddr"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v1, "aryTel"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string v1, "aryZip"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const-string v1, "aryType"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v6

    const-string v1, "aryX"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v7

    const-string v1, "aryY"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v8

    const-string v1, "city"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    array-length v11, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v11, :cond_0

    new-instance v12, Lcom/baidu/mapapi/MKPoiInfo;

    invoke-direct {v12}, Lcom/baidu/mapapi/MKPoiInfo;-><init>()V

    aget-object v13, v2, v1

    iput-object v13, v12, Lcom/baidu/mapapi/MKPoiInfo;->name:Ljava/lang/String;

    aget-object v13, v3, v1

    iput-object v13, v12, Lcom/baidu/mapapi/MKPoiInfo;->address:Ljava/lang/String;

    iput-object v9, v12, Lcom/baidu/mapapi/MKPoiInfo;->city:Ljava/lang/String;

    aget-object v13, v4, v1

    iput-object v13, v12, Lcom/baidu/mapapi/MKPoiInfo;->phoneNum:Ljava/lang/String;

    aget-object v13, v5, v1

    iput-object v13, v12, Lcom/baidu/mapapi/MKPoiInfo;->postCode:Ljava/lang/String;

    aget v13, v6, v1

    iput v13, v12, Lcom/baidu/mapapi/MKPoiInfo;->ePoiType:I

    new-instance v13, Lcom/baidu/mapapi/GeoPoint;

    aget v14, v8, v1

    aget v15, v7, v1

    invoke-direct {v13, v14, v15}, Lcom/baidu/mapapi/GeoPoint;-><init>(II)V

    iput-object v13, v12, Lcom/baidu/mapapi/MKPoiInfo;->pt:Lcom/baidu/mapapi/GeoPoint;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p2

    iput-object v10, v0, Lcom/baidu/mapapi/MKAddrInfo;->poiList:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method

.method private a(Landroid/os/Bundle;Lcom/baidu/mapapi/MKDrivingRouteResult;I)V
    .locals 22

    :try_start_0
    const-string v2, "st_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "st_pt_x"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "st_pt_y"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    new-instance v6, Lcom/baidu/mapapi/MKPlanNode;

    invoke-direct {v6}, Lcom/baidu/mapapi/MKPlanNode;-><init>()V

    iput-object v2, v6, Lcom/baidu/mapapi/MKPlanNode;->name:Ljava/lang/String;

    new-instance v2, Lcom/baidu/mapapi/GeoPoint;

    invoke-direct {v2, v4, v3}, Lcom/baidu/mapapi/GeoPoint;-><init>(II)V

    iput-object v2, v6, Lcom/baidu/mapapi/MKPlanNode;->pt:Lcom/baidu/mapapi/GeoPoint;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/baidu/mapapi/MKDrivingRouteResult;->a(Lcom/baidu/mapapi/MKPlanNode;)V

    const-string v2, "en_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "en_pt_x"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "en_pt_y"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    new-instance v7, Lcom/baidu/mapapi/MKPlanNode;

    invoke-direct {v7}, Lcom/baidu/mapapi/MKPlanNode;-><init>()V

    iput-object v2, v7, Lcom/baidu/mapapi/MKPlanNode;->name:Ljava/lang/String;

    new-instance v2, Lcom/baidu/mapapi/GeoPoint;

    invoke-direct {v2, v4, v3}, Lcom/baidu/mapapi/GeoPoint;-><init>(II)V

    iput-object v2, v7, Lcom/baidu/mapapi/MKPlanNode;->pt:Lcom/baidu/mapapi/GeoPoint;

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lcom/baidu/mapapi/MKDrivingRouteResult;->b(Lcom/baidu/mapapi/MKPlanNode;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "planNum"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_b

    new-instance v9, Lcom/baidu/mapapi/MKRoutePlan;

    invoke-direct {v9}, Lcom/baidu/mapapi/MKRoutePlan;-><init>()V

    const-string v2, "distance"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/baidu/mapapi/MKRoutePlan;->a(I)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "aryRoute"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v11

    const/4 v2, 0x0

    move v5, v2

    :goto_0
    array-length v2, v11

    if-ge v5, v2, :cond_a

    new-instance v12, Lcom/baidu/mapapi/MKRoute;

    invoke-direct {v12}, Lcom/baidu/mapapi/MKRoute;-><init>()V

    aget-object v2, v11, v5

    check-cast v2, Landroid/os/Bundle;

    const-string v3, "distance"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v12, v3}, Lcom/baidu/mapapi/MKRoute;->a(I)V

    const/4 v3, 0x1

    invoke-virtual {v12, v3}, Lcom/baidu/mapapi/MKRoute;->b(I)V

    iget-object v3, v6, Lcom/baidu/mapapi/MKPlanNode;->pt:Lcom/baidu/mapapi/GeoPoint;

    invoke-virtual {v12, v3}, Lcom/baidu/mapapi/MKRoute;->a(Lcom/baidu/mapapi/GeoPoint;)V

    iget-object v3, v7, Lcom/baidu/mapapi/MKPlanNode;->pt:Lcom/baidu/mapapi/GeoPoint;

    invoke-virtual {v12, v3}, Lcom/baidu/mapapi/MKRoute;->b(Lcom/baidu/mapapi/GeoPoint;)V

    const-string v3, "link"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "link"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v13, :cond_6

    const-string v3, "aryX%d"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v16

    const-string v3, "aryY%d"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v17

    if-nez v16, :cond_1

    :cond_0
    :goto_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_1

    :cond_1
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_3
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v3, v0, :cond_3

    if-eqz v3, :cond_2

    aget v19, v17, v3

    add-int/lit8 v20, v3, -0x1

    aget v20, v17, v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    aget v19, v16, v3

    add-int/lit8 v20, v3, -0x1

    aget v20, v16, v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    new-instance v19, Lcom/baidu/mapapi/GeoPoint;

    aget v20, v17, v3

    aget v21, v16, v3

    invoke-direct/range {v19 .. v21}, Lcom/baidu/mapapi/GeoPoint;-><init>(II)V

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v2

    const-string v3, "MKSearchNotifier"

    const-string v4, "parse DrivingRouteResult error!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "MKSearchNotifier"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-void

    :cond_3
    :try_start_1
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "aryMcX%d"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v16

    const-string v3, "aryMcY%d"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v17

    if-eqz v16, :cond_0

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_6
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v3, v0, :cond_5

    if-eqz v3, :cond_4

    aget v19, v17, v3

    add-int/lit8 v20, v3, -0x1

    aget v20, v17, v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    aget v19, v16, v3

    add-int/lit8 v20, v3, -0x1

    aget v20, v16, v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_4
    new-instance v19, Lcom/baidu/mapapi/GeoPoint;

    aget v20, v17, v3

    aget v21, v16, v3

    invoke-direct/range {v19 .. v21}, Lcom/baidu/mapapi/GeoPoint;-><init>(II)V

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_5
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v12, v14}, Lcom/baidu/mapapi/MKRoute;->b(Ljava/util/ArrayList;)V

    iput-object v15, v12, Lcom/baidu/mapapi/MKRoute;->a:Ljava/util/ArrayList;

    :cond_7
    const-string v3, "aryStep"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "aryStep"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v13

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    array-length v2, v13

    if-ge v3, v2, :cond_8

    aget-object v2, v13, v3

    check-cast v2, Landroid/os/Bundle;

    new-instance v14, Lcom/baidu/mapapi/MKStep;

    invoke-direct {v14}, Lcom/baidu/mapapi/MKStep;-><init>()V

    const-string v15, "x"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    const-string v16, "y"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    new-instance v17, Lcom/baidu/mapapi/GeoPoint;

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-direct {v0, v1, v15}, Lcom/baidu/mapapi/GeoPoint;-><init>(II)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/baidu/mapapi/MKStep;->a(Lcom/baidu/mapapi/GeoPoint;)V

    const-string v15, "dir"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/baidu/mapapi/MKStep;->a(I)V

    const-string v15, "tip"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/baidu/mapapi/MKStep;->a(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_8

    :cond_8
    invoke-virtual {v12, v4}, Lcom/baidu/mapapi/MKRoute;->a(Ljava/util/ArrayList;)V

    :cond_9
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v9, v10}, Lcom/baidu/mapapi/MKRoutePlan;->a(Ljava/util/ArrayList;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/baidu/mapapi/MKDrivingRouteResult;->a(Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5
.end method

.method private a(Landroid/os/Bundle;Lcom/baidu/mapapi/MKPoiResult;I)V
    .locals 22

    sparse-switch p3, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    :try_start_0
    const-string v2, "iTotal"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v2, "iCurrNumPois"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v4, "iPageIndex"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/baidu/mapapi/MKPoiResult;->b(I)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/MKPoiResult;->a(I)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/baidu/mapapi/MKPoiResult;->d(I)V

    invoke-static {}, Lcom/baidu/mapapi/MKSearch;->getPoiPageCapacity()I

    move-result v2

    div-int v2, v3, v2

    invoke-static {}, Lcom/baidu/mapapi/MKSearch;->getPoiPageCapacity()I

    move-result v4

    rem-int/2addr v3, v4

    if-lez v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/MKPoiResult;->c(I)V

    const-string v2, "aryCaption"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v2, "aryUid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string v2, "aryAddr"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const-string v2, "aryTel"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const-string v2, "aryZip"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const-string v2, "aryType"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v8

    const-string v2, "aryX"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v9

    const-string v2, "aryY"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v10

    const-string v2, "srcName"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const-string v2, "city"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    array-length v14, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v14, :cond_2

    new-instance v15, Lcom/baidu/mapapi/MKPoiInfo;

    invoke-direct {v15}, Lcom/baidu/mapapi/MKPoiInfo;-><init>()V

    aget-object v16, v3, v2

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/baidu/mapapi/MKPoiInfo;->name:Ljava/lang/String;

    aget-object v16, v5, v2

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/baidu/mapapi/MKPoiInfo;->address:Ljava/lang/String;

    aget-object v16, v4, v2

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/baidu/mapapi/MKPoiInfo;->uid:Ljava/lang/String;

    iput-object v12, v15, Lcom/baidu/mapapi/MKPoiInfo;->city:Ljava/lang/String;

    aget-object v16, v6, v2

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/baidu/mapapi/MKPoiInfo;->phoneNum:Ljava/lang/String;

    aget-object v16, v7, v2

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/baidu/mapapi/MKPoiInfo;->postCode:Ljava/lang/String;

    aget v16, v8, v2

    move/from16 v0, v16

    iput v0, v15, Lcom/baidu/mapapi/MKPoiInfo;->ePoiType:I

    const-string v16, "cater"

    aget-object v17, v11, v2

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/baidu/mapapi/MKPoiInfo;->hasCaterDetails:Z

    new-instance v16, Lcom/baidu/mapapi/GeoPoint;

    aget v17, v10, v2

    aget v18, v9, v2

    invoke-direct/range {v16 .. v18}, Lcom/baidu/mapapi/GeoPoint;-><init>(II)V

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/baidu/mapapi/MKPoiInfo;->pt:Lcom/baidu/mapapi/GeoPoint;

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/baidu/mapapi/MKPoiResult;->a(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string v3, "MKSearchNotifier"

    const-string v4, "parse PoiResult error!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "MKSearchNotifier"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "aryMultiPoiList"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v5

    if-eqz v5, :cond_0

    array-length v6, v5

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v4, v2

    :goto_2
    if-ge v4, v6, :cond_6

    new-instance v8, Lcom/baidu/mapapi/MKPoiResult;

    invoke-direct {v8}, Lcom/baidu/mapapi/MKPoiResult;-><init>()V

    aget-object v2, v5, v4

    check-cast v2, Landroid/os/Bundle;

    if-nez v2, :cond_3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_2

    :cond_3
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "iTotal"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v3, "iCurrNumPois"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v11, "iPageIndex"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v8, v10}, Lcom/baidu/mapapi/MKPoiResult;->b(I)V

    invoke-virtual {v8, v3}, Lcom/baidu/mapapi/MKPoiResult;->a(I)V

    invoke-virtual {v8, v11}, Lcom/baidu/mapapi/MKPoiResult;->d(I)V

    invoke-static {}, Lcom/baidu/mapapi/MKSearch;->getPoiPageCapacity()I

    move-result v3

    div-int v3, v10, v3

    invoke-static {}, Lcom/baidu/mapapi/MKSearch;->getPoiPageCapacity()I

    move-result v11

    rem-int/2addr v10, v11

    if-lez v10, :cond_4

    add-int/lit8 v3, v3, 0x1

    :cond_4
    invoke-virtual {v8, v3}, Lcom/baidu/mapapi/MKPoiResult;->c(I)V

    const-string v3, "aryCaption"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v10, "aryAddr"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const-string v11, "aryTel"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const-string v12, "aryZip"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const-string v13, "aryType"

    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v13

    const-string v14, "aryX"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v14

    const-string v15, "aryY"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v15

    const-string v16, "city"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    array-length v0, v3

    move/from16 v17, v0

    const/4 v2, 0x0

    :goto_4
    move/from16 v0, v17

    if-ge v2, v0, :cond_5

    new-instance v18, Lcom/baidu/mapapi/MKPoiInfo;

    invoke-direct/range {v18 .. v18}, Lcom/baidu/mapapi/MKPoiInfo;-><init>()V

    aget-object v19, v3, v2

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/baidu/mapapi/MKPoiInfo;->name:Ljava/lang/String;

    aget-object v19, v10, v2

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/baidu/mapapi/MKPoiInfo;->address:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/baidu/mapapi/MKPoiInfo;->city:Ljava/lang/String;

    aget-object v19, v11, v2

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/baidu/mapapi/MKPoiInfo;->phoneNum:Ljava/lang/String;

    aget-object v19, v12, v2

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/baidu/mapapi/MKPoiInfo;->postCode:Ljava/lang/String;

    aget v19, v13, v2

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/baidu/mapapi/MKPoiInfo;->ePoiType:I

    new-instance v19, Lcom/baidu/mapapi/GeoPoint;

    aget v20, v15, v2

    aget v21, v14, v2

    invoke-direct/range {v19 .. v21}, Lcom/baidu/mapapi/GeoPoint;-><init>(II)V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/baidu/mapapi/MKPoiInfo;->pt:Lcom/baidu/mapapi/GeoPoint;

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {v8, v9}, Lcom/baidu/mapapi/MKPoiResult;->a(Ljava/util/ArrayList;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_6
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lcom/baidu/mapapi/MKPoiResult;->b(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :sswitch_2
    :try_start_1
    const-string v2, "aryCity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v2, "aryNum"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    array-length v6, v3

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v6, :cond_7

    new-instance v7, Lcom/baidu/mapapi/MKCityListInfo;

    invoke-direct {v7}, Lcom/baidu/mapapi/MKCityListInfo;-><init>()V

    aget-object v8, v3, v2

    iput-object v8, v7, Lcom/baidu/mapapi/MKCityListInfo;->city:Ljava/lang/String;

    aget v8, v4, v2

    iput v8, v7, Lcom/baidu/mapapi/MKCityListInfo;->num:I

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_7
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/baidu/mapapi/MKPoiResult;->c(Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v2

    const-string v3, "MKSearchNotifier"

    const-string v4, "parse PoiResult error!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "MKSearchNotifier"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_2
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0x15 -> :sswitch_0
        0x2d -> :sswitch_1
    .end sparse-switch
.end method

.method private a(Landroid/os/Bundle;Lcom/baidu/mapapi/MKSuggestionResult;I)V
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "aryPoiName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v0, "aryCityName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_1

    array-length v0, v2

    :goto_0
    if-ge v1, v0, :cond_0

    new-instance v5, Lcom/baidu/mapapi/MKSuggestionInfo;

    invoke-direct {v5}, Lcom/baidu/mapapi/MKSuggestionInfo;-><init>()V

    aget-object v6, v3, v1

    iput-object v6, v5, Lcom/baidu/mapapi/MKSuggestionInfo;->city:Ljava/lang/String;

    aget-object v6, v2, v1

    iput-object v6, v5, Lcom/baidu/mapapi/MKSuggestionInfo;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v4}, Lcom/baidu/mapapi/MKSuggestionResult;->a(Ljava/util/ArrayList;)V

    invoke-virtual {p2}, Lcom/baidu/mapapi/MKSuggestionResult;->getSuggestionNum()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v0, "MKSearchNotifier"

    const-string v1, "parse SuggestionResult error!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private a(Landroid/os/Bundle;Lcom/baidu/mapapi/MKTransitRouteResult;I)V
    .locals 23

    :try_start_0
    const-string v3, "st_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "st_pt_x"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "st_pt_y"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    new-instance v9, Lcom/baidu/mapapi/MKPlanNode;

    invoke-direct {v9}, Lcom/baidu/mapapi/MKPlanNode;-><init>()V

    iput-object v3, v9, Lcom/baidu/mapapi/MKPlanNode;->name:Ljava/lang/String;

    new-instance v3, Lcom/baidu/mapapi/GeoPoint;

    invoke-direct {v3, v5, v4}, Lcom/baidu/mapapi/GeoPoint;-><init>(II)V

    iput-object v3, v9, Lcom/baidu/mapapi/MKPlanNode;->pt:Lcom/baidu/mapapi/GeoPoint;

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/baidu/mapapi/MKTransitRouteResult;->a(Lcom/baidu/mapapi/MKPlanNode;)V

    const-string v3, "en_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "en_pt_x"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "en_pt_y"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    new-instance v10, Lcom/baidu/mapapi/MKPlanNode;

    invoke-direct {v10}, Lcom/baidu/mapapi/MKPlanNode;-><init>()V

    iput-object v3, v10, Lcom/baidu/mapapi/MKPlanNode;->name:Ljava/lang/String;

    new-instance v3, Lcom/baidu/mapapi/GeoPoint;

    invoke-direct {v3, v5, v4}, Lcom/baidu/mapapi/GeoPoint;-><init>(II)V

    iput-object v3, v10, Lcom/baidu/mapapi/MKPlanNode;->pt:Lcom/baidu/mapapi/GeoPoint;

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lcom/baidu/mapapi/MKTransitRouteResult;->b(Lcom/baidu/mapapi/MKPlanNode;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "aryPlan"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v12

    if-nez v12, :cond_0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/baidu/mapapi/MKTransitRouteResult;->a(Ljava/util/ArrayList;)V

    :goto_0
    return-void

    :cond_0
    array-length v13, v12

    const/4 v3, 0x0

    move v8, v3

    :goto_1
    if-ge v8, v13, :cond_11

    new-instance v14, Lcom/baidu/mapapi/MKTransitRoutePlan;

    invoke-direct {v14}, Lcom/baidu/mapapi/MKTransitRoutePlan;-><init>()V

    iget-object v3, v9, Lcom/baidu/mapapi/MKPlanNode;->pt:Lcom/baidu/mapapi/GeoPoint;

    invoke-virtual {v14, v3}, Lcom/baidu/mapapi/MKTransitRoutePlan;->a(Lcom/baidu/mapapi/GeoPoint;)V

    iget-object v3, v10, Lcom/baidu/mapapi/MKPlanNode;->pt:Lcom/baidu/mapapi/GeoPoint;

    invoke-virtual {v14, v3}, Lcom/baidu/mapapi/MKTransitRoutePlan;->b(Lcom/baidu/mapapi/GeoPoint;)V

    aget-object v3, v12, v8

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "distance"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v14, v4}, Lcom/baidu/mapapi/MKTransitRoutePlan;->a(I)V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "aryLine"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v4

    if-nez v4, :cond_13

    const/4 v4, 0x0

    new-array v4, v4, [Landroid/os/Parcelable;

    move-object v5, v4

    :goto_2
    const/4 v4, 0x0

    move v7, v4

    :goto_3
    array-length v4, v5

    if-ge v7, v4, :cond_9

    new-instance v16, Lcom/baidu/mapapi/MKLine;

    invoke-direct/range {v16 .. v16}, Lcom/baidu/mapapi/MKLine;-><init>()V

    aget-object v4, v5, v7

    check-cast v4, Landroid/os/Bundle;

    const-string v6, "distance"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/baidu/mapapi/MKLine;->b(I)V

    const-string v6, "type"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/baidu/mapapi/MKLine;->c(I)V

    const-string v6, "numStops"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/baidu/mapapi/MKLine;->a(I)V

    const-string v6, "title"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/baidu/mapapi/MKLine;->b(Ljava/lang/String;)V

    const-string v6, "uid"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/baidu/mapapi/MKLine;->c(Ljava/lang/String;)V

    const-string v6, "getOnTip"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/baidu/mapapi/MKLine;->a(Ljava/lang/String;)V

    new-instance v6, Lcom/baidu/mapapi/MKPoiInfo;

    invoke-direct {v6}, Lcom/baidu/mapapi/MKPoiInfo;-><init>()V

    const-string v17, "getOnStopName"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/baidu/mapapi/MKPoiInfo;->name:Ljava/lang/String;

    const-string v17, "getOnStopPtX"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    const-string v17, "getOnStopPtX"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    const-string v18, "getOnStopPtY"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v18

    new-instance v19, Lcom/baidu/mapapi/GeoPoint;

    move-object/from16 v0, v19

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/baidu/mapapi/GeoPoint;-><init>(II)V

    move-object/from16 v0, v19

    iput-object v0, v6, Lcom/baidu/mapapi/MKPoiInfo;->pt:Lcom/baidu/mapapi/GeoPoint;

    :cond_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/baidu/mapapi/MKLine;->a(Lcom/baidu/mapapi/MKPoiInfo;)V

    new-instance v6, Lcom/baidu/mapapi/MKPoiInfo;

    invoke-direct {v6}, Lcom/baidu/mapapi/MKPoiInfo;-><init>()V

    const-string v17, "getOffStopName"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/baidu/mapapi/MKPoiInfo;->name:Ljava/lang/String;

    const-string v17, "getOffStopPtX"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    const-string v17, "getOffStopPtX"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    const-string v18, "getOffStopPtY"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v18

    new-instance v19, Lcom/baidu/mapapi/GeoPoint;

    move-object/from16 v0, v19

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/baidu/mapapi/GeoPoint;-><init>(II)V

    move-object/from16 v0, v19

    iput-object v0, v6, Lcom/baidu/mapapi/MKPoiInfo;->pt:Lcom/baidu/mapapi/GeoPoint;

    :cond_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/baidu/mapapi/MKLine;->b(Lcom/baidu/mapapi/MKPoiInfo;)V

    const-string v6, "aryX"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v17

    if-eqz v17, :cond_5

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    const-string v6, "aryY"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v19

    const/4 v6, 0x0

    :goto_4
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v6, v0, :cond_4

    if-eqz v6, :cond_3

    aget v20, v19, v6

    add-int/lit8 v21, v6, -0x1

    aget v21, v19, v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    aget v20, v17, v6

    add-int/lit8 v21, v6, -0x1

    aget v21, v17, v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_3
    new-instance v20, Lcom/baidu/mapapi/GeoPoint;

    aget v21, v19, v6

    aget v22, v17, v6

    invoke-direct/range {v20 .. v22}, Lcom/baidu/mapapi/GeoPoint;-><init>(II)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v3

    const-string v4, "MKSearchNotifier"

    const-string v5, "parse TransitRouteResult error!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "MKSearchNotifier"

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    :try_start_1
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/MKLine;->a(Ljava/util/ArrayList;)V

    :cond_5
    const-string v6, "aryMcX"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v6

    if-eqz v6, :cond_8

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    const-string v18, "aryMcY"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v18

    const/4 v4, 0x0

    :goto_6
    array-length v0, v6

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v4, v0, :cond_7

    if-eqz v4, :cond_6

    aget v19, v18, v4

    add-int/lit8 v20, v4, -0x1

    aget v20, v18, v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    aget v19, v6, v4

    add-int/lit8 v20, v4, -0x1

    aget v20, v6, v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_6
    new-instance v19, Lcom/baidu/mapapi/GeoPoint;

    aget v20, v18, v4

    aget v21, v6, v4

    invoke-direct/range {v19 .. v21}, Lcom/baidu/mapapi/GeoPoint;-><init>(II)V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_7
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/baidu/mapapi/MKLine;->a:Ljava/util/ArrayList;

    :cond_8
    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto/16 :goto_3

    :cond_9
    invoke-virtual {v14, v15}, Lcom/baidu/mapapi/MKTransitRoutePlan;->setLine(Ljava/util/ArrayList;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "aryRoute"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    if-nez v3, :cond_12

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/os/Parcelable;

    move-object v4, v3

    :goto_8
    const/4 v3, 0x0

    move v6, v3

    :goto_9
    array-length v3, v4

    if-ge v6, v3, :cond_10

    new-instance v15, Lcom/baidu/mapapi/MKRoute;

    invoke-direct {v15}, Lcom/baidu/mapapi/MKRoute;-><init>()V

    aget-object v3, v4, v6

    check-cast v3, Landroid/os/Bundle;

    const-string v5, "distance"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v15, v5}, Lcom/baidu/mapapi/MKRoute;->a(I)V

    const/4 v5, 0x2

    invoke-virtual {v15, v5}, Lcom/baidu/mapapi/MKRoute;->b(I)V

    const-string v5, "getOffTip"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Lcom/baidu/mapapi/MKRoute;->a(Ljava/lang/String;)V

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "startX"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "startX"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v18, "startY"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v18

    new-instance v19, Lcom/baidu/mapapi/GeoPoint;

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-direct {v0, v1, v5}, Lcom/baidu/mapapi/GeoPoint;-><init>(II)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/baidu/mapapi/MKRoute;->a(Lcom/baidu/mapapi/GeoPoint;)V

    :cond_a
    const-string v5, "aryX"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v5, "aryX"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v18

    const-string v5, "aryY"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v19

    const/4 v5, 0x0

    :goto_a
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v5, v0, :cond_c

    if-eqz v5, :cond_b

    aget v20, v19, v5

    add-int/lit8 v21, v5, -0x1

    aget v21, v19, v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    aget v20, v18, v5

    add-int/lit8 v21, v5, -0x1

    aget v21, v18, v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    :goto_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_b
    new-instance v20, Lcom/baidu/mapapi/GeoPoint;

    aget v21, v19, v5

    aget v22, v18, v5

    invoke-direct/range {v20 .. v22}, Lcom/baidu/mapapi/GeoPoint;-><init>(II)V

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_c
    const-string v5, "aryMcX"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    const-string v5, "aryMcX"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v18

    const-string v5, "aryMcY"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v19

    const/4 v5, 0x0

    :goto_c
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v5, v0, :cond_e

    if-eqz v5, :cond_d

    aget v20, v19, v5

    add-int/lit8 v21, v5, -0x1

    aget v21, v19, v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    aget v20, v18, v5

    add-int/lit8 v21, v5, -0x1

    aget v21, v18, v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    :goto_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_d
    new-instance v20, Lcom/baidu/mapapi/GeoPoint;

    aget v21, v19, v5

    aget v22, v18, v5

    invoke-direct/range {v20 .. v22}, Lcom/baidu/mapapi/GeoPoint;-><init>(II)V

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_e
    const-string v5, "endX"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    const-string v5, "endX"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v18, "endY"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    new-instance v18, Lcom/baidu/mapapi/GeoPoint;

    move-object/from16 v0, v18

    invoke-direct {v0, v3, v5}, Lcom/baidu/mapapi/GeoPoint;-><init>(II)V

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/baidu/mapapi/MKRoute;->b(Lcom/baidu/mapapi/GeoPoint;)V

    :cond_f
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v3}, Lcom/baidu/mapapi/MKRoute;->b(Ljava/util/ArrayList;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v3, v15, Lcom/baidu/mapapi/MKRoute;->a:Ljava/util/ArrayList;

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto/16 :goto_9

    :cond_10
    invoke-virtual {v14, v7}, Lcom/baidu/mapapi/MKTransitRoutePlan;->a(Ljava/util/ArrayList;)V

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v8, 0x1

    move v8, v3

    goto/16 :goto_1

    :cond_11
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/baidu/mapapi/MKTransitRouteResult;->a(Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_12
    move-object v4, v3

    goto/16 :goto_8

    :cond_13
    move-object v5, v4

    goto/16 :goto_2
.end method

.method private a(Landroid/os/Bundle;Lcom/baidu/mapapi/MKWalkingRouteResult;I)V
    .locals 23

    :try_start_0
    const-string v3, "st_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "st_pt_x"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "st_pt_y"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    new-instance v7, Lcom/baidu/mapapi/MKPlanNode;

    invoke-direct {v7}, Lcom/baidu/mapapi/MKPlanNode;-><init>()V

    iput-object v3, v7, Lcom/baidu/mapapi/MKPlanNode;->name:Ljava/lang/String;

    new-instance v3, Lcom/baidu/mapapi/GeoPoint;

    invoke-direct {v3, v5, v4}, Lcom/baidu/mapapi/GeoPoint;-><init>(II)V

    iput-object v3, v7, Lcom/baidu/mapapi/MKPlanNode;->pt:Lcom/baidu/mapapi/GeoPoint;

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lcom/baidu/mapapi/MKWalkingRouteResult;->a(Lcom/baidu/mapapi/MKPlanNode;)V

    const-string v3, "en_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "en_pt_x"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "en_pt_y"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    new-instance v8, Lcom/baidu/mapapi/MKPlanNode;

    invoke-direct {v8}, Lcom/baidu/mapapi/MKPlanNode;-><init>()V

    iput-object v3, v8, Lcom/baidu/mapapi/MKPlanNode;->name:Ljava/lang/String;

    new-instance v3, Lcom/baidu/mapapi/GeoPoint;

    invoke-direct {v3, v5, v4}, Lcom/baidu/mapapi/GeoPoint;-><init>(II)V

    iput-object v3, v8, Lcom/baidu/mapapi/MKPlanNode;->pt:Lcom/baidu/mapapi/GeoPoint;

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/baidu/mapapi/MKWalkingRouteResult;->b(Lcom/baidu/mapapi/MKPlanNode;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "planNum"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_b

    new-instance v10, Lcom/baidu/mapapi/MKRoutePlan;

    invoke-direct {v10}, Lcom/baidu/mapapi/MKRoutePlan;-><init>()V

    const-string v3, "distance"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v10, v3}, Lcom/baidu/mapapi/MKRoutePlan;->a(I)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "aryRoute"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v12

    const/4 v3, 0x0

    move v6, v3

    :goto_0
    array-length v3, v12

    if-ge v6, v3, :cond_a

    new-instance v13, Lcom/baidu/mapapi/MKRoute;

    invoke-direct {v13}, Lcom/baidu/mapapi/MKRoute;-><init>()V

    aget-object v3, v12, v6

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "distance"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v13, v4}, Lcom/baidu/mapapi/MKRoute;->a(I)V

    const/4 v4, 0x2

    invoke-virtual {v13, v4}, Lcom/baidu/mapapi/MKRoute;->b(I)V

    iget-object v4, v7, Lcom/baidu/mapapi/MKPlanNode;->pt:Lcom/baidu/mapapi/GeoPoint;

    invoke-virtual {v13, v4}, Lcom/baidu/mapapi/MKRoute;->a(Lcom/baidu/mapapi/GeoPoint;)V

    iget-object v4, v8, Lcom/baidu/mapapi/MKPlanNode;->pt:Lcom/baidu/mapapi/GeoPoint;

    invoke-virtual {v13, v4}, Lcom/baidu/mapapi/MKRoute;->b(Lcom/baidu/mapapi/GeoPoint;)V

    const-string v4, "link"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "link"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v14, :cond_6

    const-string v4, "aryX%d"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v17

    const-string v4, "aryY%d"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v18

    if-nez v17, :cond_1

    :cond_0
    :goto_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_1

    :cond_1
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_3
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v4, v0, :cond_3

    if-eqz v4, :cond_2

    aget v20, v18, v4

    add-int/lit8 v21, v4, -0x1

    aget v21, v18, v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    aget v20, v17, v4

    add-int/lit8 v21, v4, -0x1

    aget v21, v17, v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_2
    new-instance v20, Lcom/baidu/mapapi/GeoPoint;

    aget v21, v18, v4

    aget v22, v17, v4

    invoke-direct/range {v20 .. v22}, Lcom/baidu/mapapi/GeoPoint;-><init>(II)V

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v3

    const-string v4, "MKSearchNotifier"

    const-string v5, "parse WalkingRouteResult error!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "MKSearchNotifier"

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-void

    :cond_3
    :try_start_1
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "aryMcX%d"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v17

    const-string v4, "aryMcY%d"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v18

    if-eqz v17, :cond_0

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_6
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v4, v0, :cond_5

    if-eqz v4, :cond_4

    aget v20, v18, v4

    add-int/lit8 v21, v4, -0x1

    aget v21, v18, v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    aget v20, v17, v4

    add-int/lit8 v21, v4, -0x1

    aget v21, v17, v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_4
    new-instance v20, Lcom/baidu/mapapi/GeoPoint;

    aget v21, v18, v4

    aget v22, v17, v4

    invoke-direct/range {v20 .. v22}, Lcom/baidu/mapapi/GeoPoint;-><init>(II)V

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_5
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v13, v15}, Lcom/baidu/mapapi/MKRoute;->b(Ljava/util/ArrayList;)V

    move-object/from16 v0, v16

    iput-object v0, v13, Lcom/baidu/mapapi/MKRoute;->a:Ljava/util/ArrayList;

    :cond_7
    const-string v4, "aryStep"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "aryStep"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v14

    array-length v15, v14

    const/4 v3, 0x0

    move v4, v3

    :goto_8
    if-ge v4, v15, :cond_8

    aget-object v3, v14, v4

    check-cast v3, Landroid/os/Bundle;

    new-instance v16, Lcom/baidu/mapapi/MKStep;

    invoke-direct/range {v16 .. v16}, Lcom/baidu/mapapi/MKStep;-><init>()V

    const-string v17, "x"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    const-string v18, "y"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v18

    new-instance v19, Lcom/baidu/mapapi/GeoPoint;

    move-object/from16 v0, v19

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/baidu/mapapi/GeoPoint;-><init>(II)V

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/MKStep;->a(Lcom/baidu/mapapi/GeoPoint;)V

    const-string v17, "dir"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lcom/baidu/mapapi/MKStep;->a(I)V

    const-string v17, "tip"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/baidu/mapapi/MKStep;->a(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_8

    :cond_8
    invoke-virtual {v13, v5}, Lcom/baidu/mapapi/MKRoute;->a(Ljava/util/ArrayList;)V

    :cond_9
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v10, v11}, Lcom/baidu/mapapi/MKRoutePlan;->a(Ljava/util/ArrayList;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/baidu/mapapi/MKWalkingRouteResult;->a(Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5
.end method

.method private a(Landroid/os/Bundle;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapapi/MKPoiInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "aryCaption"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v0, "aryAddr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v0, "aryX"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    const-string v0, "aryY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    array-length v5, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    new-instance v6, Lcom/baidu/mapapi/MKPoiInfo;

    invoke-direct {v6}, Lcom/baidu/mapapi/MKPoiInfo;-><init>()V

    aget-object v7, v1, v0

    iput-object v7, v6, Lcom/baidu/mapapi/MKPoiInfo;->name:Ljava/lang/String;

    aget-object v7, v2, v0

    iput-object v7, v6, Lcom/baidu/mapapi/MKPoiInfo;->address:Ljava/lang/String;

    new-instance v7, Lcom/baidu/mapapi/GeoPoint;

    aget v8, v4, v0

    aget v9, v3, v0

    invoke-direct {v7, v8, v9}, Lcom/baidu/mapapi/GeoPoint;-><init>(II)V

    iput-object v7, v6, Lcom/baidu/mapapi/MKPoiInfo;->pt:Lcom/baidu/mapapi/GeoPoint;

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Landroid/os/Bundle;Lcom/baidu/mapapi/MKBusLineResult;)Z
    .locals 13

    :try_start_0
    const-string v0, "company"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "busName"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "startTime"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "endTime"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "monTicket"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v0, v1, v4}, Lcom/baidu/mapapi/MKBusLineResult;->a(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p2, v2}, Lcom/baidu/mapapi/MKBusLineResult;->a(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Lcom/baidu/mapapi/MKBusLineResult;->b(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/baidu/mapapi/MKBusLineResult;->getBusRoute()Lcom/baidu/mapapi/MKRoute;

    move-result-object v2

    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Lcom/baidu/mapapi/MKRoute;->b(I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "link"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "link"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_6

    const-string v0, "aryX%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v6

    const-string v0, "aryY%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v7

    if-nez v6, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    array-length v9, v6

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v9, :cond_3

    if-eqz v0, :cond_2

    aget v10, v7, v0

    add-int/lit8 v11, v0, -0x1

    aget v11, v7, v11

    if-ne v10, v11, :cond_2

    aget v10, v6, v0

    add-int/lit8 v11, v0, -0x1

    aget v11, v6, v11

    if-ne v10, v11, :cond_2

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    new-instance v10, Lcom/baidu/mapapi/GeoPoint;

    aget v11, v7, v0

    aget v12, v6, v0

    invoke-direct {v10, v11, v12}, Lcom/baidu/mapapi/GeoPoint;-><init>(II)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "MKSearchNotifier"

    const-string v2, "parse BusDetail error!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "MKSearchNotifier"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_3
    :try_start_1
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "aryMcX%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v6

    const-string v0, "aryMcY%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v7

    if-eqz v6, :cond_0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    array-length v9, v6

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v9, :cond_5

    if-eqz v0, :cond_4

    aget v10, v7, v0

    add-int/lit8 v11, v0, -0x1

    aget v11, v7, v11

    if-ne v10, v11, :cond_4

    aget v10, v6, v0

    add-int/lit8 v11, v0, -0x1

    aget v11, v6, v11

    if-ne v10, v11, :cond_4

    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_4
    new-instance v10, Lcom/baidu/mapapi/GeoPoint;

    aget v11, v7, v0

    aget v12, v6, v0

    invoke-direct {v10, v11, v12}, Lcom/baidu/mapapi/GeoPoint;-><init>(II)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_5
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/MKRoute;->b(Ljava/util/ArrayList;)V

    iput-object v4, v2, Lcom/baidu/mapapi/MKRoute;->a:Ljava/util/ArrayList;

    const-string v0, "stopSize"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v0, "aryStep"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "aryStep"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v5

    array-length v0, v5

    if-eq v0, v3, :cond_8

    const/4 v0, 0x0

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_5

    :cond_8
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v3, :cond_9

    aget-object v0, v5, v1

    check-cast v0, Landroid/os/Bundle;

    new-instance v6, Lcom/baidu/mapapi/MKStep;

    invoke-direct {v6}, Lcom/baidu/mapapi/MKStep;-><init>()V

    const-string v7, "x"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "y"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    new-instance v9, Lcom/baidu/mapapi/GeoPoint;

    invoke-direct {v9, v8, v7}, Lcom/baidu/mapapi/GeoPoint;-><init>(II)V

    invoke-virtual {v6, v9}, Lcom/baidu/mapapi/MKStep;->a(Lcom/baidu/mapapi/GeoPoint;)V

    const-string v7, "name"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/baidu/mapapi/MKStep;->a(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    :cond_9
    invoke-virtual {v2, v4}, Lcom/baidu/mapapi/MKRoute;->a(Ljava/util/ArrayList;)V

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/MKStep;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MKStep;->getPoint()Lcom/baidu/mapapi/GeoPoint;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/baidu/mapapi/MKRoute;->a(Lcom/baidu/mapapi/GeoPoint;)V

    add-int/lit8 v0, v3, -0x1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/MKStep;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MKStep;->getPoint()Lcom/baidu/mapapi/GeoPoint;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/baidu/mapapi/MKRoute;->b(Lcom/baidu/mapapi/GeoPoint;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_5
.end method

.method private b(Landroid/os/Bundle;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapapi/MKCityListInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "aryCity"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v0, "aryNum"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    new-instance v4, Lcom/baidu/mapapi/MKCityListInfo;

    invoke-direct {v4}, Lcom/baidu/mapapi/MKCityListInfo;-><init>()V

    aget-object v5, v1, v0

    iput-object v5, v4, Lcom/baidu/mapapi/MKCityListInfo;->city:Ljava/lang/String;

    aget v5, v2, v0

    iput v5, v4, Lcom/baidu/mapapi/MKCityListInfo;->num:I

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/mapapi/MKEvent;)V
    .locals 8

    const/4 v4, 0x1

    const v1, 0xa827ac

    const/16 v3, 0x64

    const/4 v7, 0x0

    const/4 v2, 0x0

    iget v0, p1, Lcom/baidu/mapapi/MKEvent;->a:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget v0, p1, Lcom/baidu/mapapi/MKEvent;->b:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/m;->a:Lcom/baidu/mapapi/MKSearchListener;

    iget v1, p1, Lcom/baidu/mapapi/MKEvent;->b:I

    invoke-interface {v0, v7, v2, v1}, Lcom/baidu/mapapi/MKSearchListener;->onGetPoiResult(Lcom/baidu/mapapi/MKPoiResult;II)V

    goto :goto_0

    :cond_0
    const v0, 0xa8009c

    iget v1, p1, Lcom/baidu/mapapi/MKEvent;->c:I

    invoke-static {v0, v1, v2}, Lcom/baidu/mapapi/Mj;->getNewBundle(III)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v5, Lcom/baidu/mapapi/MKPoiResult;

    invoke-direct {v5}, Lcom/baidu/mapapi/MKPoiResult;-><init>()V

    iget v1, p1, Lcom/baidu/mapapi/MKEvent;->c:I

    invoke-direct {p0, v0, v5, v1}, Lcom/baidu/mapapi/m;->a(Landroid/os/Bundle;Lcom/baidu/mapapi/MKPoiResult;I)V

    iget v0, p1, Lcom/baidu/mapapi/MKEvent;->c:I

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_3

    invoke-virtual {v5}, Lcom/baidu/mapapi/MKPoiResult;->getMultiPoiResult()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_22

    move v1, v2

    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_22

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/MKPoiResult;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MKPoiResult;->getAllPoi()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_2
    if-nez v4, :cond_2

    iget-object v0, p0, Lcom/baidu/mapapi/m;->a:Lcom/baidu/mapapi/MKSearchListener;

    iget v1, p1, Lcom/baidu/mapapi/MKEvent;->c:I

    invoke-interface {v0, v7, v1, v3}, Lcom/baidu/mapapi/MKSearchListener;->onGetPoiResult(Lcom/baidu/mapapi/MKPoiResult;II)V

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/baidu/mapapi/m;->a:Lcom/baidu/mapapi/MKSearchListener;

    iget v1, p1, Lcom/baidu/mapapi/MKEvent;->c:I

    invoke-interface {v0, v5, v1, v2}, Lcom/baidu/mapapi/MKSearchListener;->onGetPoiResult(Lcom/baidu/mapapi/MKPoiResult;II)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/baidu/mapapi/m;->a:Lcom/baidu/mapapi/MKSearchListener;

    iget v1, p1, Lcom/baidu/mapapi/MKEvent;->c:I

    invoke-interface {v0, v5, v1, v2}, Lcom/baidu/mapapi/MKSearchListener;->onGetPoiResult(Lcom/baidu/mapapi/MKPoiResult;II)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/baidu/mapapi/m;->a:Lcom/baidu/mapapi/MKSearchListener;

    invoke-interface {v0, v7, v2, v3}, Lcom/baidu/mapapi/MKSearchListener;->onGetPoiResult(Lcom/baidu/mapapi/MKPoiResult;II)V

    goto :goto_0

    :pswitch_2
    iget v0, p1, Lcom/baidu/mapapi/MKEvent;->b:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/baidu/mapapi/m;->a:Lcom/baidu/mapapi/MKSearchListener;

    iget v1, p1, Lcom/baidu/mapapi/MKEvent;->b:I

    invoke-interface {v0, v7, v1}, Lcom/baidu/mapapi/MKSearchListener;->onGetAddrResult(Lcom/baidu/mapapi/MKAddrInfo;I)V

    goto :goto_0

    :cond_5
    const v0, 0xa8009c

    iget v1, p1, Lcom/baidu/mapapi/MKEvent;->c:I

    invoke-static {v0, v1, v2}, Lcom/baidu/mapapi/Mj;->getNewBundle(III)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_8

    new-instance v1, Lcom/baidu/mapapi/MKAddrInfo;

    invoke-direct {v1}, Lcom/baidu/mapapi/MKAddrInfo;-><init>()V

    iput v4, v1, Lcom/baidu/mapapi/MKAddrInfo;->type:I

    iget v4, p1, Lcom/baidu/mapapi/MKEvent;->c:I

    invoke-direct {p0, v0, v1, v4}, Lcom/baidu/mapapi/m;->a(Landroid/os/Bundle;Lcom/baidu/mapapi/MKAddrInfo;I)V

    iget-object v0, v1, Lcom/baidu/mapapi/MKAddrInfo;->strAddr:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/baidu/mapapi/MKAddrInfo;->strAddr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/baidu/mapapi/m;->a:Lcom/baidu/mapapi/MKSearchListener;

    invoke-interface {v0, v7, v3}, Lcom/baidu/mapapi/MKSearchListener;->onGetAddrResult(Lcom/baidu/mapapi/MKAddrInfo;I)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/baidu/mapapi/m;->a:Lcom/baidu/mapapi/MKSearchListener;

    invoke-interface {v0, v1, v2}, Lcom/baidu/mapapi/MKSearchListener;->onGetAddrResult(Lcom/baidu/mapapi/MKAddrInfo;I)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/baidu/mapapi/m;->a:Lcom/baidu/mapapi/MKSearchListener;

    invoke-interface {v0, v7, v3}, Lcom/baidu/mapapi/MKSearchListener;->onGetAddrResult(Lcom/baidu/mapapi/MKAddrInfo;I)V

    goto/16 :goto_0

    :pswitch_3
    iget v0, p1, Lcom/baidu/mapapi/MKEvent;->b:I

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/mapapi/m;->a:Lcom/baidu/mapapi/MKSearchListener;

    iget v1, p1, Lcom/baidu/mapapi/MKEvent;->b:I

    invoke-interface {v0, v7, v1}, Lcom/baidu/mapapi/MKSearchListener;->onGetAddrResult(Lcom/baidu/mapapi/MKAddrInfo;I)V

    goto/16 :goto_0

    :cond_9
    const v0, 0xa8009c

    iget v1, p1, Lcom/baidu/mapapi/MKEvent;->c:I

    invoke-static {v0, v1, v2}, Lcom/baidu/mapapi/Mj;->getNewBundle(III)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_a

    new-instance v1, Lcom/baidu/mapapi/MKAddrInfo;

    invoke-direct {v1}, Lcom/baidu/mapapi/MKAddrInfo;-><init>()V

    iput v2, v1, Lcom/baidu/mapapi/MKAddrInfo;->type:I

    invoke-direct {p0, v0, v1}, Lcom/baidu/mapapi/m;->a(Landroid/os/Bundle;Lcom/baidu/mapapi/MKAddrInfo;)V

    iget-object v0, p0, Lcom/baidu/mapapi/m;->a:Lcom/baidu/mapapi/MKSearchListener;

    invoke-interface {v0, v1, v2}, Lcom/baidu/mapapi/MKSearchListener;->onGetAddrResult(Lcom/baidu/mapapi/MKAddrInfo;I)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/baidu/mapapi/m;->a:Lcom/baidu/mapapi/MKSearchListener;

    invoke-interface {v0, v7, v3}, Lcom/baidu/mapapi/MKSearchListener;->onGetAddrResult(Lcom/baidu/mapapi/MKAddrInfo;I)V

    goto/16 :goto_0

    :pswitch_4
    iget v0, p1, Lcom/baidu/mapapi/MKEvent;->b:I

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/baidu/mapapi/m;->a:Lcom/baidu/mapapi/MKSearchListener;

    iget v1, p1, Lcom/baidu/mapapi/MKEvent;->b:I

    invoke-interface {v0, v7, v1}, Lcom/baidu/mapapi/MKSearchListener;->onGetTransitRouteResult(Lcom/baidu/mapapi/MKTransitRouteResult;I)V

    goto/16 :goto_0

    :cond_b
    iget v0, p1, Lcom/baidu/mapapi/MKEvent;->c:I

    invoke-static {v1, v0, v2}, Lcom/baidu/mapapi/Mj;->getNewBundle(III)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_c

    new-instance v1, Lcom/baidu/mapapi/MKTransitRouteResult;

    invoke-direct {v1}, Lcom/baidu/mapapi/MKTransitRouteResult;-><init>()V

    iget v3, p1, Lcom/baidu/mapapi/MKEvent;->c:I

    invoke-direct {p0, v0, v1, v3}, Lcom/baidu/mapapi/m;->a(Landroid/os/Bundle;Lcom/baidu/mapapi/MKTransitRouteResult;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/m;->a:Lcom/baidu/mapapi/MKSearchListener;

    invoke-interface {v0, v1, v2}, Lcom/baidu/mapapi/MKSearchListener;->onGetTransitRouteResult(Lcom/baidu/mapapi/MKTransitRouteResult;I)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/baidu/mapapi/m;->a:Lcom/baidu/mapapi/MKSearchListener;

    invoke-interface {v0, v7, v3}, Lcom/baidu/mapapi/MKSearchListener;->onGetTransitRouteResult(Lcom/baidu/mapapi/MKTransitRouteResult;I)V

    goto/16 :goto_0

    :pswitch_5
    iget v0, p1, Lcom/baidu/mapapi/MKEvent;->b:I

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/baidu/mapapi/m;->a:Lcom/baidu/mapapi/MKSearchListener;

    iget v1, p1, Lcom/baidu/mapapi/MKEvent;->b:I

    invoke-interface {v0, v7, v1}, Lcom/baidu/mapapi/MKSearchListener;->onGetDrivingRouteResult(Lcom/baidu/mapapi/MKDrivingRouteResult;I)V

    goto/16 :goto_0

    :cond_d
    iget v0, p1, Lcom/baidu/mapapi/MKEvent;->c:I

    invoke-static {v1, v0, v2}, Lcom/baidu/mapapi/Mj;->getNewBundle(III)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_e

    new-instance v1, Lcom/baidu/mapapi/MKDrivingRouteResult;

    invoke-direct {v1}, Lcom/baidu/mapapi/MKDrivingRouteResult;-><init>()V

    iget v3, p1, Lcom/baidu/mapapi/MKEvent;->c:I

    invoke-direct {p0, v0, v1, v3}, Lcom/baidu/mapapi/m;->a(Landroid/os/Bundle;Lcom/baidu/mapapi/MKDrivingRouteResult;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/m;->a:Lcom/baidu/mapapi/MKSearchListener;

    invoke-interface {v0, v1, v2}, Lcom/baidu/mapapi/MKSearchListener;->onGetDrivingRouteResult(Lcom/baidu/mapapi/MKDrivingRouteResult;I)V

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/baidu/mapapi/m;->a:Lcom/baidu/mapapi/MKSearchListener;

    invoke-interface {v0, v7, v3}, Lcom/baidu/mapapi/MKSearchListener;->onGetDrivingRouteResult(Lcom/baidu/mapapi/MKDrivingRouteResult;I)V

    goto/16 :goto_0

    :pswitch_6
    iget v0, p1, Lcom/baidu/mapapi/MKEvent;->b:I

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/baidu/mapapi/m;->a:Lcom/baidu/mapapi/MKSearchListener;

    iget v1, p1, Lcom/baidu/mapapi/MKEvent;->b:I

    invoke-interface {v0, v7, v1}, Lcom/baidu/mapapi/MKSearchListener;->onGetWalkingRouteResult(Lcom/baidu/mapapi/MKWalkingRouteResult;I)V

    goto/16 :goto_0

    :cond_f
    iget v0, p1, Lcom/baidu/mapapi/MKEvent;->c:I

    invoke-static {v1, v0, v2}, Lcom/baidu/mapapi/Mj;->getNewBundle(III)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_10

    new-instance v1, Lcom/baidu/mapapi/MKWalkingRouteResult;

    invoke-direct {v1}, Lcom/baidu/mapapi/MKWalkingRouteResult;-><init>()V

    iget v3, p1, Lcom/baidu/mapapi/MKEvent;->c:I

    invoke-direct {p0, v0, v1, v3}, Lcom/baidu/mapapi/m;->a(Landroid/os/Bundle;Lcom/baidu/mapapi/MKWalkingRouteResult;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/m;->a:Lcom/baidu/mapapi/MKSearchListener;

    invoke-interface {v0, v1, v2}, Lcom/baidu/mapapi/MKSearchListener;->onGetWalkingRouteResult(Lcom/baidu/mapapi/MKWalkingRouteResult;I)V

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcom/baidu/mapapi/m;->a:Lcom/baidu/mapapi/MKSearchListener;

    invoke-interface {v0, v7, v3}, Lcom/baidu/mapapi/MKSearchListener;->onGetWalkingRouteResult(Lcom/baidu/mapapi/MKWalkingRouteResult;I)V

    goto/16 :goto_0

    :pswitch_7
    iget v0, p1, Lcom/baidu/mapapi/MKEvent;->c:I

    invoke-static {v1, v0, v2}, Lcom/baidu/mapapi/Mj;->getNewBundle(III)Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/baidu/mapapi/MKRouteAddrResult;

    invoke-direct {v1}, Lcom/baidu/mapapi/MKRouteAddrResult;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/baidu/mapapi/m;->a(Landroid/os/Bundle;Lcom/baidu/mapapi/MKRouteAddrResult;)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_8
    new-instance v0, Lcom/baidu/mapapi/MKDrivingRouteResult;

    invoke-direct {v0}, Lcom/baidu/mapapi/MKDrivingRouteResult;-><init>()V

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/MKDrivingRouteResult;->a(Lcom/baidu/mapapi/MKRouteAddrResult;)V

    iget-object v1, p0, Lcom/baidu/mapapi/m;->a:Lcom/baidu/mapapi/MKSearchListener;

    const/4 v2, 0x4

    invoke-interface {v1, v0, v2}, Lcom/baidu/mapapi/MKSearchListener;->onGetDrivingRouteResult(Lcom/baidu/mapapi/MKDrivingRouteResult;I)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, v1, Lcom/baidu/mapapi/MKRouteAddrResult;->mStartPoiList:Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    iget-object v0, v1, Lcom/baidu/mapapi/MKRouteAddrResult;->mEndPoiList:Ljava/util/ArrayList;

    if-nez v0, :cond_12

    :cond_11
    iget-object v0, p0, Lcom/baidu/mapapi/m;->a:Lcom/baidu/mapapi/MKSearchListener;

    invoke-interface {v0, v7, v3}, Lcom/baidu/mapapi/MKSearchListener;->onGetTransitRouteResult(Lcom/baidu/mapapi/MKTransitRouteResult;I)V

    goto/16 :goto_0

    :cond_12
    new-instance v0, Lcom/baidu/mapapi/MKTransitRouteResult;

    invoke-direct {v0}, Lcom/baidu/mapapi/MKTransitRouteResult;-><init>()V

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/MKTransitRouteResult;->a(Lcom/baidu/mapapi/MKRouteAddrResult;)V

    iget-object v1, p0, Lcom/baidu/mapapi/m;->a:Lcom/baidu/mapapi/MKSearchListener;

    const/4 v2, 0x4

    invoke-interface {v1, v0, v2}, Lcom/baidu/mapapi/MKSearchListener;->onGetTransitRouteResult(Lcom/baidu/mapapi/MKTransitRouteResult;I)V

    goto/16 :goto_0

    :pswitch_a
    new-instance v0, Lcom/baidu/mapapi/MKWalkingRouteResult;

    invoke-direct {v0}, Lcom/baidu/mapapi/MKWalkingRouteResult;-><init>()V

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/MKWalkingRouteResult;->a(Lcom/baidu/mapapi/MKRouteAddrResult;)V

    iget-object v1, p0, Lcom/baidu/mapapi/m;->a:Lcom/baidu/mapapi/MKSearchListener;

    const/4 v2, 0x4

    invoke-interface {v1, v0, v2}, Lcom/baidu/mapapi/MKSearchListener;->onGetWalkingRouteResult(Lcom/baidu/mapapi/MKWalkingRouteResult;I)V

    goto/16 :goto_0

    :pswitch_b
    iget v0, p1, Lcom/baidu/mapapi/MKEvent;->b:I

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/baidu/mapapi/m;->a:Lcom/baidu/mapapi/MKSearchListener;

    iget v1, p1, Lcom/baidu/mapapi/MKEvent;->b:I

    invoke-interface {v0, v7, v1}, Lcom/baidu/mapapi/MKSearchListener;->onGetBusDetailResult(Lcom/baidu/mapapi/MKBusLineResult;I)V

    goto/16 :goto_0

    :cond_13
    iget v0, p1, Lcom/baidu/mapapi/MKEvent;->c:I

    invoke-static {v1, v0, v2}, Lcom/baidu/mapapi/Mj;->getNewBundle(III)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_14

    new-instance v1, Lcom/baidu/mapapi/MKBusLineResult;

    invoke-direct {v1}, Lcom/baidu/mapapi/MKBusLineResult;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/baidu/mapapi/m;->a(Landroid/os/Bundle;Lcom/baidu/mapapi/MKBusLineResult;)Z

    move-result v0

    if-eqz v0, :cond_21

    :goto_3
    iget-object v0, p0, Lcom/baidu/mapapi/m;->a:Lcom/baidu/mapapi/MKSearchListener;

    invoke-interface {v0, v1, v2}, Lcom/baidu/mapapi/MKSearchListener;->onGetBusDetailResult(Lcom/baidu/mapapi/MKBusLineResult;I)V

    goto/16 :goto_0

    :cond_14
    iget-object v0, p0, Lcom/baidu/mapapi/m;->a:Lcom/baidu/mapapi/MKSearchListener;

    invoke-interface {v0, v7, v3}, Lcom/baidu/mapapi/MKSearchListener;->onGetBusDetailResult(Lcom/baidu/mapapi/MKBusLineResult;I)V

    goto/16 :goto_0

    :pswitch_c
    iget v0, p1, Lcom/baidu/mapapi/MKEvent;->b:I

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/baidu/mapapi/m;->a:Lcom/baidu/mapapi/MKSearchListener;

    iget v1, p1, Lcom/baidu/mapapi/MKEvent;->b:I

    invoke-interface {v0, v7, v1}, Lcom/baidu/mapapi/MKSearchListener;->onGetSuggestionResult(Lcom/baidu/mapapi/MKSuggestionResult;I)V

    goto/16 :goto_0

    :cond_15
    const v0, 0xa8003b

    iget v1, p1, Lcom/baidu/mapapi/MKEvent;->c:I

    invoke-static {v0, v1, v2}, Lcom/baidu/mapapi/Mj;->getNewBundle(III)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_18

    new-instance v1, Lcom/baidu/mapapi/MKSuggestionResult;

    invoke-direct {v1}, Lcom/baidu/mapapi/MKSuggestionResult;-><init>()V

    iget v5, p1, Lcom/baidu/mapapi/MKEvent;->c:I

    invoke-direct {p0, v0, v1, v5}, Lcom/baidu/mapapi/m;->a(Landroid/os/Bundle;Lcom/baidu/mapapi/MKSuggestionResult;I)V

    iget v0, p1, Lcom/baidu/mapapi/MKEvent;->c:I

    const/16 v5, 0x1fa

    if-ne v0, v5, :cond_17

    invoke-virtual {v1}, Lcom/baidu/mapapi/MKSuggestionResult;->getSuggestionNum()I

    move-result v0

    if-lez v0, :cond_20

    :goto_4
    if-nez v4, :cond_16

    iget-object v0, p0, Lcom/baidu/mapapi/m;->a:Lcom/baidu/mapapi/MKSearchListener;

    invoke-interface {v0, v7, v3}, Lcom/baidu/mapapi/MKSearchListener;->onGetSuggestionResult(Lcom/baidu/mapapi/MKSuggestionResult;I)V

    goto/16 :goto_0

    :cond_16
    iget-object v0, p0, Lcom/baidu/mapapi/m;->a:Lcom/baidu/mapapi/MKSearchListener;

    invoke-interface {v0, v1, v2}, Lcom/baidu/mapapi/MKSearchListener;->onGetSuggestionResult(Lcom/baidu/mapapi/MKSuggestionResult;I)V

    goto/16 :goto_0

    :cond_17
    iget-object v0, p0, Lcom/baidu/mapapi/m;->a:Lcom/baidu/mapapi/MKSearchListener;

    invoke-interface {v0, v1, v2}, Lcom/baidu/mapapi/MKSearchListener;->onGetSuggestionResult(Lcom/baidu/mapapi/MKSuggestionResult;I)V

    goto/16 :goto_0

    :cond_18
    iget-object v0, p0, Lcom/baidu/mapapi/m;->a:Lcom/baidu/mapapi/MKSearchListener;

    invoke-interface {v0, v7, v3}, Lcom/baidu/mapapi/MKSearchListener;->onGetSuggestionResult(Lcom/baidu/mapapi/MKSuggestionResult;I)V

    goto/16 :goto_0

    :pswitch_d
    iget v0, p1, Lcom/baidu/mapapi/MKEvent;->b:I

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/baidu/mapapi/m;->a:Lcom/baidu/mapapi/MKSearchListener;

    iget v1, p1, Lcom/baidu/mapapi/MKEvent;->b:I

    invoke-interface {v0, v7, v1}, Lcom/baidu/mapapi/MKSearchListener;->onGetRGCShareUrlResult(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_19
    const v0, 0xa8003e

    iget v1, p1, Lcom/baidu/mapapi/MKEvent;->c:I

    invoke-static {v0, v1, v2}, Lcom/baidu/mapapi/Mj;->getNewBundle(III)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1c

    const-string v1, "shortUrl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v0, p1, Lcom/baidu/mapapi/MKEvent;->c:I

    const/16 v5, 0x1f4

    if-ne v0, v5, :cond_1b

    if-eqz v1, :cond_1f

    const-string v0, ""

    if-eq v1, v0, :cond_1f

    move v0, v4

    :goto_5
    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/baidu/mapapi/m;->a:Lcom/baidu/mapapi/MKSearchListener;

    invoke-interface {v0, v7, v3}, Lcom/baidu/mapapi/MKSearchListener;->onGetRGCShareUrlResult(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_1a
    iget-object v0, p0, Lcom/baidu/mapapi/m;->a:Lcom/baidu/mapapi/MKSearchListener;

    invoke-interface {v0, v1, v2}, Lcom/baidu/mapapi/MKSearchListener;->onGetRGCShareUrlResult(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_1b
    iget-object v0, p0, Lcom/baidu/mapapi/m;->a:Lcom/baidu/mapapi/MKSearchListener;

    invoke-interface {v0, v1, v2}, Lcom/baidu/mapapi/MKSearchListener;->onGetRGCShareUrlResult(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_1c
    iget-object v0, p0, Lcom/baidu/mapapi/m;->a:Lcom/baidu/mapapi/MKSearchListener;

    invoke-interface {v0, v7, v3}, Lcom/baidu/mapapi/MKSearchListener;->onGetRGCShareUrlResult(Ljava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_e
    iget v0, p1, Lcom/baidu/mapapi/MKEvent;->b:I

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/baidu/mapapi/m;->a:Lcom/baidu/mapapi/MKSearchListener;

    iget v1, p1, Lcom/baidu/mapapi/MKEvent;->c:I

    iget v2, p1, Lcom/baidu/mapapi/MKEvent;->b:I

    invoke-interface {v0, v1, v2}, Lcom/baidu/mapapi/MKSearchListener;->onGetPoiDetailSearchResult(II)V

    goto/16 :goto_0

    :cond_1d
    const v0, 0xa80041

    iget v1, p1, Lcom/baidu/mapapi/MKEvent;->c:I

    invoke-static {v0, v1, v2}, Lcom/baidu/mapapi/Mj;->getNewBundle(III)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1e

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/baidu/mapapi/BMapManager;->b:Landroid/content/Context;

    const-class v3, Lcom/baidu/mapapi/PlaceCaterActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v0, Lcom/baidu/mapapi/BMapManager;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/baidu/mapapi/m;->a:Lcom/baidu/mapapi/MKSearchListener;

    iget v1, p1, Lcom/baidu/mapapi/MKEvent;->c:I

    iget v2, p1, Lcom/baidu/mapapi/MKEvent;->b:I

    invoke-interface {v0, v1, v2}, Lcom/baidu/mapapi/MKSearchListener;->onGetPoiDetailSearchResult(II)V

    goto/16 :goto_0

    :cond_1e
    iget-object v0, p0, Lcom/baidu/mapapi/m;->a:Lcom/baidu/mapapi/MKSearchListener;

    iget v1, p1, Lcom/baidu/mapapi/MKEvent;->c:I

    iget v2, p1, Lcom/baidu/mapapi/MKEvent;->b:I

    invoke-interface {v0, v1, v2}, Lcom/baidu/mapapi/MKSearchListener;->onGetPoiDetailSearchResult(II)V

    goto/16 :goto_0

    :cond_1f
    move v0, v2

    goto :goto_5

    :cond_20
    move v4, v2

    goto/16 :goto_4

    :cond_21
    move v2, v3

    goto/16 :goto_3

    :cond_22
    move v4, v2

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
