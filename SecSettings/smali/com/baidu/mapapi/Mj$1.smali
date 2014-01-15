.class Lcom/baidu/mapapi/Mj$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mapapi/Mj;->a(Ljava/lang/String;Lcom/baidu/mapapi/MKGeneralListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/mapapi/Mj;


# direct methods
.method constructor <init>(Lcom/baidu/mapapi/Mj;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/Mj$1;->a:Lcom/baidu/mapapi/Mj;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/mapapi/Mj$a;

    iget v1, v0, Lcom/baidu/mapapi/Mj$a;->a:I

    iget v2, v0, Lcom/baidu/mapapi/Mj$a;->b:I

    iget v3, v0, Lcom/baidu/mapapi/Mj$a;->c:I

    iget v0, v0, Lcom/baidu/mapapi/Mj$a;->d:I

    invoke-static {v1, v2, v3, v0}, Lcom/baidu/mapapi/Mj;->MsgMapProc(IIII)I

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
