.class public Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsTraceCell;
.super Ljava/lang/Object;
.source "MiuiAdsTraceCell.java"


# instance fields
.field public adId:J

.field public content:Ljava/lang/String;

.field public showType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;)V
    .locals 2
    .parameter "cell"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iget-wide v0, p1, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->id:J

    iput-wide v0, p0, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsTraceCell;->adId:J

    .line 23
    iget v0, p1, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->showType:I

    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsTraceCell;->showType:I

    .line 24
    return-void
.end method
