.class Lcom/xiaomi/network/c;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/xiaomi/network/UploadHostStatHelper;


# direct methods
.method constructor <init>(Lcom/xiaomi/network/UploadHostStatHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/network/c;->a:Lcom/xiaomi/network/UploadHostStatHelper;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/network/c;->a:Lcom/xiaomi/network/UploadHostStatHelper;

    invoke-static {v0}, Lcom/xiaomi/network/UploadHostStatHelper;->a(Lcom/xiaomi/network/UploadHostStatHelper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/network/UploadHostStatHelper$HttpRecordCallback;

    invoke-interface {v0}, Lcom/xiaomi/network/UploadHostStatHelper$HttpRecordCallback;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0}, Lcom/xiaomi/network/UploadHostStatHelper$HttpRecordCallback;->b()D

    move-result-wide v3

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/network/c;->a:Lcom/xiaomi/network/UploadHostStatHelper;

    invoke-static {v0, v2, v3, v4}, Lcom/xiaomi/network/UploadHostStatHelper;->a(Lcom/xiaomi/network/UploadHostStatHelper;Ljava/util/List;D)V
    :try_end_0
    .catch Lorg/apache/thrift/TException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/apache/thrift/TException;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/network/c;->a:Lcom/xiaomi/network/UploadHostStatHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/network/UploadHostStatHelper;->a(Lcom/xiaomi/network/UploadHostStatHelper;Z)Z

    return-void
.end method
