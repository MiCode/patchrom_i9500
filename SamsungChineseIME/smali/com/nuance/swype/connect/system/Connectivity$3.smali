.class Lcom/nuance/swype/connect/system/Connectivity$3;
.super Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;
.source "Connectivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/connect/system/Connectivity;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/connect/system/Connectivity;


# direct methods
.method constructor <init>(Lcom/nuance/swype/connect/system/Connectivity;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/nuance/swype/connect/system/Connectivity$3;->this$0:Lcom/nuance/swype/connect/system/Connectivity;

    invoke-direct {p0}, Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationIntChange(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/nuance/swype/connect/system/Connectivity$3;->this$0:Lcom/nuance/swype/connect/system/Connectivity;

    #calls: Lcom/nuance/swype/connect/system/Connectivity;->setStableWifiTime(I)V
    invoke-static {v0, p1}, Lcom/nuance/swype/connect/system/Connectivity;->access$200(Lcom/nuance/swype/connect/system/Connectivity;I)V

    .line 101
    iget-object v0, p0, Lcom/nuance/swype/connect/system/Connectivity$3;->this$0:Lcom/nuance/swype/connect/system/Connectivity;

    #calls: Lcom/nuance/swype/connect/system/Connectivity;->checkAvailableNetworkConnections()V
    invoke-static {v0}, Lcom/nuance/swype/connect/system/Connectivity;->access$000(Lcom/nuance/swype/connect/system/Connectivity;)V

    .line 102
    return-void
.end method
