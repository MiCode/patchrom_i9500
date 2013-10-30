.class Lcom/nuance/swype/connect/system/Connectivity$1;
.super Landroid/content/BroadcastReceiver;
.source "Connectivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/connect/system/Connectivity;
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
    .line 57
    iput-object p1, p0, Lcom/nuance/swype/connect/system/Connectivity$1;->this$0:Lcom/nuance/swype/connect/system/Connectivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/nuance/swype/connect/system/Connectivity$1;->this$0:Lcom/nuance/swype/connect/system/Connectivity;

    #calls: Lcom/nuance/swype/connect/system/Connectivity;->checkAvailableNetworkConnections()V
    invoke-static {v0}, Lcom/nuance/swype/connect/system/Connectivity;->access$000(Lcom/nuance/swype/connect/system/Connectivity;)V

    .line 61
    return-void
.end method
