.class Lcom/samsung/wfd/WfdSinkService$WifiStateReceiver$1;
.super Landroid/os/CountDownTimer;
.source "WfdSinkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/wfd/WfdSinkService$WifiStateReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mTickCount:I

.field final synthetic this$1:Lcom/samsung/wfd/WfdSinkService$WifiStateReceiver;


# direct methods
.method constructor <init>(Lcom/samsung/wfd/WfdSinkService$WifiStateReceiver;JJ)V
    .locals 1
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/samsung/wfd/WfdSinkService$WifiStateReceiver$1;->this$1:Lcom/samsung/wfd/WfdSinkService$WifiStateReceiver;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 147
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/wfd/WfdSinkService$WifiStateReceiver$1;->mTickCount:I

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 162
    iget v0, p0, Lcom/samsung/wfd/WfdSinkService$WifiStateReceiver$1;->mTickCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/wfd/WfdSinkService$WifiStateReceiver$1;->mTickCount:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 163
    const-string v0, "WfdSinkService"

    const-string v1, "mIntentTimer onFinish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/samsung/wfd/WfdSinkService$WifiStateReceiver$1;->this$1:Lcom/samsung/wfd/WfdSinkService$WifiStateReceiver;

    iget-object v0, v0, Lcom/samsung/wfd/WfdSinkService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdSinkService;

    #calls: Lcom/samsung/wfd/WfdSinkService;->launchWfdPlayer()V
    invoke-static {v0}, Lcom/samsung/wfd/WfdSinkService;->access$700(Lcom/samsung/wfd/WfdSinkService;)V

    .line 166
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 4
    .parameter "millisUntilFinished"

    .prologue
    .line 151
    const-string v0, "WfdSinkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connect tick:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/samsung/wfd/WfdSinkService$WifiStateReceiver$1;->this$1:Lcom/samsung/wfd/WfdSinkService$WifiStateReceiver;

    iget-object v0, v0, Lcom/samsung/wfd/WfdSinkService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdSinkService;

    #getter for: Lcom/samsung/wfd/WfdSinkService;->mIpAddr:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/wfd/WfdSinkService;->access$500(Lcom/samsung/wfd/WfdSinkService;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/samsung/wfd/WfdSinkService$WifiStateReceiver$1;->this$1:Lcom/samsung/wfd/WfdSinkService$WifiStateReceiver;

    iget-object v0, v0, Lcom/samsung/wfd/WfdSinkService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdSinkService;

    iget-object v1, p0, Lcom/samsung/wfd/WfdSinkService$WifiStateReceiver$1;->this$1:Lcom/samsung/wfd/WfdSinkService$WifiStateReceiver;

    iget-object v1, v1, Lcom/samsung/wfd/WfdSinkService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdSinkService;

    iget-object v2, p0, Lcom/samsung/wfd/WfdSinkService$WifiStateReceiver$1;->this$1:Lcom/samsung/wfd/WfdSinkService$WifiStateReceiver;

    iget-object v2, v2, Lcom/samsung/wfd/WfdSinkService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdSinkService;

    #getter for: Lcom/samsung/wfd/WfdSinkService;->mMacAddr:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/wfd/WfdSinkService;->access$600(Lcom/samsung/wfd/WfdSinkService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/wfd/WfdSinkService;->getIpFromArpTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/samsung/wfd/WfdSinkService;->mIpAddr:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/samsung/wfd/WfdSinkService;->access$502(Lcom/samsung/wfd/WfdSinkService;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/wfd/WfdSinkService$WifiStateReceiver$1;->mTickCount:I

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget v0, p0, Lcom/samsung/wfd/WfdSinkService$WifiStateReceiver$1;->mTickCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/samsung/wfd/WfdSinkService$WifiStateReceiver$1;->mTickCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/wfd/WfdSinkService$WifiStateReceiver$1;->mTickCount:I

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/samsung/wfd/WfdSinkService$WifiStateReceiver$1;->this$1:Lcom/samsung/wfd/WfdSinkService$WifiStateReceiver;

    iget-object v0, v0, Lcom/samsung/wfd/WfdSinkService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdSinkService;

    #calls: Lcom/samsung/wfd/WfdSinkService;->launchWfdPlayer()V
    invoke-static {v0}, Lcom/samsung/wfd/WfdSinkService;->access$700(Lcom/samsung/wfd/WfdSinkService;)V

    goto :goto_0
.end method
