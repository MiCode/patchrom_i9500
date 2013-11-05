.class public Lcom/xiaomi/channel/commonutils/logger/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/logger/a;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/logger/a;->a:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
