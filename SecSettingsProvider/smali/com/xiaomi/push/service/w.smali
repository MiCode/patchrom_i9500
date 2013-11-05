.class Lcom/xiaomi/push/service/w;
.super Lcom/xiaomi/push/service/d;


# instance fields
.field final synthetic a:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/service/w;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {p0, p2}, Lcom/xiaomi/push/service/d;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 3

    invoke-super {p0}, Lcom/xiaomi/push/service/d;->onLooperPrepared()V

    iget-object v0, p0, Lcom/xiaomi/push/service/w;->a:Lcom/xiaomi/push/service/XMPushService;

    new-instance v1, Lcom/xiaomi/push/service/x;

    const/16 v2, 0xb

    invoke-direct {v1, p0, v2}, Lcom/xiaomi/push/service/x;-><init>(Lcom/xiaomi/push/service/w;I)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$e;)V

    return-void
.end method
