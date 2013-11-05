.class public Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;
.super Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;
.source "NotifyAdsCell.java"


# instance fields
.field public actionText:Ljava/lang/String;

.field public actionUrl:Ljava/lang/String;

.field public imgUrl:Ljava/lang/String;

.field public priText:Ljava/lang/String;

.field public secText:Ljava/lang/String;

.field public titText:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;)V
    .locals 1
    .parameter "other"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;-><init>(Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;)V

    .line 47
    iget-object v0, p1, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->actionUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->actionUrl:Ljava/lang/String;

    .line 48
    iget-object v0, p1, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->imgUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->imgUrl:Ljava/lang/String;

    .line 49
    iget-object v0, p1, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->titText:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->titText:Ljava/lang/String;

    .line 50
    iget-object v0, p1, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->priText:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->priText:Ljava/lang/String;

    .line 51
    iget-object v0, p1, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->secText:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->secText:Ljava/lang/String;

    .line 52
    iget-object v0, p1, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->type:Ljava/lang/String;

    .line 53
    iget-object v0, p1, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->actionText:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->actionText:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method public setValuesByJson(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "adsCellJson"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->setValuesByJson(Lorg/json/JSONObject;)V

    .line 58
    const-string v0, "actionUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->actionUrl:Ljava/lang/String;

    .line 59
    const-string v0, "imgUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->imgUrl:Ljava/lang/String;

    .line 60
    const-string v0, "titText"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->titText:Ljava/lang/String;

    .line 61
    const-string v0, "priText"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->priText:Ljava/lang/String;

    .line 62
    const-string v0, "secText"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->secText:Ljava/lang/String;

    .line 63
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->type:Ljava/lang/String;

    .line 64
    const-string v0, "actionText"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->actionText:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 91
    invoke-super {p0}, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 92
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "actionUrl"

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->actionUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v1, "imgUrl"

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->imgUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v1, "titText"

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->titText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v1, "priText"

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->priText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v1, "secText"

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->secText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v1, "type"

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v1, "actionText"

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->actionText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 69
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 70
    .local v0, object:Lorg/json/JSONObject;
    const-string v1, "showType"

    iget v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->showType:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 71
    const-string v1, "lastShowTime"

    iget-wide v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->lastShowTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 72
    const-string v1, "actionUrl"

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->actionUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string v1, "type"

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const-string v1, "imgUrl"

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->imgUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    const-string v1, "receiveUpperBound"

    iget v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->receiveUpperBound:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 76
    const-string v1, "downloadedPath"

    invoke-virtual {p0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->getDownloadedImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    const-string v1, "titText"

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->titText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    const-string v1, "priText"

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->priText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    const-string v1, "secText"

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->secText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    const-string v1, "actionText"

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->actionText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 86
    .end local v0           #object:Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 82
    :catch_0
    move-exception v1

    .line 86
    const/4 v1, 0x0

    goto :goto_0
.end method
