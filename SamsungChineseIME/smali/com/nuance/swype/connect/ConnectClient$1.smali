.class Lcom/nuance/swype/connect/ConnectClient$1;
.super Ljava/lang/Object;
.source "ConnectClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHostDelayed(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/connect/ConnectClient;

.field final synthetic val$what:I


# direct methods
.method constructor <init>(Lcom/nuance/swype/connect/ConnectClient;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 381
    iput-object p1, p0, Lcom/nuance/swype/connect/ConnectClient$1;->this$0:Lcom/nuance/swype/connect/ConnectClient;

    iput p2, p0, Lcom/nuance/swype/connect/ConnectClient$1;->val$what:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectClient$1;->this$0:Lcom/nuance/swype/connect/ConnectClient;

    iget v1, p0, Lcom/nuance/swype/connect/ConnectClient$1;->val$what:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(I)V

    .line 384
    return-void
.end method
