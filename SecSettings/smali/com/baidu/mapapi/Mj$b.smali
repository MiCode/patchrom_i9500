.class Lcom/baidu/mapapi/Mj$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/Mj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field final synthetic c:Lcom/baidu/mapapi/Mj;


# direct methods
.method private constructor <init>(Lcom/baidu/mapapi/Mj;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/Mj$b;->c:Lcom/baidu/mapapi/Mj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/mapapi/Mj;Lcom/baidu/mapapi/Mj$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/Mj$b;-><init>(Lcom/baidu/mapapi/Mj;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x1

    const/16 v1, 0x8

    iget v2, p0, Lcom/baidu/mapapi/Mj$b;->a:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/mapapi/Mj;->MsgMapProc(IIII)I

    iget-object v0, p0, Lcom/baidu/mapapi/Mj$b;->c:Lcom/baidu/mapapi/Mj;

    invoke-static {v0}, Lcom/baidu/mapapi/Mj;->a(Lcom/baidu/mapapi/Mj;)Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/baidu/mapapi/Mj$b;->b:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
