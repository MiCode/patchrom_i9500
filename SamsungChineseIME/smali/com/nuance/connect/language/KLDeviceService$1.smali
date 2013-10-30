.class Lcom/nuance/connect/language/KLDeviceService$1;
.super Ljava/lang/Object;
.source "KLDeviceService.java"

# interfaces
.implements Lcom/nuance/swype/connect/api/ConnectHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/language/KLDeviceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final MESSAGE_IDS:[I

.field final synthetic this$0:Lcom/nuance/connect/language/KLDeviceService;


# direct methods
.method constructor <init>(Lcom/nuance/connect/language/KLDeviceService;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/nuance/connect/language/KLDeviceService$1;->this$0:Lcom/nuance/connect/language/KLDeviceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/nuance/connect/language/KLDeviceService$1;->MESSAGE_IDS:[I

    return-void

    :array_0
    .array-data 0x4
        0x49t 0x0t 0x0t 0x0t
        0x99t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t
        0x9ct 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public getHandlerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-string v0, "SwypeConfigurationHandler"

    return-object v0
.end method

.method public getMessageIDs()[I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nuance/connect/language/KLDeviceService$1;->MESSAGE_IDS:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public handleMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 4
    .parameter "handler"
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 46
    iget-object v1, p0, Lcom/nuance/connect/language/KLDeviceService$1;->this$0:Lcom/nuance/connect/language/KLDeviceService;

    #getter for: Lcom/nuance/connect/language/KLDeviceService;->managerRef:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/nuance/connect/language/KLDeviceService;->access$000(Lcom/nuance/connect/language/KLDeviceService;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/language/KLManager;

    .line 47
    .local v0, manager:Lcom/nuance/connect/language/KLManager;
    if-nez v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 50
    :cond_0
    iget v1, p2, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 52
    :sswitch_0
    const-string v1, "configurationHandler.MESSAGE_HOST_GET_LANGUAGES_AVAILABLE"

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 53
    const/16 v1, 0xd1

    const-string v2, ""

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/nuance/connect/language/KLManager;->sendConnectMessage(ILjava/lang/Object;II)Z

    goto :goto_0

    .line 58
    :sswitch_1
    const-string v1, "configurationHandler.MESSAGE_HOST_GET_OEM_ID"

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 59
    const/16 v1, 0x115

    invoke-virtual {v0}, Lcom/nuance/connect/language/KLManager;->getOemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/nuance/connect/language/KLManager;->sendConnectMessage(ILjava/lang/Object;II)Z

    goto :goto_0

    .line 65
    :sswitch_2
    const-string v1, "configurationHandler.MESSAGE_HOST_GET_CURRENT_LOCALE"

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 66
    const/16 v1, 0xd2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/nuance/connect/language/KLManager;->sendConnectMessage(ILjava/lang/Object;II)Z

    goto :goto_0

    .line 71
    :sswitch_3
    const-string v1, "configurationHandler.MESSAGE_HOST_SET_SWYPER_ID"

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/nuance/connect/language/KLDeviceService$1;->this$0:Lcom/nuance/connect/language/KLDeviceService;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "DEFAULT_KEY"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/nuance/connect/language/KLDeviceService;->swyperId:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/nuance/connect/language/KLDeviceService;->access$102(Lcom/nuance/connect/language/KLDeviceService;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    iget-object v1, p0, Lcom/nuance/connect/language/KLDeviceService$1;->this$0:Lcom/nuance/connect/language/KLDeviceService;

    #calls: Lcom/nuance/connect/language/KLDeviceService;->notifyCallbacksOfSwyperId()V
    invoke-static {v1}, Lcom/nuance/connect/language/KLDeviceService;->access$200(Lcom/nuance/connect/language/KLDeviceService;)V

    goto :goto_0

    .line 77
    :sswitch_4
    const-string v1, "configurationHandler.MESSAGE_HOST_SET_DEVICE_ID"

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/nuance/connect/language/KLDeviceService$1;->this$0:Lcom/nuance/connect/language/KLDeviceService;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "DEFAULT_KEY"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/nuance/connect/language/KLDeviceService;->deviceId:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/nuance/connect/language/KLDeviceService;->access$302(Lcom/nuance/connect/language/KLDeviceService;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    iget-object v1, p0, Lcom/nuance/connect/language/KLDeviceService$1;->this$0:Lcom/nuance/connect/language/KLDeviceService;

    #calls: Lcom/nuance/connect/language/KLDeviceService;->notifyCallbacksOfDeviceId()V
    invoke-static {v1}, Lcom/nuance/connect/language/KLDeviceService;->access$400(Lcom/nuance/connect/language/KLDeviceService;)V

    goto :goto_0

    .line 50
    nop

    :sswitch_data_0
    .sparse-switch
        0x49 -> :sswitch_0
        0x50 -> :sswitch_2
        0x63 -> :sswitch_3
        0x99 -> :sswitch_1
        0x9c -> :sswitch_4
    .end sparse-switch
.end method

.method public onPostUpgrade()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method
