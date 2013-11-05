.class Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogTraceTask;
.super Landroid/os/AsyncTask;
.source "AdsLogTraceTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field mAppId:Ljava/lang/String;

.field mAppToken:Ljava/lang/String;

.field mCell:Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;

.field mTraceListener:Lcom/xiaomi/miui/pushads/sdk/trace/IAdsTraceListener;


# direct methods
.method public constructor <init>(Lcom/xiaomi/miui/pushads/sdk/trace/IAdsTraceListener;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;)V
    .locals 0
    .parameter "traceListener"
    .parameter "appId"
    .parameter "appToken"
    .parameter "cell"

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 17
    iput-object p2, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogTraceTask;->mAppId:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogTraceTask;->mAppToken:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogTraceTask;->mTraceListener:Lcom/xiaomi/miui/pushads/sdk/trace/IAdsTraceListener;

    .line 20
    iput-object p4, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogTraceTask;->mCell:Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;

    .line 21
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .parameter "params"

    .prologue
    .line 25
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogTraceTask;->mAppId:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogTraceTask;->mAppToken:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogTraceTask;->mCell:Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;

    invoke-static {v1, v2, v3}, Lcom/xiaomi/miui/pushads/sdk/trace/AdsNetUtil;->doAdsTrackLog(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;)I

    move-result v0

    .line 26
    .local v0, retCode:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogTraceTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 3

    .prologue
    .line 41
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 42
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogTraceTask;->mTraceListener:Lcom/xiaomi/miui/pushads/sdk/trace/IAdsTraceListener;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogTraceTask;->mTraceListener:Lcom/xiaomi/miui/pushads/sdk/trace/IAdsTraceListener;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogTraceTask;->mCell:Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/miui/pushads/sdk/trace/IAdsTraceListener;->onTraceTaskFinished(Ljava/lang/Integer;Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;)V

    .line 45
    :cond_0
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .parameter "integer"

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 32
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogTraceTask;->mTraceListener:Lcom/xiaomi/miui/pushads/sdk/trace/IAdsTraceListener;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogTraceTask;->mTraceListener:Lcom/xiaomi/miui/pushads/sdk/trace/IAdsTraceListener;

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogTraceTask;->mCell:Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;

    invoke-interface {v0, p1, v1}, Lcom/xiaomi/miui/pushads/sdk/trace/IAdsTraceListener;->onTraceTaskFinished(Ljava/lang/Integer;Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;)V

    .line 35
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 10
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogTraceTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
