.class public Lcom/xiaomi/miui/pushads/sdk/BubbleAdsCell;
.super Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;
.source "BubbleAdsCell.java"


# instance fields
.field public content:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/BubbleAdsCell;->content:Ljava/lang/String;

    return-object v0
.end method

.method public setValuesByJson(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "adsCellJson"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->setValuesByJson(Lorg/json/JSONObject;)V

    .line 38
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/BubbleAdsCell;->content:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 58
    invoke-super {p0}, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 59
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "content"

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/BubbleAdsCell;->content:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 44
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 45
    .local v0, object:Lorg/json/JSONObject;
    const-string v1, "id"

    iget-wide v2, p0, Lcom/xiaomi/miui/pushads/sdk/BubbleAdsCell;->id:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 46
    const-string v1, "showType"

    iget v2, p0, Lcom/xiaomi/miui/pushads/sdk/BubbleAdsCell;->showType:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 47
    const-string v1, "lastShowTime"

    iget-wide v2, p0, Lcom/xiaomi/miui/pushads/sdk/BubbleAdsCell;->lastShowTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 48
    const-string v1, "content"

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/BubbleAdsCell;->content:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 53
    .end local v0           #object:Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 50
    :catch_0
    move-exception v1

    .line 53
    const-string v1, ""

    goto :goto_0
.end method
