.class public Lcom/baidu/mapapi/cloud/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/mapapi/cloud/c;


# instance fields
.field a:Lcom/baidu/mapapi/cloud/GeoSearchListener;


# direct methods
.method public constructor <init>(Lcom/baidu/mapapi/cloud/GeoSearchListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/mapapi/cloud/b;->a:Lcom/baidu/mapapi/cloud/GeoSearchListener;

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/mapapi/cloud/a;)V
    .locals 27

    move-object/from16 v0, p1

    iget v2, v0, Lcom/baidu/mapapi/cloud/a;->a:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const v2, 0xa8009f

    move-object/from16 v0, p1

    iget v3, v0, Lcom/baidu/mapapi/cloud/a;->c:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/baidu/mapapi/Mj;->getNewBundle(III)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v4, Lcom/baidu/mapapi/cloud/GeoSearchResult;

    invoke-direct {v4}, Lcom/baidu/mapapi/cloud/GeoSearchResult;-><init>()V

    const-string v3, "status"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v4, Lcom/baidu/mapapi/cloud/GeoSearchResult;->status:I

    const-string v3, "message"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/baidu/mapapi/cloud/GeoSearchResult;->message:Ljava/lang/String;

    const-string v3, "size"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v4, Lcom/baidu/mapapi/cloud/GeoSearchResult;->size:I

    const-string v3, "total"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v4, Lcom/baidu/mapapi/cloud/GeoSearchResult;->total:I

    const-string v3, "content_size"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v4, Lcom/baidu/mapapi/cloud/GeoSearchResult;->poiList:Ljava/util/List;

    const-string v3, "uid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const-string v3, "databox_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const-string v3, "name"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const-string v3, "addr"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const-string v3, "tel"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const-string v3, "zip"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const-string v3, "province_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v12

    const-string v3, "city_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v13

    const-string v3, "district_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v14

    const-string v3, "province"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    const-string v3, "city"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    const-string v3, "district"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    const-string v3, "latitude"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v18

    const-string v3, "longitude"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v19

    const-string v3, "tag"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    const-string v3, "ext"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_1

    new-instance v22, Lcom/baidu/mapapi/cloud/CustomPoiInfo;

    invoke-direct/range {v22 .. v22}, Lcom/baidu/mapapi/cloud/CustomPoiInfo;-><init>()V

    aget-object v2, v6, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, v22

    iput v2, v0, Lcom/baidu/mapapi/cloud/CustomPoiInfo;->uid:I

    aget-object v2, v7, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, v22

    iput v2, v0, Lcom/baidu/mapapi/cloud/CustomPoiInfo;->databoxId:I

    aget-object v2, v8, v3

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/baidu/mapapi/cloud/CustomPoiInfo;->name:Ljava/lang/String;

    aget-object v2, v9, v3

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/baidu/mapapi/cloud/CustomPoiInfo;->address:Ljava/lang/String;

    aget-object v2, v10, v3

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/baidu/mapapi/cloud/CustomPoiInfo;->telephone:Ljava/lang/String;

    aget-object v2, v11, v3

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/baidu/mapapi/cloud/CustomPoiInfo;->postCode:Ljava/lang/String;

    aget v2, v12, v3

    move-object/from16 v0, v22

    iput v2, v0, Lcom/baidu/mapapi/cloud/CustomPoiInfo;->provinceId:I

    aget v2, v13, v3

    move-object/from16 v0, v22

    iput v2, v0, Lcom/baidu/mapapi/cloud/CustomPoiInfo;->cityId:I

    aget v2, v14, v3

    move-object/from16 v0, v22

    iput v2, v0, Lcom/baidu/mapapi/cloud/CustomPoiInfo;->districtId:I

    aget-object v2, v15, v3

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/baidu/mapapi/cloud/CustomPoiInfo;->provinceName:Ljava/lang/String;

    aget-object v2, v16, v3

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/baidu/mapapi/cloud/CustomPoiInfo;->cityName:Ljava/lang/String;

    aget-object v2, v17, v3

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/baidu/mapapi/cloud/CustomPoiInfo;->districtName:Ljava/lang/String;

    aget v2, v18, v3

    move-object/from16 v0, v22

    iput v2, v0, Lcom/baidu/mapapi/cloud/CustomPoiInfo;->latitude:F

    aget v2, v19, v3

    move-object/from16 v0, v22

    iput v2, v0, Lcom/baidu/mapapi/cloud/CustomPoiInfo;->longitude:F

    aget-object v2, v20, v3

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/baidu/mapapi/cloud/CustomPoiInfo;->tag:Ljava/lang/String;

    aget-object v2, v21, v3

    if-eqz v2, :cond_0

    const-string v23, ""

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_0

    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/baidu/mapapi/cloud/CustomPoiInfo;->poiExtend:Ljava/util/Map;

    :try_start_0
    new-instance v23, Lorg/json/JSONObject;

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v24

    :goto_2
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/baidu/mapapi/cloud/CustomPoiInfo;->poiExtend:Ljava/util/Map;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    iget-object v2, v4, Lcom/baidu/mapapi/cloud/GeoSearchResult;->poiList:Ljava/util/List;

    move-object/from16 v0, v22

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_1

    :cond_1
    iget-object v2, v4, Lcom/baidu/mapapi/cloud/GeoSearchResult;->poiList:Ljava/util/List;

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mapapi/cloud/b;->a:Lcom/baidu/mapapi/cloud/GeoSearchListener;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/baidu/mapapi/cloud/a;->c:I

    const/16 v5, 0x64

    invoke-interface {v2, v4, v3, v5}, Lcom/baidu/mapapi/cloud/GeoSearchListener;->onGetGeoResult(Lcom/baidu/mapapi/cloud/GeoSearchResult;II)V

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mapapi/cloud/b;->a:Lcom/baidu/mapapi/cloud/GeoSearchListener;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/baidu/mapapi/cloud/a;->c:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/baidu/mapapi/cloud/a;->b:I

    invoke-interface {v2, v4, v3, v5}, Lcom/baidu/mapapi/cloud/GeoSearchListener;->onGetGeoResult(Lcom/baidu/mapapi/cloud/GeoSearchResult;II)V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mapapi/cloud/b;->a:Lcom/baidu/mapapi/cloud/GeoSearchListener;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    iget v4, v0, Lcom/baidu/mapapi/cloud/a;->c:I

    const/16 v5, 0x64

    invoke-interface {v2, v3, v4, v5}, Lcom/baidu/mapapi/cloud/GeoSearchListener;->onGetGeoResult(Lcom/baidu/mapapi/cloud/GeoSearchResult;II)V

    goto/16 :goto_0

    :pswitch_1
    const v2, 0xa8009f

    move-object/from16 v0, p1

    iget v3, v0, Lcom/baidu/mapapi/cloud/a;->c:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/baidu/mapapi/Mj;->getNewBundle(III)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_7

    new-instance v4, Lcom/baidu/mapapi/cloud/DetailResult;

    invoke-direct {v4}, Lcom/baidu/mapapi/cloud/DetailResult;-><init>()V

    const-string v3, "status"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v4, Lcom/baidu/mapapi/cloud/DetailResult;->status:I

    const-string v3, "message"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/baidu/mapapi/cloud/DetailResult;->message:Ljava/lang/String;

    const-string v3, "content_size"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const/4 v3, 0x1

    if-ne v5, v3, :cond_5

    new-instance v3, Lcom/baidu/mapapi/cloud/CustomPoiInfo;

    invoke-direct {v3}, Lcom/baidu/mapapi/cloud/CustomPoiInfo;-><init>()V

    iput-object v3, v4, Lcom/baidu/mapapi/cloud/DetailResult;->content:Lcom/baidu/mapapi/cloud/CustomPoiInfo;

    const-string v3, "uid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const-string v3, "databox_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const-string v3, "name"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const-string v3, "addr"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const-string v3, "tel"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const-string v3, "zip"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const-string v3, "province_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v12

    const-string v3, "city_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v13

    const-string v3, "district_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v14

    const-string v3, "province"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    const-string v3, "city"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    const-string v3, "district"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    const-string v3, "latitude"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v18

    const-string v3, "longitude"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v19

    const-string v3, "tag"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    const-string v3, "ext"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    const/4 v2, 0x0

    move v3, v2

    :goto_3
    if-ge v3, v5, :cond_5

    iget-object v2, v4, Lcom/baidu/mapapi/cloud/DetailResult;->content:Lcom/baidu/mapapi/cloud/CustomPoiInfo;

    aget-object v22, v6, v3

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    iput v0, v2, Lcom/baidu/mapapi/cloud/CustomPoiInfo;->uid:I

    iget-object v2, v4, Lcom/baidu/mapapi/cloud/DetailResult;->content:Lcom/baidu/mapapi/cloud/CustomPoiInfo;

    aget-object v22, v7, v3

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    iput v0, v2, Lcom/baidu/mapapi/cloud/CustomPoiInfo;->databoxId:I

    iget-object v2, v4, Lcom/baidu/mapapi/cloud/DetailResult;->content:Lcom/baidu/mapapi/cloud/CustomPoiInfo;

    aget-object v22, v8, v3

    move-object/from16 v0, v22

    iput-object v0, v2, Lcom/baidu/mapapi/cloud/CustomPoiInfo;->name:Ljava/lang/String;

    iget-object v2, v4, Lcom/baidu/mapapi/cloud/DetailResult;->content:Lcom/baidu/mapapi/cloud/CustomPoiInfo;

    aget-object v22, v9, v3

    move-object/from16 v0, v22

    iput-object v0, v2, Lcom/baidu/mapapi/cloud/CustomPoiInfo;->address:Ljava/lang/String;

    iget-object v2, v4, Lcom/baidu/mapapi/cloud/DetailResult;->content:Lcom/baidu/mapapi/cloud/CustomPoiInfo;

    aget-object v22, v10, v3

    move-object/from16 v0, v22

    iput-object v0, v2, Lcom/baidu/mapapi/cloud/CustomPoiInfo;->telephone:Ljava/lang/String;

    iget-object v2, v4, Lcom/baidu/mapapi/cloud/DetailResult;->content:Lcom/baidu/mapapi/cloud/CustomPoiInfo;

    aget-object v22, v11, v3

    move-object/from16 v0, v22

    iput-object v0, v2, Lcom/baidu/mapapi/cloud/CustomPoiInfo;->postCode:Ljava/lang/String;

    iget-object v2, v4, Lcom/baidu/mapapi/cloud/DetailResult;->content:Lcom/baidu/mapapi/cloud/CustomPoiInfo;

    aget v22, v12, v3

    move/from16 v0, v22

    iput v0, v2, Lcom/baidu/mapapi/cloud/CustomPoiInfo;->provinceId:I

    iget-object v2, v4, Lcom/baidu/mapapi/cloud/DetailResult;->content:Lcom/baidu/mapapi/cloud/CustomPoiInfo;

    aget v22, v13, v3

    move/from16 v0, v22

    iput v0, v2, Lcom/baidu/mapapi/cloud/CustomPoiInfo;->cityId:I

    iget-object v2, v4, Lcom/baidu/mapapi/cloud/DetailResult;->content:Lcom/baidu/mapapi/cloud/CustomPoiInfo;

    aget v22, v14, v3

    move/from16 v0, v22

    iput v0, v2, Lcom/baidu/mapapi/cloud/CustomPoiInfo;->districtId:I

    iget-object v2, v4, Lcom/baidu/mapapi/cloud/DetailResult;->content:Lcom/baidu/mapapi/cloud/CustomPoiInfo;

    aget-object v22, v15, v3

    move-object/from16 v0, v22

    iput-object v0, v2, Lcom/baidu/mapapi/cloud/CustomPoiInfo;->provinceName:Ljava/lang/String;

    iget-object v2, v4, Lcom/baidu/mapapi/cloud/DetailResult;->content:Lcom/baidu/mapapi/cloud/CustomPoiInfo;

    aget-object v22, v16, v3

    move-object/from16 v0, v22

    iput-object v0, v2, Lcom/baidu/mapapi/cloud/CustomPoiInfo;->cityName:Ljava/lang/String;

    iget-object v2, v4, Lcom/baidu/mapapi/cloud/DetailResult;->content:Lcom/baidu/mapapi/cloud/CustomPoiInfo;

    aget-object v22, v17, v3

    move-object/from16 v0, v22

    iput-object v0, v2, Lcom/baidu/mapapi/cloud/CustomPoiInfo;->districtName:Ljava/lang/String;

    iget-object v2, v4, Lcom/baidu/mapapi/cloud/DetailResult;->content:Lcom/baidu/mapapi/cloud/CustomPoiInfo;

    aget v22, v18, v3

    move/from16 v0, v22

    iput v0, v2, Lcom/baidu/mapapi/cloud/CustomPoiInfo;->latitude:F

    iget-object v2, v4, Lcom/baidu/mapapi/cloud/DetailResult;->content:Lcom/baidu/mapapi/cloud/CustomPoiInfo;

    aget v22, v19, v3

    move/from16 v0, v22

    iput v0, v2, Lcom/baidu/mapapi/cloud/CustomPoiInfo;->longitude:F

    iget-object v2, v4, Lcom/baidu/mapapi/cloud/DetailResult;->content:Lcom/baidu/mapapi/cloud/CustomPoiInfo;

    aget-object v22, v20, v3

    move-object/from16 v0, v22

    iput-object v0, v2, Lcom/baidu/mapapi/cloud/CustomPoiInfo;->tag:Ljava/lang/String;

    aget-object v2, v21, v3

    if-eqz v2, :cond_4

    const-string v22, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_4

    iget-object v0, v4, Lcom/baidu/mapapi/cloud/DetailResult;->content:Lcom/baidu/mapapi/cloud/CustomPoiInfo;

    move-object/from16 v22, v0

    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/baidu/mapapi/cloud/CustomPoiInfo;->poiExtend:Ljava/util/Map;

    :try_start_1
    new-instance v22, Lorg/json/JSONObject;

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v23

    :goto_4
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    iget-object v0, v4, Lcom/baidu/mapapi/cloud/DetailResult;->content:Lcom/baidu/mapapi/cloud/CustomPoiInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/baidu/mapapi/cloud/CustomPoiInfo;->poiExtend:Ljava/util/Map;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_3

    :cond_5
    iget-object v2, v4, Lcom/baidu/mapapi/cloud/DetailResult;->content:Lcom/baidu/mapapi/cloud/CustomPoiInfo;

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mapapi/cloud/b;->a:Lcom/baidu/mapapi/cloud/GeoSearchListener;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/baidu/mapapi/cloud/a;->c:I

    const/16 v5, 0x64

    invoke-interface {v2, v4, v3, v5}, Lcom/baidu/mapapi/cloud/GeoSearchListener;->onGetGeoDetailsResult(Lcom/baidu/mapapi/cloud/DetailResult;II)V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mapapi/cloud/b;->a:Lcom/baidu/mapapi/cloud/GeoSearchListener;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/baidu/mapapi/cloud/a;->c:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/baidu/mapapi/cloud/a;->b:I

    invoke-interface {v2, v4, v3, v5}, Lcom/baidu/mapapi/cloud/GeoSearchListener;->onGetGeoDetailsResult(Lcom/baidu/mapapi/cloud/DetailResult;II)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mapapi/cloud/b;->a:Lcom/baidu/mapapi/cloud/GeoSearchListener;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    iget v4, v0, Lcom/baidu/mapapi/cloud/a;->c:I

    const/16 v5, 0x64

    invoke-interface {v2, v3, v4, v5}, Lcom/baidu/mapapi/cloud/GeoSearchListener;->onGetGeoDetailsResult(Lcom/baidu/mapapi/cloud/DetailResult;II)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1f8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
