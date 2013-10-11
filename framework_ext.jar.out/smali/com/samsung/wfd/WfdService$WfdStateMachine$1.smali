.class Lcom/samsung/wfd/WfdService$WfdStateMachine$1;
.super Ljava/lang/Object;
.source "WfdService.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/wfd/WfdService$WfdStateMachine;->terminateWfdRoutine(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;


# direct methods
.method constructor <init>(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V
    .locals 0

    .prologue
    .line 1975
    iput-object p1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$1;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 1984
    const-string v0, "WFDService"

    const-string v1, "set setwfdenabled to disable failure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 1979
    const-string v0, "WFDService"

    const-string v1, "set setwfdenabled to disable success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    return-void
.end method
