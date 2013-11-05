.class public abstract Lcom/xiaomi/mipush/sdk/MiPushClient;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;
    }
.end annotation


# static fields
.field private static sCurMsgId:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/xiaomi/channel/commonutils/a/a;->b:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/xiaomi/channel/commonutils/a/a;->e:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/xiaomi/channel/commonutils/a/a;->c:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/xiaomi/channel/commonutils/a/a;->g:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(I)V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/xiaomi/mipush/sdk/MiPushClient;->sCurMsgId:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "param "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not nullable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method protected static generatePacketID()Ljava/lang/String;
    .locals 5

    const-class v0, Lcom/xiaomi/mipush/sdk/MiPushClient;

    monitor-enter v0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/c/c;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v1, Lcom/xiaomi/mipush/sdk/MiPushClient;->sCurMsgId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x1

    sget-wide v3, Lcom/xiaomi/mipush/sdk/MiPushClient;->sCurMsgId:J

    add-long/2addr v1, v3

    sput-wide v1, Lcom/xiaomi/mipush/sdk/MiPushClient;->sCurMsgId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class v1, Lcom/xiaomi/mipush/sdk/MiPushClient;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    const-class v1, Lcom/xiaomi/mipush/sdk/MiPushClient;

    monitor-exit v1

    throw v0
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p0, v0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appID"

    invoke-static {p1, v0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appToken"

    invoke-static {p2, v0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a(Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;)V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/mipush/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/a;->k()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v0, v1, v2, v3}, Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;->onInitializeResult(JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/c;->a()V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/a;->f()V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/mipush/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/b/a/j;

    invoke-direct {v0}, Lcom/xiaomi/b/a/j;-><init>()V

    invoke-static {}, Lcom/xiaomi/mipush/sdk/MiPushClient;->generatePacketID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/b/a/j;->a(Ljava/lang/String;)Lcom/xiaomi/b/a/j;

    invoke-virtual {v0, p1}, Lcom/xiaomi/b/a/j;->b(Ljava/lang/String;)Lcom/xiaomi/b/a/j;

    invoke-virtual {v0, p2}, Lcom/xiaomi/b/a/j;->e(Ljava/lang/String;)Lcom/xiaomi/b/a/j;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/b/a/j;->d(Ljava/lang/String;)Lcom/xiaomi/b/a/j;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/xiaomi/mipush/sdk/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/b/a/j;->c(Ljava/lang/String;)Lcom/xiaomi/b/a/j;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/mipush/sdk/c;->a(Lcom/xiaomi/b/a/j;)V

    goto :goto_0
.end method

.method static reInitialize(Landroid/content/Context;)V
    .locals 4

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/a;->g()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/a;->f()V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/xiaomi/mipush/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/xiaomi/b/a/j;

    invoke-direct {v2}, Lcom/xiaomi/b/a/j;-><init>()V

    invoke-static {}, Lcom/xiaomi/mipush/sdk/MiPushClient;->generatePacketID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/b/a/j;->a(Ljava/lang/String;)Lcom/xiaomi/b/a/j;

    invoke-virtual {v2, v0}, Lcom/xiaomi/b/a/j;->b(Ljava/lang/String;)Lcom/xiaomi/b/a/j;

    invoke-virtual {v2, v1}, Lcom/xiaomi/b/a/j;->e(Ljava/lang/String;)Lcom/xiaomi/b/a/j;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xiaomi/b/a/j;->d(Ljava/lang/String;)Lcom/xiaomi/b/a/j;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/mipush/sdk/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xiaomi/b/a/j;->c(Ljava/lang/String;)Lcom/xiaomi/b/a/j;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaomi/mipush/sdk/c;->a(Lcom/xiaomi/b/a/j;)V

    goto :goto_0
.end method

.method public static setAlias(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "set-alias"

    invoke-static {p0, v0, p1, p2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->setCommand(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected static setCommand(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {p0, p1, v0, p3}, Lcom/xiaomi/mipush/sdk/MiPushClient;->setCommand(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method protected static setCommand(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/a;->a()V

    new-instance v1, Lcom/xiaomi/b/a/f;

    invoke-direct {v1}, Lcom/xiaomi/b/a/f;-><init>()V

    invoke-static {}, Lcom/xiaomi/mipush/sdk/MiPushClient;->generatePacketID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/b/a/f;->a(Ljava/lang/String;)Lcom/xiaomi/b/a/f;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/b/a/f;->b(Ljava/lang/String;)Lcom/xiaomi/b/a/f;

    invoke-virtual {v1, p1}, Lcom/xiaomi/b/a/f;->c(Ljava/lang/String;)Lcom/xiaomi/b/a/f;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/xiaomi/b/a/f;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p3}, Lcom/xiaomi/b/a/f;->f(Ljava/lang/String;)Lcom/xiaomi/b/a/f;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/b/a/f;->e(Ljava/lang/String;)Lcom/xiaomi/b/a/f;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/b/a/a;->j:Lcom/xiaomi/b/a/a;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/mipush/sdk/c;->a(Lorg/apache/thrift/TBase;Lcom/xiaomi/b/a/a;)V

    return-void
.end method

.method public static subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/a;->a()V

    new-instance v0, Lcom/xiaomi/b/a/o;

    invoke-direct {v0}, Lcom/xiaomi/b/a/o;-><init>()V

    invoke-static {}, Lcom/xiaomi/mipush/sdk/MiPushClient;->generatePacketID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/b/a/o;->a(Ljava/lang/String;)Lcom/xiaomi/b/a/o;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/b/a/o;->b(Ljava/lang/String;)Lcom/xiaomi/b/a/o;

    invoke-virtual {v0, p1}, Lcom/xiaomi/b/a/o;->c(Ljava/lang/String;)Lcom/xiaomi/b/a/o;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/b/a/o;->d(Ljava/lang/String;)Lcom/xiaomi/b/a/o;

    invoke-virtual {v0, p2}, Lcom/xiaomi/b/a/o;->e(Ljava/lang/String;)Lcom/xiaomi/b/a/o;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/b/a/a;->c:Lcom/xiaomi/b/a/a;

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/mipush/sdk/c;->a(Lorg/apache/thrift/TBase;Lcom/xiaomi/b/a/a;)V

    return-void
.end method

.method public static unregisterPush(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/a;->a()V

    new-instance v0, Lcom/xiaomi/b/a/q;

    invoke-direct {v0}, Lcom/xiaomi/b/a/q;-><init>()V

    invoke-static {}, Lcom/xiaomi/mipush/sdk/MiPushClient;->generatePacketID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/b/a/q;->a(Ljava/lang/String;)Lcom/xiaomi/b/a/q;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/b/a/q;->b(Ljava/lang/String;)Lcom/xiaomi/b/a/q;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/b/a/q;->c(Ljava/lang/String;)Lcom/xiaomi/b/a/q;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/b/a/q;->e(Ljava/lang/String;)Lcom/xiaomi/b/a/q;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/b/a/q;->d(Ljava/lang/String;)Lcom/xiaomi/b/a/q;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/mipush/sdk/c;->a(Lcom/xiaomi/b/a/q;)V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/a;->i()V

    return-void
.end method

.method public static unsetAlias(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "unset-alias"

    invoke-static {p0, v0, p1, p2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->setCommand(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static unsubscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/a;->a()V

    new-instance v0, Lcom/xiaomi/b/a/s;

    invoke-direct {v0}, Lcom/xiaomi/b/a/s;-><init>()V

    invoke-static {}, Lcom/xiaomi/mipush/sdk/MiPushClient;->generatePacketID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/b/a/s;->a(Ljava/lang/String;)Lcom/xiaomi/b/a/s;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/b/a/s;->b(Ljava/lang/String;)Lcom/xiaomi/b/a/s;

    invoke-virtual {v0, p1}, Lcom/xiaomi/b/a/s;->c(Ljava/lang/String;)Lcom/xiaomi/b/a/s;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/b/a/s;->d(Ljava/lang/String;)Lcom/xiaomi/b/a/s;

    invoke-virtual {v0, p2}, Lcom/xiaomi/b/a/s;->e(Ljava/lang/String;)Lcom/xiaomi/b/a/s;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/b/a/a;->d:Lcom/xiaomi/b/a/a;

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/mipush/sdk/c;->a(Lorg/apache/thrift/TBase;Lcom/xiaomi/b/a/a;)V

    return-void
.end method
