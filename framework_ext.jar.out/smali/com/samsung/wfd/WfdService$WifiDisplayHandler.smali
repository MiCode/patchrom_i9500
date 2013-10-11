.class final Lcom/samsung/wfd/WfdService$WifiDisplayHandler;
.super Landroid/os/Handler;
.source "WfdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/WfdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WifiDisplayHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wfd/WfdService;


# direct methods
.method public constructor <init>(Lcom/samsung/wfd/WfdService;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/samsung/wfd/WfdService$WifiDisplayHandler;->this$0:Lcom/samsung/wfd/WfdService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 166
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WifiDisplayHandler;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v1, "wifiDisplayHandler get msg"

    invoke-virtual {v0, v1}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 172
    iget v0, p1, Landroid/os/Message;->what:I

    .line 181
    return-void
.end method
