.class public Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;
.super Ljava/lang/Object;
.source "MiuiAdsCell.java"


# instance fields
.field public adsJsonString:Ljava/lang/String;

.field private downloadedImgPath:Ljava/lang/String;

.field public failedCount:I

.field public id:J

.field public lastShowTime:J

.field public multi:I

.field public nonsense:I

.field public receiveUpperBound:I

.field public showType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;)V
    .locals 2
    .parameter "other"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iget-wide v0, p1, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->id:J

    iput-wide v0, p0, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->id:J

    .line 49
    iget v0, p1, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->showType:I

    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->showType:I

    .line 50
    iget-object v0, p1, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->adsJsonString:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->adsJsonString:Ljava/lang/String;

    .line 51
    iget v0, p1, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->nonsense:I

    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->nonsense:I

    .line 52
    iget v0, p1, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->receiveUpperBound:I

    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->receiveUpperBound:I

    .line 53
    iget-wide v0, p1, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->lastShowTime:J

    iput-wide v0, p0, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->lastShowTime:J

    .line 54
    iget v0, p1, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->failedCount:I

    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->failedCount:I

    .line 55
    iget-object v0, p1, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->downloadedImgPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->downloadedImgPath:Ljava/lang/String;

    .line 56
    iget v0, p1, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->multi:I

    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->multi:I

    .line 57
    return-void
.end method


# virtual methods
.method public getDownloadedImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->downloadedImgPath:Ljava/lang/String;

    return-object v0
.end method

.method public setDownloadedImagePath(Ljava/lang/String;)V
    .locals 0
    .parameter "downloadImagePath"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->downloadedImgPath:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setValuesByJson(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "adsCellJson"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 69
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->id:J

    .line 70
    const-string v0, "showType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->showType:I

    .line 71
    const-string v0, "nonsense"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->nonsense:I

    .line 72
    const-string v0, "receiveUpperBound"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->receiveUpperBound:I

    .line 73
    const-string v0, "lastShowTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->lastShowTime:J

    .line 74
    const-string v0, "multi"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->multi:I

    .line 75
    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 83
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 84
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "id"

    iget-wide v2, p0, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 85
    const-string v1, "showType"

    iget v2, p0, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->showType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 86
    const-string v1, "nonsense"

    iget v2, p0, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->nonsense:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 87
    const-string v1, "receiveUpperBound"

    iget v2, p0, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->receiveUpperBound:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 88
    const-string v1, "lastShowTime"

    iget-wide v2, p0, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->lastShowTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 89
    const-string v1, "multi"

    iget v2, p0, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->multi:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 90
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, ""

    return-object v0
.end method
