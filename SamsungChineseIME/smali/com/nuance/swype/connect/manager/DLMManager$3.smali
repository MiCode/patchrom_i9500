.class Lcom/nuance/swype/connect/manager/DLMManager$3;
.super Ljava/lang/Object;
.source "DLMManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/connect/manager/DLMManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/connect/manager/DLMManager;


# direct methods
.method constructor <init>(Lcom/nuance/swype/connect/manager/DLMManager;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/nuance/swype/connect/manager/DLMManager$3;->this$0:Lcom/nuance/swype/connect/manager/DLMManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DLMManager$3;->this$0:Lcom/nuance/swype/connect/manager/DLMManager;

    iget-object v1, p0, Lcom/nuance/swype/connect/manager/DLMManager$3;->this$0:Lcom/nuance/swype/connect/manager/DLMManager;

    #getter for: Lcom/nuance/swype/connect/manager/DLMManager;->currentCategory:I
    invoke-static {v1}, Lcom/nuance/swype/connect/manager/DLMManager;->access$100(Lcom/nuance/swype/connect/manager/DLMManager;)I

    move-result v1

    #calls: Lcom/nuance/swype/connect/manager/DLMManager;->immediateEvents(I)V
    invoke-static {v0, v1}, Lcom/nuance/swype/connect/manager/DLMManager;->access$200(Lcom/nuance/swype/connect/manager/DLMManager;I)V

    .line 104
    return-void
.end method
