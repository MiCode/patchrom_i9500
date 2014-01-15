.class Lcom/baidu/mapapi/t;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/mapapi/s;


# direct methods
.method constructor <init>(Lcom/baidu/mapapi/s;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/t;->a:Lcom/baidu/mapapi/s;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/baidu/mapapi/t;->a:Lcom/baidu/mapapi/s;

    invoke-static {v0}, Lcom/baidu/mapapi/s;->c(Lcom/baidu/mapapi/s;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/baidu/mapapi/t;->a:Lcom/baidu/mapapi/s;

    invoke-static {v0}, Lcom/baidu/mapapi/s;->b(Lcom/baidu/mapapi/s;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
