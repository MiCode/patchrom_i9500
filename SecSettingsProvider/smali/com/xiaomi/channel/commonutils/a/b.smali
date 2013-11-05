.class public Lcom/xiaomi/channel/commonutils/a/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(Z)V
    .locals 1

    sget-boolean v0, Lcom/xiaomi/channel/commonutils/a/a;->b:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/channel/commonutils/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/xiaomi/channel/commonutils/a/a;->e:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/xiaomi/channel/commonutils/a/a;->g:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0}, Ljunit/framework/Assert;->assertTrue(Z)V

    :cond_1
    return-void
.end method
