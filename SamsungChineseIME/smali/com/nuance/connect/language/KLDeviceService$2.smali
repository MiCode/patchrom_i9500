.class Lcom/nuance/connect/language/KLDeviceService$2;
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
    .line 94
    iput-object p1, p0, Lcom/nuance/connect/language/KLDeviceService$2;->this$0:Lcom/nuance/connect/language/KLDeviceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nuance/connect/language/KLDeviceService$2;->MESSAGE_IDS:[I

    return-void
.end method


# virtual methods
.method public getHandlerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    const-string v0, "DeviceHandler"

    return-object v0
.end method

.method public getMessageIDs()[I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/nuance/connect/language/KLDeviceService$2;->MESSAGE_IDS:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public handleMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 0
    .parameter "handler"
    .parameter "msg"

    .prologue
    .line 104
    return-void
.end method

.method public onPostUpgrade()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method
