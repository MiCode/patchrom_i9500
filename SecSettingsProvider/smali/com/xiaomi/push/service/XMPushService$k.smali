.class Lcom/xiaomi/push/service/XMPushService$k;
.super Lcom/xiaomi/push/service/XMPushService$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/XMPushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "k"
.end annotation


# instance fields
.field a:Lcom/xiaomi/push/service/p$b;

.field b:I

.field c:Ljava/lang/String;

.field e:Ljava/lang/String;

.field final synthetic f:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/p$b;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/push/service/XMPushService$k;->f:Lcom/xiaomi/push/service/XMPushService;

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService$e;-><init>(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService$k;->a:Lcom/xiaomi/push/service/p$b;

    iput-object p2, p0, Lcom/xiaomi/push/service/XMPushService$k;->a:Lcom/xiaomi/push/service/p$b;

    iput p3, p0, Lcom/xiaomi/push/service/XMPushService$k;->b:I

    iput-object p4, p0, Lcom/xiaomi/push/service/XMPushService$k;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/push/service/XMPushService$k;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService$k;->a:Lcom/xiaomi/push/service/p$b;

    iget-object v0, v0, Lcom/xiaomi/push/service/p$b;->m:Lcom/xiaomi/push/service/p$c;

    sget-object v1, Lcom/xiaomi/push/service/p$c;->a:Lcom/xiaomi/push/service/p$c;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService$k;->f:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->e(Lcom/xiaomi/push/service/XMPushService;)Lorg/jivesoftware/smack/Connection;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService$k;->f:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->e(Lcom/xiaomi/push/service/XMPushService;)Lorg/jivesoftware/smack/Connection;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService$k;->a:Lcom/xiaomi/push/service/p$b;

    iget-object v1, v1, Lcom/xiaomi/push/service/p$b;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/push/service/XMPushService$k;->a:Lcom/xiaomi/push/service/p$b;

    iget-object v2, v2, Lcom/xiaomi/push/service/p$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/Connection;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService$k;->a:Lcom/xiaomi/push/service/p$b;

    sget-object v1, Lcom/xiaomi/push/service/p$c;->a:Lcom/xiaomi/push/service/p$c;

    iget v2, p0, Lcom/xiaomi/push/service/XMPushService$k;->b:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/xiaomi/push/service/XMPushService$k;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/push/service/XMPushService$k;->c:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/p$b;->a(Lcom/xiaomi/push/service/p$c;IILjava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService$k;->f:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unbind the channel. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService$k;->a:Lcom/xiaomi/push/service/p$b;

    iget-object v1, v1, Lcom/xiaomi/push/service/p$b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService$k;->a:Lcom/xiaomi/push/service/p$b;

    iget-object v1, v1, Lcom/xiaomi/push/service/p$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
