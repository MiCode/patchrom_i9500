.class Lcom/samsung/wfd/WfdSinkService$1;
.super Ljava/lang/Object;
.source "WfdSinkService.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/wfd/WfdSinkService;->setWfdTerminate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wfd/WfdSinkService;


# direct methods
.method constructor <init>(Lcom/samsung/wfd/WfdSinkService;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/samsung/wfd/WfdSinkService$1;->this$0:Lcom/samsung/wfd/WfdSinkService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 251
    const-string v0, "WfdSinkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " remove group fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 247
    const-string v0, "WfdSinkService"

    const-string v1, " remove group success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcom/samsung/wfd/WfdSinkService$1;->this$0:Lcom/samsung/wfd/WfdSinkService;

    #calls: Lcom/samsung/wfd/WfdSinkService;->turnOnListenMode()V
    invoke-static {v0}, Lcom/samsung/wfd/WfdSinkService;->access$100(Lcom/samsung/wfd/WfdSinkService;)V

    .line 249
    return-void
.end method
