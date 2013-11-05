.class Lcom/xiaomi/push/service/e;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/xiaomi/push/service/d;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/d;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/service/e;->a:Lcom/xiaomi/push/service/d;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/push/service/e;->a:Lcom/xiaomi/push/service/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/d;->a(Lcom/xiaomi/push/service/d;Z)Z

    iget-object v0, p0, Lcom/xiaomi/push/service/e;->a:Lcom/xiaomi/push/service/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/xiaomi/push/service/d;->a(Lcom/xiaomi/push/service/d;J)J

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/xiaomi/push/service/XMPushService$e;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaomi/push/service/XMPushService$e;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService$e;->c()V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/service/e;->a:Lcom/xiaomi/push/service/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/d;->a(Lcom/xiaomi/push/service/d;Z)Z

    return-void
.end method
