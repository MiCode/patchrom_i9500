.class Lcom/nuance/swype/connect/ConnectClient$2;
.super Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;
.source "ConnectClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/connect/ConnectClient;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/connect/ConnectClient;


# direct methods
.method constructor <init>(Lcom/nuance/swype/connect/ConnectClient;)V
    .locals 0
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Lcom/nuance/swype/connect/ConnectClient$2;->this$0:Lcom/nuance/swype/connect/ConnectClient;

    invoke-direct {p0}, Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationIntChange(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 414
    const-string v0, "Connect"

    invoke-static {v0, p1}, Lcom/nuance/swype/connect/util/Logger;->configure(Ljava/lang/String;I)V

    .line 415
    return-void
.end method
